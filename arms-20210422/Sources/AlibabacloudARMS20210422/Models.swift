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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Integration"] as? String {
            self.integration = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddGrafanaResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Integration"] as? String {
            self.integration = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddIntegrationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Config"] as? [String: Any] {
            self.config = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["Sign"] as? String {
            self.sign = value
        }
        if let value = dict["SnDump"] as? Bool {
            self.snDump = value
        }
        if let value = dict["SnForce"] as? Bool {
            self.snForce = value
        }
        if let value = dict["SnStat"] as? Bool {
            self.snStat = value
        }
        if let value = dict["SnTransfer"] as? Bool {
            self.snTransfer = value
        }
        if let value = dict["UpdateOption"] as? Bool {
            self.updateOption = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Config"] as? String {
            self.configShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["Sign"] as? String {
            self.sign = value
        }
        if let value = dict["SnDump"] as? Bool {
            self.snDump = value
        }
        if let value = dict["SnForce"] as? Bool {
            self.snForce = value
        }
        if let value = dict["SnStat"] as? Bool {
            self.snStat = value
        }
        if let value = dict["SnTransfer"] as? Bool {
            self.snTransfer = value
        }
        if let value = dict["UpdateOption"] as? Bool {
            self.updateOption = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ApplyScenarioResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["CurrentTimestamp"] as? Int64 {
            self.currentTimestamp = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["ProxyUserId"] as? String {
            self.proxyUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsDataConsistency"] as? Bool {
            self.isDataConsistency = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDataConsistencyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionTaskId"] as? String {
            self.deletionTaskId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["SPIRegionId"] as? String {
            self.SPIRegionId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Resources"] as? [String] {
                self.resources = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Deletable"] as? Bool {
            self.deletable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleUsages"] as? [Any?] {
            var tmp : [CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages] = []
            for v in value {
                if v != nil {
                    var model = CheckServiceLinkedRoleForDeletingResponseBody.RoleUsages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roleUsages = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckServiceLinkedRoleForDeletingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SvcCode"] as? String {
            self.svcCode = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckServiceStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIds"] as? String {
            self.appIds = value
        }
        if let value = dict["Enable"] as? String {
            self.enable = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigAppResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["DingRobotWebhookUrl"] as? String {
            self.dingRobotWebhookUrl = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["PhoneNum"] as? String {
            self.phoneNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SystemNoc"] as? Bool {
            self.systemNoc = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAlertContactResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupName"] as? String {
            self.contactGroupName = value
        }
        if let value = dict["ContactIds"] as? String {
            self.contactIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupId"] as? String {
            self.contactGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAlertContactGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Annotations"] as? String {
            self.annotations = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["MatchExpressions"] as? String {
            self.matchExpressions = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
        if let value = dict["TemplateProvider"] as? String {
            self.templateProvider = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LabelMatchExpressions"] as? [Any?] {
                        var tmp : [CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions] = []
                        for v in value {
                            if v != nil {
                                var model = CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.labelMatchExpressions = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LabelMatchExpressionGroups"] as? [Any?] {
                    var tmp : [CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups] = []
                    for v in value {
                        if v != nil {
                            var model = CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid.LabelMatchExpressionGroups()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.labelMatchExpressionGroups = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertProvider"] as? String {
                self.alertProvider = value
            }
            if let value = dict["Annotations"] as? [String: Any] {
                self.annotations = value
            }
            if let value = dict["Id"] as? Int32 {
                self.id = value
            }
            if let value = dict["LabelMatchExpressionGrid"] as? [String: Any?] {
                var model = CreateAlertTemplateResponseBody.AlertTemplate.LabelMatchExpressionGrid()
                model.fromMap(value)
                self.labelMatchExpressionGrid = model
            }
            if let value = dict["Labels"] as? [String: Any] {
                self.labels = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentId"] as? Int32 {
                self.parentId = value
            }
            if let value = dict["Public"] as? Bool {
                self.public_ = value
            }
            if let value = dict["Rule"] as? String {
                self.rule = value
            }
            if let value = dict["Status"] as? Bool {
                self.status = value
            }
            if let value = dict["TemplateProvider"] as? String {
                self.templateProvider = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertTemplate"] as? [String: Any?] {
            var model = CreateAlertTemplateResponseBody.AlertTemplate()
            model.fromMap(value)
            self.alertTemplate = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAlertTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DispatchRule"] as? String {
            self.dispatchRule = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DispatchRuleId"] as? Int64 {
            self.dispatchRuleId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDispatchRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertName"] as? String {
            self.alertName = value
        }
        if let value = dict["Annotations"] as? String {
            self.annotations = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DispatchRuleId"] as? Int64 {
            self.dispatchRuleId = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertId"] as? Int64 {
                self.alertId = value
            }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["Annotations"] as? [Any?] {
                var tmp : [CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations] = []
                for v in value {
                    if v != nil {
                        var model = CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.annotations = tmp
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DispatchRuleId"] as? Int64 {
                self.dispatchRuleId = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels] = []
                for v in value {
                    if v != nil {
                        var model = CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NotifyType"] as? String {
                self.notifyType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrometheusAlertRule"] as? [String: Any?] {
            var model = CreatePrometheusAlertRuleResponseBody.PrometheusAlertRule()
            model.fromMap(value)
            self.prometheusAlertRule = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePrometheusAlertRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetcodeAppName"] as? String {
            self.retcodeAppName = value
        }
        if let value = dict["RetcodeAppType"] as? String {
            self.retcodeAppType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RetcodeAppDataBean"] as? [String: Any?] {
            var model = CreateRetcodeAppResponseBody.RetcodeAppDataBean()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRetcodeAppResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["HttpHeaders"] as? String {
            self.httpHeaders = value
        }
        if let value = dict["HttpParams"] as? String {
            self.httpParams = value
        }
        if let value = dict["Method"] as? String {
            self.method = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWehookResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAlertContactResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupId"] as? Int64 {
            self.contactGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAlertContactGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertIds"] as? String {
            self.alertIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAlertRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAlertTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDispatchRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteGrafanaResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePrometheusAlertRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteRetcodeAppResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ScenarioId"] as? Int64 {
            self.scenarioId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteScenarioResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTraceAppResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupId"] as? Int64 {
                    self.groupId = value
                }
                if let value = dict["GroupInterval"] as? Int64 {
                    self.groupInterval = value
                }
                if let value = dict["GroupWaitTime"] as? Int64 {
                    self.groupWaitTime = value
                }
                if let value = dict["GroupingFields"] as? [String] {
                    self.groupingFields = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LabelMatchExpressions"] as? [Any?] {
                        var tmp : [DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.labelMatchExpressions = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LabelMatchExpressionGroups"] as? [Any?] {
                    var tmp : [DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid.LabelMatchExpressionGroups()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.labelMatchExpressionGroups = tmp
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["NotifyObjectId"] as? String {
                        self.notifyObjectId = value
                    }
                    if let value = dict["NotifyType"] as? String {
                        self.notifyType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NotifyChannels"] as? [String] {
                    self.notifyChannels = value
                }
                if let value = dict["NotifyObjects"] as? [Any?] {
                    var tmp : [DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules.NotifyObjects] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules.NotifyObjects()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.notifyObjects = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupRules"] as? [Any?] {
                var tmp : [DescribeDispatchRuleResponseBody.DispatchRule.GroupRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDispatchRuleResponseBody.DispatchRule.GroupRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groupRules = tmp
            }
            if let value = dict["LabelMatchExpressionGrid"] as? [String: Any?] {
                var model = DescribeDispatchRuleResponseBody.DispatchRule.LabelMatchExpressionGrid()
                model.fromMap(value)
                self.labelMatchExpressionGrid = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NotifyRules"] as? [Any?] {
                var tmp : [DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDispatchRuleResponseBody.DispatchRule.NotifyRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.notifyRules = tmp
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DispatchRule"] as? [String: Any?] {
            var model = DescribeDispatchRuleResponseBody.DispatchRule()
            model.fromMap(value)
            self.dispatchRule = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDispatchRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertId"] as? Int64 {
                self.alertId = value
            }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["Annotations"] as? [Any?] {
                var tmp : [DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations] = []
                for v in value {
                    if v != nil {
                        var model = DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.annotations = tmp
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DispatchRuleId"] as? Int64 {
                self.dispatchRuleId = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels] = []
                for v in value {
                    if v != nil {
                        var model = DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NotifyType"] as? String {
                self.notifyType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrometheusAlertRule"] as? [String: Any?] {
            var model = DescribePrometheusAlertRuleResponseBody.PrometheusAlertRule()
            model.fromMap(value)
            self.prometheusAlertRule = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePrometheusAlertRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LicenseKey"] as? String {
            self.licenseKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTraceLicenseKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionConfigs"] as? [Any?] {
            var tmp : [DescribeTraceLocationResponseBody.RegionConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeTraceLocationResponseBody.RegionConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTraceLocationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableAlertTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableAlertTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NameSpace"] as? String {
            self.nameSpace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExportPrometheusRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArmsAgentDownloadUrl"] as? String {
            self.armsAgentDownloadUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAgentDownloadUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IntervalMills"] as? Int32 {
            self.intervalMills = value
        }
        if let value = dict["PId"] as? String {
            self.PId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [[String: Any]] {
                self.items = value
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? String {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAppApiByPageResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAppApiByPageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["CurrentTimestamp"] as? Int64 {
            self.currentTimestamp = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["ProxyUserId"] as? String {
            self.proxyUserId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsistencyResultJsonStr"] as? String {
            self.consistencyResultJsonStr = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConsistencySnapshotResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIntegrationTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TraceIDs"] as? [String] {
            self.traceIDs = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TagEntryList"] as? [Any?] {
                        var tmp : [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList.TagEntryList] = []
                        for v in value {
                            if v != nil {
                                var model = GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList.TagEntryList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tagEntryList = tmp
                    }
                    if let value = dict["Timestamp"] as? Int64 {
                        self.timestamp = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Int64 {
                    self.duration = value
                }
                if let value = dict["HaveStack"] as? Bool {
                    self.haveStack = value
                }
                if let value = dict["LogEventList"] as? [Any?] {
                    var tmp : [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.LogEventList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.logEventList = tmp
                }
                if let value = dict["OperationName"] as? String {
                    self.operationName = value
                }
                if let value = dict["ParentSpanId"] as? String {
                    self.parentSpanId = value
                }
                if let value = dict["ResultCode"] as? String {
                    self.resultCode = value
                }
                if let value = dict["RpcId"] as? String {
                    self.rpcId = value
                }
                if let value = dict["RpcType"] as? Int32 {
                    self.rpcType = value
                }
                if let value = dict["ServiceIp"] as? String {
                    self.serviceIp = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
                if let value = dict["SpanId"] as? String {
                    self.spanId = value
                }
                if let value = dict["TagEntryList"] as? [Any?] {
                    var tmp : [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.TagEntryList] = []
                    for v in value {
                        if v != nil {
                            var model = GetMultipleTraceResponseBody.MultiCallChainInfos.Spans.TagEntryList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tagEntryList = tmp
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["TraceID"] as? String {
                    self.traceID = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Spans"] as? [Any?] {
                var tmp : [GetMultipleTraceResponseBody.MultiCallChainInfos.Spans] = []
                for v in value {
                    if v != nil {
                        var model = GetMultipleTraceResponseBody.MultiCallChainInfos.Spans()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.spans = tmp
            }
            if let value = dict["TraceID"] as? String {
                self.traceID = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MultiCallChainInfos"] as? [Any?] {
            var tmp : [GetMultipleTraceResponseBody.MultiCallChainInfos] = []
            for v in value {
                if v != nil {
                    var model = GetMultipleTraceResponseBody.MultiCallChainInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.multiCallChainInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMultipleTraceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPrometheusApiTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Pid"] as? String {
            self.pid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRetcodeShareUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStackRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var pid: String?

    public var regionId: String?

    public var rpcID: String?

    public var startTime: Int64?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pid != nil {
            map["Pid"] = self.pid!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rpcID != nil {
            map["RpcID"] = self.rpcID!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.traceID != nil {
            map["TraceID"] = self.traceID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RpcID"] as? String {
            self.rpcID = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TraceID"] as? String {
            self.traceID = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Info"] as? String {
                    self.info = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["Exception"] as? String {
                self.exception = value
            }
            if let value = dict["ExtInfo"] as? [String: Any?] {
                var model = GetStackResponseBody.StackInfo.ExtInfo()
                model.fromMap(value)
                self.extInfo = model
            }
            if let value = dict["Line"] as? String {
                self.line = value
            }
            if let value = dict["RpcId"] as? String {
                self.rpcId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StackInfo"] as? [Any?] {
            var tmp : [GetStackResponseBody.StackInfo] = []
            for v in value {
                if v != nil {
                    var model = GetStackResponseBody.StackInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stackInfo = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TraceID"] as? String {
            self.traceID = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagEntryList"] as? [Any?] {
                    var tmp : [GetTraceResponseBody.Spans.LogEventList.TagEntryList] = []
                    for v in value {
                        if v != nil {
                            var model = GetTraceResponseBody.Spans.LogEventList.TagEntryList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tagEntryList = tmp
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["HaveStack"] as? Bool {
                self.haveStack = value
            }
            if let value = dict["LogEventList"] as? [Any?] {
                var tmp : [GetTraceResponseBody.Spans.LogEventList] = []
                for v in value {
                    if v != nil {
                        var model = GetTraceResponseBody.Spans.LogEventList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.logEventList = tmp
            }
            if let value = dict["OperationName"] as? String {
                self.operationName = value
            }
            if let value = dict["ParentSpanId"] as? String {
                self.parentSpanId = value
            }
            if let value = dict["ResultCode"] as? String {
                self.resultCode = value
            }
            if let value = dict["RpcId"] as? String {
                self.rpcId = value
            }
            if let value = dict["RpcType"] as? Int32 {
                self.rpcType = value
            }
            if let value = dict["ServiceIp"] as? String {
                self.serviceIp = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["SpanId"] as? String {
                self.spanId = value
            }
            if let value = dict["TagEntryList"] as? [Any?] {
                var tmp : [GetTraceResponseBody.Spans.TagEntryList] = []
                for v in value {
                    if v != nil {
                        var model = GetTraceResponseBody.Spans.TagEntryList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagEntryList = tmp
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
            if let value = dict["TraceID"] as? String {
                self.traceID = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Spans"] as? [Any?] {
            var tmp : [GetTraceResponseBody.Spans] = []
            for v in value {
                if v != nil {
                    var model = GetTraceResponseBody.Spans()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.spans = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTraceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Show"] as? Bool {
                self.show = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceApp"] as? [String: Any?] {
            var model = GetTraceAppResponseBody.TraceApp()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTraceAppResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupIds"] as? String {
            self.contactGroupIds = value
        }
        if let value = dict["IsAutoStart"] as? Bool {
            self.isAutoStart = value
        }
        if let value = dict["Pids"] as? String {
            self.pids = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplageAlertConfig"] as? String {
            self.templageAlertConfig = value
        }
        if let value = dict["TemplateAlertId"] as? String {
            self.templateAlertId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportAppAlertRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupIds"] as? String {
            self.contactGroupIds = value
        }
        if let value = dict["IsAutoStart"] as? Bool {
            self.isAutoStart = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplageAlertConfig"] as? String {
            self.templageAlertConfig = value
        }
        if let value = dict["TemplateAlertConfig"] as? String {
            self.templateAlertConfig = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportCustomAlertRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NameSpace"] as? String {
            self.nameSpace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ImportPrometheusRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RuleId"] as? Int32 {
                        self.ruleId = value
                    }
                    if let value = dict["RuleName"] as? String {
                        self.ruleName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertId"] as? String {
                    self.alertId = value
                }
                if let value = dict["AlertName"] as? String {
                    self.alertName = value
                }
                if let value = dict["AlertType"] as? String {
                    self.alertType = value
                }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DispatchRules"] as? [Any?] {
                    var tmp : [ListActivatedAlertsResponseBody.Page.Alerts.DispatchRules] = []
                    for v in value {
                        if v != nil {
                            var model = ListActivatedAlertsResponseBody.Page.Alerts.DispatchRules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dispatchRules = tmp
                }
                if let value = dict["EndsAt"] as? Int64 {
                    self.endsAt = value
                }
                if let value = dict["ExpandFields"] as? [String: Any] {
                    self.expandFields = value
                }
                if let value = dict["IntegrationName"] as? String {
                    self.integrationName = value
                }
                if let value = dict["IntegrationType"] as? String {
                    self.integrationType = value
                }
                if let value = dict["InvolvedObjectKind"] as? String {
                    self.involvedObjectKind = value
                }
                if let value = dict["InvolvedObjectName"] as? String {
                    self.involvedObjectName = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Severity"] as? String {
                    self.severity = value
                }
                if let value = dict["StartsAt"] as? Int64 {
                    self.startsAt = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alerts"] as? [Any?] {
                var tmp : [ListActivatedAlertsResponseBody.Page.Alerts] = []
                for v in value {
                    if v != nil {
                        var model = ListActivatedAlertsResponseBody.Page.Alerts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.alerts = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Page"] as? [String: Any?] {
            var model = ListActivatedAlertsResponseBody.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListActivatedAlertsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertProvider"] as? String {
            self.alertProvider = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["TemplateProvider"] as? String {
            self.templateProvider = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Key"] as? String {
                            self.key = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LabelMatchExpressions"] as? [Any?] {
                        var tmp : [ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions] = []
                        for v in value {
                            if v != nil {
                                var model = ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups.LabelMatchExpressions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.labelMatchExpressions = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LabelMatchExpressionGroups"] as? [Any?] {
                    var tmp : [ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups] = []
                    for v in value {
                        if v != nil {
                            var model = ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid.LabelMatchExpressionGroups()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.labelMatchExpressionGroups = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertProvider"] as? String {
                self.alertProvider = value
            }
            if let value = dict["Annotations"] as? [String: Any] {
                self.annotations = value
            }
            if let value = dict["Id"] as? Int32 {
                self.id = value
            }
            if let value = dict["LabelMatchExpressionGrid"] as? [String: Any?] {
                var model = ListAlertTemplatesResponseBody.AlertTemplates.LabelMatchExpressionGrid()
                model.fromMap(value)
                self.labelMatchExpressionGrid = model
            }
            if let value = dict["Labels"] as? [String: Any] {
                self.labels = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentId"] as? Int32 {
                self.parentId = value
            }
            if let value = dict["Public"] as? Bool {
                self.public_ = value
            }
            if let value = dict["Rule"] as? String {
                self.rule = value
            }
            if let value = dict["Status"] as? Bool {
                self.status = value
            }
            if let value = dict["TemplateProvider"] as? String {
                self.templateProvider = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertTemplates"] as? [Any?] {
            var tmp : [ListAlertTemplatesResponseBody.AlertTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListAlertTemplatesResponseBody.AlertTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alertTemplates = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAlertTemplatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentStatus"] as? String {
                self.agentStatus = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ClusterType"] as? String {
                self.clusterType = value
            }
            if let value = dict["ControllerId"] as? String {
                self.controllerId = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstallTime"] as? Int64 {
                self.installTime = value
            }
            if let value = dict["IsControllerInstalled"] as? Bool {
                self.isControllerInstalled = value
            }
            if let value = dict["LastHeartBeatTime"] as? Int64 {
                self.lastHeartBeatTime = value
            }
            if let value = dict["NodeNum"] as? Int32 {
                self.nodeNum = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["PluginsJsonArray"] as? String {
                self.pluginsJsonArray = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StateJson"] as? String {
                self.stateJson = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PromClusterList"] as? [Any?] {
            var tmp : [ListClusterFromGrafanaResponseBody.PromClusterList] = []
            for v in value {
                if v != nil {
                    var model = ListClusterFromGrafanaResponseBody.PromClusterList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promClusterList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClusterFromGrafanaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDashboardsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterType: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RecreateSwitch"] as? Bool {
            self.recreateSwitch = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DashboardType"] as? String {
                self.dashboardType = value
            }
            if let value = dict["Exporter"] as? String {
                self.exporter = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsArmsExporter"] as? Bool {
                self.isArmsExporter = value
            }
            if let value = dict["Kind"] as? String {
                self.kind = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NeedUpdate"] as? Bool {
                self.needUpdate = value
            }
            if let value = dict["Tags"] as? [String] {
                self.tags = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uid"] as? String {
                self.uid = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DashboardVos"] as? [Any?] {
            var tmp : [ListDashboardsResponseBody.DashboardVos] = []
            for v in value {
                if v != nil {
                    var model = ListDashboardsResponseBody.DashboardVos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dashboardVos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDashboardsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["System"] as? Bool {
            self.system = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["State"] as? String {
                self.state = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DispatchRules"] as? [Any?] {
            var tmp : [ListDispatchRuleResponseBody.DispatchRules] = []
            for v in value {
                if v != nil {
                    var model = ListDispatchRuleResponseBody.DispatchRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dispatchRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDispatchRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentStatus"] as? String {
                self.agentStatus = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ClusterType"] as? String {
                self.clusterType = value
            }
            if let value = dict["ControllerId"] as? String {
                self.controllerId = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstallTime"] as? Int64 {
                self.installTime = value
            }
            if let value = dict["IsControllerInstalled"] as? Bool {
                self.isControllerInstalled = value
            }
            if let value = dict["LastHeartBeatTime"] as? Int64 {
                self.lastHeartBeatTime = value
            }
            if let value = dict["NodeNum"] as? Int32 {
                self.nodeNum = value
            }
            if let value = dict["Options"] as? String {
                self.options = value
            }
            if let value = dict["PluginsJsonArray"] as? String {
                self.pluginsJsonArray = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["StateJson"] as? String {
                self.stateJson = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PromClusterList"] as? [Any?] {
            var tmp : [ListPromClustersResponseBody.PromClusterList] = []
            for v in value {
                if v != nil {
                    var model = ListPromClustersResponseBody.PromClusterList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.promClusterList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPromClustersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["MatchExpressions"] as? String {
            self.matchExpressions = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertId"] as? Int64 {
                self.alertId = value
            }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["Annotations"] as? [Any?] {
                var tmp : [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Annotations] = []
                for v in value {
                    if v != nil {
                        var model = ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Annotations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.annotations = tmp
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DispatchRuleId"] as? Int64 {
                self.dispatchRuleId = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListPrometheusAlertRulesResponseBody.PrometheusAlertRules.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NotifyType"] as? String {
                self.notifyType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrometheusAlertRules"] as? [Any?] {
            var tmp : [ListPrometheusAlertRulesResponseBody.PrometheusAlertRules] = []
            for v in value {
                if v != nil {
                    var model = ListPrometheusAlertRulesResponseBody.PrometheusAlertRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prometheusAlertRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrometheusAlertRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["Annotations"] as? [Any?] {
                var tmp : [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Annotations] = []
                for v in value {
                    if v != nil {
                        var model = ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Annotations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.annotations = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrometheusAlertTemplates"] as? [Any?] {
            var tmp : [ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListPrometheusAlertTemplatesResponseBody.PrometheusAlertTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.prometheusAlertTemplates = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPrometheusAlertTemplatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RetcodeApps"] as? [Any?] {
            var tmp : [ListRetcodeAppsResponseBody.RetcodeApps] = []
            for v in value {
                if v != nil {
                    var model = ListRetcodeAppsResponseBody.RetcodeApps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.retcodeApps = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRetcodeAppsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Scenario"] as? String {
            self.scenario = value
        }
        if let value = dict["Sign"] as? String {
            self.sign = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Extensions"] as? String {
                self.extensions = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Sign"] as? String {
                self.sign = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArmsScenarios"] as? [Any?] {
            var tmp : [ListScenarioResponseBody.ArmsScenarios] = []
            for v in value {
                if v != nil {
                    var model = ListScenarioResponseBody.ArmsScenarios()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.armsScenarios = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListScenarioResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["Error"] as? Int32 {
                self.error = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Rt"] as? Double {
                self.rt = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListServerlessTopNAppsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListServerlessTopNAppsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListServerlessTopNAppsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Show"] as? Bool {
                self.show = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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
        if let value = dict["TraceApps"] as? [Any?] {
            var tmp : [ListTraceAppsResponseBody.TraceApps] = []
            for v in value {
                if v != nil {
                    var model = ListTraceAppsResponseBody.TraceApps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.traceApps = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTraceAppsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenArmsDefaultSLRResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenArmsServiceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["Length"] as? Int32 {
            self.length = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RecreateSwitch"] as? Bool {
            self.recreateSwitch = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenVClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenXtraceDefaultSLRResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetId"] as? Int64 {
            self.datasetId = value
        }
        if let value = dict["DateStr"] as? String {
            self.dateStr = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [QueryDatasetRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = QueryDatasetRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
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
            var tmp : [QueryDatasetRequest.OptionalDims] = []
            for v in value {
                if v != nil {
                    var model = QueryDatasetRequest.OptionalDims()
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
        if let value = dict["ProxyUserId"] as? String {
            self.proxyUserId = value
        }
        if let value = dict["ReduceTail"] as? Bool {
            self.reduceTail = value
        }
        if let value = dict["RequiredDims"] as? [Any?] {
            var tmp : [QueryDatasetRequest.RequiredDims] = []
            for v in value {
                if v != nil {
                    var model = QueryDatasetRequest.RequiredDims()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.requiredDims = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDatasetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConsistencyDataKey"] as? String {
            self.consistencyDataKey = value
        }
        if let value = dict["ConsistencyQueryStrategy"] as? String {
            self.consistencyQueryStrategy = value
        }
        if let value = dict["Dimensions"] as? [String] {
            self.dimensions = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [QueryMetricRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = QueryMetricRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["IntervalInSec"] as? Int32 {
            self.intervalInSec = value
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
        if let value = dict["ProxyUserId"] as? String {
            self.proxyUserId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMetricResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["CustomFilters"] as? [String] {
            self.customFilters = value
        }
        if let value = dict["Dimensions"] as? [String] {
            self.dimensions = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filters"] as? [Any?] {
            var tmp : [QueryMetricByPageRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = QueryMetricByPageRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["IntervalInSec"] as? Int32 {
            self.intervalInSec = value
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
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [[String: Any]] {
                self.items = value
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryMetricByPageResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMetricByPageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["Settings"] as? [Any?] {
            var tmp : [SaveTraceAppConfigRequest.Settings] = []
            for v in value {
                if v != nil {
                    var model = SaveTraceAppConfigRequest.Settings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.settings = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveTraceAppConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactIds"] as? String {
            self.contactIds = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ContactId"] as? Int64 {
                    self.contactId = value
                }
                if let value = dict["ContactName"] as? String {
                    self.contactName = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DingRobot"] as? String {
                    self.dingRobot = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Phone"] as? String {
                    self.phone = value
                }
                if let value = dict["SystemNoc"] as? Bool {
                    self.systemNoc = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["Webhook"] as? String {
                    self.webhook = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Contacts"] as? [Any?] {
                var tmp : [SearchAlertContactResponseBody.PageBean.Contacts] = []
                for v in value {
                    if v != nil {
                        var model = SearchAlertContactResponseBody.PageBean.Contacts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contacts = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchAlertContactResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchAlertContactResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupIds"] as? String {
            self.contactGroupIds = value
        }
        if let value = dict["ContactGroupName"] as? String {
            self.contactGroupName = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["IsDetail"] as? Bool {
            self.isDetail = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ContactId"] as? Int64 {
                    self.contactId = value
                }
                if let value = dict["ContactName"] as? String {
                    self.contactName = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["DingRobot"] as? String {
                    self.dingRobot = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Phone"] as? String {
                    self.phone = value
                }
                if let value = dict["SystemNoc"] as? Bool {
                    self.systemNoc = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactGroupId"] as? Int64 {
                self.contactGroupId = value
            }
            if let value = dict["ContactGroupName"] as? String {
                self.contactGroupName = value
            }
            if let value = dict["Contacts"] as? [Any?] {
                var tmp : [SearchAlertContactGroupResponseBody.ContactGroups.Contacts] = []
                for v in value {
                    if v != nil {
                        var model = SearchAlertContactGroupResponseBody.ContactGroups.Contacts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contacts = tmp
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroups"] as? [Any?] {
            var tmp : [SearchAlertContactGroupResponseBody.ContactGroups] = []
            for v in value {
                if v != nil {
                    var model = SearchAlertContactGroupResponseBody.ContactGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contactGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchAlertContactGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
        }
        if let value = dict["AlertType"] as? Int32 {
            self.alertType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlarmContent"] as? String {
                    self.alarmContent = value
                }
                if let value = dict["AlarmResponseCode"] as? Int32 {
                    self.alarmResponseCode = value
                }
                if let value = dict["AlarmSources"] as? String {
                    self.alarmSources = value
                }
                if let value = dict["AlarmTime"] as? Int64 {
                    self.alarmTime = value
                }
                if let value = dict["AlarmType"] as? Int32 {
                    self.alarmType = value
                }
                if let value = dict["Emails"] as? String {
                    self.emails = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Phones"] as? String {
                    self.phones = value
                }
                if let value = dict["StrategyId"] as? String {
                    self.strategyId = value
                }
                if let value = dict["Target"] as? String {
                    self.target = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmHistories"] as? [Any?] {
                var tmp : [SearchAlertHistoriesResponseBody.PageBean.AlarmHistories] = []
                for v in value {
                    if v != nil {
                        var model = SearchAlertHistoriesResponseBody.PageBean.AlarmHistories()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.alarmHistories = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchAlertHistoriesResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchAlertHistoriesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AlarmContentSubTitle"] as? String {
                        self.alarmContentSubTitle = value
                    }
                    if let value = dict["AlarmContentTemplate"] as? String {
                        self.alarmContentTemplate = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["SubTitle"] as? String {
                        self.subTitle = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Aggregates"] as? String {
                            self.aggregates = value
                        }
                        if let value = dict["Alias"] as? String {
                            self.alias = value
                        }
                        if let value = dict["Measure"] as? String {
                            self.measure = value
                        }
                        if let value = dict["NValue"] as? Int32 {
                            self.NValue = value
                        }
                        if let value = dict["Operator"] as? String {
                            self.operator_ = value
                        }
                        if let value = dict["Value"] as? Double {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Operator"] as? String {
                        self.operator_ = value
                    }
                    if let value = dict["Rules"] as? [Any?] {
                        var tmp : [SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule.Rules] = []
                        for v in value {
                            if v != nil {
                                var model = SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule.Rules()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AppGroupId"] as? String {
                        self.appGroupId = value
                    }
                    if let value = dict["AppId"] as? String {
                        self.appId = value
                    }
                    if let value = dict["Dimensions"] as? [Any?] {
                        var tmp : [SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam.Dimensions] = []
                        for v in value {
                            if v != nil {
                                var model = SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam.Dimensions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dimensions = tmp
                    }
                    if let value = dict["Pid"] as? String {
                        self.pid = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndTime"] as? Int64 {
                        self.endTime = value
                    }
                    if let value = dict["NoticeEndTime"] as? Int64 {
                        self.noticeEndTime = value
                    }
                    if let value = dict["NoticeStartTime"] as? Int64 {
                        self.noticeStartTime = value
                    }
                    if let value = dict["StartTime"] as? Int64 {
                        self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlarmContext"] as? [String: Any?] {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.AlarmContext()
                    model.fromMap(value)
                    self.alarmContext = model
                }
                if let value = dict["AlertLevel"] as? String {
                    self.alertLevel = value
                }
                if let value = dict["AlertRule"] as? [String: Any?] {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.AlertRule()
                    model.fromMap(value)
                    self.alertRule = model
                }
                if let value = dict["AlertTitle"] as? String {
                    self.alertTitle = value
                }
                if let value = dict["AlertType"] as? Int32 {
                    self.alertType = value
                }
                if let value = dict["AlertVersion"] as? Int32 {
                    self.alertVersion = value
                }
                if let value = dict["AlertWay"] as? [String] {
                    self.alertWay = value
                }
                if let value = dict["AlertWays"] as? [String] {
                    self.alertWays = value
                }
                if let value = dict["Config"] as? String {
                    self.config = value
                }
                if let value = dict["ContactGroupIdList"] as? String {
                    self.contactGroupIdList = value
                }
                if let value = dict["ContactGroupIds"] as? String {
                    self.contactGroupIds = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["MetricParam"] as? [String: Any?] {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.MetricParam()
                    model.fromMap(value)
                    self.metricParam = model
                }
                if let value = dict["Notice"] as? [String: Any?] {
                    var model = SearchAlertRulesResponseBody.PageBean.AlertRules.Notice()
                    model.fromMap(value)
                    self.notice = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskId"] as? Int64 {
                    self.taskId = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertRules"] as? [Any?] {
                var tmp : [SearchAlertRulesResponseBody.PageBean.AlertRules] = []
                for v in value {
                    if v != nil {
                        var model = SearchAlertRulesResponseBody.PageBean.AlertRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.alertRules = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchAlertRulesResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchAlertRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
        }
        if let value = dict["AlertType"] as? Int32 {
            self.alertType = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["IsTrigger"] as? Int32 {
            self.isTrigger = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlertId"] as? Int64 {
                    self.alertId = value
                }
                if let value = dict["AlertName"] as? String {
                    self.alertName = value
                }
                if let value = dict["AlertRule"] as? String {
                    self.alertRule = value
                }
                if let value = dict["AlertType"] as? Int32 {
                    self.alertType = value
                }
                if let value = dict["EventLevel"] as? String {
                    self.eventLevel = value
                }
                if let value = dict["EventTime"] as? Int64 {
                    self.eventTime = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Links"] as? [String] {
                    self.links = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Event"] as? [Any?] {
                var tmp : [SearchEventsResponseBody.PageBean.Event] = []
                for v in value {
                    if v != nil {
                        var model = SearchEventsResponseBody.PageBean.Event()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.event = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTrigger"] as? Int32 {
            self.isTrigger = value
        }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchEventsResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchEventsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RetcodeAppName"] as? String {
            self.retcodeAppName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? Int64 {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Pid"] as? String {
                    self.pid = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RetcodeApps"] as? [Any?] {
                var tmp : [SearchRetcodeAppByPageResponseBody.PageBean.RetcodeApps] = []
                for v in value {
                    if v != nil {
                        var model = SearchRetcodeAppByPageResponseBody.PageBean.RetcodeApps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.retcodeApps = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchRetcodeAppByPageResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchRetcodeAppByPageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TraceAppName"] as? String {
            self.traceAppName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Labels"] as? [String] {
                self.labels = value
            }
            if let value = dict["Pid"] as? String {
                self.pid = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Show"] as? Bool {
                self.show = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceApps"] as? [Any?] {
            var tmp : [SearchTraceAppByNameResponseBody.TraceApps] = []
            for v in value {
                if v != nil {
                    var model = SearchTraceAppByNameResponseBody.TraceApps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.traceApps = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchTraceAppByNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TraceAppName"] as? String {
            self.traceAppName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppId"] as? Int64 {
                    self.appId = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Labels"] as? [String] {
                    self.labels = value
                }
                if let value = dict["Pid"] as? String {
                    self.pid = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Show"] as? Bool {
                    self.show = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["TraceApps"] as? [Any?] {
                var tmp : [SearchTraceAppByPageResponseBody.PageBean.TraceApps] = []
                for v in value {
                    if v != nil {
                        var model = SearchTraceAppByPageResponseBody.PageBean.TraceApps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.traceApps = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchTraceAppByPageResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchTraceAppByPageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExclusionFilters"] as? [Any?] {
            var tmp : [SearchTracesRequest.ExclusionFilters] = []
            for v in value {
                if v != nil {
                    var model = SearchTracesRequest.ExclusionFilters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.exclusionFilters = tmp
        }
        if let value = dict["MinDuration"] as? Int64 {
            self.minDuration = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["ServiceIp"] as? String {
            self.serviceIp = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [SearchTracesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = SearchTracesRequest.Tag()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["OperationName"] as? String {
                self.operationName = value
            }
            if let value = dict["ServiceIp"] as? String {
                self.serviceIp = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Timestamp"] as? Int64 {
                self.timestamp = value
            }
            if let value = dict["TraceID"] as? String {
                self.traceID = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TraceInfos"] as? [Any?] {
            var tmp : [SearchTracesResponseBody.TraceInfos] = []
            for v in value {
                if v != nil {
                    var model = SearchTracesResponseBody.TraceInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.traceInfos = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchTracesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExclusionFilters"] as? [Any?] {
            var tmp : [SearchTracesByPageRequest.ExclusionFilters] = []
            for v in value {
                if v != nil {
                    var model = SearchTracesByPageRequest.ExclusionFilters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.exclusionFilters = tmp
        }
        if let value = dict["MinDuration"] as? Int64 {
            self.minDuration = value
        }
        if let value = dict["OperationName"] as? String {
            self.operationName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Reverse"] as? Bool {
            self.reverse = value
        }
        if let value = dict["ServiceIp"] as? String {
            self.serviceIp = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Int64 {
                    self.duration = value
                }
                if let value = dict["OperationName"] as? String {
                    self.operationName = value
                }
                if let value = dict["ServiceIp"] as? String {
                    self.serviceIp = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["TraceID"] as? String {
                    self.traceID = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
            if let value = dict["TraceInfos"] as? [Any?] {
                var tmp : [SearchTracesByPageResponseBody.PageBean.TraceInfos] = []
                for v in value {
                    if v != nil {
                        var model = SearchTracesByPageResponseBody.PageBean.TraceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.traceInfos = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageBean"] as? [String: Any?] {
            var model = SearchTracesByPageResponseBody.PageBean()
            model.fromMap(value)
            self.pageBean = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchTracesByPageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Incidents"] as? String {
            self.incidents = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendCustomIncidentsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Incidents"] as? String {
            self.incidents = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendMseIncidentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetRetcodeShareStatusRequest : Tea.TeaModel {
    public var pid: String?

    public var regionId: String?

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
        if let value = dict["Pid"] as? String {
            self.pid = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetRetcodeShareStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? String {
            self.alertId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartAlertResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? String {
            self.alertId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopAlertResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["DingRobotWebhookUrl"] as? String {
            self.dingRobotWebhookUrl = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["PhoneNum"] as? String {
            self.phoneNum = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SystemNoc"] as? Bool {
            self.systemNoc = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAlertContactResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactGroupId"] as? Int64 {
            self.contactGroupId = value
        }
        if let value = dict["ContactGroupName"] as? String {
            self.contactGroupName = value
        }
        if let value = dict["ContactIds"] as? String {
            self.contactIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAlertContactGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
        }
        if let value = dict["ContactGroupIds"] as? String {
            self.contactGroupIds = value
        }
        if let value = dict["IsAutoStart"] as? Bool {
            self.isAutoStart = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TemplageAlertConfig"] as? String {
            self.templageAlertConfig = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAlertRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Annotations"] as? String {
            self.annotations = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["MatchExpressions"] as? String {
            self.matchExpressions = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAlertTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DispatchRule"] as? String {
            self.dispatchRule = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDispatchRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlertId"] as? Int64 {
            self.alertId = value
        }
        if let value = dict["AlertName"] as? String {
            self.alertName = value
        }
        if let value = dict["Annotations"] as? String {
            self.annotations = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DispatchRuleId"] as? Int64 {
            self.dispatchRuleId = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NotifyType"] as? String {
            self.notifyType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertId"] as? Int64 {
                self.alertId = value
            }
            if let value = dict["AlertName"] as? String {
                self.alertName = value
            }
            if let value = dict["Annotations"] as? [Any?] {
                var tmp : [UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Annotations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.annotations = tmp
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["DispatchRuleId"] as? Int64 {
                self.dispatchRuleId = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["Expression"] as? String {
                self.expression = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["NotifyType"] as? String {
                self.notifyType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrometheusAlertRule"] as? [String: Any?] {
            var model = UpdatePrometheusAlertRuleResponseBody.PrometheusAlertRule()
            model.fromMap(value)
            self.prometheusAlertRule = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePrometheusAlertRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["HttpHeaders"] as? String {
            self.httpHeaders = value
        }
        if let value = dict["HttpParams"] as? String {
            self.httpParams = value
        }
        if let value = dict["Method"] as? String {
            self.method = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSuccess"] as? Bool {
            self.isSuccess = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWebhookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
