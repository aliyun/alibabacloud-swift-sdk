import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddGrafanaRequest : Tea.TeaModel {
    public var clusterId: String?

    public var integration: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.integration != nil {
            map["Integration"] = self.integration!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Integration") {
            self.integration = dict["Integration"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddGrafanaResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddGrafanaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddGrafanaResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddGrafanaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddIntegrationRequest : Tea.TeaModel {
    public var clusterId: String?

    public var integration: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.integration != nil {
            map["Integration"] = self.integration!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Integration") {
            self.integration = dict["Integration"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddIntegrationResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddIntegrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddIntegrationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddIntegrationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyScenarioRequest : Tea.TeaModel {
    public var appId: String?

    public var config: [String: Any]?

    public var name: String?

    public var regionId: String?

    public var scenario: String?

    public var sign: String?

    public var snDump: Bool?

    public var snForce: Bool?

    public var snStat: Bool?

    public var snTransfer: Bool?

    public var updateOption: Bool?

    public override init() {
        super.init()
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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scenario != nil {
            map["Scenario"] = self.scenario!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.snDump != nil {
            map["SnDump"] = self.snDump!
        }
        if self.snForce != nil {
            map["SnForce"] = self.snForce!
        }
        if self.snStat != nil {
            map["SnStat"] = self.snStat!
        }
        if self.snTransfer != nil {
            map["SnTransfer"] = self.snTransfer!
        }
        if self.updateOption != nil {
            map["UpdateOption"] = self.updateOption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! [String: Any]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scenario") {
            self.scenario = dict["Scenario"] as! String
        }
        if dict.keys.contains("Sign") {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("SnDump") {
            self.snDump = dict["SnDump"] as! Bool
        }
        if dict.keys.contains("SnForce") {
            self.snForce = dict["SnForce"] as! Bool
        }
        if dict.keys.contains("SnStat") {
            self.snStat = dict["SnStat"] as! Bool
        }
        if dict.keys.contains("SnTransfer") {
            self.snTransfer = dict["SnTransfer"] as! Bool
        }
        if dict.keys.contains("UpdateOption") {
            self.updateOption = dict["UpdateOption"] as! Bool
        }
    }
}

public class ApplyScenarioShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var configShrink: String?

    public var name: String?

    public var regionId: String?

    public var scenario: String?

    public var sign: String?

    public var snDump: Bool?

    public var snForce: Bool?

    public var snStat: Bool?

    public var snTransfer: Bool?

    public var updateOption: Bool?

    public override init() {
        super.init()
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
        if self.configShrink != nil {
            map["Config"] = self.configShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scenario != nil {
            map["Scenario"] = self.scenario!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        if self.snDump != nil {
            map["SnDump"] = self.snDump!
        }
        if self.snForce != nil {
            map["SnForce"] = self.snForce!
        }
        if self.snStat != nil {
            map["SnStat"] = self.snStat!
        }
        if self.snTransfer != nil {
            map["SnTransfer"] = self.snTransfer!
        }
        if self.updateOption != nil {
            map["UpdateOption"] = self.updateOption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Config") {
            self.configShrink = dict["Config"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scenario") {
            self.scenario = dict["Scenario"] as! String
        }
        if dict.keys.contains("Sign") {
            self.sign = dict["Sign"] as! String
        }
        if dict.keys.contains("SnDump") {
            self.snDump = dict["SnDump"] as! Bool
        }
        if dict.keys.contains("SnForce") {
            self.snForce = dict["SnForce"] as! Bool
        }
        if dict.keys.contains("SnStat") {
            self.snStat = dict["SnStat"] as! Bool
        }
        if dict.keys.contains("SnTransfer") {
            self.snTransfer = dict["SnTransfer"] as! Bool
        }
        if dict.keys.contains("UpdateOption") {
            self.updateOption = dict["UpdateOption"] as! Bool
        }
    }
}

public class ApplyScenarioResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
    }
}

public class ApplyScenarioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyScenarioResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyScenarioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDataConsistencyRequest : Tea.TeaModel {
    public var appType: String?

    public var currentTimestamp: Int64?

    public var pid: String?

    public var proxyUserId: String?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.currentTimestamp != nil {
            map["CurrentTimestamp"] = self.currentTimestamp!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("CurrentTimestamp") {
            self.currentTimestamp = dict["CurrentTimestamp"] as! Int64
        }
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("ProxyUserId") {
            self.proxyUserId = dict["ProxyUserId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CheckDataConsistencyResponseBody : Tea.TeaModel {
    public var isDataConsistency: Bool?

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
        if self.isDataConsistency != nil {
            map["IsDataConsistency"] = self.isDataConsistency!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsDataConsistency") {
            self.isDataConsistency = dict["IsDataConsistency"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckDataConsistencyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDataConsistencyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckDataConsistencyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckServiceLinkedRoleForDeletingRequest : Tea.TeaModel {
    public var deletionTaskId: String?

    public var regionId: String?

    public var roleArn: String?

    public var SPIRegionId: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletionTaskId != nil {
            map["DeletionTaskId"] = self.deletionTaskId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.SPIRegionId != nil {
            map["SPIRegionId"] = self.SPIRegionId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionTaskId") {
            self.deletionTaskId = dict["DeletionTaskId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("SPIRegionId") {
            self.SPIRegionId = dict["SPIRegionId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class CheckServiceLinkedRoleForDeletingResponseBody : Tea.TeaModel {
    public class RoleUsages : Tea.TeaModel {
        public var region: String?

        public var resources: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resources != nil {
                map["Resources"] = self.resources!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Resources") {
                self.resources = dict["Resources"] as! [String]
            }
        }
    }
    public var deletable: Bool?

    public var requestId: String?

    public var roleUsages: [CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletable != nil {
            map["Deletable"] = self.deletable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleUsages != nil {
            var tmp : [Any] = []
            for k in self.roleUsages! {
                tmp.append(k.toMap())
            }
            map["RoleUsages"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Deletable") {
            self.deletable = dict["Deletable"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleUsages") {
            self.roleUsages = dict["RoleUsages"] as! [CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages]
        }
    }
}

public class CheckServiceLinkedRoleForDeletingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckServiceLinkedRoleForDeletingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckServiceLinkedRoleForDeletingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckServiceStatusRequest : Tea.TeaModel {
    public var regionId: String?

    public var svcCode: String?

    public override init() {
        super.init()
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
        if self.svcCode != nil {
            map["SvcCode"] = self.svcCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SvcCode") {
            self.svcCode = dict["SvcCode"] as! String
        }
    }
}

public class CheckServiceStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckServiceStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfigAppRequest : Tea.TeaModel {
    public var appIds: String?

    public var enable: String?

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
        if self.appIds != nil {
            map["AppIds"] = self.appIds!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppIds") {
            self.appIds = dict["AppIds"] as! String
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ConfigAppResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfigAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ConfigAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAlertContactRequest : Tea.TeaModel {
    public var contactName: String?

    public var dingRobotWebhookUrl: String?

    public var email: String?

    public var phoneNum: String?

    public var regionId: String?

    public var systemNoc: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.dingRobotWebhookUrl != nil {
            map["DingRobotWebhookUrl"] = self.dingRobotWebhookUrl!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phoneNum != nil {
            map["PhoneNum"] = self.phoneNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.systemNoc != nil {
            map["SystemNoc"] = self.systemNoc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("DingRobotWebhookUrl") {
            self.dingRobotWebhookUrl = dict["DingRobotWebhookUrl"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PhoneNum") {
            self.phoneNum = dict["PhoneNum"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SystemNoc") {
            self.systemNoc = dict["SystemNoc"] as! Bool
        }
    }
}

public class CreateAlertContactResponseBody : Tea.TeaModel {
    public var contactId: String?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAlertContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAlertContactResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAlertContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAlertContactGroupRequest : Tea.TeaModel {
    public var contactGroupName: String?

    public var contactIds: String?

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
        if self.contactGroupName != nil {
            map["ContactGroupName"] = self.contactGroupName!
        }
        if self.contactIds != nil {
            map["ContactIds"] = self.contactIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupName") {
            self.contactGroupName = dict["ContactGroupName"] as! String
        }
        if dict.keys.contains("ContactIds") {
            self.contactIds = dict["ContactIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateAlertContactGroupResponseBody : Tea.TeaModel {
    public var contactGroupId: String?

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
        if self.contactGroupId != nil {
            map["ContactGroupId"] = self.contactGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupId") {
            self.contactGroupId = dict["ContactGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAlertContactGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAlertContactGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAlertContactGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAlertTemplateRequest : Tea.TeaModel {
    public var annotations: String?

    public var labels: String?

    public var matchExpressions: String?

    public var message: String?

    public var name: String?

    public var parentId: String?

    public var regionId: String?

    public var rule: String?

    public var templateProvider: String?

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
        if self.annotations != nil {
            map["Annotations"] = self.annotations!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.matchExpressions != nil {
            map["MatchExpressions"] = self.matchExpressions!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.templateProvider != nil {
            map["TemplateProvider"] = self.templateProvider!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Annotations") {
            self.annotations = dict["Annotations"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("MatchExpressions") {
            self.matchExpressions = dict["MatchExpressions"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentId") {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rule") {
            self.rule = dict["Rule"] as! String
        }
        if dict.keys.contains("TemplateProvider") {
            self.templateProvider = dict["TemplateProvider"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateAlertTemplateResponseBody : Tea.TeaModel {
    public class AlertTemplate : Tea.TeaModel {
        public class LabelMatchExpressionGrid : Tea.TeaModel {
            public class LabelMatchExpressionGroups : Tea.TeaModel {
                public class LabelMatchExpressions : Tea.TeaModel {
                    public var key: String?

                    public var operator_: String?

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
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var labelMatchExpressions: [CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.labelMatchExpressions != nil {
                        var tmp : [Any] = []
                        for k in self.labelMatchExpressions! {
                            tmp.append(k.toMap())
                        }
                        map["LabelMatchExpressions"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LabelMatchExpressions") {
                        self.labelMatchExpressions = dict["LabelMatchExpressions"] as! [CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions]
                    }
                }
            }
            public var labelMatchExpressionGroups: [CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.labelMatchExpressionGroups != nil {
                    var tmp : [Any] = []
                    for k in self.labelMatchExpressionGroups! {
                        tmp.append(k.toMap())
                    }
                    map["LabelMatchExpressionGroups"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LabelMatchExpressionGroups") {
                    self.labelMatchExpressionGroups = dict["LabelMatchExpressionGroups"] as! [CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups]
                }
            }
        }
        public var alertProvider: String?

        public var annotations: [String: Any]?

        public var id: Int32?

        public var labelMatchExpressionGrid: CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid?

        public var labels: [String: Any]?

        public var message: String?

        public var name: String?

        public var parentId: Int32?

        public var public_: Bool?

        public var rule: String?

        public var status: Bool?

        public var templateProvider: String?

        public var type: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.labelMatchExpressionGrid?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertProvider != nil {
                map["AlertProvider"] = self.alertProvider!
            }
            if self.annotations != nil {
                map["Annotations"] = self.annotations!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.labelMatchExpressionGrid != nil {
                map["LabelMatchExpressionGrid"] = self.labelMatchExpressionGrid?.toMap()
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.public_ != nil {
                map["Public"] = self.public_!
            }
            if self.rule != nil {
                map["Rule"] = self.rule!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateProvider != nil {
                map["TemplateProvider"] = self.templateProvider!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertProvider") {
                self.alertProvider = dict["AlertProvider"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [String: Any]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("LabelMatchExpressionGrid") {
                var model = CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid()
                model.fromMap(dict["LabelMatchExpressionGrid"] as! [String: Any])
                self.labelMatchExpressionGrid = model
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: Any]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Public") {
                self.public_ = dict["Public"] as! Bool
            }
            if dict.keys.contains("Rule") {
                self.rule = dict["Rule"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Bool
            }
            if dict.keys.contains("TemplateProvider") {
                self.templateProvider = dict["TemplateProvider"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var alertTemplate: CreateAlertTemplateResponseBody.AlertTemplate?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alertTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertTemplate != nil {
            map["AlertTemplate"] = self.alertTemplate?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertTemplate") {
            var model = CreateAlertTemplateResponseBody.AlertTemplate()
            model.fromMap(dict["AlertTemplate"] as! [String: Any])
            self.alertTemplate = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAlertTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAlertTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAlertTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDispatchRuleRequest : Tea.TeaModel {
    public var dispatchRule: String?

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
        if self.dispatchRule != nil {
            map["DispatchRule"] = self.dispatchRule!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DispatchRule") {
            self.dispatchRule = dict["DispatchRule"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateDispatchRuleResponseBody : Tea.TeaModel {
    public var dispatchRuleId: Int64?

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
        if self.dispatchRuleId != nil {
            map["DispatchRuleId"] = self.dispatchRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DispatchRuleId") {
            self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDispatchRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDispatchRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDispatchRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePrometheusAlertRuleRequest : Tea.TeaModel {
    public var alertName: String?

    public var annotations: String?

    public var clusterId: String?

    public var dispatchRuleId: Int64?

    public var duration: String?

    public var expression: String?

    public var labels: String?

    public var message: String?

    public var notifyType: String?

    public var regionId: String?

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
        if self.alertName != nil {
            map["AlertName"] = self.alertName!
        }
        if self.annotations != nil {
            map["Annotations"] = self.annotations!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dispatchRuleId != nil {
            map["DispatchRuleId"] = self.dispatchRuleId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertName") {
            self.alertName = dict["AlertName"] as! String
        }
        if dict.keys.contains("Annotations") {
            self.annotations = dict["Annotations"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DispatchRuleId") {
            self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NotifyType") {
            self.notifyType = dict["NotifyType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreatePrometheusAlertRuleResponseBody : Tea.TeaModel {
    public class PrometheusAlertRule : Tea.TeaModel {
        public class Annotations : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var alertId: Int64?

        public var alertName: String?

        public var annotations: [CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations]?

        public var clusterId: String?

        public var dispatchRuleId: Int64?

        public var duration: String?

        public var expression: String?

        public var labels: [CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels]?

        public var message: String?

        public var notifyType: String?

        public var status: Int32?

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
            if self.alertId != nil {
                map["AlertId"] = self.alertId!
            }
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.annotations != nil {
                var tmp : [Any] = []
                for k in self.annotations! {
                    tmp.append(k.toMap())
                }
                map["Annotations"] = tmp
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dispatchRuleId != nil {
                map["DispatchRuleId"] = self.dispatchRuleId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.notifyType != nil {
                map["NotifyType"] = self.notifyType!
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
            if dict.keys.contains("AlertId") {
                self.alertId = dict["AlertId"] as! Int64
            }
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations]
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DispatchRuleId") {
                self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("Expression") {
                self.expression = dict["Expression"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("NotifyType") {
                self.notifyType = dict["NotifyType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var prometheusAlertRule: CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.prometheusAlertRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prometheusAlertRule != nil {
            map["PrometheusAlertRule"] = self.prometheusAlertRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrometheusAlertRule") {
            var model = CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule()
            model.fromMap(dict["PrometheusAlertRule"] as! [String: Any])
            self.prometheusAlertRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePrometheusAlertRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePrometheusAlertRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePrometheusAlertRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRetcodeAppRequest : Tea.TeaModel {
    public var regionId: String?

    public var retcodeAppName: String?

    public var retcodeAppType: String?

    public override init() {
        super.init()
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
        if self.retcodeAppName != nil {
            map["RetcodeAppName"] = self.retcodeAppName!
        }
        if self.retcodeAppType != nil {
            map["RetcodeAppType"] = self.retcodeAppType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetcodeAppName") {
            self.retcodeAppName = dict["RetcodeAppName"] as! String
        }
        if dict.keys.contains("RetcodeAppType") {
            self.retcodeAppType = dict["RetcodeAppType"] as! String
        }
    }
}

public class CreateRetcodeAppResponseBody : Tea.TeaModel {
    public class RetcodeAppDataBean : Tea.TeaModel {
        public var appId: Int64?

        public var pid: String?

        public override init() {
            super.init()
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
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! Int64
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
        }
    }
    public var requestId: String?

    public var retcodeAppDataBean: CreateRetcodeAppResponseBody.RetcodeAppDataBean?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.retcodeAppDataBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.retcodeAppDataBean != nil {
            map["RetcodeAppDataBean"] = self.retcodeAppDataBean?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RetcodeAppDataBean") {
            var model = CreateRetcodeAppResponseBody.RetcodeAppDataBean()
            model.fromMap(dict["RetcodeAppDataBean"] as! [String: Any])
            self.retcodeAppDataBean = model
        }
    }
}

public class CreateRetcodeAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRetcodeAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRetcodeAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWebhookRequest : Tea.TeaModel {
    public var body: String?

    public var contactName: String?

    public var httpHeaders: String?

    public var httpParams: String?

    public var method: String?

    public var regionId: String?

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
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.httpHeaders != nil {
            map["HttpHeaders"] = self.httpHeaders!
        }
        if self.httpParams != nil {
            map["HttpParams"] = self.httpParams!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("HttpHeaders") {
            self.httpHeaders = dict["HttpHeaders"] as! String
        }
        if dict.keys.contains("HttpParams") {
            self.httpParams = dict["HttpParams"] as! String
        }
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class CreateWebhookResponseBody : Tea.TeaModel {
    public var contactId: String?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWebhookResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWehookRequest : Tea.TeaModel {
    public var body: String?

    public var contactName: String?

    public var httpHeaders: String?

    public var httpParams: String?

    public var method: String?

    public var regionId: String?

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
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.httpHeaders != nil {
            map["HttpHeaders"] = self.httpHeaders!
        }
        if self.httpParams != nil {
            map["HttpParams"] = self.httpParams!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("HttpHeaders") {
            self.httpHeaders = dict["HttpHeaders"] as! String
        }
        if dict.keys.contains("HttpParams") {
            self.httpParams = dict["HttpParams"] as! String
        }
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class CreateWehookResponseBody : Tea.TeaModel {
    public var contactId: String?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateWehookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWehookResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateWehookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAlertContactRequest : Tea.TeaModel {
    public var contactId: Int64?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAlertContactResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAlertContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlertContactResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAlertContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAlertContactGroupRequest : Tea.TeaModel {
    public var contactGroupId: Int64?

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
        if self.contactGroupId != nil {
            map["ContactGroupId"] = self.contactGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupId") {
            self.contactGroupId = dict["ContactGroupId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAlertContactGroupResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAlertContactGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlertContactGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAlertContactGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAlertRulesRequest : Tea.TeaModel {
    public var alertIds: String?

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
        if self.alertIds != nil {
            map["AlertIds"] = self.alertIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertIds") {
            self.alertIds = dict["AlertIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAlertRulesResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAlertRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlertRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAlertRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAlertTemplateRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAlertTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteAlertTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAlertTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAlertTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDispatchRuleRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDispatchRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteDispatchRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDispatchRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDispatchRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGrafanaResourceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteGrafanaResourceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteGrafanaResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGrafanaResourceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGrafanaResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePrometheusAlertRuleRequest : Tea.TeaModel {
    public var alertId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
    }
}

public class DeletePrometheusAlertRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeletePrometheusAlertRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePrometheusAlertRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePrometheusAlertRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRetcodeAppRequest : Tea.TeaModel {
    public var appId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteRetcodeAppResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRetcodeAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRetcodeAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRetcodeAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteScenarioRequest : Tea.TeaModel {
    public var regionId: String?

    public var scenarioId: Int64?

    public override init() {
        super.init()
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
        if self.scenarioId != nil {
            map["ScenarioId"] = self.scenarioId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScenarioId") {
            self.scenarioId = dict["ScenarioId"] as! Int64
        }
    }
}

public class DeleteScenarioResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeleteScenarioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteScenarioResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteScenarioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTraceAppRequest : Tea.TeaModel {
    public var appId: String?

    public var pid: String?

    public var regionId: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DeleteTraceAppResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteTraceAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTraceAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTraceAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDispatchRuleRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDispatchRuleResponseBody : Tea.TeaModel {
    public class DispatchRule : Tea.TeaModel {
        public class GroupRules : Tea.TeaModel {
            public var groupId: Int64?

            public var groupInterval: Int64?

            public var groupWaitTime: Int64?

            public var groupingFields: [String]?

            public override init() {
                super.init()
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
                if self.groupInterval != nil {
                    map["GroupInterval"] = self.groupInterval!
                }
                if self.groupWaitTime != nil {
                    map["GroupWaitTime"] = self.groupWaitTime!
                }
                if self.groupingFields != nil {
                    map["GroupingFields"] = self.groupingFields!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! Int64
                }
                if dict.keys.contains("GroupInterval") {
                    self.groupInterval = dict["GroupInterval"] as! Int64
                }
                if dict.keys.contains("GroupWaitTime") {
                    self.groupWaitTime = dict["GroupWaitTime"] as! Int64
                }
                if dict.keys.contains("GroupingFields") {
                    self.groupingFields = dict["GroupingFields"] as! [String]
                }
            }
        }
        public class LabelMatchExpressionGrid : Tea.TeaModel {
            public class LabelMatchExpressionGroups : Tea.TeaModel {
                public class LabelMatchExpressions : Tea.TeaModel {
                    public var key: String?

                    public var operator_: String?

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
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var labelMatchExpressions: [DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.labelMatchExpressions != nil {
                        var tmp : [Any] = []
                        for k in self.labelMatchExpressions! {
                            tmp.append(k.toMap())
                        }
                        map["LabelMatchExpressions"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LabelMatchExpressions") {
                        self.labelMatchExpressions = dict["LabelMatchExpressions"] as! [DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions]
                    }
                }
            }
            public var labelMatchExpressionGroups: [DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.labelMatchExpressionGroups != nil {
                    var tmp : [Any] = []
                    for k in self.labelMatchExpressionGroups! {
                        tmp.append(k.toMap())
                    }
                    map["LabelMatchExpressionGroups"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LabelMatchExpressionGroups") {
                    self.labelMatchExpressionGroups = dict["LabelMatchExpressionGroups"] as! [DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups]
                }
            }
        }
        public class NotifyRules : Tea.TeaModel {
            public class NotifyObjects : Tea.TeaModel {
                public var name: String?

                public var notifyObjectId: String?

                public var notifyType: String?

                public override init() {
                    super.init()
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
                    if self.notifyObjectId != nil {
                        map["NotifyObjectId"] = self.notifyObjectId!
                    }
                    if self.notifyType != nil {
                        map["NotifyType"] = self.notifyType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("NotifyObjectId") {
                        self.notifyObjectId = dict["NotifyObjectId"] as! String
                    }
                    if dict.keys.contains("NotifyType") {
                        self.notifyType = dict["NotifyType"] as! String
                    }
                }
            }
            public var notifyChannels: [String]?

            public var notifyObjects: [DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules.NotifyObjects]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.notifyChannels != nil {
                    map["NotifyChannels"] = self.notifyChannels!
                }
                if self.notifyObjects != nil {
                    var tmp : [Any] = []
                    for k in self.notifyObjects! {
                        tmp.append(k.toMap())
                    }
                    map["NotifyObjects"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NotifyChannels") {
                    self.notifyChannels = dict["NotifyChannels"] as! [String]
                }
                if dict.keys.contains("NotifyObjects") {
                    self.notifyObjects = dict["NotifyObjects"] as! [DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules.NotifyObjects]
                }
            }
        }
        public var groupRules: [DescribeDispatchRuleResponseBody.DispatchRule.GroupRules]?

        public var labelMatchExpressionGrid: DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid?

        public var name: String?

        public var notifyRules: [DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules]?

        public var ruleId: Int64?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.labelMatchExpressionGrid?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupRules != nil {
                var tmp : [Any] = []
                for k in self.groupRules! {
                    tmp.append(k.toMap())
                }
                map["GroupRules"] = tmp
            }
            if self.labelMatchExpressionGrid != nil {
                map["LabelMatchExpressionGrid"] = self.labelMatchExpressionGrid?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.notifyRules != nil {
                var tmp : [Any] = []
                for k in self.notifyRules! {
                    tmp.append(k.toMap())
                }
                map["NotifyRules"] = tmp
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupRules") {
                self.groupRules = dict["GroupRules"] as! [DescribeDispatchRuleResponseBody.DispatchRule.GroupRules]
            }
            if dict.keys.contains("LabelMatchExpressionGrid") {
                var model = DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid()
                model.fromMap(dict["LabelMatchExpressionGrid"] as! [String: Any])
                self.labelMatchExpressionGrid = model
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NotifyRules") {
                self.notifyRules = dict["NotifyRules"] as! [DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules]
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var dispatchRule: DescribeDispatchRuleResponseBody.DispatchRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dispatchRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dispatchRule != nil {
            map["DispatchRule"] = self.dispatchRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DispatchRule") {
            var model = DescribeDispatchRuleResponseBody.DispatchRule()
            model.fromMap(dict["DispatchRule"] as! [String: Any])
            self.dispatchRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDispatchRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDispatchRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDispatchRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePrometheusAlertRuleRequest : Tea.TeaModel {
    public var alertId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
    }
}

public class DescribePrometheusAlertRuleResponseBody : Tea.TeaModel {
    public class PrometheusAlertRule : Tea.TeaModel {
        public class Annotations : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var alertId: Int64?

        public var alertName: String?

        public var annotations: [DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations]?

        public var clusterId: String?

        public var dispatchRuleId: Int64?

        public var duration: String?

        public var expression: String?

        public var labels: [DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels]?

        public var message: String?

        public var notifyType: String?

        public var status: Int32?

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
            if self.alertId != nil {
                map["AlertId"] = self.alertId!
            }
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.annotations != nil {
                var tmp : [Any] = []
                for k in self.annotations! {
                    tmp.append(k.toMap())
                }
                map["Annotations"] = tmp
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dispatchRuleId != nil {
                map["DispatchRuleId"] = self.dispatchRuleId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.notifyType != nil {
                map["NotifyType"] = self.notifyType!
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
            if dict.keys.contains("AlertId") {
                self.alertId = dict["AlertId"] as! Int64
            }
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations]
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DispatchRuleId") {
                self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("Expression") {
                self.expression = dict["Expression"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("NotifyType") {
                self.notifyType = dict["NotifyType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var prometheusAlertRule: DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.prometheusAlertRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prometheusAlertRule != nil {
            map["PrometheusAlertRule"] = self.prometheusAlertRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrometheusAlertRule") {
            var model = DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule()
            model.fromMap(dict["PrometheusAlertRule"] as! [String: Any])
            self.prometheusAlertRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePrometheusAlertRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePrometheusAlertRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePrometheusAlertRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTraceLicenseKeyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeTraceLicenseKeyResponseBody : Tea.TeaModel {
    public var licenseKey: String?

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
        if self.licenseKey != nil {
            map["LicenseKey"] = self.licenseKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LicenseKey") {
            self.licenseKey = dict["LicenseKey"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTraceLicenseKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTraceLicenseKeyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTraceLicenseKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTraceLocationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeTraceLocationResponseBody : Tea.TeaModel {
    public class RegionConfigs : Tea.TeaModel {
        public var regionNo: String?

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
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionNo") {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var regionConfigs: [DescribeTraceLocationResponseBody.RegionConfigs]?

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
        if self.regionConfigs != nil {
            var tmp : [Any] = []
            for k in self.regionConfigs! {
                tmp.append(k.toMap())
            }
            map["RegionConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionConfigs") {
            self.regionConfigs = dict["RegionConfigs"] as! [DescribeTraceLocationResponseBody.RegionConfigs]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeTraceLocationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTraceLocationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTraceLocationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableAlertTemplateRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DisableAlertTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DisableAlertTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAlertTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableAlertTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableAlertTemplateRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class EnableAlertTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableAlertTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAlertTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableAlertTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportPrometheusRulesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var name: String?

    public var nameSpace: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nameSpace != nil {
            map["NameSpace"] = self.nameSpace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NameSpace") {
            self.nameSpace = dict["NameSpace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ExportPrometheusRulesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExportPrometheusRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportPrometheusRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportPrometheusRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAgentDownloadUrlRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetAgentDownloadUrlResponseBody : Tea.TeaModel {
    public var armsAgentDownloadUrl: String?

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
        if self.armsAgentDownloadUrl != nil {
            map["ArmsAgentDownloadUrl"] = self.armsAgentDownloadUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArmsAgentDownloadUrl") {
            self.armsAgentDownloadUrl = dict["ArmsAgentDownloadUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAgentDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgentDownloadUrlResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAgentDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppApiByPageRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endTime: Int64?

    public var intervalMills: Int32?

    public var PId: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.intervalMills != nil {
            map["IntervalMills"] = self.intervalMills!
        }
        if self.PId != nil {
            map["PId"] = self.PId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IntervalMills") {
            self.intervalMills = dict["IntervalMills"] as! Int32
        }
        if dict.keys.contains("PId") {
            self.PId = dict["PId"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class GetAppApiByPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [[String: Any]]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.items != nil {
                map["Items"] = self.items!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [[String: Any]]
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetAppApiByPageResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetAppApiByPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetAppApiByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppApiByPageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAppApiByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConsistencySnapshotRequest : Tea.TeaModel {
    public var appType: String?

    public var currentTimestamp: Int64?

    public var pid: String?

    public var proxyUserId: String?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.currentTimestamp != nil {
            map["CurrentTimestamp"] = self.currentTimestamp!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("CurrentTimestamp") {
            self.currentTimestamp = dict["CurrentTimestamp"] as! Int64
        }
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("ProxyUserId") {
            self.proxyUserId = dict["ProxyUserId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetConsistencySnapshotResponseBody : Tea.TeaModel {
    public var consistencyResultJsonStr: String?

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
        if self.consistencyResultJsonStr != nil {
            map["ConsistencyResultJsonStr"] = self.consistencyResultJsonStr!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsistencyResultJsonStr") {
            self.consistencyResultJsonStr = dict["ConsistencyResultJsonStr"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetConsistencySnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConsistencySnapshotResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetConsistencySnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIntegrationTokenRequest : Tea.TeaModel {
    public var productType: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetIntegrationTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var token: String?

    public override init() {
        super.init()
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetIntegrationTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIntegrationTokenResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetIntegrationTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMultipleTraceRequest : Tea.TeaModel {
    public var regionId: String?

    public var traceIDs: [String]?

    public override init() {
        super.init()
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
        if self.traceIDs != nil {
            map["TraceIDs"] = self.traceIDs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TraceIDs") {
            self.traceIDs = dict["TraceIDs"] as! [String]
        }
    }
}

public class GetMultipleTraceResponseBody : Tea.TeaModel {
    public class MultiCallChainInfos : Tea.TeaModel {
        public class Spans : Tea.TeaModel {
            public class LogEventList : Tea.TeaModel {
                public class TagEntryList : Tea.TeaModel {
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
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tagEntryList: [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList.TagEntryList]?

                public var timestamp: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagEntryList != nil {
                        var tmp : [Any] = []
                        for k in self.tagEntryList! {
                            tmp.append(k.toMap())
                        }
                        map["TagEntryList"] = tmp
                    }
                    if self.timestamp != nil {
                        map["Timestamp"] = self.timestamp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagEntryList") {
                        self.tagEntryList = dict["TagEntryList"] as! [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList.TagEntryList]
                    }
                    if dict.keys.contains("Timestamp") {
                        self.timestamp = dict["Timestamp"] as! Int64
                    }
                }
            }
            public class TagEntryList : Tea.TeaModel {
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
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var duration: Int64?

            public var haveStack: Bool?

            public var logEventList: [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList]?

            public var operationName: String?

            public var parentSpanId: String?

            public var resultCode: String?

            public var rpcId: String?

            public var rpcType: Int32?

            public var serviceIp: String?

            public var serviceName: String?

            public var spanId: String?

            public var tagEntryList: [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.TagEntryList]?

            public var timestamp: Int64?

            public var traceID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.haveStack != nil {
                    map["HaveStack"] = self.haveStack!
                }
                if self.logEventList != nil {
                    var tmp : [Any] = []
                    for k in self.logEventList! {
                        tmp.append(k.toMap())
                    }
                    map["LogEventList"] = tmp
                }
                if self.operationName != nil {
                    map["OperationName"] = self.operationName!
                }
                if self.parentSpanId != nil {
                    map["ParentSpanId"] = self.parentSpanId!
                }
                if self.resultCode != nil {
                    map["ResultCode"] = self.resultCode!
                }
                if self.rpcId != nil {
                    map["RpcId"] = self.rpcId!
                }
                if self.rpcType != nil {
                    map["RpcType"] = self.rpcType!
                }
                if self.serviceIp != nil {
                    map["ServiceIp"] = self.serviceIp!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                if self.spanId != nil {
                    map["SpanId"] = self.spanId!
                }
                if self.tagEntryList != nil {
                    var tmp : [Any] = []
                    for k in self.tagEntryList! {
                        tmp.append(k.toMap())
                    }
                    map["TagEntryList"] = tmp
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.traceID != nil {
                    map["TraceID"] = self.traceID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int64
                }
                if dict.keys.contains("HaveStack") {
                    self.haveStack = dict["HaveStack"] as! Bool
                }
                if dict.keys.contains("LogEventList") {
                    self.logEventList = dict["LogEventList"] as! [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList]
                }
                if dict.keys.contains("OperationName") {
                    self.operationName = dict["OperationName"] as! String
                }
                if dict.keys.contains("ParentSpanId") {
                    self.parentSpanId = dict["ParentSpanId"] as! String
                }
                if dict.keys.contains("ResultCode") {
                    self.resultCode = dict["ResultCode"] as! String
                }
                if dict.keys.contains("RpcId") {
                    self.rpcId = dict["RpcId"] as! String
                }
                if dict.keys.contains("RpcType") {
                    self.rpcType = dict["RpcType"] as! Int32
                }
                if dict.keys.contains("ServiceIp") {
                    self.serviceIp = dict["ServiceIp"] as! String
                }
                if dict.keys.contains("ServiceName") {
                    self.serviceName = dict["ServiceName"] as! String
                }
                if dict.keys.contains("SpanId") {
                    self.spanId = dict["SpanId"] as! String
                }
                if dict.keys.contains("TagEntryList") {
                    self.tagEntryList = dict["TagEntryList"] as! [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.TagEntryList]
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("TraceID") {
                    self.traceID = dict["TraceID"] as! String
                }
            }
        }
        public var spans: [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans]?

        public var traceID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.spans != nil {
                var tmp : [Any] = []
                for k in self.spans! {
                    tmp.append(k.toMap())
                }
                map["Spans"] = tmp
            }
            if self.traceID != nil {
                map["TraceID"] = self.traceID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Spans") {
                self.spans = dict["Spans"] as! [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans]
            }
            if dict.keys.contains("TraceID") {
                self.traceID = dict["TraceID"] as! String
            }
        }
    }
    public var multiCallChainInfos: [GetMultipleTraceResponseBody.MultiCallChainInfos]?

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
        if self.multiCallChainInfos != nil {
            var tmp : [Any] = []
            for k in self.multiCallChainInfos! {
                tmp.append(k.toMap())
            }
            map["MultiCallChainInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MultiCallChainInfos") {
            self.multiCallChainInfos = dict["MultiCallChainInfos"] as! [GetMultipleTraceResponseBody.MultiCallChainInfos]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMultipleTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultipleTraceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetMultipleTraceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrometheusApiTokenRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPrometheusApiTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var token: String?

    public override init() {
        super.init()
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetPrometheusApiTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrometheusApiTokenResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPrometheusApiTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPrometheusRemoteActionTokenRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPrometheusRemoteActionTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var data: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
    }
}

public class GetPrometheusRemoteActionTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPrometheusRemoteActionTokenResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPrometheusRemoteActionTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRetcodeShareUrlRequest : Tea.TeaModel {
    public var pid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
    }
}

public class GetRetcodeShareUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetRetcodeShareUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRetcodeShareUrlResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetRetcodeShareUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStackRequest : Tea.TeaModel {
    public var pid: String?

    public var regionId: String?

    public var rpcID: String?

    public var traceID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rpcID != nil {
            map["RpcID"] = self.rpcID!
        }
        if self.traceID != nil {
            map["TraceID"] = self.traceID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RpcID") {
            self.rpcID = dict["RpcID"] as! String
        }
        if dict.keys.contains("TraceID") {
            self.traceID = dict["TraceID"] as! String
        }
    }
}

public class GetStackResponseBody : Tea.TeaModel {
    public class StackInfo : Tea.TeaModel {
        public class ExtInfo : Tea.TeaModel {
            public var info: String?

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
                if self.info != nil {
                    map["Info"] = self.info!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Info") {
                    self.info = dict["Info"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var api: String?

        public var duration: Int64?

        public var exception: String?

        public var extInfo: GetStackResponseBody.StackInfo.ExtInfo?

        public var line: String?

        public var rpcId: String?

        public var serviceName: String?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.exception != nil {
                map["Exception"] = self.exception!
            }
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo?.toMap()
            }
            if self.line != nil {
                map["Line"] = self.line!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Api") {
                self.api = dict["Api"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Exception") {
                self.exception = dict["Exception"] as! String
            }
            if dict.keys.contains("ExtInfo") {
                var model = GetStackResponseBody.StackInfo.ExtInfo()
                model.fromMap(dict["ExtInfo"] as! [String: Any])
                self.extInfo = model
            }
            if dict.keys.contains("Line") {
                self.line = dict["Line"] as! String
            }
            if dict.keys.contains("RpcId") {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var stackInfo: [GetStackResponseBody.StackInfo]?

    public override init() {
        super.init()
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
        if self.stackInfo != nil {
            var tmp : [Any] = []
            for k in self.stackInfo! {
                tmp.append(k.toMap())
            }
            map["StackInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StackInfo") {
            self.stackInfo = dict["StackInfo"] as! [GetStackResponseBody.StackInfo]
        }
    }
}

public class GetStackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStackResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetStackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTraceRequest : Tea.TeaModel {
    public var regionId: String?

    public var traceID: String?

    public override init() {
        super.init()
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
        if self.traceID != nil {
            map["TraceID"] = self.traceID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TraceID") {
            self.traceID = dict["TraceID"] as! String
        }
    }
}

public class GetTraceResponseBody : Tea.TeaModel {
    public class Spans : Tea.TeaModel {
        public class LogEventList : Tea.TeaModel {
            public class TagEntryList : Tea.TeaModel {
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
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var tagEntryList: [GetTraceResponseBody.Spans.LogEventList.TagEntryList]?

            public var timestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagEntryList != nil {
                    var tmp : [Any] = []
                    for k in self.tagEntryList! {
                        tmp.append(k.toMap())
                    }
                    map["TagEntryList"] = tmp
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagEntryList") {
                    self.tagEntryList = dict["TagEntryList"] as! [GetTraceResponseBody.Spans.LogEventList.TagEntryList]
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
            }
        }
        public class TagEntryList : Tea.TeaModel {
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var duration: Int64?

        public var haveStack: Bool?

        public var logEventList: [GetTraceResponseBody.Spans.LogEventList]?

        public var operationName: String?

        public var parentSpanId: String?

        public var resultCode: String?

        public var rpcId: String?

        public var rpcType: Int32?

        public var serviceIp: String?

        public var serviceName: String?

        public var spanId: String?

        public var tagEntryList: [GetTraceResponseBody.Spans.TagEntryList]?

        public var timestamp: Int64?

        public var traceID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.haveStack != nil {
                map["HaveStack"] = self.haveStack!
            }
            if self.logEventList != nil {
                var tmp : [Any] = []
                for k in self.logEventList! {
                    tmp.append(k.toMap())
                }
                map["LogEventList"] = tmp
            }
            if self.operationName != nil {
                map["OperationName"] = self.operationName!
            }
            if self.parentSpanId != nil {
                map["ParentSpanId"] = self.parentSpanId!
            }
            if self.resultCode != nil {
                map["ResultCode"] = self.resultCode!
            }
            if self.rpcId != nil {
                map["RpcId"] = self.rpcId!
            }
            if self.rpcType != nil {
                map["RpcType"] = self.rpcType!
            }
            if self.serviceIp != nil {
                map["ServiceIp"] = self.serviceIp!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.spanId != nil {
                map["SpanId"] = self.spanId!
            }
            if self.tagEntryList != nil {
                var tmp : [Any] = []
                for k in self.tagEntryList! {
                    tmp.append(k.toMap())
                }
                map["TagEntryList"] = tmp
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.traceID != nil {
                map["TraceID"] = self.traceID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("HaveStack") {
                self.haveStack = dict["HaveStack"] as! Bool
            }
            if dict.keys.contains("LogEventList") {
                self.logEventList = dict["LogEventList"] as! [GetTraceResponseBody.Spans.LogEventList]
            }
            if dict.keys.contains("OperationName") {
                self.operationName = dict["OperationName"] as! String
            }
            if dict.keys.contains("ParentSpanId") {
                self.parentSpanId = dict["ParentSpanId"] as! String
            }
            if dict.keys.contains("ResultCode") {
                self.resultCode = dict["ResultCode"] as! String
            }
            if dict.keys.contains("RpcId") {
                self.rpcId = dict["RpcId"] as! String
            }
            if dict.keys.contains("RpcType") {
                self.rpcType = dict["RpcType"] as! Int32
            }
            if dict.keys.contains("ServiceIp") {
                self.serviceIp = dict["ServiceIp"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("SpanId") {
                self.spanId = dict["SpanId"] as! String
            }
            if dict.keys.contains("TagEntryList") {
                self.tagEntryList = dict["TagEntryList"] as! [GetTraceResponseBody.Spans.TagEntryList]
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("TraceID") {
                self.traceID = dict["TraceID"] as! String
            }
        }
    }
    public var requestId: String?

    public var spans: [GetTraceResponseBody.Spans]?

    public override init() {
        super.init()
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
        if self.spans != nil {
            var tmp : [Any] = []
            for k in self.spans! {
                tmp.append(k.toMap())
            }
            map["Spans"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spans") {
            self.spans = dict["Spans"] as! [GetTraceResponseBody.Spans]
        }
    }
}

public class GetTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTraceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTraceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTraceAppRequest : Tea.TeaModel {
    public var pid: String?

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
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetTraceAppResponseBody : Tea.TeaModel {
    public class TraceApp : Tea.TeaModel {
        public var appId: Int64?

        public var appName: String?

        public var createTime: Int64?

        public var labels: [String]?

        public var pid: String?

        public var regionId: String?

        public var show: Bool?

        public var type: String?

        public var updateTime: Int64?

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
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.show != nil {
                map["Show"] = self.show!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! Int64
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Show") {
                self.show = dict["Show"] as! Bool
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var traceApp: GetTraceAppResponseBody.TraceApp?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.traceApp?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.traceApp != nil {
            map["TraceApp"] = self.traceApp?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceApp") {
            var model = GetTraceAppResponseBody.TraceApp()
            model.fromMap(dict["TraceApp"] as! [String: Any])
            self.traceApp = model
        }
    }
}

public class GetTraceAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTraceAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTraceAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportAppAlertRulesRequest : Tea.TeaModel {
    public var contactGroupIds: String?

    public var isAutoStart: Bool?

    public var pids: String?

    public var regionId: String?

    public var templageAlertConfig: String?

    public var templateAlertId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactGroupIds != nil {
            map["ContactGroupIds"] = self.contactGroupIds!
        }
        if self.isAutoStart != nil {
            map["IsAutoStart"] = self.isAutoStart!
        }
        if self.pids != nil {
            map["Pids"] = self.pids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templageAlertConfig != nil {
            map["TemplageAlertConfig"] = self.templageAlertConfig!
        }
        if self.templateAlertId != nil {
            map["TemplateAlertId"] = self.templateAlertId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupIds") {
            self.contactGroupIds = dict["ContactGroupIds"] as! String
        }
        if dict.keys.contains("IsAutoStart") {
            self.isAutoStart = dict["IsAutoStart"] as! Bool
        }
        if dict.keys.contains("Pids") {
            self.pids = dict["Pids"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplageAlertConfig") {
            self.templageAlertConfig = dict["TemplageAlertConfig"] as! String
        }
        if dict.keys.contains("TemplateAlertId") {
            self.templateAlertId = dict["TemplateAlertId"] as! String
        }
    }
}

public class ImportAppAlertRulesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportAppAlertRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportAppAlertRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ImportAppAlertRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportCustomAlertRulesRequest : Tea.TeaModel {
    public var contactGroupIds: String?

    public var isAutoStart: Bool?

    public var regionId: String?

    public var templageAlertConfig: String?

    public var templateAlertConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactGroupIds != nil {
            map["ContactGroupIds"] = self.contactGroupIds!
        }
        if self.isAutoStart != nil {
            map["IsAutoStart"] = self.isAutoStart!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templageAlertConfig != nil {
            map["TemplageAlertConfig"] = self.templageAlertConfig!
        }
        if self.templateAlertConfig != nil {
            map["TemplateAlertConfig"] = self.templateAlertConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupIds") {
            self.contactGroupIds = dict["ContactGroupIds"] as! String
        }
        if dict.keys.contains("IsAutoStart") {
            self.isAutoStart = dict["IsAutoStart"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplageAlertConfig") {
            self.templageAlertConfig = dict["TemplageAlertConfig"] as! String
        }
        if dict.keys.contains("TemplateAlertConfig") {
            self.templateAlertConfig = dict["TemplateAlertConfig"] as! String
        }
    }
}

public class ImportCustomAlertRulesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportCustomAlertRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportCustomAlertRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ImportCustomAlertRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ImportPrometheusRulesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var content: String?

    public var name: String?

    public var nameSpace: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nameSpace != nil {
            map["NameSpace"] = self.nameSpace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NameSpace") {
            self.nameSpace = dict["NameSpace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ImportPrometheusRulesResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ImportPrometheusRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportPrometheusRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ImportPrometheusRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallCmsExporterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var cmsArgs: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.cmsArgs != nil {
            map["CmsArgs"] = self.cmsArgs!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CmsArgs") {
            self.cmsArgs = dict["CmsArgs"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class InstallCmsExporterResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class InstallCmsExporterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallCmsExporterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallCmsExporterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallEventerRequest : Tea.TeaModel {
    public var clusterId: String?

    public var proxyUserId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ProxyUserId") {
            self.proxyUserId = dict["ProxyUserId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class InstallEventerResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class InstallEventerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallEventerResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallEventerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListActivatedAlertsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var filter: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListActivatedAlertsResponseBody : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public class Alerts : Tea.TeaModel {
            public class DispatchRules : Tea.TeaModel {
                public var ruleId: Int32?

                public var ruleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ruleId != nil {
                        map["RuleId"] = self.ruleId!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RuleId") {
                        self.ruleId = dict["RuleId"] as! Int32
                    }
                    if dict.keys.contains("RuleName") {
                        self.ruleName = dict["RuleName"] as! String
                    }
                }
            }
            public var alertId: String?

            public var alertName: String?

            public var alertType: String?

            public var count: Int32?

            public var createTime: Int64?

            public var dispatchRules: [ListActivatedAlertsResponseBody.Page.Alerts.DispatchRules]?

            public var endsAt: Int64?

            public var expandFields: [String: Any]?

            public var integrationName: String?

            public var integrationType: String?

            public var involvedObjectKind: String?

            public var involvedObjectName: String?

            public var message: String?

            public var severity: String?

            public var startsAt: Int64?

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
                if self.alertId != nil {
                    map["AlertId"] = self.alertId!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dispatchRules != nil {
                    var tmp : [Any] = []
                    for k in self.dispatchRules! {
                        tmp.append(k.toMap())
                    }
                    map["DispatchRules"] = tmp
                }
                if self.endsAt != nil {
                    map["EndsAt"] = self.endsAt!
                }
                if self.expandFields != nil {
                    map["ExpandFields"] = self.expandFields!
                }
                if self.integrationName != nil {
                    map["IntegrationName"] = self.integrationName!
                }
                if self.integrationType != nil {
                    map["IntegrationType"] = self.integrationType!
                }
                if self.involvedObjectKind != nil {
                    map["InvolvedObjectKind"] = self.involvedObjectKind!
                }
                if self.involvedObjectName != nil {
                    map["InvolvedObjectName"] = self.involvedObjectName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                if self.startsAt != nil {
                    map["StartsAt"] = self.startsAt!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertId") {
                    self.alertId = dict["AlertId"] as! String
                }
                if dict.keys.contains("AlertName") {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DispatchRules") {
                    self.dispatchRules = dict["DispatchRules"] as! [ListActivatedAlertsResponseBody.Page.Alerts.DispatchRules]
                }
                if dict.keys.contains("EndsAt") {
                    self.endsAt = dict["EndsAt"] as! Int64
                }
                if dict.keys.contains("ExpandFields") {
                    self.expandFields = dict["ExpandFields"] as! [String: Any]
                }
                if dict.keys.contains("IntegrationName") {
                    self.integrationName = dict["IntegrationName"] as! String
                }
                if dict.keys.contains("IntegrationType") {
                    self.integrationType = dict["IntegrationType"] as! String
                }
                if dict.keys.contains("InvolvedObjectKind") {
                    self.involvedObjectKind = dict["InvolvedObjectKind"] as! String
                }
                if dict.keys.contains("InvolvedObjectName") {
                    self.involvedObjectName = dict["InvolvedObjectName"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Severity") {
                    self.severity = dict["Severity"] as! String
                }
                if dict.keys.contains("StartsAt") {
                    self.startsAt = dict["StartsAt"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var alerts: [ListActivatedAlertsResponseBody.Page.Alerts]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.alerts != nil {
                var tmp : [Any] = []
                for k in self.alerts! {
                    tmp.append(k.toMap())
                }
                map["Alerts"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alerts") {
                self.alerts = dict["Alerts"] as! [ListActivatedAlertsResponseBody.Page.Alerts]
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var page: ListActivatedAlertsResponseBody.Page?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            var model = ListActivatedAlertsResponseBody.Page()
            model.fromMap(dict["Page"] as! [String: Any])
            self.page = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListActivatedAlertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActivatedAlertsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListActivatedAlertsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAlertTemplatesRequest : Tea.TeaModel {
    public var alertProvider: String?

    public var labels: String?

    public var name: String?

    public var regionId: String?

    public var status: Bool?

    public var templateProvider: String?

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
        if self.alertProvider != nil {
            map["AlertProvider"] = self.alertProvider!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.templateProvider != nil {
            map["TemplateProvider"] = self.templateProvider!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertProvider") {
            self.alertProvider = dict["AlertProvider"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("TemplateProvider") {
            self.templateProvider = dict["TemplateProvider"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListAlertTemplatesResponseBody : Tea.TeaModel {
    public class AlertTemplates : Tea.TeaModel {
        public class LabelMatchExpressionGrid : Tea.TeaModel {
            public class LabelMatchExpressionGroups : Tea.TeaModel {
                public class LabelMatchExpressions : Tea.TeaModel {
                    public var key: String?

                    public var operator_: String?

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
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var labelMatchExpressions: [ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.labelMatchExpressions != nil {
                        var tmp : [Any] = []
                        for k in self.labelMatchExpressions! {
                            tmp.append(k.toMap())
                        }
                        map["LabelMatchExpressions"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("LabelMatchExpressions") {
                        self.labelMatchExpressions = dict["LabelMatchExpressions"] as! [ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions]
                    }
                }
            }
            public var labelMatchExpressionGroups: [ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.labelMatchExpressionGroups != nil {
                    var tmp : [Any] = []
                    for k in self.labelMatchExpressionGroups! {
                        tmp.append(k.toMap())
                    }
                    map["LabelMatchExpressionGroups"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LabelMatchExpressionGroups") {
                    self.labelMatchExpressionGroups = dict["LabelMatchExpressionGroups"] as! [ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups]
                }
            }
        }
        public var alertProvider: String?

        public var annotations: [String: Any]?

        public var id: Int32?

        public var labelMatchExpressionGrid: ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid?

        public var labels: [String: Any]?

        public var message: String?

        public var name: String?

        public var parentId: Int32?

        public var public_: Bool?

        public var rule: String?

        public var status: Bool?

        public var templateProvider: String?

        public var type: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.labelMatchExpressionGrid?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertProvider != nil {
                map["AlertProvider"] = self.alertProvider!
            }
            if self.annotations != nil {
                map["Annotations"] = self.annotations!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.labelMatchExpressionGrid != nil {
                map["LabelMatchExpressionGrid"] = self.labelMatchExpressionGrid?.toMap()
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.public_ != nil {
                map["Public"] = self.public_!
            }
            if self.rule != nil {
                map["Rule"] = self.rule!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateProvider != nil {
                map["TemplateProvider"] = self.templateProvider!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertProvider") {
                self.alertProvider = dict["AlertProvider"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [String: Any]
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("LabelMatchExpressionGrid") {
                var model = ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid()
                model.fromMap(dict["LabelMatchExpressionGrid"] as! [String: Any])
                self.labelMatchExpressionGrid = model
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String: Any]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! Int32
            }
            if dict.keys.contains("Public") {
                self.public_ = dict["Public"] as! Bool
            }
            if dict.keys.contains("Rule") {
                self.rule = dict["Rule"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Bool
            }
            if dict.keys.contains("TemplateProvider") {
                self.templateProvider = dict["TemplateProvider"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var alertTemplates: [ListAlertTemplatesResponseBody.AlertTemplates]?

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
        if self.alertTemplates != nil {
            var tmp : [Any] = []
            for k in self.alertTemplates! {
                tmp.append(k.toMap())
            }
            map["AlertTemplates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertTemplates") {
            self.alertTemplates = dict["AlertTemplates"] as! [ListAlertTemplatesResponseBody.AlertTemplates]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAlertTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlertTemplatesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAlertTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterFromGrafanaRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListClusterFromGrafanaResponseBody : Tea.TeaModel {
    public class PromClusterList : Tea.TeaModel {
        public var agentStatus: String?

        public var clusterId: String?

        public var clusterName: String?

        public var clusterType: String?

        public var controllerId: String?

        public var createTime: Int64?

        public var extra: String?

        public var id: Int64?

        public var installTime: Int64?

        public var isControllerInstalled: Bool?

        public var lastHeartBeatTime: Int64?

        public var nodeNum: Int32?

        public var options: String?

        public var pluginsJsonArray: String?

        public var regionId: String?

        public var stateJson: String?

        public var updateTime: Int64?

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
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.controllerId != nil {
                map["ControllerId"] = self.controllerId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.installTime != nil {
                map["InstallTime"] = self.installTime!
            }
            if self.isControllerInstalled != nil {
                map["IsControllerInstalled"] = self.isControllerInstalled!
            }
            if self.lastHeartBeatTime != nil {
                map["LastHeartBeatTime"] = self.lastHeartBeatTime!
            }
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.pluginsJsonArray != nil {
                map["PluginsJsonArray"] = self.pluginsJsonArray!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.stateJson != nil {
                map["StateJson"] = self.stateJson!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentStatus") {
                self.agentStatus = dict["AgentStatus"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ClusterType") {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("ControllerId") {
                self.controllerId = dict["ControllerId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstallTime") {
                self.installTime = dict["InstallTime"] as! Int64
            }
            if dict.keys.contains("IsControllerInstalled") {
                self.isControllerInstalled = dict["IsControllerInstalled"] as! Bool
            }
            if dict.keys.contains("LastHeartBeatTime") {
                self.lastHeartBeatTime = dict["LastHeartBeatTime"] as! Int64
            }
            if dict.keys.contains("NodeNum") {
                self.nodeNum = dict["NodeNum"] as! Int32
            }
            if dict.keys.contains("Options") {
                self.options = dict["Options"] as! String
            }
            if dict.keys.contains("PluginsJsonArray") {
                self.pluginsJsonArray = dict["PluginsJsonArray"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StateJson") {
                self.stateJson = dict["StateJson"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var promClusterList: [ListClusterFromGrafanaResponseBody.PromClusterList]?

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
        if self.promClusterList != nil {
            var tmp : [Any] = []
            for k in self.promClusterList! {
                tmp.append(k.toMap())
            }
            map["PromClusterList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PromClusterList") {
            self.promClusterList = dict["PromClusterList"] as! [ListClusterFromGrafanaResponseBody.PromClusterList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListClusterFromGrafanaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterFromGrafanaResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClusterFromGrafanaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDashboardsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterType: String?

    public var dashboardName: String?

    public var product: String?

    public var recreateSwitch: Bool?

    public var regionId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.dashboardName != nil {
            map["DashboardName"] = self.dashboardName!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.recreateSwitch != nil {
            map["RecreateSwitch"] = self.recreateSwitch!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("DashboardName") {
            self.dashboardName = dict["DashboardName"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RecreateSwitch") {
            self.recreateSwitch = dict["RecreateSwitch"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class ListDashboardsResponseBody : Tea.TeaModel {
    public class DashboardVos : Tea.TeaModel {
        public var dashboardType: String?

        public var exporter: String?

        public var id: String?

        public var isArmsExporter: Bool?

        public var kind: String?

        public var name: String?

        public var needUpdate: Bool?

        public var tags: [String]?

        public var time: String?

        public var title: String?

        public var type: String?

        public var uid: String?

        public var url: String?

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
            if self.dashboardType != nil {
                map["DashboardType"] = self.dashboardType!
            }
            if self.exporter != nil {
                map["Exporter"] = self.exporter!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isArmsExporter != nil {
                map["IsArmsExporter"] = self.isArmsExporter!
            }
            if self.kind != nil {
                map["Kind"] = self.kind!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.needUpdate != nil {
                map["NeedUpdate"] = self.needUpdate!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DashboardType") {
                self.dashboardType = dict["DashboardType"] as! String
            }
            if dict.keys.contains("Exporter") {
                self.exporter = dict["Exporter"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsArmsExporter") {
                self.isArmsExporter = dict["IsArmsExporter"] as! Bool
            }
            if dict.keys.contains("Kind") {
                self.kind = dict["Kind"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedUpdate") {
                self.needUpdate = dict["NeedUpdate"] as! Bool
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String]
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var dashboardVos: [ListDashboardsResponseBody.DashboardVos]?

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
        if self.dashboardVos != nil {
            var tmp : [Any] = []
            for k in self.dashboardVos! {
                tmp.append(k.toMap())
            }
            map["DashboardVos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DashboardVos") {
            self.dashboardVos = dict["DashboardVos"] as! [ListDashboardsResponseBody.DashboardVos]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDashboardsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDashboardsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDashboardsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDispatchRuleRequest : Tea.TeaModel {
    public var name: String?

    public var regionId: String?

    public var system: Bool?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.system != nil {
            map["System"] = self.system!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("System") {
            self.system = dict["System"] as! Bool
        }
    }
}

public class ListDispatchRuleResponseBody : Tea.TeaModel {
    public class DispatchRules : Tea.TeaModel {
        public var name: String?

        public var ruleId: Int64?

        public var state: String?

        public override init() {
            super.init()
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
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
        }
    }
    public var dispatchRules: [ListDispatchRuleResponseBody.DispatchRules]?

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
        if self.dispatchRules != nil {
            var tmp : [Any] = []
            for k in self.dispatchRules! {
                tmp.append(k.toMap())
            }
            map["DispatchRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DispatchRules") {
            self.dispatchRules = dict["DispatchRules"] as! [ListDispatchRuleResponseBody.DispatchRules]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDispatchRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDispatchRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDispatchRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPromClustersRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListPromClustersResponseBody : Tea.TeaModel {
    public class PromClusterList : Tea.TeaModel {
        public var agentStatus: String?

        public var clusterId: String?

        public var clusterName: String?

        public var clusterType: String?

        public var controllerId: String?

        public var createTime: Int64?

        public var extra: String?

        public var id: Int64?

        public var installTime: Int64?

        public var isControllerInstalled: Bool?

        public var lastHeartBeatTime: Int64?

        public var nodeNum: Int32?

        public var options: String?

        public var pluginsJsonArray: String?

        public var regionId: String?

        public var stateJson: String?

        public var updateTime: Int64?

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
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.controllerId != nil {
                map["ControllerId"] = self.controllerId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.installTime != nil {
                map["InstallTime"] = self.installTime!
            }
            if self.isControllerInstalled != nil {
                map["IsControllerInstalled"] = self.isControllerInstalled!
            }
            if self.lastHeartBeatTime != nil {
                map["LastHeartBeatTime"] = self.lastHeartBeatTime!
            }
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.pluginsJsonArray != nil {
                map["PluginsJsonArray"] = self.pluginsJsonArray!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.stateJson != nil {
                map["StateJson"] = self.stateJson!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentStatus") {
                self.agentStatus = dict["AgentStatus"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ClusterType") {
                self.clusterType = dict["ClusterType"] as! String
            }
            if dict.keys.contains("ControllerId") {
                self.controllerId = dict["ControllerId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Extra") {
                self.extra = dict["Extra"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstallTime") {
                self.installTime = dict["InstallTime"] as! Int64
            }
            if dict.keys.contains("IsControllerInstalled") {
                self.isControllerInstalled = dict["IsControllerInstalled"] as! Bool
            }
            if dict.keys.contains("LastHeartBeatTime") {
                self.lastHeartBeatTime = dict["LastHeartBeatTime"] as! Int64
            }
            if dict.keys.contains("NodeNum") {
                self.nodeNum = dict["NodeNum"] as! Int32
            }
            if dict.keys.contains("Options") {
                self.options = dict["Options"] as! String
            }
            if dict.keys.contains("PluginsJsonArray") {
                self.pluginsJsonArray = dict["PluginsJsonArray"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("StateJson") {
                self.stateJson = dict["StateJson"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var promClusterList: [ListPromClustersResponseBody.PromClusterList]?

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
        if self.promClusterList != nil {
            var tmp : [Any] = []
            for k in self.promClusterList! {
                tmp.append(k.toMap())
            }
            map["PromClusterList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PromClusterList") {
            self.promClusterList = dict["PromClusterList"] as! [ListPromClustersResponseBody.PromClusterList]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPromClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPromClustersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPromClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrometheusAlertRulesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var matchExpressions: String?

    public var name: String?

    public var regionId: String?

    public var status: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.matchExpressions != nil {
            map["MatchExpressions"] = self.matchExpressions!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MatchExpressions") {
            self.matchExpressions = dict["MatchExpressions"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListPrometheusAlertRulesResponseBody : Tea.TeaModel {
    public class PrometheusAlertRules : Tea.TeaModel {
        public class Annotations : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var alertId: Int64?

        public var alertName: String?

        public var annotations: [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Annotations]?

        public var clusterId: String?

        public var dispatchRuleId: Int64?

        public var duration: String?

        public var expression: String?

        public var labels: [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Labels]?

        public var message: String?

        public var notifyType: String?

        public var status: Int32?

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
            if self.alertId != nil {
                map["AlertId"] = self.alertId!
            }
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.annotations != nil {
                var tmp : [Any] = []
                for k in self.annotations! {
                    tmp.append(k.toMap())
                }
                map["Annotations"] = tmp
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dispatchRuleId != nil {
                map["DispatchRuleId"] = self.dispatchRuleId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.notifyType != nil {
                map["NotifyType"] = self.notifyType!
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
            if dict.keys.contains("AlertId") {
                self.alertId = dict["AlertId"] as! Int64
            }
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Annotations]
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DispatchRuleId") {
                self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("Expression") {
                self.expression = dict["Expression"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Labels]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("NotifyType") {
                self.notifyType = dict["NotifyType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var prometheusAlertRules: [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules]?

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
        if self.prometheusAlertRules != nil {
            var tmp : [Any] = []
            for k in self.prometheusAlertRules! {
                tmp.append(k.toMap())
            }
            map["PrometheusAlertRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrometheusAlertRules") {
            self.prometheusAlertRules = dict["PrometheusAlertRules"] as! [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrometheusAlertRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrometheusAlertRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPrometheusAlertRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPrometheusAlertTemplatesRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListPrometheusAlertTemplatesResponseBody : Tea.TeaModel {
    public class PrometheusAlertTemplates : Tea.TeaModel {
        public class Annotations : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var alertName: String?

        public var annotations: [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Annotations]?

        public var description_: String?

        public var duration: String?

        public var expression: String?

        public var labels: [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Labels]?

        public var type: String?

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
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.annotations != nil {
                var tmp : [Any] = []
                for k in self.annotations! {
                    tmp.append(k.toMap())
                }
                map["Annotations"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Annotations]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("Expression") {
                self.expression = dict["Expression"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Labels]
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var prometheusAlertTemplates: [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates]?

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
        if self.prometheusAlertTemplates != nil {
            var tmp : [Any] = []
            for k in self.prometheusAlertTemplates! {
                tmp.append(k.toMap())
            }
            map["PrometheusAlertTemplates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrometheusAlertTemplates") {
            self.prometheusAlertTemplates = dict["PrometheusAlertTemplates"] as! [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPrometheusAlertTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrometheusAlertTemplatesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPrometheusAlertTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRetcodeAppsRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class ListRetcodeAppsResponseBody : Tea.TeaModel {
    public class RetcodeApps : Tea.TeaModel {
        public var appId: Int64?

        public var appName: String?

        public var pid: String?

        public override init() {
            super.init()
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
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! Int64
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
        }
    }
    public var requestId: String?

    public var retcodeApps: [ListRetcodeAppsResponseBody.RetcodeApps]?

    public override init() {
        super.init()
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
        if self.retcodeApps != nil {
            var tmp : [Any] = []
            for k in self.retcodeApps! {
                tmp.append(k.toMap())
            }
            map["RetcodeApps"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RetcodeApps") {
            self.retcodeApps = dict["RetcodeApps"] as! [ListRetcodeAppsResponseBody.RetcodeApps]
        }
    }
}

public class ListRetcodeAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRetcodeAppsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRetcodeAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListScenarioRequest : Tea.TeaModel {
    public var appId: String?

    public var name: String?

    public var regionId: String?

    public var scenario: String?

    public var sign: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scenario != nil {
            map["Scenario"] = self.scenario!
        }
        if self.sign != nil {
            map["Sign"] = self.sign!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scenario") {
            self.scenario = dict["Scenario"] as! String
        }
        if dict.keys.contains("Sign") {
            self.sign = dict["Sign"] as! String
        }
    }
}

public class ListScenarioResponseBody : Tea.TeaModel {
    public class ArmsScenarios : Tea.TeaModel {
        public var appId: String?

        public var createTime: String?

        public var extensions: String?

        public var id: Int64?

        public var name: String?

        public var regionId: String?

        public var sign: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.extensions != nil {
                map["Extensions"] = self.extensions!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Extensions") {
                self.extensions = dict["Extensions"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Sign") {
                self.sign = dict["Sign"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var armsScenarios: [ListScenarioResponseBody.ArmsScenarios]?

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
        if self.armsScenarios != nil {
            var tmp : [Any] = []
            for k in self.armsScenarios! {
                tmp.append(k.toMap())
            }
            map["ArmsScenarios"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArmsScenarios") {
            self.armsScenarios = dict["ArmsScenarios"] as! [ListScenarioResponseBody.ArmsScenarios]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListScenarioResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScenarioResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListScenarioResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServerlessTopNAppsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var limit: Int32?

    public var orderBy: String?

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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class ListServerlessTopNAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int32?

        public var error: Int32?

        public var name: String?

        public var pid: String?

        public var region: String?

        public var rt: Double?

        public override init() {
            super.init()
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
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.rt != nil {
                map["Rt"] = self.rt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Rt") {
                self.rt = dict["Rt"] as! Double
            }
        }
    }
    public var data: [ListServerlessTopNAppsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [ListServerlessTopNAppsResponseBody.Data]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListServerlessTopNAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServerlessTopNAppsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServerlessTopNAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTraceAppsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListTraceAppsResponseBody : Tea.TeaModel {
    public class TraceApps : Tea.TeaModel {
        public var appId: Int64?

        public var appName: String?

        public var createTime: Int64?

        public var labels: [String]?

        public var pid: String?

        public var regionId: String?

        public var show: Bool?

        public var type: String?

        public var updateTime: Int64?

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
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.show != nil {
                map["Show"] = self.show!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! Int64
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Show") {
                self.show = dict["Show"] as! Bool
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceApps: [ListTraceAppsResponseBody.TraceApps]?

    public override init() {
        super.init()
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
        if self.traceApps != nil {
            var tmp : [Any] = []
            for k in self.traceApps! {
                tmp.append(k.toMap())
            }
            map["TraceApps"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TraceApps") {
            self.traceApps = dict["TraceApps"] as! [ListTraceAppsResponseBody.TraceApps]
        }
    }
}

public class ListTraceAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTraceAppsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTraceAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenArmsDefaultSLRRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenArmsDefaultSLRResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenArmsDefaultSLRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenArmsDefaultSLRResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenArmsDefaultSLRResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenArmsServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class OpenArmsServiceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenArmsServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenArmsServiceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenArmsServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenArmsServiceSecondVersionRequest : Tea.TeaModel {
    public var regionId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class OpenArmsServiceSecondVersionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenArmsServiceSecondVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenArmsServiceSecondVersionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenArmsServiceSecondVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenVClusterRequest : Tea.TeaModel {
    public var clusterType: String?

    public var length: Int32?

    public var product: String?

    public var recreateSwitch: Bool?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.recreateSwitch != nil {
            map["RecreateSwitch"] = self.recreateSwitch!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RecreateSwitch") {
            self.recreateSwitch = dict["RecreateSwitch"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenVClusterResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenVClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenVClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenVClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenXtraceDefaultSLRRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class OpenXtraceDefaultSLRResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenXtraceDefaultSLRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenXtraceDefaultSLRResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenXtraceDefaultSLRResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDatasetRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var datasetId: Int64?

    public var dateStr: String?

    public var dimensions: [QueryDatasetRequest.Dimensions]?

    public var hungryMode: Bool?

    public var intervalInSec: Int32?

    public var isDrillDown: Bool?

    public var limit: Int32?

    public var maxTime: Int64?

    public var measures: [String]?

    public var minTime: Int64?

    public var optionalDims: [QueryDatasetRequest.OptionalDims]?

    public var orderByKey: String?

    public var proxyUserId: String?

    public var reduceTail: Bool?

    public var requiredDims: [QueryDatasetRequest.RequiredDims]?

    public override init() {
        super.init()
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
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetId") {
            self.datasetId = dict["DatasetId"] as! Int64
        }
        if dict.keys.contains("DateStr") {
            self.dateStr = dict["DateStr"] as! String
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [QueryDatasetRequest.Dimensions]
        }
        if dict.keys.contains("HungryMode") {
            self.hungryMode = dict["HungryMode"] as! Bool
        }
        if dict.keys.contains("IntervalInSec") {
            self.intervalInSec = dict["IntervalInSec"] as! Int32
        }
        if dict.keys.contains("IsDrillDown") {
            self.isDrillDown = dict["IsDrillDown"] as! Bool
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("MaxTime") {
            self.maxTime = dict["MaxTime"] as! Int64
        }
        if dict.keys.contains("Measures") {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("MinTime") {
            self.minTime = dict["MinTime"] as! Int64
        }
        if dict.keys.contains("OptionalDims") {
            self.optionalDims = dict["OptionalDims"] as! [QueryDatasetRequest.OptionalDims]
        }
        if dict.keys.contains("OrderByKey") {
            self.orderByKey = dict["OrderByKey"] as! String
        }
        if dict.keys.contains("ProxyUserId") {
            self.proxyUserId = dict["ProxyUserId"] as! String
        }
        if dict.keys.contains("ReduceTail") {
            self.reduceTail = dict["ReduceTail"] as! Bool
        }
        if dict.keys.contains("RequiredDims") {
            self.requiredDims = dict["RequiredDims"] as! [QueryDatasetRequest.RequiredDims]
        }
    }
}

public class QueryDatasetResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDatasetResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMetricRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var consistencyDataKey: String?

    public var consistencyQueryStrategy: String?

    public var dimensions: [String]?

    public var endTime: Int64?

    public var filters: [QueryMetricRequest.Filters]?

    public var intervalInSec: Int32?

    public var limit: Int32?

    public var measures: [String]?

    public var metric: String?

    public var order: String?

    public var orderBy: String?

    public var proxyUserId: String?

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
        if self.consistencyDataKey != nil {
            map["ConsistencyDataKey"] = self.consistencyDataKey!
        }
        if self.consistencyQueryStrategy != nil {
            map["ConsistencyQueryStrategy"] = self.consistencyQueryStrategy!
        }
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
        if self.intervalInSec != nil {
            map["IntervalInSec"] = self.intervalInSec!
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
        if self.proxyUserId != nil {
            map["ProxyUserId"] = self.proxyUserId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConsistencyDataKey") {
            self.consistencyDataKey = dict["ConsistencyDataKey"] as! String
        }
        if dict.keys.contains("ConsistencyQueryStrategy") {
            self.consistencyQueryStrategy = dict["ConsistencyQueryStrategy"] as! String
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [String]
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Filters") {
            self.filters = dict["Filters"] as! [QueryMetricRequest.Filters]
        }
        if dict.keys.contains("IntervalInSec") {
            self.intervalInSec = dict["IntervalInSec"] as! Int32
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Measures") {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("Metric") {
            self.metric = dict["Metric"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("ProxyUserId") {
            self.proxyUserId = dict["ProxyUserId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class QueryMetricResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMetricResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMetricByPageRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var customFilters: [String]?

    public var dimensions: [String]?

    public var endTime: Int64?

    public var filters: [QueryMetricByPageRequest.Filters]?

    public var intervalInSec: Int32?

    public var measures: [String]?

    public var metric: String?

    public var order: String?

    public var orderBy: String?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.customFilters != nil {
            map["CustomFilters"] = self.customFilters!
        }
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
        if self.intervalInSec != nil {
            map["IntervalInSec"] = self.intervalInSec!
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("CustomFilters") {
            self.customFilters = dict["CustomFilters"] as! [String]
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [String]
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Filters") {
            self.filters = dict["Filters"] as! [QueryMetricByPageRequest.Filters]
        }
        if dict.keys.contains("IntervalInSec") {
            self.intervalInSec = dict["IntervalInSec"] as! Int32
        }
        if dict.keys.contains("Measures") {
            self.measures = dict["Measures"] as! [String]
        }
        if dict.keys.contains("Metric") {
            self.metric = dict["Metric"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class QueryMetricByPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var items: [[String: Any]]?

        public var page: Int32?

        public var pageSize: Int32?

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
            if self.items != nil {
                map["Items"] = self.items!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                self.items = dict["Items"] as! [[String: Any]]
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryMetricByPageResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryMetricByPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryMetricByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMetricByPageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryMetricByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPromInstallStatusRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class QueryPromInstallStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isControllerInstalled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isControllerInstalled != nil {
                map["isControllerInstalled"] = self.isControllerInstalled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("isControllerInstalled") {
                self.isControllerInstalled = dict["isControllerInstalled"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var data: QueryPromInstallStatusResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") {
            var model = QueryPromInstallStatusResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryPromInstallStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPromInstallStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryPromInstallStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveTraceAppConfigRequest : Tea.TeaModel {
    public class Settings : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var pid: String?

    public var settings: [SaveTraceAppConfigRequest.Settings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.settings != nil {
            var tmp : [Any] = []
            for k in self.settings! {
                tmp.append(k.toMap())
            }
            map["Settings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("Settings") {
            self.settings = dict["Settings"] as! [SaveTraceAppConfigRequest.Settings]
        }
    }
}

public class SaveTraceAppConfigResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SaveTraceAppConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTraceAppConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveTraceAppConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchAlertContactRequest : Tea.TeaModel {
    public var contactIds: String?

    public var contactName: String?

    public var currentPage: String?

    public var email: String?

    public var pageSize: String?

    public var phone: String?

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
        if self.contactIds != nil {
            map["ContactIds"] = self.contactIds!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactIds") {
            self.contactIds = dict["ContactIds"] as! String
        }
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SearchAlertContactResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class Contacts : Tea.TeaModel {
            public var contactId: Int64?

            public var contactName: String?

            public var createTime: Int64?

            public var dingRobot: String?

            public var email: String?

            public var phone: String?

            public var systemNoc: Bool?

            public var updateTime: Int64?

            public var userId: String?

            public var webhook: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contactId != nil {
                    map["ContactId"] = self.contactId!
                }
                if self.contactName != nil {
                    map["ContactName"] = self.contactName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dingRobot != nil {
                    map["DingRobot"] = self.dingRobot!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                if self.systemNoc != nil {
                    map["SystemNoc"] = self.systemNoc!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.webhook != nil {
                    map["Webhook"] = self.webhook!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ContactId") {
                    self.contactId = dict["ContactId"] as! Int64
                }
                if dict.keys.contains("ContactName") {
                    self.contactName = dict["ContactName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DingRobot") {
                    self.dingRobot = dict["DingRobot"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
                if dict.keys.contains("SystemNoc") {
                    self.systemNoc = dict["SystemNoc"] as! Bool
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("Webhook") {
                    self.webhook = dict["Webhook"] as! String
                }
            }
        }
        public var contacts: [SearchAlertContactResponseBody.PageBean.Contacts]?

        public var pageNumber: Int32?

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
            if self.contacts != nil {
                var tmp : [Any] = []
                for k in self.contacts! {
                    tmp.append(k.toMap())
                }
                map["Contacts"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Contacts") {
                self.contacts = dict["Contacts"] as! [SearchAlertContactResponseBody.PageBean.Contacts]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pageBean: SearchAlertContactResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") {
            var model = SearchAlertContactResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchAlertContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchAlertContactResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchAlertContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchAlertContactGroupRequest : Tea.TeaModel {
    public var contactGroupIds: String?

    public var contactGroupName: String?

    public var contactId: Int64?

    public var contactName: String?

    public var isDetail: Bool?

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
        if self.contactGroupIds != nil {
            map["ContactGroupIds"] = self.contactGroupIds!
        }
        if self.contactGroupName != nil {
            map["ContactGroupName"] = self.contactGroupName!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.isDetail != nil {
            map["IsDetail"] = self.isDetail!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupIds") {
            self.contactGroupIds = dict["ContactGroupIds"] as! String
        }
        if dict.keys.contains("ContactGroupName") {
            self.contactGroupName = dict["ContactGroupName"] as! String
        }
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! Int64
        }
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("IsDetail") {
            self.isDetail = dict["IsDetail"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SearchAlertContactGroupResponseBody : Tea.TeaModel {
    public class ContactGroups : Tea.TeaModel {
        public class Contacts : Tea.TeaModel {
            public var contactId: Int64?

            public var contactName: String?

            public var createTime: Int64?

            public var dingRobot: String?

            public var email: String?

            public var phone: String?

            public var systemNoc: Bool?

            public var updateTime: Int64?

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
                if self.contactId != nil {
                    map["ContactId"] = self.contactId!
                }
                if self.contactName != nil {
                    map["ContactName"] = self.contactName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dingRobot != nil {
                    map["DingRobot"] = self.dingRobot!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                if self.systemNoc != nil {
                    map["SystemNoc"] = self.systemNoc!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ContactId") {
                    self.contactId = dict["ContactId"] as! Int64
                }
                if dict.keys.contains("ContactName") {
                    self.contactName = dict["ContactName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("DingRobot") {
                    self.dingRobot = dict["DingRobot"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
                if dict.keys.contains("SystemNoc") {
                    self.systemNoc = dict["SystemNoc"] as! Bool
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var contactGroupId: Int64?

        public var contactGroupName: String?

        public var contacts: [SearchAlertContactGroupResponseBody.ContactGroups.Contacts]?

        public var createTime: Int64?

        public var updateTime: Int64?

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
            if self.contactGroupId != nil {
                map["ContactGroupId"] = self.contactGroupId!
            }
            if self.contactGroupName != nil {
                map["ContactGroupName"] = self.contactGroupName!
            }
            if self.contacts != nil {
                var tmp : [Any] = []
                for k in self.contacts! {
                    tmp.append(k.toMap())
                }
                map["Contacts"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactGroupId") {
                self.contactGroupId = dict["ContactGroupId"] as! Int64
            }
            if dict.keys.contains("ContactGroupName") {
                self.contactGroupName = dict["ContactGroupName"] as! String
            }
            if dict.keys.contains("Contacts") {
                self.contacts = dict["Contacts"] as! [SearchAlertContactGroupResponseBody.ContactGroups.Contacts]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var contactGroups: [SearchAlertContactGroupResponseBody.ContactGroups]?

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
        if self.contactGroups != nil {
            var tmp : [Any] = []
            for k in self.contactGroups! {
                tmp.append(k.toMap())
            }
            map["ContactGroups"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroups") {
            self.contactGroups = dict["ContactGroups"] as! [SearchAlertContactGroupResponseBody.ContactGroups]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchAlertContactGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchAlertContactGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchAlertContactGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchAlertHistoriesRequest : Tea.TeaModel {
    public var alertId: Int64?

    public var alertType: Int32?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var pageSize: Int32?

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
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
        if dict.keys.contains("AlertType") {
            self.alertType = dict["AlertType"] as! Int32
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class SearchAlertHistoriesResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class AlarmHistories : Tea.TeaModel {
            public var alarmContent: String?

            public var alarmResponseCode: Int32?

            public var alarmSources: String?

            public var alarmTime: Int64?

            public var alarmType: Int32?

            public var emails: String?

            public var id: Int64?

            public var phones: String?

            public var strategyId: String?

            public var target: String?

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
                if self.alarmContent != nil {
                    map["AlarmContent"] = self.alarmContent!
                }
                if self.alarmResponseCode != nil {
                    map["AlarmResponseCode"] = self.alarmResponseCode!
                }
                if self.alarmSources != nil {
                    map["AlarmSources"] = self.alarmSources!
                }
                if self.alarmTime != nil {
                    map["AlarmTime"] = self.alarmTime!
                }
                if self.alarmType != nil {
                    map["AlarmType"] = self.alarmType!
                }
                if self.emails != nil {
                    map["Emails"] = self.emails!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.phones != nil {
                    map["Phones"] = self.phones!
                }
                if self.strategyId != nil {
                    map["StrategyId"] = self.strategyId!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlarmContent") {
                    self.alarmContent = dict["AlarmContent"] as! String
                }
                if dict.keys.contains("AlarmResponseCode") {
                    self.alarmResponseCode = dict["AlarmResponseCode"] as! Int32
                }
                if dict.keys.contains("AlarmSources") {
                    self.alarmSources = dict["AlarmSources"] as! String
                }
                if dict.keys.contains("AlarmTime") {
                    self.alarmTime = dict["AlarmTime"] as! Int64
                }
                if dict.keys.contains("AlarmType") {
                    self.alarmType = dict["AlarmType"] as! Int32
                }
                if dict.keys.contains("Emails") {
                    self.emails = dict["Emails"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Phones") {
                    self.phones = dict["Phones"] as! String
                }
                if dict.keys.contains("StrategyId") {
                    self.strategyId = dict["StrategyId"] as! String
                }
                if dict.keys.contains("Target") {
                    self.target = dict["Target"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var alarmHistories: [SearchAlertHistoriesResponseBody.PageBean.AlarmHistories]?

        public var pageNumber: Int32?

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
            if self.alarmHistories != nil {
                var tmp : [Any] = []
                for k in self.alarmHistories! {
                    tmp.append(k.toMap())
                }
                map["AlarmHistories"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmHistories") {
                self.alarmHistories = dict["AlarmHistories"] as! [SearchAlertHistoriesResponseBody.PageBean.AlarmHistories]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pageBean: SearchAlertHistoriesResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") {
            var model = SearchAlertHistoriesResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchAlertHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchAlertHistoriesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchAlertHistoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchAlertRulesRequest : Tea.TeaModel {
    public var appType: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var pid: String?

    public var regionId: String?

    public var title: String?

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
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class SearchAlertRulesResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class AlertRules : Tea.TeaModel {
            public class AlarmContext : Tea.TeaModel {
                public var alarmContentSubTitle: String?

                public var alarmContentTemplate: String?

                public var content: String?

                public var subTitle: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alarmContentSubTitle != nil {
                        map["AlarmContentSubTitle"] = self.alarmContentSubTitle!
                    }
                    if self.alarmContentTemplate != nil {
                        map["AlarmContentTemplate"] = self.alarmContentTemplate!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.subTitle != nil {
                        map["SubTitle"] = self.subTitle!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AlarmContentSubTitle") {
                        self.alarmContentSubTitle = dict["AlarmContentSubTitle"] as! String
                    }
                    if dict.keys.contains("AlarmContentTemplate") {
                        self.alarmContentTemplate = dict["AlarmContentTemplate"] as! String
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("SubTitle") {
                        self.subTitle = dict["SubTitle"] as! String
                    }
                }
            }
            public class AlertRule : Tea.TeaModel {
                public class Rules : Tea.TeaModel {
                    public var aggregates: String?

                    public var alias: String?

                    public var measure: String?

                    public var NValue: Int32?

                    public var operator_: String?

                    public var value: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aggregates != nil {
                            map["Aggregates"] = self.aggregates!
                        }
                        if self.alias != nil {
                            map["Alias"] = self.alias!
                        }
                        if self.measure != nil {
                            map["Measure"] = self.measure!
                        }
                        if self.NValue != nil {
                            map["NValue"] = self.NValue!
                        }
                        if self.operator_ != nil {
                            map["Operator"] = self.operator_!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Aggregates") {
                            self.aggregates = dict["Aggregates"] as! String
                        }
                        if dict.keys.contains("Alias") {
                            self.alias = dict["Alias"] as! String
                        }
                        if dict.keys.contains("Measure") {
                            self.measure = dict["Measure"] as! String
                        }
                        if dict.keys.contains("NValue") {
                            self.NValue = dict["NValue"] as! Int32
                        }
                        if dict.keys.contains("Operator") {
                            self.operator_ = dict["Operator"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! Double
                        }
                    }
                }
                public var operator_: String?

                public var rules: [SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule.Rules]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.operator_ != nil {
                        map["Operator"] = self.operator_!
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
                    if dict.keys.contains("Operator") {
                        self.operator_ = dict["Operator"] as! String
                    }
                    if dict.keys.contains("Rules") {
                        self.rules = dict["Rules"] as! [SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule.Rules]
                    }
                }
            }
            public class MetricParam : Tea.TeaModel {
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
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var appGroupId: String?

                public var appId: String?

                public var dimensions: [SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam.Dimensions]?

                public var pid: String?

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
                    if self.appGroupId != nil {
                        map["AppGroupId"] = self.appGroupId!
                    }
                    if self.appId != nil {
                        map["AppId"] = self.appId!
                    }
                    if self.dimensions != nil {
                        var tmp : [Any] = []
                        for k in self.dimensions! {
                            tmp.append(k.toMap())
                        }
                        map["Dimensions"] = tmp
                    }
                    if self.pid != nil {
                        map["Pid"] = self.pid!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppGroupId") {
                        self.appGroupId = dict["AppGroupId"] as! String
                    }
                    if dict.keys.contains("AppId") {
                        self.appId = dict["AppId"] as! String
                    }
                    if dict.keys.contains("Dimensions") {
                        self.dimensions = dict["Dimensions"] as! [SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam.Dimensions]
                    }
                    if dict.keys.contains("Pid") {
                        self.pid = dict["Pid"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Notice : Tea.TeaModel {
                public var endTime: Int64?

                public var noticeEndTime: Int64?

                public var noticeStartTime: Int64?

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
                    if self.noticeEndTime != nil {
                        map["NoticeEndTime"] = self.noticeEndTime!
                    }
                    if self.noticeStartTime != nil {
                        map["NoticeStartTime"] = self.noticeStartTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! Int64
                    }
                    if dict.keys.contains("NoticeEndTime") {
                        self.noticeEndTime = dict["NoticeEndTime"] as! Int64
                    }
                    if dict.keys.contains("NoticeStartTime") {
                        self.noticeStartTime = dict["NoticeStartTime"] as! Int64
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! Int64
                    }
                }
            }
            public var alarmContext: SearchAlertRulesResponseBody.PageBean.AlertRules.AlarmContext?

            public var alertLevel: String?

            public var alertRule: SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule?

            public var alertTitle: String?

            public var alertType: Int32?

            public var alertVersion: Int32?

            public var alertWay: [String]?

            public var alertWays: [String]?

            public var config: String?

            public var contactGroupIdList: String?

            public var contactGroupIds: String?

            public var createTime: Int64?

            public var id: Int64?

            public var metricParam: SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam?

            public var notice: SearchAlertRulesResponseBody.PageBean.AlertRules.Notice?

            public var regionId: String?

            public var status: String?

            public var taskId: Int64?

            public var taskStatus: String?

            public var title: String?

            public var updateTime: Int64?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.alarmContext?.validate()
                try self.alertRule?.validate()
                try self.metricParam?.validate()
                try self.notice?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alarmContext != nil {
                    map["AlarmContext"] = self.alarmContext?.toMap()
                }
                if self.alertLevel != nil {
                    map["AlertLevel"] = self.alertLevel!
                }
                if self.alertRule != nil {
                    map["AlertRule"] = self.alertRule?.toMap()
                }
                if self.alertTitle != nil {
                    map["AlertTitle"] = self.alertTitle!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.alertVersion != nil {
                    map["AlertVersion"] = self.alertVersion!
                }
                if self.alertWay != nil {
                    map["AlertWay"] = self.alertWay!
                }
                if self.alertWays != nil {
                    map["AlertWays"] = self.alertWays!
                }
                if self.config != nil {
                    map["Config"] = self.config!
                }
                if self.contactGroupIdList != nil {
                    map["ContactGroupIdList"] = self.contactGroupIdList!
                }
                if self.contactGroupIds != nil {
                    map["ContactGroupIds"] = self.contactGroupIds!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.metricParam != nil {
                    map["MetricParam"] = self.metricParam?.toMap()
                }
                if self.notice != nil {
                    map["Notice"] = self.notice?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlarmContext") {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.AlarmContext()
                    model.fromMap(dict["AlarmContext"] as! [String: Any])
                    self.alarmContext = model
                }
                if dict.keys.contains("AlertLevel") {
                    self.alertLevel = dict["AlertLevel"] as! String
                }
                if dict.keys.contains("AlertRule") {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule()
                    model.fromMap(dict["AlertRule"] as! [String: Any])
                    self.alertRule = model
                }
                if dict.keys.contains("AlertTitle") {
                    self.alertTitle = dict["AlertTitle"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! Int32
                }
                if dict.keys.contains("AlertVersion") {
                    self.alertVersion = dict["AlertVersion"] as! Int32
                }
                if dict.keys.contains("AlertWay") {
                    self.alertWay = dict["AlertWay"] as! [String]
                }
                if dict.keys.contains("AlertWays") {
                    self.alertWays = dict["AlertWays"] as! [String]
                }
                if dict.keys.contains("Config") {
                    self.config = dict["Config"] as! String
                }
                if dict.keys.contains("ContactGroupIdList") {
                    self.contactGroupIdList = dict["ContactGroupIdList"] as! String
                }
                if dict.keys.contains("ContactGroupIds") {
                    self.contactGroupIds = dict["ContactGroupIds"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MetricParam") {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam()
                    model.fromMap(dict["MetricParam"] as! [String: Any])
                    self.metricParam = model
                }
                if dict.keys.contains("Notice") {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.Notice()
                    model.fromMap(dict["Notice"] as! [String: Any])
                    self.notice = model
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! Int64
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var alertRules: [SearchAlertRulesResponseBody.PageBean.AlertRules]?

        public var pageNumber: Int32?

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
            if self.alertRules != nil {
                var tmp : [Any] = []
                for k in self.alertRules! {
                    tmp.append(k.toMap())
                }
                map["AlertRules"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertRules") {
                self.alertRules = dict["AlertRules"] as! [SearchAlertRulesResponseBody.PageBean.AlertRules]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pageBean: SearchAlertRulesResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") {
            var model = SearchAlertRulesResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchAlertRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchAlertRulesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchAlertRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchEventsRequest : Tea.TeaModel {
    public var alertId: Int64?

    public var alertType: Int32?

    public var appType: String?

    public var currentPage: Int32?

    public var endTime: Int64?

    public var isTrigger: Int32?

    public var pageSize: Int32?

    public var pid: String?

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
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.alertType != nil {
            map["AlertType"] = self.alertType!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.isTrigger != nil {
            map["IsTrigger"] = self.isTrigger!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
        if dict.keys.contains("AlertType") {
            self.alertType = dict["AlertType"] as! Int32
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("IsTrigger") {
            self.isTrigger = dict["IsTrigger"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class SearchEventsResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class Event : Tea.TeaModel {
            public var alertId: Int64?

            public var alertName: String?

            public var alertRule: String?

            public var alertType: Int32?

            public var eventLevel: String?

            public var eventTime: Int64?

            public var id: Int64?

            public var links: [String]?

            public var message: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alertId != nil {
                    map["AlertId"] = self.alertId!
                }
                if self.alertName != nil {
                    map["AlertName"] = self.alertName!
                }
                if self.alertRule != nil {
                    map["AlertRule"] = self.alertRule!
                }
                if self.alertType != nil {
                    map["AlertType"] = self.alertType!
                }
                if self.eventLevel != nil {
                    map["EventLevel"] = self.eventLevel!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.links != nil {
                    map["Links"] = self.links!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlertId") {
                    self.alertId = dict["AlertId"] as! Int64
                }
                if dict.keys.contains("AlertName") {
                    self.alertName = dict["AlertName"] as! String
                }
                if dict.keys.contains("AlertRule") {
                    self.alertRule = dict["AlertRule"] as! String
                }
                if dict.keys.contains("AlertType") {
                    self.alertType = dict["AlertType"] as! Int32
                }
                if dict.keys.contains("EventLevel") {
                    self.eventLevel = dict["EventLevel"] as! String
                }
                if dict.keys.contains("EventTime") {
                    self.eventTime = dict["EventTime"] as! Int64
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Links") {
                    self.links = dict["Links"] as! [String]
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var event: [SearchEventsResponseBody.PageBean.Event]?

        public var pageNumber: Int32?

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
            if self.event != nil {
                var tmp : [Any] = []
                for k in self.event! {
                    tmp.append(k.toMap())
                }
                map["Event"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! [SearchEventsResponseBody.PageBean.Event]
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var isTrigger: Int32?

    public var pageBean: SearchEventsResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTrigger != nil {
            map["IsTrigger"] = self.isTrigger!
        }
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTrigger") {
            self.isTrigger = dict["IsTrigger"] as! Int32
        }
        if dict.keys.contains("PageBean") {
            var model = SearchEventsResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchEventsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchRetcodeAppByPageRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var retcodeAppName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.retcodeAppName != nil {
            map["RetcodeAppName"] = self.retcodeAppName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RetcodeAppName") {
            self.retcodeAppName = dict["RetcodeAppName"] as! String
        }
    }
}

public class SearchRetcodeAppByPageResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class RetcodeApps : Tea.TeaModel {
            public var appId: Int64?

            public var appName: String?

            public var createTime: Int64?

            public var pid: String?

            public var regionId: String?

            public var type: String?

            public var updateTime: Int64?

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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.pid != nil {
                    map["Pid"] = self.pid!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! Int64
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Pid") {
                    self.pid = dict["Pid"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var retcodeApps: [SearchRetcodeAppByPageResponseBody.PageBean.RetcodeApps]?

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
            if self.retcodeApps != nil {
                var tmp : [Any] = []
                for k in self.retcodeApps! {
                    tmp.append(k.toMap())
                }
                map["RetcodeApps"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RetcodeApps") {
                self.retcodeApps = dict["RetcodeApps"] as! [SearchRetcodeAppByPageResponseBody.PageBean.RetcodeApps]
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var pageBean: SearchRetcodeAppByPageResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") {
            var model = SearchRetcodeAppByPageResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchRetcodeAppByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchRetcodeAppByPageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchRetcodeAppByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTraceAppByNameRequest : Tea.TeaModel {
    public var regionId: String?

    public var traceAppName: String?

    public override init() {
        super.init()
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
        if self.traceAppName != nil {
            map["TraceAppName"] = self.traceAppName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TraceAppName") {
            self.traceAppName = dict["TraceAppName"] as! String
        }
    }
}

public class SearchTraceAppByNameResponseBody : Tea.TeaModel {
    public class TraceApps : Tea.TeaModel {
        public var appId: Int64?

        public var appName: String?

        public var createTime: Int64?

        public var labels: [String]?

        public var pid: String?

        public var regionId: String?

        public var show: Bool?

        public var type: String?

        public var updateTime: Int64?

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
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.show != nil {
                map["Show"] = self.show!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! Int64
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [String]
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Show") {
                self.show = dict["Show"] as! Bool
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var traceApps: [SearchTraceAppByNameResponseBody.TraceApps]?

    public override init() {
        super.init()
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
        if self.traceApps != nil {
            var tmp : [Any] = []
            for k in self.traceApps! {
                tmp.append(k.toMap())
            }
            map["TraceApps"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceApps") {
            self.traceApps = dict["TraceApps"] as! [SearchTraceAppByNameResponseBody.TraceApps]
        }
    }
}

public class SearchTraceAppByNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchTraceAppByNameResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchTraceAppByNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTraceAppByPageRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var traceAppName: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.traceAppName != nil {
            map["TraceAppName"] = self.traceAppName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TraceAppName") {
            self.traceAppName = dict["TraceAppName"] as! String
        }
    }
}

public class SearchTraceAppByPageResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class TraceApps : Tea.TeaModel {
            public var appId: Int64?

            public var appName: String?

            public var createTime: Int64?

            public var labels: [String]?

            public var pid: String?

            public var regionId: String?

            public var show: Bool?

            public var type: String?

            public var updateTime: Int64?

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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.labels != nil {
                    map["Labels"] = self.labels!
                }
                if self.pid != nil {
                    map["Pid"] = self.pid!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.show != nil {
                    map["Show"] = self.show!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! Int64
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Labels") {
                    self.labels = dict["Labels"] as! [String]
                }
                if dict.keys.contains("Pid") {
                    self.pid = dict["Pid"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Show") {
                    self.show = dict["Show"] as! Bool
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

        public var traceApps: [SearchTraceAppByPageResponseBody.PageBean.TraceApps]?

        public override init() {
            super.init()
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.traceApps != nil {
                var tmp : [Any] = []
                for k in self.traceApps! {
                    tmp.append(k.toMap())
                }
                map["TraceApps"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TraceApps") {
                self.traceApps = dict["TraceApps"] as! [SearchTraceAppByPageResponseBody.PageBean.TraceApps]
            }
        }
    }
    public var pageBean: SearchTraceAppByPageResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") {
            var model = SearchTraceAppByPageResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchTraceAppByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchTraceAppByPageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchTraceAppByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTracesRequest : Tea.TeaModel {
    public class ExclusionFilters : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var endTime: Int64?

    public var exclusionFilters: [SearchTracesRequest.ExclusionFilters]?

    public var minDuration: Int64?

    public var operationName: String?

    public var regionId: String?

    public var reverse: Bool?

    public var serviceIp: String?

    public var serviceName: String?

    public var startTime: Int64?

    public var tag: [SearchTracesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.exclusionFilters != nil {
            var tmp : [Any] = []
            for k in self.exclusionFilters! {
                tmp.append(k.toMap())
            }
            map["ExclusionFilters"] = tmp
        }
        if self.minDuration != nil {
            map["MinDuration"] = self.minDuration!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.serviceIp != nil {
            map["ServiceIp"] = self.serviceIp!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ExclusionFilters") {
            self.exclusionFilters = dict["ExclusionFilters"] as! [SearchTracesRequest.ExclusionFilters]
        }
        if dict.keys.contains("MinDuration") {
            self.minDuration = dict["MinDuration"] as! Int64
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("ServiceIp") {
            self.serviceIp = dict["ServiceIp"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [SearchTracesRequest.Tag]
        }
    }
}

public class SearchTracesResponseBody : Tea.TeaModel {
    public class TraceInfos : Tea.TeaModel {
        public var duration: Int64?

        public var operationName: String?

        public var serviceIp: String?

        public var serviceName: String?

        public var timestamp: Int64?

        public var traceID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.operationName != nil {
                map["OperationName"] = self.operationName!
            }
            if self.serviceIp != nil {
                map["ServiceIp"] = self.serviceIp!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.traceID != nil {
                map["TraceID"] = self.traceID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("OperationName") {
                self.operationName = dict["OperationName"] as! String
            }
            if dict.keys.contains("ServiceIp") {
                self.serviceIp = dict["ServiceIp"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! Int64
            }
            if dict.keys.contains("TraceID") {
                self.traceID = dict["TraceID"] as! String
            }
        }
    }
    public var requestId: String?

    public var traceInfos: [SearchTracesResponseBody.TraceInfos]?

    public override init() {
        super.init()
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
        if self.traceInfos != nil {
            var tmp : [Any] = []
            for k in self.traceInfos! {
                tmp.append(k.toMap())
            }
            map["TraceInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TraceInfos") {
            self.traceInfos = dict["TraceInfos"] as! [SearchTracesResponseBody.TraceInfos]
        }
    }
}

public class SearchTracesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchTracesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchTracesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchTracesByPageRequest : Tea.TeaModel {
    public class ExclusionFilters : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var endTime: Int64?

    public var exclusionFilters: [SearchTracesByPageRequest.ExclusionFilters]?

    public var minDuration: Int64?

    public var operationName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var reverse: Bool?

    public var serviceIp: String?

    public var serviceName: String?

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
        if self.exclusionFilters != nil {
            var tmp : [Any] = []
            for k in self.exclusionFilters! {
                tmp.append(k.toMap())
            }
            map["ExclusionFilters"] = tmp
        }
        if self.minDuration != nil {
            map["MinDuration"] = self.minDuration!
        }
        if self.operationName != nil {
            map["OperationName"] = self.operationName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.serviceIp != nil {
            map["ServiceIp"] = self.serviceIp!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ExclusionFilters") {
            self.exclusionFilters = dict["ExclusionFilters"] as! [SearchTracesByPageRequest.ExclusionFilters]
        }
        if dict.keys.contains("MinDuration") {
            self.minDuration = dict["MinDuration"] as! Int64
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("ServiceIp") {
            self.serviceIp = dict["ServiceIp"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class SearchTracesByPageResponseBody : Tea.TeaModel {
    public class PageBean : Tea.TeaModel {
        public class TraceInfos : Tea.TeaModel {
            public var duration: Int64?

            public var operationName: String?

            public var serviceIp: String?

            public var serviceName: String?

            public var timestamp: Int64?

            public var traceID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.operationName != nil {
                    map["OperationName"] = self.operationName!
                }
                if self.serviceIp != nil {
                    map["ServiceIp"] = self.serviceIp!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.traceID != nil {
                    map["TraceID"] = self.traceID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int64
                }
                if dict.keys.contains("OperationName") {
                    self.operationName = dict["OperationName"] as! String
                }
                if dict.keys.contains("ServiceIp") {
                    self.serviceIp = dict["ServiceIp"] as! String
                }
                if dict.keys.contains("ServiceName") {
                    self.serviceName = dict["ServiceName"] as! String
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("TraceID") {
                    self.traceID = dict["TraceID"] as! String
                }
            }
        }
        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public var traceInfos: [SearchTracesByPageResponseBody.PageBean.TraceInfos]?

        public override init() {
            super.init()
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
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.traceInfos != nil {
                var tmp : [Any] = []
                for k in self.traceInfos! {
                    tmp.append(k.toMap())
                }
                map["TraceInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
            if dict.keys.contains("TraceInfos") {
                self.traceInfos = dict["TraceInfos"] as! [SearchTracesByPageResponseBody.PageBean.TraceInfos]
            }
        }
    }
    public var pageBean: SearchTracesByPageResponseBody.PageBean?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageBean?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageBean != nil {
            map["PageBean"] = self.pageBean?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageBean") {
            var model = SearchTracesByPageResponseBody.PageBean()
            model.fromMap(dict["PageBean"] as! [String: Any])
            self.pageBean = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchTracesByPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchTracesByPageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchTracesByPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCustomIncidentsRequest : Tea.TeaModel {
    public var incidents: String?

    public var productType: String?

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
        if self.incidents != nil {
            map["Incidents"] = self.incidents!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Incidents") {
            self.incidents = dict["Incidents"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SendCustomIncidentsResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendCustomIncidentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCustomIncidentsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendCustomIncidentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMseIncidentRequest : Tea.TeaModel {
    public var incidents: String?

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
        if self.incidents != nil {
            map["Incidents"] = self.incidents!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Incidents") {
            self.incidents = dict["Incidents"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SendMseIncidentResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendMseIncidentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMseIncidentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendMseIncidentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetRetcodeShareStatusRequest : Tea.TeaModel {
    public var pid: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pid") {
            self.pid = dict["Pid"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class SetRetcodeShareStatusResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetRetcodeShareStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetRetcodeShareStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetRetcodeShareStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAlertRequest : Tea.TeaModel {
    public var alertId: String?

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
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartAlertResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAlertResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartAlertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAlertRequest : Tea.TeaModel {
    public var alertId: String?

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
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopAlertResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAlertResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopAlertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UninstallPromClusterRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UninstallPromClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var data: Bool?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["data"] = self.data!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
    }
}

public class UninstallPromClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallPromClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UninstallPromClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAlertContactRequest : Tea.TeaModel {
    public var contactId: Int64?

    public var contactName: String?

    public var dingRobotWebhookUrl: String?

    public var email: String?

    public var phoneNum: String?

    public var regionId: String?

    public var systemNoc: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.dingRobotWebhookUrl != nil {
            map["DingRobotWebhookUrl"] = self.dingRobotWebhookUrl!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phoneNum != nil {
            map["PhoneNum"] = self.phoneNum!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.systemNoc != nil {
            map["SystemNoc"] = self.systemNoc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! Int64
        }
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("DingRobotWebhookUrl") {
            self.dingRobotWebhookUrl = dict["DingRobotWebhookUrl"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("PhoneNum") {
            self.phoneNum = dict["PhoneNum"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SystemNoc") {
            self.systemNoc = dict["SystemNoc"] as! Bool
        }
    }
}

public class UpdateAlertContactResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAlertContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertContactResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAlertContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAlertContactGroupRequest : Tea.TeaModel {
    public var contactGroupId: Int64?

    public var contactGroupName: String?

    public var contactIds: String?

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
        if self.contactGroupId != nil {
            map["ContactGroupId"] = self.contactGroupId!
        }
        if self.contactGroupName != nil {
            map["ContactGroupName"] = self.contactGroupName!
        }
        if self.contactIds != nil {
            map["ContactIds"] = self.contactIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactGroupId") {
            self.contactGroupId = dict["ContactGroupId"] as! Int64
        }
        if dict.keys.contains("ContactGroupName") {
            self.contactGroupName = dict["ContactGroupName"] as! String
        }
        if dict.keys.contains("ContactIds") {
            self.contactIds = dict["ContactIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateAlertContactGroupResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAlertContactGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertContactGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAlertContactGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAlertRuleRequest : Tea.TeaModel {
    public var alertId: Int64?

    public var contactGroupIds: String?

    public var isAutoStart: Bool?

    public var regionId: String?

    public var templageAlertConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.contactGroupIds != nil {
            map["ContactGroupIds"] = self.contactGroupIds!
        }
        if self.isAutoStart != nil {
            map["IsAutoStart"] = self.isAutoStart!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.templageAlertConfig != nil {
            map["TemplageAlertConfig"] = self.templageAlertConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
        if dict.keys.contains("ContactGroupIds") {
            self.contactGroupIds = dict["ContactGroupIds"] as! String
        }
        if dict.keys.contains("IsAutoStart") {
            self.isAutoStart = dict["IsAutoStart"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TemplageAlertConfig") {
            self.templageAlertConfig = dict["TemplageAlertConfig"] as! String
        }
    }
}

public class UpdateAlertRuleResponseBody : Tea.TeaModel {
    public var alertId: Int64?

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
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAlertRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAlertRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAlertTemplateRequest : Tea.TeaModel {
    public var annotations: String?

    public var id: Int64?

    public var labels: String?

    public var matchExpressions: String?

    public var message: String?

    public var name: String?

    public var regionId: String?

    public var rule: String?

    public var status: Bool?

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
        if self.annotations != nil {
            map["Annotations"] = self.annotations!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.matchExpressions != nil {
            map["MatchExpressions"] = self.matchExpressions!
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
        if self.rule != nil {
            map["Rule"] = self.rule!
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
        if dict.keys.contains("Annotations") {
            self.annotations = dict["Annotations"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("MatchExpressions") {
            self.matchExpressions = dict["MatchExpressions"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rule") {
            self.rule = dict["Rule"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class UpdateAlertTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateAlertTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAlertTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAlertTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDispatchRuleRequest : Tea.TeaModel {
    public var dispatchRule: String?

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
        if self.dispatchRule != nil {
            map["DispatchRule"] = self.dispatchRule!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DispatchRule") {
            self.dispatchRule = dict["DispatchRule"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpdateDispatchRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateDispatchRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDispatchRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDispatchRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePrometheusAlertRuleRequest : Tea.TeaModel {
    public var alertId: Int64?

    public var alertName: String?

    public var annotations: String?

    public var clusterId: String?

    public var dispatchRuleId: Int64?

    public var duration: String?

    public var expression: String?

    public var labels: String?

    public var message: String?

    public var notifyType: String?

    public var regionId: String?

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
        if self.alertId != nil {
            map["AlertId"] = self.alertId!
        }
        if self.alertName != nil {
            map["AlertName"] = self.alertName!
        }
        if self.annotations != nil {
            map["Annotations"] = self.annotations!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dispatchRuleId != nil {
            map["DispatchRuleId"] = self.dispatchRuleId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertId") {
            self.alertId = dict["AlertId"] as! Int64
        }
        if dict.keys.contains("AlertName") {
            self.alertName = dict["AlertName"] as! String
        }
        if dict.keys.contains("Annotations") {
            self.annotations = dict["Annotations"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DispatchRuleId") {
            self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("Expression") {
            self.expression = dict["Expression"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NotifyType") {
            self.notifyType = dict["NotifyType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class UpdatePrometheusAlertRuleResponseBody : Tea.TeaModel {
    public class PrometheusAlertRule : Tea.TeaModel {
        public class Annotations : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var alertId: Int64?

        public var alertName: String?

        public var annotations: [UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations]?

        public var clusterId: String?

        public var dispatchRuleId: Int64?

        public var duration: String?

        public var expression: String?

        public var labels: [UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels]?

        public var message: String?

        public var notifyType: String?

        public var status: Int32?

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
            if self.alertId != nil {
                map["AlertId"] = self.alertId!
            }
            if self.alertName != nil {
                map["AlertName"] = self.alertName!
            }
            if self.annotations != nil {
                var tmp : [Any] = []
                for k in self.annotations! {
                    tmp.append(k.toMap())
                }
                map["Annotations"] = tmp
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.dispatchRuleId != nil {
                map["DispatchRuleId"] = self.dispatchRuleId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.expression != nil {
                map["Expression"] = self.expression!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.notifyType != nil {
                map["NotifyType"] = self.notifyType!
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
            if dict.keys.contains("AlertId") {
                self.alertId = dict["AlertId"] as! Int64
            }
            if dict.keys.contains("AlertName") {
                self.alertName = dict["AlertName"] as! String
            }
            if dict.keys.contains("Annotations") {
                self.annotations = dict["Annotations"] as! [UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations]
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("DispatchRuleId") {
                self.dispatchRuleId = dict["DispatchRuleId"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("Expression") {
                self.expression = dict["Expression"] as! String
            }
            if dict.keys.contains("Labels") {
                self.labels = dict["Labels"] as! [UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels]
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("NotifyType") {
                self.notifyType = dict["NotifyType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var prometheusAlertRule: UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.prometheusAlertRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prometheusAlertRule != nil {
            map["PrometheusAlertRule"] = self.prometheusAlertRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrometheusAlertRule") {
            var model = UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule()
            model.fromMap(dict["PrometheusAlertRule"] as! [String: Any])
            self.prometheusAlertRule = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePrometheusAlertRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePrometheusAlertRuleResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePrometheusAlertRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWebhookRequest : Tea.TeaModel {
    public var body: String?

    public var contactId: Int64?

    public var contactName: String?

    public var httpHeaders: String?

    public var httpParams: String?

    public var method: String?

    public var regionId: String?

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
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.httpHeaders != nil {
            map["HttpHeaders"] = self.httpHeaders!
        }
        if self.httpParams != nil {
            map["HttpParams"] = self.httpParams!
        }
        if self.method != nil {
            map["Method"] = self.method!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! Int64
        }
        if dict.keys.contains("ContactName") {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("HttpHeaders") {
            self.httpHeaders = dict["HttpHeaders"] as! String
        }
        if dict.keys.contains("HttpParams") {
            self.httpParams = dict["HttpParams"] as! String
        }
        if dict.keys.contains("Method") {
            self.method = dict["Method"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class UpdateWebhookResponseBody : Tea.TeaModel {
    public var isSuccess: Bool?

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
        if self.isSuccess != nil {
            map["IsSuccess"] = self.isSuccess!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsSuccess") {
            self.isSuccess = dict["IsSuccess"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWebhookResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateWebhookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
