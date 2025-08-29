import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class TrafficControlTaskTrafficInfoTargetTrafficsDataValue : Tea.TeaModel {
    public var traffic: Double?

    public var recordTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.traffic != nil {
            map["Traffic"] = self.traffic!
        }
        if self.recordTime != nil {
            map["RecordTime"] = self.recordTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Traffic"] as? Double {
            self.traffic = value
        }
        if let value = dict["RecordTime"] as? Int64 {
            self.recordTime = value
        }
    }
}

public class TrafficControlTaskTrafficInfoTaskTrafficsValue : Tea.TeaModel {
    public var traffic: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.traffic != nil {
            map["Traffic"] = self.traffic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Traffic"] as? Double {
            self.traffic = value
        }
    }
}

public class ExperimentReportValue : Tea.TeaModel {
    public var baseline: Bool?

    public var metricResults: [String: [String: Any]]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseline != nil {
            map["Baseline"] = self.baseline!
        }
        if self.metricResults != nil {
            map["MetricResults"] = self.metricResults!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Baseline"] as? Bool {
            self.baseline = value
        }
        if let value = dict["MetricResults"] as? [String: [String: Any]] {
            self.metricResults = value
        }
    }
}

public class ApplyEngineConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ApplyEngineConfigResponseBody : Tea.TeaModel {
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

public class ApplyEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyEngineConfigResponseBody?

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
            var model = ApplyEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BackflowFeatureConsistencyCheckJobDataRequest : Tea.TeaModel {
    public var featureConsistencyCheckJobConfigId: String?

    public var instanceId: String?

    public var itemFeatures: String?

    public var logItemId: String?

    public var logRequestId: String?

    public var logRequestTime: Int64?

    public var logUserId: String?

    public var sceneName: String?

    public var scores: String?

    public var serviceName: String?

    public var userFeatures: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureConsistencyCheckJobConfigId != nil {
            map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemFeatures != nil {
            map["ItemFeatures"] = self.itemFeatures!
        }
        if self.logItemId != nil {
            map["LogItemId"] = self.logItemId!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.logRequestTime != nil {
            map["LogRequestTime"] = self.logRequestTime!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.scores != nil {
            map["Scores"] = self.scores!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.userFeatures != nil {
            map["UserFeatures"] = self.userFeatures!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
            self.featureConsistencyCheckJobConfigId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemFeatures"] as? String {
            self.itemFeatures = value
        }
        if let value = dict["LogItemId"] as? String {
            self.logItemId = value
        }
        if let value = dict["LogRequestId"] as? String {
            self.logRequestId = value
        }
        if let value = dict["LogRequestTime"] as? Int64 {
            self.logRequestTime = value
        }
        if let value = dict["LogUserId"] as? String {
            self.logUserId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["Scores"] as? String {
            self.scores = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["UserFeatures"] as? String {
            self.userFeatures = value
        }
    }
}

public class BackflowFeatureConsistencyCheckJobDataResponseBody : Tea.TeaModel {
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

public class BackflowFeatureConsistencyCheckJobDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BackflowFeatureConsistencyCheckJobDataResponseBody?

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
            var model = BackflowFeatureConsistencyCheckJobDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckInstanceResourcesRequest : Tea.TeaModel {
    public var resourceId: String?

    public var type: String?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class CheckInstanceResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var status: String?

        public var type: String?

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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public var requestId: String?

    public var resources: [CheckInstanceResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [CheckInstanceResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = CheckInstanceResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class CheckInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckInstanceResourcesResponseBody?

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
            var model = CheckInstanceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckTrafficControlTaskExpressionRequest : Tea.TeaModel {
    public var expression: String?

    public var instanceId: String?

    public var tableMetaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expression != nil {
            map["Expression"] = self.expression!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expression"] as? String {
            self.expression = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
    }
}

public class CheckTrafficControlTaskExpressionResponseBody : Tea.TeaModel {
    public var isValie: Bool?

    public var reason: String?

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
        if self.isValie != nil {
            map["IsValie"] = self.isValie!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsValie"] as? Bool {
            self.isValie = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckTrafficControlTaskExpressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckTrafficControlTaskExpressionResponseBody?

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
            var model = CheckTrafficControlTaskExpressionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneEngineConfigRequest : Tea.TeaModel {
    public var configValue: String?

    public var description_: String?

    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CloneEngineConfigResponseBody : Tea.TeaModel {
    public var engineConfigId: String?

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
        if self.engineConfigId != nil {
            map["EngineConfigId"] = self.engineConfigId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EngineConfigId"] as? String {
            self.engineConfigId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloneEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneEngineConfigResponseBody?

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
            var model = CloneEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneExperimentRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CloneExperimentResponseBody : Tea.TeaModel {
    public var experimentId: String?

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
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloneExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneExperimentResponseBody?

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
            var model = CloneExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneExperimentGroupRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public var layerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
    }
}

public class CloneExperimentGroupResponseBody : Tea.TeaModel {
    public var experimentGroupId: String?

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
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloneExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneExperimentGroupResponseBody?

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
            var model = CloneExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneFeatureConsistencyCheckJobConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CloneFeatureConsistencyCheckJobConfigResponseBody : Tea.TeaModel {
    public var featureConsistencyCheckId: String?

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
        if self.featureConsistencyCheckId != nil {
            map["FeatureConsistencyCheckId"] = self.featureConsistencyCheckId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureConsistencyCheckId"] as? String {
            self.featureConsistencyCheckId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloneFeatureConsistencyCheckJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneFeatureConsistencyCheckJobConfigResponseBody?

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
            var model = CloneFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneLaboratoryRequest : Tea.TeaModel {
    public var cloneExperimentGroup: Bool?

    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloneExperimentGroup != nil {
            map["CloneExperimentGroup"] = self.cloneExperimentGroup!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloneExperimentGroup"] as? Bool {
            self.cloneExperimentGroup = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CloneLaboratoryResponseBody : Tea.TeaModel {
    public var laboratoryId: String?

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
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CloneLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneLaboratoryResponseBody?

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
            var model = CloneLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneTrafficControlTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CloneTrafficControlTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficControlTaskId: String?

    public override init() {
        super.init()
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
        if self.trafficControlTaskId != nil {
            map["TrafficControlTaskId"] = self.trafficControlTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrafficControlTaskId"] as? String {
            self.trafficControlTaskId = value
        }
    }
}

public class CloneTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneTrafficControlTaskResponseBody?

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
            var model = CloneTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompareSampleConsistencyJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class CompareSampleConsistencyJobResponseBody : Tea.TeaModel {
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

public class CompareSampleConsistencyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareSampleConsistencyJobResponseBody?

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
            var model = CompareSampleConsistencyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateABMetricRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var instanceId: String?

    public var leftMetricId: String?

    public var name: String?

    public var operator_: String?

    public var realtime: Bool?

    public var resultResourceId: String?

    public var rightMetricId: String?

    public var sceneId: String?

    public var statisticsCycle: Int32?

    public var tableMetaId: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.leftMetricId != nil {
            map["LeftMetricId"] = self.leftMetricId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.resultResourceId != nil {
            map["ResultResourceId"] = self.resultResourceId!
        }
        if self.rightMetricId != nil {
            map["RightMetricId"] = self.rightMetricId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.statisticsCycle != nil {
            map["StatisticsCycle"] = self.statisticsCycle!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LeftMetricId"] as? String {
            self.leftMetricId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["ResultResourceId"] as? String {
            self.resultResourceId = value
        }
        if let value = dict["RightMetricId"] as? String {
            self.rightMetricId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["StatisticsCycle"] as? Int32 {
            self.statisticsCycle = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateABMetricResponseBody : Tea.TeaModel {
    public var ABMetricId: String?

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
        if self.ABMetricId != nil {
            map["ABMetricId"] = self.ABMetricId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricId"] as? String {
            self.ABMetricId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateABMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateABMetricResponseBody?

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
            var model = CreateABMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateABMetricGroupRequest : Tea.TeaModel {
    public var ABMetricIds: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var realtime: Bool?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ABMetricIds != nil {
            map["ABMetricIds"] = self.ABMetricIds!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricIds"] as? String {
            self.ABMetricIds = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class CreateABMetricGroupResponseBody : Tea.TeaModel {
    public var ABMetricGroupId: String?

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
        if self.ABMetricGroupId != nil {
            map["ABMetricGroupId"] = self.ABMetricGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricGroupId"] as? String {
            self.ABMetricGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateABMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateABMetricGroupResponseBody?

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
            var model = CreateABMetricGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCalculationJobsRequest : Tea.TeaModel {
    public var ABMetricIds: String?

    public var endDate: String?

    public var instanceId: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ABMetricIds != nil {
            map["ABMetricIds"] = self.ABMetricIds!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricIds"] as? String {
            self.ABMetricIds = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class CreateCalculationJobsResponseBody : Tea.TeaModel {
    public var calculationJobIds: [String]?

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
        if self.calculationJobIds != nil {
            map["CalculationJobIds"] = self.calculationJobIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CalculationJobIds"] as? [String] {
            self.calculationJobIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCalculationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCalculationJobsResponseBody?

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
            var model = CreateCalculationJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCrowdRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var label: String?

    public var name: String?

    public var source: String?

    public var users: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Users"] as? String {
            self.users = value
        }
    }
}

public class CreateCrowdResponseBody : Tea.TeaModel {
    public var crowdId: String?

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
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CrowdId"] as? String {
            self.crowdId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCrowdResponseBody?

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
            var model = CreateCrowdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEngineConfigRequest : Tea.TeaModel {
    public var configValue: String?

    public var description_: String?

    public var environment: String?

    public var instanceId: String?

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
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateEngineConfigResponseBody : Tea.TeaModel {
    public var engineConfigId: String?

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
        if self.engineConfigId != nil {
            map["EngineConfigId"] = self.engineConfigId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EngineConfigId"] as? String {
            self.engineConfigId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEngineConfigResponseBody?

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
            var model = CreateEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentRequest : Tea.TeaModel {
    public var config: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var experimentGroupId: String?

    public var flowPercent: Int32?

    public var instanceId: String?

    public var name: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.flowPercent != nil {
            map["FlowPercent"] = self.flowPercent!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["FlowPercent"] as? Int32 {
            self.flowPercent = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateExperimentResponseBody : Tea.TeaModel {
    public var experimentId: String?

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
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentResponseBody?

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
            var model = CreateExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentGroupRequest : Tea.TeaModel {
    public var config: String?

    public var crowdId: String?

    public var crowdTargetType: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var distributionTimeDuration: Int32?

    public var distributionType: String?

    public var filter: String?

    public var instanceId: String?

    public var layerId: String?

    public var name: String?

    public var needAA: Bool?

    public var randomFlow: Int64?

    public var reservedBuckets: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.crowdTargetType != nil {
            map["CrowdTargetType"] = self.crowdTargetType!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.distributionTimeDuration != nil {
            map["DistributionTimeDuration"] = self.distributionTimeDuration!
        }
        if self.distributionType != nil {
            map["DistributionType"] = self.distributionType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.needAA != nil {
            map["NeedAA"] = self.needAA!
        }
        if self.randomFlow != nil {
            map["RandomFlow"] = self.randomFlow!
        }
        if self.reservedBuckets != nil {
            map["ReservedBuckets"] = self.reservedBuckets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["CrowdId"] as? String {
            self.crowdId = value
        }
        if let value = dict["CrowdTargetType"] as? String {
            self.crowdTargetType = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DistributionTimeDuration"] as? Int32 {
            self.distributionTimeDuration = value
        }
        if let value = dict["DistributionType"] as? String {
            self.distributionType = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NeedAA"] as? Bool {
            self.needAA = value
        }
        if let value = dict["RandomFlow"] as? Int64 {
            self.randomFlow = value
        }
        if let value = dict["ReservedBuckets"] as? String {
            self.reservedBuckets = value
        }
    }
}

public class CreateExperimentGroupResponseBody : Tea.TeaModel {
    public var experimentGroupId: String?

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
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentGroupResponseBody?

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
            var model = CreateExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFeatureConsistencyCheckJobRequest : Tea.TeaModel {
    public var environment: String?

    public var featureConsistencyCheckJobConfigId: String?

    public var instanceId: String?

    public var samplingDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.featureConsistencyCheckJobConfigId != nil {
            map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.samplingDuration != nil {
            map["SamplingDuration"] = self.samplingDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
            self.featureConsistencyCheckJobConfigId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SamplingDuration"] as? Int32 {
            self.samplingDuration = value
        }
    }
}

public class CreateFeatureConsistencyCheckJobResponseBody : Tea.TeaModel {
    public var featureConsistencyCheckJobId: String?

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
        if self.featureConsistencyCheckJobId != nil {
            map["FeatureConsistencyCheckJobId"] = self.featureConsistencyCheckJobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureConsistencyCheckJobId"] as? String {
            self.featureConsistencyCheckJobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFeatureConsistencyCheckJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFeatureConsistencyCheckJobResponseBody?

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
            var model = CreateFeatureConsistencyCheckJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFeatureConsistencyCheckJobConfigRequest : Tea.TeaModel {
    public var compareFeature: Bool?

    public var datasetId: String?

    public var datasetMountPath: String?

    public var datasetName: String?

    public var datasetType: String?

    public var datasetUri: String?

    public var defaultRoute: String?

    public var easServiceName: String?

    public var easyRecPackagePath: String?

    public var easyRecVersion: String?

    public var featureDisplayExclude: String?

    public var featureLandingResourceId: String?

    public var featurePriority: String?

    public var featureStoreItemId: String?

    public var featureStoreModelId: String?

    public var featureStoreProjectId: String?

    public var featureStoreProjectName: String?

    public var featureStoreSeqFeatureView: String?

    public var featureStoreUserId: String?

    public var fgJarVersion: String?

    public var fgJsonFileName: String?

    public var generateZip: Bool?

    public var instanceId: String?

    public var itemIdField: String?

    public var itemTable: String?

    public var itemTablePartitionField: String?

    public var itemTablePartitionFieldFormat: String?

    public var name: String?

    public var ossResourceId: String?

    public var predictWorkerCount: Int32?

    public var predictWorkerCpu: Int32?

    public var predictWorkerMemory: Int32?

    public var resourceConfig: String?

    public var sampleRate: Double?

    public var sceneId: String?

    public var securityGroupId: String?

    public var serviceId: String?

    public var switchId: String?

    public var useFeatureStore: Bool?

    public var userIdField: String?

    public var userTable: String?

    public var userTablePartitionField: String?

    public var userTablePartitionFieldFormat: String?

    public var vpcId: String?

    public var workflowName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compareFeature != nil {
            map["CompareFeature"] = self.compareFeature!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.datasetMountPath != nil {
            map["DatasetMountPath"] = self.datasetMountPath!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.datasetType != nil {
            map["DatasetType"] = self.datasetType!
        }
        if self.datasetUri != nil {
            map["DatasetUri"] = self.datasetUri!
        }
        if self.defaultRoute != nil {
            map["DefaultRoute"] = self.defaultRoute!
        }
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.easyRecPackagePath != nil {
            map["EasyRecPackagePath"] = self.easyRecPackagePath!
        }
        if self.easyRecVersion != nil {
            map["EasyRecVersion"] = self.easyRecVersion!
        }
        if self.featureDisplayExclude != nil {
            map["FeatureDisplayExclude"] = self.featureDisplayExclude!
        }
        if self.featureLandingResourceId != nil {
            map["FeatureLandingResourceId"] = self.featureLandingResourceId!
        }
        if self.featurePriority != nil {
            map["FeaturePriority"] = self.featurePriority!
        }
        if self.featureStoreItemId != nil {
            map["FeatureStoreItemId"] = self.featureStoreItemId!
        }
        if self.featureStoreModelId != nil {
            map["FeatureStoreModelId"] = self.featureStoreModelId!
        }
        if self.featureStoreProjectId != nil {
            map["FeatureStoreProjectId"] = self.featureStoreProjectId!
        }
        if self.featureStoreProjectName != nil {
            map["FeatureStoreProjectName"] = self.featureStoreProjectName!
        }
        if self.featureStoreSeqFeatureView != nil {
            map["FeatureStoreSeqFeatureView"] = self.featureStoreSeqFeatureView!
        }
        if self.featureStoreUserId != nil {
            map["FeatureStoreUserId"] = self.featureStoreUserId!
        }
        if self.fgJarVersion != nil {
            map["FgJarVersion"] = self.fgJarVersion!
        }
        if self.fgJsonFileName != nil {
            map["FgJsonFileName"] = self.fgJsonFileName!
        }
        if self.generateZip != nil {
            map["GenerateZip"] = self.generateZip!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemIdField != nil {
            map["ItemIdField"] = self.itemIdField!
        }
        if self.itemTable != nil {
            map["ItemTable"] = self.itemTable!
        }
        if self.itemTablePartitionField != nil {
            map["ItemTablePartitionField"] = self.itemTablePartitionField!
        }
        if self.itemTablePartitionFieldFormat != nil {
            map["ItemTablePartitionFieldFormat"] = self.itemTablePartitionFieldFormat!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossResourceId != nil {
            map["OssResourceId"] = self.ossResourceId!
        }
        if self.predictWorkerCount != nil {
            map["PredictWorkerCount"] = self.predictWorkerCount!
        }
        if self.predictWorkerCpu != nil {
            map["PredictWorkerCpu"] = self.predictWorkerCpu!
        }
        if self.predictWorkerMemory != nil {
            map["PredictWorkerMemory"] = self.predictWorkerMemory!
        }
        if self.resourceConfig != nil {
            map["ResourceConfig"] = self.resourceConfig!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.switchId != nil {
            map["SwitchId"] = self.switchId!
        }
        if self.useFeatureStore != nil {
            map["UseFeatureStore"] = self.useFeatureStore!
        }
        if self.userIdField != nil {
            map["UserIdField"] = self.userIdField!
        }
        if self.userTable != nil {
            map["UserTable"] = self.userTable!
        }
        if self.userTablePartitionField != nil {
            map["UserTablePartitionField"] = self.userTablePartitionField!
        }
        if self.userTablePartitionFieldFormat != nil {
            map["UserTablePartitionFieldFormat"] = self.userTablePartitionFieldFormat!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompareFeature"] as? Bool {
            self.compareFeature = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["DatasetMountPath"] as? String {
            self.datasetMountPath = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["DatasetType"] as? String {
            self.datasetType = value
        }
        if let value = dict["DatasetUri"] as? String {
            self.datasetUri = value
        }
        if let value = dict["DefaultRoute"] as? String {
            self.defaultRoute = value
        }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["EasyRecPackagePath"] as? String {
            self.easyRecPackagePath = value
        }
        if let value = dict["EasyRecVersion"] as? String {
            self.easyRecVersion = value
        }
        if let value = dict["FeatureDisplayExclude"] as? String {
            self.featureDisplayExclude = value
        }
        if let value = dict["FeatureLandingResourceId"] as? String {
            self.featureLandingResourceId = value
        }
        if let value = dict["FeaturePriority"] as? String {
            self.featurePriority = value
        }
        if let value = dict["FeatureStoreItemId"] as? String {
            self.featureStoreItemId = value
        }
        if let value = dict["FeatureStoreModelId"] as? String {
            self.featureStoreModelId = value
        }
        if let value = dict["FeatureStoreProjectId"] as? String {
            self.featureStoreProjectId = value
        }
        if let value = dict["FeatureStoreProjectName"] as? String {
            self.featureStoreProjectName = value
        }
        if let value = dict["FeatureStoreSeqFeatureView"] as? String {
            self.featureStoreSeqFeatureView = value
        }
        if let value = dict["FeatureStoreUserId"] as? String {
            self.featureStoreUserId = value
        }
        if let value = dict["FgJarVersion"] as? String {
            self.fgJarVersion = value
        }
        if let value = dict["FgJsonFileName"] as? String {
            self.fgJsonFileName = value
        }
        if let value = dict["GenerateZip"] as? Bool {
            self.generateZip = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemIdField"] as? String {
            self.itemIdField = value
        }
        if let value = dict["ItemTable"] as? String {
            self.itemTable = value
        }
        if let value = dict["ItemTablePartitionField"] as? String {
            self.itemTablePartitionField = value
        }
        if let value = dict["ItemTablePartitionFieldFormat"] as? String {
            self.itemTablePartitionFieldFormat = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssResourceId"] as? String {
            self.ossResourceId = value
        }
        if let value = dict["PredictWorkerCount"] as? Int32 {
            self.predictWorkerCount = value
        }
        if let value = dict["PredictWorkerCpu"] as? Int32 {
            self.predictWorkerCpu = value
        }
        if let value = dict["PredictWorkerMemory"] as? Int32 {
            self.predictWorkerMemory = value
        }
        if let value = dict["ResourceConfig"] as? String {
            self.resourceConfig = value
        }
        if let value = dict["SampleRate"] as? Double {
            self.sampleRate = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["SwitchId"] as? String {
            self.switchId = value
        }
        if let value = dict["UseFeatureStore"] as? Bool {
            self.useFeatureStore = value
        }
        if let value = dict["UserIdField"] as? String {
            self.userIdField = value
        }
        if let value = dict["UserTable"] as? String {
            self.userTable = value
        }
        if let value = dict["UserTablePartitionField"] as? String {
            self.userTablePartitionField = value
        }
        if let value = dict["UserTablePartitionFieldFormat"] as? String {
            self.userTablePartitionFieldFormat = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["WorkflowName"] as? String {
            self.workflowName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateFeatureConsistencyCheckJobConfigResponseBody : Tea.TeaModel {
    public var featureConsistencyCheckJobConfigId: String?

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
        if self.featureConsistencyCheckJobConfigId != nil {
            map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
            self.featureConsistencyCheckJobConfigId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFeatureConsistencyCheckJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFeatureConsistencyCheckJobConfigResponseBody?

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
            var model = CreateFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceResourceRequest : Tea.TeaModel {
    public var category: String?

    public var group: String?

    public var type: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Group"] as? String {
            self.group = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class CreateInstanceResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
    }
}

public class CreateInstanceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResourceResponseBody?

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
            var model = CreateInstanceResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLaboratoryRequest : Tea.TeaModel {
    public var bucketCount: Int32?

    public var bucketType: String?

    public var buckets: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var environment: String?

    public var filter: String?

    public var instanceId: String?

    public var name: String?

    public var sceneId: String?

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
        if self.bucketCount != nil {
            map["BucketCount"] = self.bucketCount!
        }
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketCount"] as? Int32 {
            self.bucketCount = value
        }
        if let value = dict["BucketType"] as? String {
            self.bucketType = value
        }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateLaboratoryResponseBody : Tea.TeaModel {
    public var laboratoryId: String?

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
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLaboratoryResponseBody?

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
            var model = CreateLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLayerRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var laboratoryId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateLayerResponseBody : Tea.TeaModel {
    public var layerId: String?

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
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateLayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLayerResponseBody?

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
            var model = CreateLayerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateParamRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public var name: String?

    public var sceneId: String?

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
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
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
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateParamResponseBody : Tea.TeaModel {
    public var paramId: Int64?

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
        if self.paramId != nil {
            map["ParamId"] = self.paramId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamId"] as? Int64 {
            self.paramId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateParamResponseBody?

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
            var model = CreateParamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceRuleRequest : Tea.TeaModel {
    public class RuleItems : Tea.TeaModel {
        public var description_: String?

        public var maxValue: Double?

        public var minValue: Double?

        public var name: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxValue != nil {
                map["MaxValue"] = self.maxValue!
            }
            if self.minValue != nil {
                map["MinValue"] = self.minValue!
            }
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
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxValue"] as? Double {
                self.maxValue = value
            }
            if let value = dict["MinValue"] as? Double {
                self.minValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var description_: String?

    public var instanceId: String?

    public var metricOperationType: String?

    public var metricPullInfo: String?

    public var metricPullPeriod: String?

    public var name: String?

    public var ruleComputingDefinition: String?

    public var ruleItems: [CreateResourceRuleRequest.RuleItems]?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricOperationType != nil {
            map["MetricOperationType"] = self.metricOperationType!
        }
        if self.metricPullInfo != nil {
            map["MetricPullInfo"] = self.metricPullInfo!
        }
        if self.metricPullPeriod != nil {
            map["MetricPullPeriod"] = self.metricPullPeriod!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ruleComputingDefinition != nil {
            map["RuleComputingDefinition"] = self.ruleComputingDefinition!
        }
        if self.ruleItems != nil {
            var tmp : [Any] = []
            for k in self.ruleItems! {
                tmp.append(k.toMap())
            }
            map["RuleItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricOperationType"] as? String {
            self.metricOperationType = value
        }
        if let value = dict["MetricPullInfo"] as? String {
            self.metricPullInfo = value
        }
        if let value = dict["MetricPullPeriod"] as? String {
            self.metricPullPeriod = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RuleComputingDefinition"] as? String {
            self.ruleComputingDefinition = value
        }
        if let value = dict["RuleItems"] as? [Any?] {
            var tmp : [CreateResourceRuleRequest.RuleItems] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceRuleRequest.RuleItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleItems = tmp
        }
    }
}

public class CreateResourceRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceRuleId: String?

    public override init() {
        super.init()
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
        if self.resourceRuleId != nil {
            map["ResourceRuleId"] = self.resourceRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceRuleId"] as? String {
            self.resourceRuleId = value
        }
    }
}

public class CreateResourceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceRuleResponseBody?

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
            var model = CreateResourceRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceRuleItemRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var maxValue: Double?

    public var minValue: Double?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxValue != nil {
            map["MaxValue"] = self.maxValue!
        }
        if self.minValue != nil {
            map["MinValue"] = self.minValue!
        }
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxValue"] as? Double {
            self.maxValue = value
        }
        if let value = dict["MinValue"] as? Double {
            self.minValue = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? Double {
            self.value = value
        }
    }
}

public class CreateResourceRuleItemResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceRuleItemId: String?

    public override init() {
        super.init()
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
        if self.resourceRuleItemId != nil {
            map["ResourceRuleItemId"] = self.resourceRuleItemId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceRuleItemId"] as? String {
            self.resourceRuleItemId = value
        }
    }
}

public class CreateResourceRuleItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceRuleItemResponseBody?

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
            var model = CreateResourceRuleItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSampleConsistencyJobRequest : Tea.TeaModel {
    public var duration: String?

    public var easModelServiceName: String?

    public var featureSaveResourceId: String?

    public var instanceId: String?

    public var itemIdField: String?

    public var name: String?

    public var partitionField: String?

    public var partitionFieldFormat: String?

    public var requestIdField: String?

    public var sampleRate: String?

    public var sampleTableName: String?

    public var sceneId: String?

    public var userIdField: String?

    public override init() {
        super.init()
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
        if self.easModelServiceName != nil {
            map["EasModelServiceName"] = self.easModelServiceName!
        }
        if self.featureSaveResourceId != nil {
            map["FeatureSaveResourceId"] = self.featureSaveResourceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemIdField != nil {
            map["ItemIdField"] = self.itemIdField!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.partitionField != nil {
            map["PartitionField"] = self.partitionField!
        }
        if self.partitionFieldFormat != nil {
            map["PartitionFieldFormat"] = self.partitionFieldFormat!
        }
        if self.requestIdField != nil {
            map["RequestIdField"] = self.requestIdField!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sampleTableName != nil {
            map["SampleTableName"] = self.sampleTableName!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.userIdField != nil {
            map["UserIdField"] = self.userIdField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["EasModelServiceName"] as? String {
            self.easModelServiceName = value
        }
        if let value = dict["FeatureSaveResourceId"] as? String {
            self.featureSaveResourceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemIdField"] as? String {
            self.itemIdField = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PartitionField"] as? String {
            self.partitionField = value
        }
        if let value = dict["PartitionFieldFormat"] as? String {
            self.partitionFieldFormat = value
        }
        if let value = dict["RequestIdField"] as? String {
            self.requestIdField = value
        }
        if let value = dict["SampleRate"] as? String {
            self.sampleRate = value
        }
        if let value = dict["SampleTableName"] as? String {
            self.sampleTableName = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["UserIdField"] as? String {
            self.userIdField = value
        }
    }
}

public class CreateSampleConsistencyJobResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sampleConsistencyJobId: String?

    public override init() {
        super.init()
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
        if self.sampleConsistencyJobId != nil {
            map["SampleConsistencyJobId"] = self.sampleConsistencyJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SampleConsistencyJobId"] as? String {
            self.sampleConsistencyJobId = value
        }
    }
}

public class CreateSampleConsistencyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSampleConsistencyJobResponseBody?

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
            var model = CreateSampleConsistencyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSceneRequest : Tea.TeaModel {
    public class Flows : Tea.TeaModel {
        public var flowCode: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowCode != nil {
                map["FlowCode"] = self.flowCode!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowCode"] as? String {
                self.flowCode = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
        }
    }
    public var description_: String?

    public var flows: [CreateSceneRequest.Flows]?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Flows"] as? [Any?] {
            var tmp : [CreateSceneRequest.Flows] = []
            for v in value {
                if v != nil {
                    var model = CreateSceneRequest.Flows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flows = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class CreateSceneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sceneId: String?

    public override init() {
        super.init()
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class CreateSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSceneResponseBody?

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
            var model = CreateSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSubCrowdRequest : Tea.TeaModel {
    public var instanceId: String?

    public var source: String?

    public var users: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Users"] as? String {
            self.users = value
        }
    }
}

public class CreateSubCrowdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var subCrowdId: String?

    public override init() {
        super.init()
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
        if self.subCrowdId != nil {
            map["SubCrowdId"] = self.subCrowdId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubCrowdId"] as? String {
            self.subCrowdId = value
        }
    }
}

public class CreateSubCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubCrowdResponseBody?

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
            var model = CreateSubCrowdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTableMetaRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var dataType: String?

        public var isDimensionField: Bool?

        public var isPartitionField: String?

        public var meaning: String?

        public var name: String?

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
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.isDimensionField != nil {
                map["IsDimensionField"] = self.isDimensionField!
            }
            if self.isPartitionField != nil {
                map["IsPartitionField"] = self.isPartitionField!
            }
            if self.meaning != nil {
                map["Meaning"] = self.meaning!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["IsDimensionField"] as? Bool {
                self.isDimensionField = value
            }
            if let value = dict["IsPartitionField"] as? String {
                self.isPartitionField = value
            }
            if let value = dict["Meaning"] as? String {
                self.meaning = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var description_: String?

    public var fields: [CreateTableMetaRequest.Fields]?

    public var instanceId: String?

    public var module: String?

    public var name: String?

    public var resourceId: String?

    public var tableName: String?

    public override init() {
        super.init()
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
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [CreateTableMetaRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = CreateTableMetaRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class CreateTableMetaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tableMetaId: String?

    public override init() {
        super.init()
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
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
    }
}

public class CreateTableMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTableMetaResponseBody?

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
            var model = CreateTableMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrafficControlTargetRequest : Tea.TeaModel {
    public var endTime: String?

    public var event: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var name: String?

    public var newProductRegulation: Bool?

    public var recallName: String?

    public var startTime: String?

    public var statisPeriod: String?

    public var status: String?

    public var toleranceValue: Int64?

    public var trafficControlTaskId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.itemConditionArray != nil {
            map["ItemConditionArray"] = self.itemConditionArray!
        }
        if self.itemConditionExpress != nil {
            map["ItemConditionExpress"] = self.itemConditionExpress!
        }
        if self.itemConditionType != nil {
            map["ItemConditionType"] = self.itemConditionType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newProductRegulation != nil {
            map["NewProductRegulation"] = self.newProductRegulation!
        }
        if self.recallName != nil {
            map["RecallName"] = self.recallName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisPeriod != nil {
            map["StatisPeriod"] = self.statisPeriod!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.toleranceValue != nil {
            map["ToleranceValue"] = self.toleranceValue!
        }
        if self.trafficControlTaskId != nil {
            map["TrafficControlTaskId"] = self.trafficControlTaskId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["ItemConditionArray"] as? String {
            self.itemConditionArray = value
        }
        if let value = dict["ItemConditionExpress"] as? String {
            self.itemConditionExpress = value
        }
        if let value = dict["ItemConditionType"] as? String {
            self.itemConditionType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewProductRegulation"] as? Bool {
            self.newProductRegulation = value
        }
        if let value = dict["RecallName"] as? String {
            self.recallName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisPeriod"] as? String {
            self.statisPeriod = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ToleranceValue"] as? Int64 {
            self.toleranceValue = value
        }
        if let value = dict["TrafficControlTaskId"] as? String {
            self.trafficControlTaskId = value
        }
        if let value = dict["Value"] as? Double {
            self.value = value
        }
    }
}

public class CreateTrafficControlTargetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficControlTargetId: String?

    public override init() {
        super.init()
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
        if self.trafficControlTargetId != nil {
            map["TrafficControlTargetId"] = self.trafficControlTargetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrafficControlTargetId"] as? String {
            self.trafficControlTargetId = value
        }
    }
}

public class CreateTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrafficControlTargetResponseBody?

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
            var model = CreateTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrafficControlTaskRequest : Tea.TeaModel {
    public class TrafficControlTargets : Tea.TeaModel {
        public var endTime: String?

        public var event: String?

        public var itemConditionArray: String?

        public var itemConditionExpress: String?

        public var itemConditionType: String?

        public var name: String?

        public var newProductRegulation: Bool?

        public var recallName: String?

        public var startTime: String?

        public var statisPeriod: String?

        public var status: String?

        public var toleranceValue: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.itemConditionArray != nil {
                map["ItemConditionArray"] = self.itemConditionArray!
            }
            if self.itemConditionExpress != nil {
                map["ItemConditionExpress"] = self.itemConditionExpress!
            }
            if self.itemConditionType != nil {
                map["ItemConditionType"] = self.itemConditionType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newProductRegulation != nil {
                map["NewProductRegulation"] = self.newProductRegulation!
            }
            if self.recallName != nil {
                map["RecallName"] = self.recallName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.statisPeriod != nil {
                map["StatisPeriod"] = self.statisPeriod!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.toleranceValue != nil {
                map["ToleranceValue"] = self.toleranceValue!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Event"] as? String {
                self.event = value
            }
            if let value = dict["ItemConditionArray"] as? String {
                self.itemConditionArray = value
            }
            if let value = dict["ItemConditionExpress"] as? String {
                self.itemConditionExpress = value
            }
            if let value = dict["ItemConditionType"] as? String {
                self.itemConditionType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NewProductRegulation"] as? Bool {
                self.newProductRegulation = value
            }
            if let value = dict["RecallName"] as? String {
                self.recallName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["StatisPeriod"] as? String {
                self.statisPeriod = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ToleranceValue"] as? Int64 {
                self.toleranceValue = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var behaviorTableMetaId: String?

    public var controlGranularity: String?

    public var controlLogic: String?

    public var controlType: String?

    public var description_: String?

    public var effectiveSceneIds: [Int32]?

    public var endTime: String?

    public var executionTime: String?

    public var flinkResourceId: String?

    public var instanceId: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var itemTableMetaId: String?

    public var name: String?

    public var preExperimentIds: String?

    public var prodExperimentIds: String?

    public var sceneId: String?

    public var serviceId: String?

    public var serviceIds: [Int32]?

    public var startTime: String?

    public var statisBehaviorConditionArray: String?

    public var statisBehaviorConditionExpress: String?

    public var statisBehaviorConditionType: String?

    public var trafficControlTargets: [CreateTrafficControlTaskRequest.TrafficControlTargets]?

    public var userConditionArray: String?

    public var userConditionExpress: String?

    public var userConditionType: String?

    public var userTableMetaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.behaviorTableMetaId != nil {
            map["BehaviorTableMetaId"] = self.behaviorTableMetaId!
        }
        if self.controlGranularity != nil {
            map["ControlGranularity"] = self.controlGranularity!
        }
        if self.controlLogic != nil {
            map["ControlLogic"] = self.controlLogic!
        }
        if self.controlType != nil {
            map["ControlType"] = self.controlType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.effectiveSceneIds != nil {
            map["EffectiveSceneIds"] = self.effectiveSceneIds!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executionTime != nil {
            map["ExecutionTime"] = self.executionTime!
        }
        if self.flinkResourceId != nil {
            map["FlinkResourceId"] = self.flinkResourceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemConditionArray != nil {
            map["ItemConditionArray"] = self.itemConditionArray!
        }
        if self.itemConditionExpress != nil {
            map["ItemConditionExpress"] = self.itemConditionExpress!
        }
        if self.itemConditionType != nil {
            map["ItemConditionType"] = self.itemConditionType!
        }
        if self.itemTableMetaId != nil {
            map["ItemTableMetaId"] = self.itemTableMetaId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.preExperimentIds != nil {
            map["PreExperimentIds"] = self.preExperimentIds!
        }
        if self.prodExperimentIds != nil {
            map["ProdExperimentIds"] = self.prodExperimentIds!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceIds != nil {
            map["ServiceIds"] = self.serviceIds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisBehaviorConditionArray != nil {
            map["StatisBehaviorConditionArray"] = self.statisBehaviorConditionArray!
        }
        if self.statisBehaviorConditionExpress != nil {
            map["StatisBehaviorConditionExpress"] = self.statisBehaviorConditionExpress!
        }
        if self.statisBehaviorConditionType != nil {
            map["StatisBehaviorConditionType"] = self.statisBehaviorConditionType!
        }
        if self.trafficControlTargets != nil {
            var tmp : [Any] = []
            for k in self.trafficControlTargets! {
                tmp.append(k.toMap())
            }
            map["TrafficControlTargets"] = tmp
        }
        if self.userConditionArray != nil {
            map["UserConditionArray"] = self.userConditionArray!
        }
        if self.userConditionExpress != nil {
            map["UserConditionExpress"] = self.userConditionExpress!
        }
        if self.userConditionType != nil {
            map["UserConditionType"] = self.userConditionType!
        }
        if self.userTableMetaId != nil {
            map["UserTableMetaId"] = self.userTableMetaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BehaviorTableMetaId"] as? String {
            self.behaviorTableMetaId = value
        }
        if let value = dict["ControlGranularity"] as? String {
            self.controlGranularity = value
        }
        if let value = dict["ControlLogic"] as? String {
            self.controlLogic = value
        }
        if let value = dict["ControlType"] as? String {
            self.controlType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EffectiveSceneIds"] as? [Int32] {
            self.effectiveSceneIds = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExecutionTime"] as? String {
            self.executionTime = value
        }
        if let value = dict["FlinkResourceId"] as? String {
            self.flinkResourceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemConditionArray"] as? String {
            self.itemConditionArray = value
        }
        if let value = dict["ItemConditionExpress"] as? String {
            self.itemConditionExpress = value
        }
        if let value = dict["ItemConditionType"] as? String {
            self.itemConditionType = value
        }
        if let value = dict["ItemTableMetaId"] as? String {
            self.itemTableMetaId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PreExperimentIds"] as? String {
            self.preExperimentIds = value
        }
        if let value = dict["ProdExperimentIds"] as? String {
            self.prodExperimentIds = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceIds"] as? [Int32] {
            self.serviceIds = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisBehaviorConditionArray"] as? String {
            self.statisBehaviorConditionArray = value
        }
        if let value = dict["StatisBehaviorConditionExpress"] as? String {
            self.statisBehaviorConditionExpress = value
        }
        if let value = dict["StatisBehaviorConditionType"] as? String {
            self.statisBehaviorConditionType = value
        }
        if let value = dict["TrafficControlTargets"] as? [Any?] {
            var tmp : [CreateTrafficControlTaskRequest.TrafficControlTargets] = []
            for v in value {
                if v != nil {
                    var model = CreateTrafficControlTaskRequest.TrafficControlTargets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficControlTargets = tmp
        }
        if let value = dict["UserConditionArray"] as? String {
            self.userConditionArray = value
        }
        if let value = dict["UserConditionExpress"] as? String {
            self.userConditionExpress = value
        }
        if let value = dict["UserConditionType"] as? String {
            self.userConditionType = value
        }
        if let value = dict["UserTableMetaId"] as? String {
            self.userTableMetaId = value
        }
    }
}

public class CreateTrafficControlTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trafficControlTaskId: String?

    public override init() {
        super.init()
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
        if self.trafficControlTaskId != nil {
            map["TrafficControlTaskId"] = self.trafficControlTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrafficControlTaskId"] as? String {
            self.trafficControlTaskId = value
        }
    }
}

public class CreateTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrafficControlTaskResponseBody?

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
            var model = CreateTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DebugResourceRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var metricInfo: [String: Any]?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricInfo != nil {
            map["MetricInfo"] = self.metricInfo!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricInfo"] as? [String: Any] {
            self.metricInfo = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DebugResourceRuleShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var metricInfoShrink: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricInfoShrink != nil {
            map["MetricInfo"] = self.metricInfoShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricInfo"] as? String {
            self.metricInfoShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DebugResourceRuleResponseBody : Tea.TeaModel {
    public var currentValues: [String: Any]?

    public var outputValues: [String: Any]?

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
        if self.currentValues != nil {
            map["CurrentValues"] = self.currentValues!
        }
        if self.outputValues != nil {
            map["OutputValues"] = self.outputValues!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentValues"] as? [String: Any] {
            self.currentValues = value
        }
        if let value = dict["OutputValues"] as? [String: Any] {
            self.outputValues = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DebugResourceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DebugResourceRuleResponseBody?

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
            var model = DebugResourceRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteABMetricRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteABMetricResponseBody : Tea.TeaModel {
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

public class DeleteABMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteABMetricResponseBody?

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
            var model = DeleteABMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteABMetricGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteABMetricGroupResponseBody : Tea.TeaModel {
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

public class DeleteABMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteABMetricGroupResponseBody?

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
            var model = DeleteABMetricGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCrowdRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteCrowdResponseBody : Tea.TeaModel {
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

public class DeleteCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCrowdResponseBody?

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
            var model = DeleteCrowdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEngineConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteEngineConfigResponseBody : Tea.TeaModel {
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

public class DeleteEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEngineConfigResponseBody?

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
            var model = DeleteEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperimentRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteExperimentResponseBody : Tea.TeaModel {
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

public class DeleteExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentResponseBody?

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
            var model = DeleteExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperimentGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteExperimentGroupResponseBody : Tea.TeaModel {
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

public class DeleteExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentGroupResponseBody?

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
            var model = DeleteExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceResourceResponseBody : Tea.TeaModel {
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

public class DeleteInstanceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResourceResponseBody?

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
            var model = DeleteInstanceResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLaboratoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteLaboratoryResponseBody : Tea.TeaModel {
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

public class DeleteLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLaboratoryResponseBody?

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
            var model = DeleteLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteLayerRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteLayerResponseBody : Tea.TeaModel {
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

public class DeleteLayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLayerResponseBody?

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
            var model = DeleteLayerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteParamRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteParamResponseBody : Tea.TeaModel {
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

public class DeleteParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteParamResponseBody?

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
            var model = DeleteParamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteResourceRuleResponseBody : Tea.TeaModel {
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

public class DeleteResourceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceRuleResponseBody?

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
            var model = DeleteResourceRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceRuleItemRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteResourceRuleItemResponseBody : Tea.TeaModel {
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

public class DeleteResourceRuleItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceRuleItemResponseBody?

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
            var model = DeleteResourceRuleItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSampleConsistencyJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteSampleConsistencyJobResponseBody : Tea.TeaModel {
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

public class DeleteSampleConsistencyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSampleConsistencyJobResponseBody?

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
            var model = DeleteSampleConsistencyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSceneRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteSceneResponseBody : Tea.TeaModel {
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

public class DeleteSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSceneResponseBody?

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
            var model = DeleteSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSubCrowdRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteSubCrowdResponseBody : Tea.TeaModel {
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

public class DeleteSubCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSubCrowdResponseBody?

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
            var model = DeleteSubCrowdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTableMetaRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteTableMetaResponseBody : Tea.TeaModel {
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

public class DeleteTableMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTableMetaResponseBody?

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
            var model = DeleteTableMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTrafficControlTargetRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteTrafficControlTargetResponseBody : Tea.TeaModel {
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

public class DeleteTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficControlTargetResponseBody?

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
            var model = DeleteTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTrafficControlTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteTrafficControlTaskResponseBody : Tea.TeaModel {
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

public class DeleteTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrafficControlTaskResponseBody?

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
            var model = DeleteTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateAlgorithmCustomizationScriptRequest : Tea.TeaModel {
    public var deployMode: String?

    public var instanceId: String?

    public var moduleFieldTypes: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployMode != nil {
            map["DeployMode"] = self.deployMode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleFieldTypes != nil {
            map["ModuleFieldTypes"] = self.moduleFieldTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeployMode"] as? String {
            self.deployMode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleFieldTypes"] as? [String: Any] {
            self.moduleFieldTypes = value
        }
    }
}

public class GenerateAlgorithmCustomizationScriptResponseBody : Tea.TeaModel {
    public var logId: String?

    public var ossAddress: String?

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
        if self.logId != nil {
            map["LogId"] = self.logId!
        }
        if self.ossAddress != nil {
            map["OssAddress"] = self.ossAddress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogId"] as? String {
            self.logId = value
        }
        if let value = dict["OssAddress"] as? String {
            self.ossAddress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateAlgorithmCustomizationScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAlgorithmCustomizationScriptResponseBody?

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
            var model = GenerateAlgorithmCustomizationScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateTrafficControlTaskCodeRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GenerateTrafficControlTaskCodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var preNeedConfig: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.preNeedConfig != nil {
            map["PreNeedConfig"] = self.preNeedConfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["PreNeedConfig"] as? Bool {
            self.preNeedConfig = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateTrafficControlTaskCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateTrafficControlTaskCodeResponseBody?

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
            var model = GenerateTrafficControlTaskCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateTrafficControlTaskConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GenerateTrafficControlTaskConfigResponseBody : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateTrafficControlTaskConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateTrafficControlTaskConfigResponseBody?

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
            var model = GenerateTrafficControlTaskConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetABMetricRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetABMetricResponseBody : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var leftMetricId: String?

    public var name: String?

    public var operator_: String?

    public var realtime: String?

    public var requestId: String?

    public var resultResourceId: String?

    public var resultTableMetaId: String?

    public var rightMetricId: String?

    public var sceneId: String?

    public var sceneName: String?

    public var statisticsCycle: Int32?

    public var tableMetaId: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.leftMetricId != nil {
            map["LeftMetricId"] = self.leftMetricId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultResourceId != nil {
            map["ResultResourceId"] = self.resultResourceId!
        }
        if self.resultTableMetaId != nil {
            map["ResultTableMetaId"] = self.resultTableMetaId!
        }
        if self.rightMetricId != nil {
            map["RightMetricId"] = self.rightMetricId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.statisticsCycle != nil {
            map["StatisticsCycle"] = self.statisticsCycle!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["LeftMetricId"] as? String {
            self.leftMetricId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["Realtime"] as? String {
            self.realtime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultResourceId"] as? String {
            self.resultResourceId = value
        }
        if let value = dict["ResultTableMetaId"] as? String {
            self.resultTableMetaId = value
        }
        if let value = dict["RightMetricId"] as? String {
            self.rightMetricId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["StatisticsCycle"] as? Int32 {
            self.statisticsCycle = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetABMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetABMetricResponseBody?

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
            var model = GetABMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetABMetricGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetABMetricGroupResponseBody : Tea.TeaModel {
    public var ABMetricIds: String?

    public var ABMetricNames: String?

    public var description_: String?

    public var name: String?

    public var owner: String?

    public var realtime: Bool?

    public var requestId: String?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ABMetricIds != nil {
            map["ABMetricIds"] = self.ABMetricIds!
        }
        if self.ABMetricNames != nil {
            map["ABMetricNames"] = self.ABMetricNames!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricIds"] as? String {
            self.ABMetricIds = value
        }
        if let value = dict["ABMetricNames"] as? String {
            self.ABMetricNames = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class GetABMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetABMetricGroupResponseBody?

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
            var model = GetABMetricGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCalculationJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetCalculationJobResponseBody : Tea.TeaModel {
    public var ABMetricId: String?

    public var ABMetricName: String?

    public var bizDate: String?

    public var config: String?

    public var gmtRanTime: String?

    public var jobMessage: [String]?

    public var jobSource: String?

    public var requestId: String?

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
        if self.ABMetricId != nil {
            map["ABMetricId"] = self.ABMetricId!
        }
        if self.ABMetricName != nil {
            map["ABMetricName"] = self.ABMetricName!
        }
        if self.bizDate != nil {
            map["BizDate"] = self.bizDate!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.gmtRanTime != nil {
            map["GmtRanTime"] = self.gmtRanTime!
        }
        if self.jobMessage != nil {
            map["JobMessage"] = self.jobMessage!
        }
        if self.jobSource != nil {
            map["JobSource"] = self.jobSource!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricId"] as? String {
            self.ABMetricId = value
        }
        if let value = dict["ABMetricName"] as? String {
            self.ABMetricName = value
        }
        if let value = dict["BizDate"] as? String {
            self.bizDate = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["GmtRanTime"] as? String {
            self.gmtRanTime = value
        }
        if let value = dict["JobMessage"] as? [String] {
            self.jobMessage = value
        }
        if let value = dict["JobSource"] as? String {
            self.jobSource = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetCalculationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCalculationJobResponseBody?

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
            var model = GetCalculationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEngineConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetEngineConfigResponseBody : Tea.TeaModel {
    public var configValue: String?

    public var description_: String?

    public var environment: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var gmtReleasedTime: String?

    public var name: String?

    public var requestId: String?

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
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.gmtReleasedTime != nil {
            map["GmtReleasedTime"] = self.gmtReleasedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["GmtReleasedTime"] as? String {
            self.gmtReleasedTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEngineConfigResponseBody?

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
            var model = GetEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetExperimentResponseBody : Tea.TeaModel {
    public var aliasExperimentId: String?

    public var buckets: String?

    public var config: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var experimentGroupId: String?

    public var flowPercent: Int32?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var laboratoryId: String?

    public var layerId: String?

    public var name: String?

    public var requestId: String?

    public var sceneId: String?

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
        if self.aliasExperimentId != nil {
            map["AliasExperimentId"] = self.aliasExperimentId!
        }
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.flowPercent != nil {
            map["FlowPercent"] = self.flowPercent!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
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
        if let value = dict["AliasExperimentId"] as? String {
            self.aliasExperimentId = value
        }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["FlowPercent"] as? Int32 {
            self.flowPercent = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentResponseBody?

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
            var model = GetExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetExperimentGroupResponseBody : Tea.TeaModel {
    public var config: String?

    public var crowdId: String?

    public var crowdTargetType: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var distributionTimeDuration: Int32?

    public var distributionType: String?

    public var filter: String?

    public var holdingBuckets: String?

    public var laboratoryId: String?

    public var layerId: String?

    public var name: String?

    public var needAA: Bool?

    public var owner: String?

    public var randomFlow: Int64?

    public var requestId: String?

    public var reservedBuckets: String?

    public var sceneId: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.crowdTargetType != nil {
            map["CrowdTargetType"] = self.crowdTargetType!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.distributionTimeDuration != nil {
            map["DistributionTimeDuration"] = self.distributionTimeDuration!
        }
        if self.distributionType != nil {
            map["DistributionType"] = self.distributionType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.holdingBuckets != nil {
            map["HoldingBuckets"] = self.holdingBuckets!
        }
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.needAA != nil {
            map["NeedAA"] = self.needAA!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.randomFlow != nil {
            map["RandomFlow"] = self.randomFlow!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.reservedBuckets != nil {
            map["ReservedBuckets"] = self.reservedBuckets!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["CrowdId"] as? String {
            self.crowdId = value
        }
        if let value = dict["CrowdTargetType"] as? String {
            self.crowdTargetType = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DistributionTimeDuration"] as? Int32 {
            self.distributionTimeDuration = value
        }
        if let value = dict["DistributionType"] as? String {
            self.distributionType = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["HoldingBuckets"] as? String {
            self.holdingBuckets = value
        }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NeedAA"] as? Bool {
            self.needAA = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RandomFlow"] as? Int64 {
            self.randomFlow = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ReservedBuckets"] as? String {
            self.reservedBuckets = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentGroupResponseBody?

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
            var model = GetExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFeatureConsistencyCheckJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetFeatureConsistencyCheckJobResponseBody : Tea.TeaModel {
    public var config: String?

    public var featureConsistencyCheckJobConfigId: String?

    public var featureConsistencyCheckJobConfigName: String?

    public var gmtEndTime: String?

    public var gmtStartTime: String?

    public var logs: [String]?

    public var requestId: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.featureConsistencyCheckJobConfigId != nil {
            map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
        }
        if self.featureConsistencyCheckJobConfigName != nil {
            map["FeatureConsistencyCheckJobConfigName"] = self.featureConsistencyCheckJobConfigName!
        }
        if self.gmtEndTime != nil {
            map["GmtEndTime"] = self.gmtEndTime!
        }
        if self.gmtStartTime != nil {
            map["GmtStartTime"] = self.gmtStartTime!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
            self.featureConsistencyCheckJobConfigId = value
        }
        if let value = dict["FeatureConsistencyCheckJobConfigName"] as? String {
            self.featureConsistencyCheckJobConfigName = value
        }
        if let value = dict["GmtEndTime"] as? String {
            self.gmtEndTime = value
        }
        if let value = dict["GmtStartTime"] as? String {
            self.gmtStartTime = value
        }
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetFeatureConsistencyCheckJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureConsistencyCheckJobResponseBody?

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
            var model = GetFeatureConsistencyCheckJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFeatureConsistencyCheckJobConfigRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetFeatureConsistencyCheckJobConfigResponseBody : Tea.TeaModel {
    public var compareFeature: Bool?

    public var datasetId: String?

    public var datasetMountPath: String?

    public var datasetName: String?

    public var datasetType: String?

    public var datasetUri: String?

    public var defaultRoute: String?

    public var easServiceName: String?

    public var easyRecPackagePath: String?

    public var easyRecVersion: String?

    public var featureDisplayExclude: String?

    public var featureLandingResourceId: String?

    public var featureLandingResourceUri: String?

    public var featurePriority: String?

    public var featureStoreItemId: String?

    public var featureStoreModelId: String?

    public var featureStoreProjectId: String?

    public var featureStoreProjectName: String?

    public var featureStoreSeqFeatureView: String?

    public var featureStoreUserId: String?

    public var fgJarVersion: String?

    public var fgJsonFileName: String?

    public var generateZip: Bool?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var itemIdField: String?

    public var itemTable: String?

    public var itemTablePartitionField: String?

    public var itemTablePartitionFieldFormat: String?

    public var latestJobGmtSamplingEndTime: String?

    public var latestJobGmtSamplingStartTime: String?

    public var latestJobId: String?

    public var name: String?

    public var ossBucket: String?

    public var ossResourceId: String?

    public var predictWorkerCount: Int32?

    public var predictWorkerCpu: Int32?

    public var predictWorkerMemory: Int32?

    public var requestId: String?

    public var resourceConfig: String?

    public var sampleRate: String?

    public var sceneId: String?

    public var sceneName: String?

    public var securityGroupId: String?

    public var serviceId: String?

    public var serviceName: String?

    public var status: String?

    public var switchId: String?

    public var useFeatureStore: Bool?

    public var userIdField: String?

    public var userTable: String?

    public var userTablePartitionField: String?

    public var userTablePartitionFieldFormat: String?

    public var vpcId: String?

    public var workflowName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compareFeature != nil {
            map["CompareFeature"] = self.compareFeature!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.datasetMountPath != nil {
            map["DatasetMountPath"] = self.datasetMountPath!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.datasetType != nil {
            map["DatasetType"] = self.datasetType!
        }
        if self.datasetUri != nil {
            map["DatasetUri"] = self.datasetUri!
        }
        if self.defaultRoute != nil {
            map["DefaultRoute"] = self.defaultRoute!
        }
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.easyRecPackagePath != nil {
            map["EasyRecPackagePath"] = self.easyRecPackagePath!
        }
        if self.easyRecVersion != nil {
            map["EasyRecVersion"] = self.easyRecVersion!
        }
        if self.featureDisplayExclude != nil {
            map["FeatureDisplayExclude"] = self.featureDisplayExclude!
        }
        if self.featureLandingResourceId != nil {
            map["FeatureLandingResourceId"] = self.featureLandingResourceId!
        }
        if self.featureLandingResourceUri != nil {
            map["FeatureLandingResourceUri"] = self.featureLandingResourceUri!
        }
        if self.featurePriority != nil {
            map["FeaturePriority"] = self.featurePriority!
        }
        if self.featureStoreItemId != nil {
            map["FeatureStoreItemId"] = self.featureStoreItemId!
        }
        if self.featureStoreModelId != nil {
            map["FeatureStoreModelId"] = self.featureStoreModelId!
        }
        if self.featureStoreProjectId != nil {
            map["FeatureStoreProjectId"] = self.featureStoreProjectId!
        }
        if self.featureStoreProjectName != nil {
            map["FeatureStoreProjectName"] = self.featureStoreProjectName!
        }
        if self.featureStoreSeqFeatureView != nil {
            map["FeatureStoreSeqFeatureView"] = self.featureStoreSeqFeatureView!
        }
        if self.featureStoreUserId != nil {
            map["FeatureStoreUserId"] = self.featureStoreUserId!
        }
        if self.fgJarVersion != nil {
            map["FgJarVersion"] = self.fgJarVersion!
        }
        if self.fgJsonFileName != nil {
            map["FgJsonFileName"] = self.fgJsonFileName!
        }
        if self.generateZip != nil {
            map["GenerateZip"] = self.generateZip!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.itemIdField != nil {
            map["ItemIdField"] = self.itemIdField!
        }
        if self.itemTable != nil {
            map["ItemTable"] = self.itemTable!
        }
        if self.itemTablePartitionField != nil {
            map["ItemTablePartitionField"] = self.itemTablePartitionField!
        }
        if self.itemTablePartitionFieldFormat != nil {
            map["ItemTablePartitionFieldFormat"] = self.itemTablePartitionFieldFormat!
        }
        if self.latestJobGmtSamplingEndTime != nil {
            map["LatestJobGmtSamplingEndTime"] = self.latestJobGmtSamplingEndTime!
        }
        if self.latestJobGmtSamplingStartTime != nil {
            map["LatestJobGmtSamplingStartTime"] = self.latestJobGmtSamplingStartTime!
        }
        if self.latestJobId != nil {
            map["LatestJobId"] = self.latestJobId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossResourceId != nil {
            map["OssResourceId"] = self.ossResourceId!
        }
        if self.predictWorkerCount != nil {
            map["PredictWorkerCount"] = self.predictWorkerCount!
        }
        if self.predictWorkerCpu != nil {
            map["PredictWorkerCpu"] = self.predictWorkerCpu!
        }
        if self.predictWorkerMemory != nil {
            map["PredictWorkerMemory"] = self.predictWorkerMemory!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceConfig != nil {
            map["ResourceConfig"] = self.resourceConfig!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.switchId != nil {
            map["SwitchId"] = self.switchId!
        }
        if self.useFeatureStore != nil {
            map["UseFeatureStore"] = self.useFeatureStore!
        }
        if self.userIdField != nil {
            map["UserIdField"] = self.userIdField!
        }
        if self.userTable != nil {
            map["UserTable"] = self.userTable!
        }
        if self.userTablePartitionField != nil {
            map["UserTablePartitionField"] = self.userTablePartitionField!
        }
        if self.userTablePartitionFieldFormat != nil {
            map["UserTablePartitionFieldFormat"] = self.userTablePartitionFieldFormat!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompareFeature"] as? Bool {
            self.compareFeature = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["DatasetMountPath"] as? String {
            self.datasetMountPath = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["DatasetType"] as? String {
            self.datasetType = value
        }
        if let value = dict["DatasetUri"] as? String {
            self.datasetUri = value
        }
        if let value = dict["DefaultRoute"] as? String {
            self.defaultRoute = value
        }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["EasyRecPackagePath"] as? String {
            self.easyRecPackagePath = value
        }
        if let value = dict["EasyRecVersion"] as? String {
            self.easyRecVersion = value
        }
        if let value = dict["FeatureDisplayExclude"] as? String {
            self.featureDisplayExclude = value
        }
        if let value = dict["FeatureLandingResourceId"] as? String {
            self.featureLandingResourceId = value
        }
        if let value = dict["FeatureLandingResourceUri"] as? String {
            self.featureLandingResourceUri = value
        }
        if let value = dict["FeaturePriority"] as? String {
            self.featurePriority = value
        }
        if let value = dict["FeatureStoreItemId"] as? String {
            self.featureStoreItemId = value
        }
        if let value = dict["FeatureStoreModelId"] as? String {
            self.featureStoreModelId = value
        }
        if let value = dict["FeatureStoreProjectId"] as? String {
            self.featureStoreProjectId = value
        }
        if let value = dict["FeatureStoreProjectName"] as? String {
            self.featureStoreProjectName = value
        }
        if let value = dict["FeatureStoreSeqFeatureView"] as? String {
            self.featureStoreSeqFeatureView = value
        }
        if let value = dict["FeatureStoreUserId"] as? String {
            self.featureStoreUserId = value
        }
        if let value = dict["FgJarVersion"] as? String {
            self.fgJarVersion = value
        }
        if let value = dict["FgJsonFileName"] as? String {
            self.fgJsonFileName = value
        }
        if let value = dict["GenerateZip"] as? Bool {
            self.generateZip = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ItemIdField"] as? String {
            self.itemIdField = value
        }
        if let value = dict["ItemTable"] as? String {
            self.itemTable = value
        }
        if let value = dict["ItemTablePartitionField"] as? String {
            self.itemTablePartitionField = value
        }
        if let value = dict["ItemTablePartitionFieldFormat"] as? String {
            self.itemTablePartitionFieldFormat = value
        }
        if let value = dict["LatestJobGmtSamplingEndTime"] as? String {
            self.latestJobGmtSamplingEndTime = value
        }
        if let value = dict["LatestJobGmtSamplingStartTime"] as? String {
            self.latestJobGmtSamplingStartTime = value
        }
        if let value = dict["LatestJobId"] as? String {
            self.latestJobId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssResourceId"] as? String {
            self.ossResourceId = value
        }
        if let value = dict["PredictWorkerCount"] as? Int32 {
            self.predictWorkerCount = value
        }
        if let value = dict["PredictWorkerCpu"] as? Int32 {
            self.predictWorkerCpu = value
        }
        if let value = dict["PredictWorkerMemory"] as? Int32 {
            self.predictWorkerMemory = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceConfig"] as? String {
            self.resourceConfig = value
        }
        if let value = dict["SampleRate"] as? String {
            self.sampleRate = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SwitchId"] as? String {
            self.switchId = value
        }
        if let value = dict["UseFeatureStore"] as? Bool {
            self.useFeatureStore = value
        }
        if let value = dict["UserIdField"] as? String {
            self.userIdField = value
        }
        if let value = dict["UserTable"] as? String {
            self.userTable = value
        }
        if let value = dict["UserTablePartitionField"] as? String {
            self.userTablePartitionField = value
        }
        if let value = dict["UserTablePartitionFieldFormat"] as? String {
            self.userTablePartitionFieldFormat = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["WorkflowName"] as? String {
            self.workflowName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetFeatureConsistencyCheckJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureConsistencyCheckJobConfigResponseBody?

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
            var model = GetFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public class DataManagements : Tea.TeaModel {
            public var componentCode: String?

            public var meta: [String: Any]?

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
                if self.componentCode != nil {
                    map["ComponentCode"] = self.componentCode!
                }
                if self.meta != nil {
                    map["Meta"] = self.meta!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentCode"] as? String {
                    self.componentCode = value
                }
                if let value = dict["Meta"] as? [String: Any] {
                    self.meta = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Engines : Tea.TeaModel {
            public var componentCode: String?

            public var meta: [String: Any]?

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
                if self.componentCode != nil {
                    map["ComponentCode"] = self.componentCode!
                }
                if self.meta != nil {
                    map["Meta"] = self.meta!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentCode"] as? String {
                    self.componentCode = value
                }
                if let value = dict["Meta"] as? [String: Any] {
                    self.meta = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Monitors : Tea.TeaModel {
            public var componentCode: String?

            public var meta: [String: Any]?

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
                if self.componentCode != nil {
                    map["ComponentCode"] = self.componentCode!
                }
                if self.meta != nil {
                    map["Meta"] = self.meta!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComponentCode"] as? String {
                    self.componentCode = value
                }
                if let value = dict["Meta"] as? [String: Any] {
                    self.meta = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var dataManagements: [GetInstanceResponseBody.Config.DataManagements]?

        public var engines: [GetInstanceResponseBody.Config.Engines]?

        public var monitors: [GetInstanceResponseBody.Config.Monitors]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataManagements != nil {
                var tmp : [Any] = []
                for k in self.dataManagements! {
                    tmp.append(k.toMap())
                }
                map["DataManagements"] = tmp
            }
            if self.engines != nil {
                var tmp : [Any] = []
                for k in self.engines! {
                    tmp.append(k.toMap())
                }
                map["Engines"] = tmp
            }
            if self.monitors != nil {
                var tmp : [Any] = []
                for k in self.monitors! {
                    tmp.append(k.toMap())
                }
                map["Monitors"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataManagements"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Config.DataManagements] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Config.DataManagements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataManagements = tmp
            }
            if let value = dict["Engines"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Config.Engines] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Config.Engines()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.engines = tmp
            }
            if let value = dict["Monitors"] as? [Any?] {
                var tmp : [GetInstanceResponseBody.Config.Monitors] = []
                for v in value {
                    if v != nil {
                        var model = GetInstanceResponseBody.Config.Monitors()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.monitors = tmp
            }
        }
    }
    public class OperatingTool : Tea.TeaModel {
        public var isEnable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isEnable != nil {
                map["IsEnable"] = self.isEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsEnable"] as? Bool {
                self.isEnable = value
            }
        }
    }
    public var chargeType: String?

    public var commodityCode: String?

    public var config: GetInstanceResponseBody.Config?

    public var expiredTime: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var instanceId: String?

    public var operatingTool: GetInstanceResponseBody.OperatingTool?

    public var regionId: String?

    public var requestId: String?

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
        try self.config?.validate()
        try self.operatingTool?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.operatingTool != nil {
            map["OperatingTool"] = self.operatingTool?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["Config"] as? [String: Any?] {
            var model = GetInstanceResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["ExpiredTime"] as? String {
            self.expiredTime = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OperatingTool"] as? [String: Any?] {
            var model = GetInstanceResponseBody.OperatingTool()
            model.fromMap(value)
            self.operatingTool = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

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
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceResourceResponseBody : Tea.TeaModel {
    public var category: String?

    public var config: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var group: String?

    public var requestId: String?

    public var resourceId: String?

    public var type: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Group"] as? String {
            self.group = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class GetInstanceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResourceResponseBody?

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
            var model = GetInstanceResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceResourceTableResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var isDimensionField: Bool?

        public var isPartitionField: Bool?

        public var meaning: String?

        public var name: String?

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
            if self.isDimensionField != nil {
                map["IsDimensionField"] = self.isDimensionField!
            }
            if self.isPartitionField != nil {
                map["IsPartitionField"] = self.isPartitionField!
            }
            if self.meaning != nil {
                map["Meaning"] = self.meaning!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsDimensionField"] as? Bool {
                self.isDimensionField = value
            }
            if let value = dict["IsPartitionField"] as? Bool {
                self.isPartitionField = value
            }
            if let value = dict["Meaning"] as? String {
                self.meaning = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var fields: [GetInstanceResourceTableResponseBody.Fields]?

    public var requestId: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [GetInstanceResourceTableResponseBody.Fields] = []
            for v in value {
                if v != nil {
                    var model = GetInstanceResourceTableResponseBody.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GetInstanceResourceTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResourceTableResponseBody?

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
            var model = GetInstanceResourceTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLaboratoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetLaboratoryResponseBody : Tea.TeaModel {
    public var bucketCount: Int32?

    public var bucketType: String?

    public var buckets: String?

    public var crowdId: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var environment: String?

    public var filter: String?

    public var name: String?

    public var requestId: String?

    public var sceneId: String?

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
        if self.bucketCount != nil {
            map["BucketCount"] = self.bucketCount!
        }
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
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
        if let value = dict["BucketCount"] as? Int32 {
            self.bucketCount = value
        }
        if let value = dict["BucketType"] as? String {
            self.bucketType = value
        }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["CrowdId"] as? String {
            self.crowdId = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLaboratoryResponseBody?

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
            var model = GetLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLayerRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetLayerResponseBody : Tea.TeaModel {
    public var description_: String?

    public var gmtCreateTime: String?

    public var laboratoryId: String?

    public var name: String?

    public var requestId: String?

    public var residualFlow: Int64?

    public var sceneId: String?

    public override init() {
        super.init()
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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.residualFlow != nil {
            map["ResidualFlow"] = self.residualFlow!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResidualFlow"] as? Int64 {
            self.residualFlow = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class GetLayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLayerResponseBody?

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
            var model = GetLayerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetResourceRuleResponseBody : Tea.TeaModel {
    public class RuleItems : Tea.TeaModel {
        public var description_: String?

        public var maxValue: String?

        public var minValue: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxValue != nil {
                map["MaxValue"] = self.maxValue!
            }
            if self.minValue != nil {
                map["MinValue"] = self.minValue!
            }
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
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxValue"] as? String {
                self.maxValue = value
            }
            if let value = dict["MinValue"] as? String {
                self.minValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var description_: String?

    public var metricOperationType: String?

    public var metricPullInfo: String?

    public var metricPullPeriod: String?

    public var name: String?

    public var requestId: String?

    public var resourceRuleId: String?

    public var ruleComputingDefinition: String?

    public var ruleItems: [GetResourceRuleResponseBody.RuleItems]?

    public override init() {
        super.init()
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
        if self.metricOperationType != nil {
            map["MetricOperationType"] = self.metricOperationType!
        }
        if self.metricPullInfo != nil {
            map["MetricPullInfo"] = self.metricPullInfo!
        }
        if self.metricPullPeriod != nil {
            map["MetricPullPeriod"] = self.metricPullPeriod!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceRuleId != nil {
            map["ResourceRuleId"] = self.resourceRuleId!
        }
        if self.ruleComputingDefinition != nil {
            map["RuleComputingDefinition"] = self.ruleComputingDefinition!
        }
        if self.ruleItems != nil {
            var tmp : [Any] = []
            for k in self.ruleItems! {
                tmp.append(k.toMap())
            }
            map["RuleItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["MetricOperationType"] as? String {
            self.metricOperationType = value
        }
        if let value = dict["MetricPullInfo"] as? String {
            self.metricPullInfo = value
        }
        if let value = dict["MetricPullPeriod"] as? String {
            self.metricPullPeriod = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceRuleId"] as? String {
            self.resourceRuleId = value
        }
        if let value = dict["RuleComputingDefinition"] as? String {
            self.ruleComputingDefinition = value
        }
        if let value = dict["RuleItems"] as? [Any?] {
            var tmp : [GetResourceRuleResponseBody.RuleItems] = []
            for v in value {
                if v != nil {
                    var model = GetResourceRuleResponseBody.RuleItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleItems = tmp
        }
    }
}

public class GetResourceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceRuleResponseBody?

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
            var model = GetResourceRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSampleConsistencyJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetSampleConsistencyJobResponseBody : Tea.TeaModel {
    public var config: String?

    public var duration: String?

    public var easModelServiceName: String?

    public var endTime: String?

    public var featureSaveResourceId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var itemIdField: String?

    public var logs: String?

    public var name: String?

    public var partitionField: String?

    public var partitionFieldFormat: String?

    public var requestId: String?

    public var requestIdField: String?

    public var sampleConsistencyJobId: String?

    public var sampleRate: String?

    public var sampleTableName: String?

    public var sceneId: String?

    public var sceneName: String?

    public var startTime: String?

    public var status: String?

    public var userIdField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.easModelServiceName != nil {
            map["EasModelServiceName"] = self.easModelServiceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.featureSaveResourceId != nil {
            map["FeatureSaveResourceId"] = self.featureSaveResourceId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.itemIdField != nil {
            map["ItemIdField"] = self.itemIdField!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.partitionField != nil {
            map["PartitionField"] = self.partitionField!
        }
        if self.partitionFieldFormat != nil {
            map["PartitionFieldFormat"] = self.partitionFieldFormat!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestIdField != nil {
            map["RequestIdField"] = self.requestIdField!
        }
        if self.sampleConsistencyJobId != nil {
            map["SampleConsistencyJobId"] = self.sampleConsistencyJobId!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sampleTableName != nil {
            map["SampleTableName"] = self.sampleTableName!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userIdField != nil {
            map["UserIdField"] = self.userIdField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["EasModelServiceName"] as? String {
            self.easModelServiceName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["FeatureSaveResourceId"] as? String {
            self.featureSaveResourceId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ItemIdField"] as? String {
            self.itemIdField = value
        }
        if let value = dict["Logs"] as? String {
            self.logs = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PartitionField"] as? String {
            self.partitionField = value
        }
        if let value = dict["PartitionFieldFormat"] as? String {
            self.partitionFieldFormat = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestIdField"] as? String {
            self.requestIdField = value
        }
        if let value = dict["SampleConsistencyJobId"] as? String {
            self.sampleConsistencyJobId = value
        }
        if let value = dict["SampleRate"] as? String {
            self.sampleRate = value
        }
        if let value = dict["SampleTableName"] as? String {
            self.sampleTableName = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserIdField"] as? String {
            self.userIdField = value
        }
    }
}

public class GetSampleConsistencyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSampleConsistencyJobResponseBody?

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
            var model = GetSampleConsistencyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSceneRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetSceneResponseBody : Tea.TeaModel {
    public class Flows : Tea.TeaModel {
        public var flowCode: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowCode != nil {
                map["FlowCode"] = self.flowCode!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowCode"] as? String {
                self.flowCode = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
        }
    }
    public var description_: String?

    public var flows: [GetSceneResponseBody.Flows]?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Flows"] as? [Any?] {
            var tmp : [GetSceneResponseBody.Flows] = []
            for v in value {
                if v != nil {
                    var model = GetSceneResponseBody.Flows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flows = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSceneResponseBody?

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
            var model = GetSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSubCrowdRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetSubCrowdResponseBody : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var quantity: String?

    public var requestId: String?

    public var source: String?

    public var users: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["Quantity"] as? String {
            self.quantity = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Users"] as? String {
            self.users = value
        }
    }
}

public class GetSubCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSubCrowdResponseBody?

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
            var model = GetSubCrowdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableMetaRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetTableMetaResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var isDimensionField: Bool?

        public var meaning: String?

        public var name: String?

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
            if self.isDimensionField != nil {
                map["IsDimensionField"] = self.isDimensionField!
            }
            if self.meaning != nil {
                map["Meaning"] = self.meaning!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsDimensionField"] as? Bool {
                self.isDimensionField = value
            }
            if let value = dict["Meaning"] as? String {
                self.meaning = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var canDelete: Bool?

    public var config: String?

    public var description_: String?

    public var fields: [GetTableMetaResponseBody.Fields]?

    public var gmtCreateTime: String?

    public var gmtImportedTime: String?

    public var gmtModifiedTime: String?

    public var module: String?

    public var name: String?

    public var requestId: String?

    public var resourceId: String?

    public var tableMetaId: String?

    public var tableName: String?

    public var type: String?

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
        if self.canDelete != nil {
            map["CanDelete"] = self.canDelete!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtImportedTime != nil {
            map["GmtImportedTime"] = self.gmtImportedTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CanDelete"] as? Bool {
            self.canDelete = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [GetTableMetaResponseBody.Fields] = []
            for v in value {
                if v != nil {
                    var model = GetTableMetaResponseBody.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtImportedTime"] as? String {
            self.gmtImportedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class GetTableMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableMetaResponseBody?

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
            var model = GetTableMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrafficControlTargetRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetTrafficControlTargetResponseBody : Tea.TeaModel {
    public class SplitParts : Tea.TeaModel {
        public var setPoints: [Int64]?

        public var setValues: [Int64]?

        public var timePoints: [Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.setPoints != nil {
                map["SetPoints"] = self.setPoints!
            }
            if self.setValues != nil {
                map["SetValues"] = self.setValues!
            }
            if self.timePoints != nil {
                map["TimePoints"] = self.timePoints!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SetPoints"] as? [Int64] {
                self.setPoints = value
            }
            if let value = dict["SetValues"] as? [Int64] {
                self.setValues = value
            }
            if let value = dict["TimePoints"] as? [Int64] {
                self.timePoints = value
            }
        }
    }
    public var endTime: String?

    public var event: String?

    public var gmtCreateTime: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var name: String?

    public var newProductRegulation: Bool?

    public var recallName: String?

    public var requestId: String?

    public var splitParts: GetTrafficControlTargetResponseBody.SplitParts?

    public var startTime: String?

    public var statisPeriod: String?

    public var status: String?

    public var toleranceValue: Int64?

    public var trafficControlTargetId: String?

    public var trafficControlTaskId: String?

    public var value: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.splitParts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.itemConditionArray != nil {
            map["ItemConditionArray"] = self.itemConditionArray!
        }
        if self.itemConditionExpress != nil {
            map["ItemConditionExpress"] = self.itemConditionExpress!
        }
        if self.itemConditionType != nil {
            map["ItemConditionType"] = self.itemConditionType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newProductRegulation != nil {
            map["NewProductRegulation"] = self.newProductRegulation!
        }
        if self.recallName != nil {
            map["RecallName"] = self.recallName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.splitParts != nil {
            map["SplitParts"] = self.splitParts?.toMap()
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisPeriod != nil {
            map["StatisPeriod"] = self.statisPeriod!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.toleranceValue != nil {
            map["ToleranceValue"] = self.toleranceValue!
        }
        if self.trafficControlTargetId != nil {
            map["TrafficControlTargetId"] = self.trafficControlTargetId!
        }
        if self.trafficControlTaskId != nil {
            map["TrafficControlTaskId"] = self.trafficControlTaskId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["ItemConditionArray"] as? String {
            self.itemConditionArray = value
        }
        if let value = dict["ItemConditionExpress"] as? String {
            self.itemConditionExpress = value
        }
        if let value = dict["ItemConditionType"] as? String {
            self.itemConditionType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewProductRegulation"] as? Bool {
            self.newProductRegulation = value
        }
        if let value = dict["RecallName"] as? String {
            self.recallName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SplitParts"] as? [String: Any?] {
            var model = GetTrafficControlTargetResponseBody.SplitParts()
            model.fromMap(value)
            self.splitParts = model
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisPeriod"] as? String {
            self.statisPeriod = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ToleranceValue"] as? Int64 {
            self.toleranceValue = value
        }
        if let value = dict["TrafficControlTargetId"] as? String {
            self.trafficControlTargetId = value
        }
        if let value = dict["TrafficControlTaskId"] as? String {
            self.trafficControlTaskId = value
        }
        if let value = dict["Value"] as? Double {
            self.value = value
        }
    }
}

public class GetTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrafficControlTargetResponseBody?

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
            var model = GetTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrafficControlTaskRequest : Tea.TeaModel {
    public var controlTargetFilter: String?

    public var environment: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.controlTargetFilter != nil {
            map["ControlTargetFilter"] = self.controlTargetFilter!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlTargetFilter"] as? String {
            self.controlTargetFilter = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class GetTrafficControlTaskResponseBody : Tea.TeaModel {
    public class TrafficControlTargets : Tea.TeaModel {
        public class SplitParts : Tea.TeaModel {
            public var setPoints: [Int32]?

            public var setValues: [Int64]?

            public var timePoints: [Int32]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.setPoints != nil {
                    map["SetPoints"] = self.setPoints!
                }
                if self.setValues != nil {
                    map["SetValues"] = self.setValues!
                }
                if self.timePoints != nil {
                    map["TimePoints"] = self.timePoints!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SetPoints"] as? [Int32] {
                    self.setPoints = value
                }
                if let value = dict["SetValues"] as? [Int64] {
                    self.setValues = value
                }
                if let value = dict["TimePoints"] as? [Int32] {
                    self.timePoints = value
                }
            }
        }
        public var endTime: String?

        public var event: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var itemConditionArray: String?

        public var itemConditionExpress: String?

        public var itemConditionType: String?

        public var name: String?

        public var newProductRegulation: Bool?

        public var recallName: String?

        public var splitParts: GetTrafficControlTaskResponseBody.TrafficControlTargets.SplitParts?

        public var startTime: String?

        public var statisPeriod: String?

        public var status: String?

        public var toleranceValue: Int64?

        public var trafficControlTargetId: String?

        public var trafficControlTaskId: String?

        public var value: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.splitParts?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.itemConditionArray != nil {
                map["ItemConditionArray"] = self.itemConditionArray!
            }
            if self.itemConditionExpress != nil {
                map["ItemConditionExpress"] = self.itemConditionExpress!
            }
            if self.itemConditionType != nil {
                map["ItemConditionType"] = self.itemConditionType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newProductRegulation != nil {
                map["NewProductRegulation"] = self.newProductRegulation!
            }
            if self.recallName != nil {
                map["RecallName"] = self.recallName!
            }
            if self.splitParts != nil {
                map["SplitParts"] = self.splitParts?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.statisPeriod != nil {
                map["StatisPeriod"] = self.statisPeriod!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.toleranceValue != nil {
                map["ToleranceValue"] = self.toleranceValue!
            }
            if self.trafficControlTargetId != nil {
                map["TrafficControlTargetId"] = self.trafficControlTargetId!
            }
            if self.trafficControlTaskId != nil {
                map["TrafficControlTaskId"] = self.trafficControlTaskId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Event"] as? String {
                self.event = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ItemConditionArray"] as? String {
                self.itemConditionArray = value
            }
            if let value = dict["ItemConditionExpress"] as? String {
                self.itemConditionExpress = value
            }
            if let value = dict["ItemConditionType"] as? String {
                self.itemConditionType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NewProductRegulation"] as? Bool {
                self.newProductRegulation = value
            }
            if let value = dict["RecallName"] as? String {
                self.recallName = value
            }
            if let value = dict["SplitParts"] as? [String: Any?] {
                var model = GetTrafficControlTaskResponseBody.TrafficControlTargets.SplitParts()
                model.fromMap(value)
                self.splitParts = model
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["StatisPeriod"] as? String {
                self.statisPeriod = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ToleranceValue"] as? Int64 {
                self.toleranceValue = value
            }
            if let value = dict["TrafficControlTargetId"] as? String {
                self.trafficControlTargetId = value
            }
            if let value = dict["TrafficControlTaskId"] as? String {
                self.trafficControlTaskId = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var behaviorTableMetaId: String?

    public var controlGranularity: String?

    public var controlLogic: String?

    public var controlType: String?

    public var description_: String?

    public var effectiveSceneIds: [Int32]?

    public var effectiveSceneNames: [String]?

    public var endTime: String?

    public var everPublished: Bool?

    public var executionTime: String?

    public var flinkResourceId: String?

    public var flinkResourceName: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var itemTableMetaId: String?

    public var name: String?

    public var preExperimentIds: String?

    public var prepubStatus: String?

    public var prodExperimentIds: String?

    public var productStatus: String?

    public var requestId: String?

    public var sceneId: String?

    public var sceneName: String?

    public var serviceId: String?

    public var serviceIds: [Int32]?

    public var startTime: String?

    public var statisBehaviorConditionArray: String?

    public var statisBehaviorConditionExpress: String?

    public var statisBehaviorConditionType: String?

    public var trafficControlTargets: [GetTrafficControlTaskResponseBody.TrafficControlTargets]?

    public var trafficControlTaskId: String?

    public var userConditionArray: String?

    public var userConditionExpress: String?

    public var userConditionType: String?

    public var userTableMetaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.behaviorTableMetaId != nil {
            map["BehaviorTableMetaId"] = self.behaviorTableMetaId!
        }
        if self.controlGranularity != nil {
            map["ControlGranularity"] = self.controlGranularity!
        }
        if self.controlLogic != nil {
            map["ControlLogic"] = self.controlLogic!
        }
        if self.controlType != nil {
            map["ControlType"] = self.controlType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.effectiveSceneIds != nil {
            map["EffectiveSceneIds"] = self.effectiveSceneIds!
        }
        if self.effectiveSceneNames != nil {
            map["EffectiveSceneNames"] = self.effectiveSceneNames!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.everPublished != nil {
            map["EverPublished"] = self.everPublished!
        }
        if self.executionTime != nil {
            map["ExecutionTime"] = self.executionTime!
        }
        if self.flinkResourceId != nil {
            map["FlinkResourceId"] = self.flinkResourceId!
        }
        if self.flinkResourceName != nil {
            map["FlinkResourceName"] = self.flinkResourceName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.itemConditionArray != nil {
            map["ItemConditionArray"] = self.itemConditionArray!
        }
        if self.itemConditionExpress != nil {
            map["ItemConditionExpress"] = self.itemConditionExpress!
        }
        if self.itemConditionType != nil {
            map["ItemConditionType"] = self.itemConditionType!
        }
        if self.itemTableMetaId != nil {
            map["ItemTableMetaId"] = self.itemTableMetaId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.preExperimentIds != nil {
            map["PreExperimentIds"] = self.preExperimentIds!
        }
        if self.prepubStatus != nil {
            map["PrepubStatus"] = self.prepubStatus!
        }
        if self.prodExperimentIds != nil {
            map["ProdExperimentIds"] = self.prodExperimentIds!
        }
        if self.productStatus != nil {
            map["ProductStatus"] = self.productStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceIds != nil {
            map["ServiceIds"] = self.serviceIds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisBehaviorConditionArray != nil {
            map["StatisBehaviorConditionArray"] = self.statisBehaviorConditionArray!
        }
        if self.statisBehaviorConditionExpress != nil {
            map["StatisBehaviorConditionExpress"] = self.statisBehaviorConditionExpress!
        }
        if self.statisBehaviorConditionType != nil {
            map["StatisBehaviorConditionType"] = self.statisBehaviorConditionType!
        }
        if self.trafficControlTargets != nil {
            var tmp : [Any] = []
            for k in self.trafficControlTargets! {
                tmp.append(k.toMap())
            }
            map["TrafficControlTargets"] = tmp
        }
        if self.trafficControlTaskId != nil {
            map["TrafficControlTaskId"] = self.trafficControlTaskId!
        }
        if self.userConditionArray != nil {
            map["UserConditionArray"] = self.userConditionArray!
        }
        if self.userConditionExpress != nil {
            map["UserConditionExpress"] = self.userConditionExpress!
        }
        if self.userConditionType != nil {
            map["UserConditionType"] = self.userConditionType!
        }
        if self.userTableMetaId != nil {
            map["UserTableMetaId"] = self.userTableMetaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BehaviorTableMetaId"] as? String {
            self.behaviorTableMetaId = value
        }
        if let value = dict["ControlGranularity"] as? String {
            self.controlGranularity = value
        }
        if let value = dict["ControlLogic"] as? String {
            self.controlLogic = value
        }
        if let value = dict["ControlType"] as? String {
            self.controlType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EffectiveSceneIds"] as? [Int32] {
            self.effectiveSceneIds = value
        }
        if let value = dict["EffectiveSceneNames"] as? [String] {
            self.effectiveSceneNames = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EverPublished"] as? Bool {
            self.everPublished = value
        }
        if let value = dict["ExecutionTime"] as? String {
            self.executionTime = value
        }
        if let value = dict["FlinkResourceId"] as? String {
            self.flinkResourceId = value
        }
        if let value = dict["FlinkResourceName"] as? String {
            self.flinkResourceName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ItemConditionArray"] as? String {
            self.itemConditionArray = value
        }
        if let value = dict["ItemConditionExpress"] as? String {
            self.itemConditionExpress = value
        }
        if let value = dict["ItemConditionType"] as? String {
            self.itemConditionType = value
        }
        if let value = dict["ItemTableMetaId"] as? String {
            self.itemTableMetaId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PreExperimentIds"] as? String {
            self.preExperimentIds = value
        }
        if let value = dict["PrepubStatus"] as? String {
            self.prepubStatus = value
        }
        if let value = dict["ProdExperimentIds"] as? String {
            self.prodExperimentIds = value
        }
        if let value = dict["ProductStatus"] as? String {
            self.productStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceIds"] as? [Int32] {
            self.serviceIds = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisBehaviorConditionArray"] as? String {
            self.statisBehaviorConditionArray = value
        }
        if let value = dict["StatisBehaviorConditionExpress"] as? String {
            self.statisBehaviorConditionExpress = value
        }
        if let value = dict["StatisBehaviorConditionType"] as? String {
            self.statisBehaviorConditionType = value
        }
        if let value = dict["TrafficControlTargets"] as? [Any?] {
            var tmp : [GetTrafficControlTaskResponseBody.TrafficControlTargets] = []
            for v in value {
                if v != nil {
                    var model = GetTrafficControlTaskResponseBody.TrafficControlTargets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficControlTargets = tmp
        }
        if let value = dict["TrafficControlTaskId"] as? String {
            self.trafficControlTaskId = value
        }
        if let value = dict["UserConditionArray"] as? String {
            self.userConditionArray = value
        }
        if let value = dict["UserConditionExpress"] as? String {
            self.userConditionExpress = value
        }
        if let value = dict["UserConditionType"] as? String {
            self.userConditionType = value
        }
        if let value = dict["UserTableMetaId"] as? String {
            self.userTableMetaId = value
        }
    }
}

public class GetTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrafficControlTaskResponseBody?

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
            var model = GetTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrafficControlTaskTrafficRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetTrafficControlTaskTrafficResponseBody : Tea.TeaModel {
    public class TrafficControlTaskTrafficInfo : Tea.TeaModel {
        public class TargetTraffics : Tea.TeaModel {
            public var data: [String: TrafficControlTaskTrafficInfoTargetTrafficsDataValue]?

            public var trafficContorlTargetId: String?

            public override init() {
                super.init()
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
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.data! {
                        tmp[k] = v.toMap()
                    }
                    map["Data"] = tmp
                }
                if self.trafficContorlTargetId != nil {
                    map["TrafficContorlTargetId"] = self.trafficContorlTargetId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [String: Any?] {
                    var tmp : [String: TrafficControlTaskTrafficInfoTargetTrafficsDataValue] = [:]
                    for (k, v) in value {
                        if v != nil {
                            var model = TrafficControlTaskTrafficInfoTargetTrafficsDataValue()
                            model.fromMap(v as? [String: Any?])
                            tmp[k] = model
                        }
                    }
                    self.data = tmp
                }
                if let value = dict["TrafficContorlTargetId"] as? String {
                    self.trafficContorlTargetId = value
                }
            }
        }
        public var targetTraffics: [GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo.TargetTraffics]?

        public var taskTraffics: [String: TrafficControlTaskTrafficInfoTaskTrafficsValue]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetTraffics != nil {
                var tmp : [Any] = []
                for k in self.targetTraffics! {
                    tmp.append(k.toMap())
                }
                map["TargetTraffics"] = tmp
            }
            if self.taskTraffics != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.taskTraffics! {
                    tmp[k] = v.toMap()
                }
                map["TaskTraffics"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TargetTraffics"] as? [Any?] {
                var tmp : [GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo.TargetTraffics] = []
                for v in value {
                    if v != nil {
                        var model = GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo.TargetTraffics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.targetTraffics = tmp
            }
            if let value = dict["TaskTraffics"] as? [String: Any?] {
                var tmp : [String: TrafficControlTaskTrafficInfoTaskTrafficsValue] = [:]
                for (k, v) in value {
                    if v != nil {
                        var model = TrafficControlTaskTrafficInfoTaskTrafficsValue()
                        model.fromMap(v as? [String: Any?])
                        tmp[k] = model
                    }
                }
                self.taskTraffics = tmp
            }
        }
    }
    public var requestId: String?

    public var trafficControlTaskTrafficInfo: GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficControlTaskTrafficInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficControlTaskTrafficInfo != nil {
            map["TrafficControlTaskTrafficInfo"] = self.trafficControlTaskTrafficInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrafficControlTaskTrafficInfo"] as? [String: Any?] {
            var model = GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo()
            model.fromMap(value)
            self.trafficControlTaskTrafficInfo = model
        }
    }
}

public class GetTrafficControlTaskTrafficResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrafficControlTaskTrafficResponseBody?

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
            var model = GetTrafficControlTaskTrafficResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListABMetricGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var realtime: Bool?

    public var sceneId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class ListABMetricGroupsResponseBody : Tea.TeaModel {
    public class ABMetricGroups : Tea.TeaModel {
        public var ABMetricGroupId: String?

        public var ABMetricIds: String?

        public var ABMetricNames: String?

        public var description_: String?

        public var name: String?

        public var owner: String?

        public var realtime: Bool?

        public var sceneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ABMetricGroupId != nil {
                map["ABMetricGroupId"] = self.ABMetricGroupId!
            }
            if self.ABMetricIds != nil {
                map["ABMetricIds"] = self.ABMetricIds!
            }
            if self.ABMetricNames != nil {
                map["ABMetricNames"] = self.ABMetricNames!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.realtime != nil {
                map["Realtime"] = self.realtime!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ABMetricGroupId"] as? String {
                self.ABMetricGroupId = value
            }
            if let value = dict["ABMetricIds"] as? String {
                self.ABMetricIds = value
            }
            if let value = dict["ABMetricNames"] as? String {
                self.ABMetricNames = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["Realtime"] as? Bool {
                self.realtime = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
        }
    }
    public var ABMetricGroups: [ListABMetricGroupsResponseBody.ABMetricGroups]?

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
        if self.ABMetricGroups != nil {
            var tmp : [Any] = []
            for k in self.ABMetricGroups! {
                tmp.append(k.toMap())
            }
            map["ABMetricGroups"] = tmp
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
        if let value = dict["ABMetricGroups"] as? [Any?] {
            var tmp : [ListABMetricGroupsResponseBody.ABMetricGroups] = []
            for v in value {
                if v != nil {
                    var model = ListABMetricGroupsResponseBody.ABMetricGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ABMetricGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListABMetricGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListABMetricGroupsResponseBody?

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
            var model = ListABMetricGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListABMetricsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var realtime: Bool?

    public var sceneId: String?

    public var tableMetaId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListABMetricsResponseBody : Tea.TeaModel {
    public class ABMetrics : Tea.TeaModel {
        public var ABMetricId: String?

        public var definition: String?

        public var description_: String?

        public var leftMetricId: String?

        public var name: String?

        public var operator_: String?

        public var realtime: String?

        public var resultResourceId: String?

        public var resultTableMetaId: String?

        public var rightMetricId: String?

        public var sceneId: String?

        public var sceneName: String?

        public var statisticsCycle: Int32?

        public var tableMetaId: String?

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
            if self.ABMetricId != nil {
                map["ABMetricId"] = self.ABMetricId!
            }
            if self.definition != nil {
                map["Definition"] = self.definition!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.leftMetricId != nil {
                map["LeftMetricId"] = self.leftMetricId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.realtime != nil {
                map["Realtime"] = self.realtime!
            }
            if self.resultResourceId != nil {
                map["ResultResourceId"] = self.resultResourceId!
            }
            if self.resultTableMetaId != nil {
                map["ResultTableMetaId"] = self.resultTableMetaId!
            }
            if self.rightMetricId != nil {
                map["RightMetricId"] = self.rightMetricId!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.statisticsCycle != nil {
                map["StatisticsCycle"] = self.statisticsCycle!
            }
            if self.tableMetaId != nil {
                map["TableMetaId"] = self.tableMetaId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ABMetricId"] as? String {
                self.ABMetricId = value
            }
            if let value = dict["Definition"] as? String {
                self.definition = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["LeftMetricId"] as? String {
                self.leftMetricId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Realtime"] as? String {
                self.realtime = value
            }
            if let value = dict["ResultResourceId"] as? String {
                self.resultResourceId = value
            }
            if let value = dict["ResultTableMetaId"] as? String {
                self.resultTableMetaId = value
            }
            if let value = dict["RightMetricId"] as? String {
                self.rightMetricId = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["StatisticsCycle"] as? Int32 {
                self.statisticsCycle = value
            }
            if let value = dict["TableMetaId"] as? String {
                self.tableMetaId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var ABMetrics: [ListABMetricsResponseBody.ABMetrics]?

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
        if self.ABMetrics != nil {
            var tmp : [Any] = []
            for k in self.ABMetrics! {
                tmp.append(k.toMap())
            }
            map["ABMetrics"] = tmp
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
        if let value = dict["ABMetrics"] as? [Any?] {
            var tmp : [ListABMetricsResponseBody.ABMetrics] = []
            for v in value {
                if v != nil {
                    var model = ListABMetricsResponseBody.ABMetrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ABMetrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListABMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListABMetricsResponseBody?

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
            var model = ListABMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCalculationJobsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListCalculationJobsResponseBody : Tea.TeaModel {
    public class CalculationJobs : Tea.TeaModel {
        public var ABMetricName: String?

        public var bizDate: String?

        public var calculationJobId: String?

        public var config: String?

        public var gmtRanTime: String?

        public var jobMessage: [String]?

        public var jobSource: String?

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
            if self.ABMetricName != nil {
                map["ABMetricName"] = self.ABMetricName!
            }
            if self.bizDate != nil {
                map["BizDate"] = self.bizDate!
            }
            if self.calculationJobId != nil {
                map["CalculationJobId"] = self.calculationJobId!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.gmtRanTime != nil {
                map["GmtRanTime"] = self.gmtRanTime!
            }
            if self.jobMessage != nil {
                map["JobMessage"] = self.jobMessage!
            }
            if self.jobSource != nil {
                map["JobSource"] = self.jobSource!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ABMetricName"] as? String {
                self.ABMetricName = value
            }
            if let value = dict["BizDate"] as? String {
                self.bizDate = value
            }
            if let value = dict["CalculationJobId"] as? String {
                self.calculationJobId = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["GmtRanTime"] as? String {
                self.gmtRanTime = value
            }
            if let value = dict["JobMessage"] as? [String] {
                self.jobMessage = value
            }
            if let value = dict["JobSource"] as? String {
                self.jobSource = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var calculationJobs: [ListCalculationJobsResponseBody.CalculationJobs]?

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
        if self.calculationJobs != nil {
            var tmp : [Any] = []
            for k in self.calculationJobs! {
                tmp.append(k.toMap())
            }
            map["CalculationJobs"] = tmp
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
        if let value = dict["CalculationJobs"] as? [Any?] {
            var tmp : [ListCalculationJobsResponseBody.CalculationJobs] = []
            for v in value {
                if v != nil {
                    var model = ListCalculationJobsResponseBody.CalculationJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.calculationJobs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCalculationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCalculationJobsResponseBody?

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
            var model = ListCalculationJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCrowdUsersRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListCrowdUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int64?

    public var users: [String]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
    }
}

public class ListCrowdUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCrowdUsersResponseBody?

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
            var model = ListCrowdUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCrowdsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListCrowdsResponseBody : Tea.TeaModel {
    public class Crowds : Tea.TeaModel {
        public var crowdId: String?

        public var description_: String?

        public var gmtCreateTime: String?

        public var label: String?

        public var name: String?

        public var quantity: String?

        public var source: String?

        public var users: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.crowdId != nil {
                map["CrowdId"] = self.crowdId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.users != nil {
                map["Users"] = self.users!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CrowdId"] as? String {
                self.crowdId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Quantity"] as? String {
                self.quantity = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["Users"] as? String {
                self.users = value
            }
        }
    }
    public var crowds: [ListCrowdsResponseBody.Crowds]?

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
        if self.crowds != nil {
            var tmp : [Any] = []
            for k in self.crowds! {
                tmp.append(k.toMap())
            }
            map["Crowds"] = tmp
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
        if let value = dict["Crowds"] as? [Any?] {
            var tmp : [ListCrowdsResponseBody.Crowds] = []
            for v in value {
                if v != nil {
                    var model = ListCrowdsResponseBody.Crowds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.crowds = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCrowdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCrowdsResponseBody?

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
            var model = ListCrowdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListEngineConfigsRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class ListEngineConfigsResponseBody : Tea.TeaModel {
    public class EngineConfigs : Tea.TeaModel {
        public var configValue: String?

        public var description_: String?

        public var engineConfigId: String?

        public var environment: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var gmtReleasedTime: String?

        public var name: String?

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
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.engineConfigId != nil {
                map["EngineConfigId"] = self.engineConfigId!
            }
            if self.environment != nil {
                map["Environment"] = self.environment!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.gmtReleasedTime != nil {
                map["GmtReleasedTime"] = self.gmtReleasedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EngineConfigId"] as? String {
                self.engineConfigId = value
            }
            if let value = dict["Environment"] as? String {
                self.environment = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["GmtReleasedTime"] as? String {
                self.gmtReleasedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var engineConfigs: [ListEngineConfigsResponseBody.EngineConfigs]?

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
        if self.engineConfigs != nil {
            var tmp : [Any] = []
            for k in self.engineConfigs! {
                tmp.append(k.toMap())
            }
            map["EngineConfigs"] = tmp
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
        if let value = dict["EngineConfigs"] as? [Any?] {
            var tmp : [ListEngineConfigsResponseBody.EngineConfigs] = []
            for v in value {
                if v != nil {
                    var model = ListEngineConfigsResponseBody.EngineConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.engineConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListEngineConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEngineConfigsResponseBody?

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
            var model = ListEngineConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var layerId: String?

    public var regionId: String?

    public var status: String?

    public var timeRangeEnd: String?

    public var timeRangeStart: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeRangeEnd != nil {
            map["TimeRangeEnd"] = self.timeRangeEnd!
        }
        if self.timeRangeStart != nil {
            map["TimeRangeStart"] = self.timeRangeStart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TimeRangeEnd"] as? String {
            self.timeRangeEnd = value
        }
        if let value = dict["TimeRangeStart"] as? String {
            self.timeRangeStart = value
        }
    }
}

public class ListExperimentGroupsResponseBody : Tea.TeaModel {
    public class ExperimentGroups : Tea.TeaModel {
        public var config: String?

        public var crowdId: String?

        public var crowdTargetType: String?

        public var debugCrowdId: String?

        public var debugUsers: String?

        public var description_: String?

        public var distributionTimeDuration: Int32?

        public var distributionType: String?

        public var experimentGroupId: String?

        public var filter: String?

        public var holdingBuckets: String?

        public var laboratoryId: String?

        public var layerId: String?

        public var name: String?

        public var needAA: Bool?

        public var owner: String?

        public var randomFlow: Int64?

        public var reservedBuckets: String?

        public var sceneId: String?

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
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.crowdId != nil {
                map["CrowdId"] = self.crowdId!
            }
            if self.crowdTargetType != nil {
                map["CrowdTargetType"] = self.crowdTargetType!
            }
            if self.debugCrowdId != nil {
                map["DebugCrowdId"] = self.debugCrowdId!
            }
            if self.debugUsers != nil {
                map["DebugUsers"] = self.debugUsers!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.distributionTimeDuration != nil {
                map["DistributionTimeDuration"] = self.distributionTimeDuration!
            }
            if self.distributionType != nil {
                map["DistributionType"] = self.distributionType!
            }
            if self.experimentGroupId != nil {
                map["ExperimentGroupId"] = self.experimentGroupId!
            }
            if self.filter != nil {
                map["Filter"] = self.filter!
            }
            if self.holdingBuckets != nil {
                map["HoldingBuckets"] = self.holdingBuckets!
            }
            if self.laboratoryId != nil {
                map["LaboratoryId"] = self.laboratoryId!
            }
            if self.layerId != nil {
                map["LayerId"] = self.layerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.needAA != nil {
                map["NeedAA"] = self.needAA!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.randomFlow != nil {
                map["RandomFlow"] = self.randomFlow!
            }
            if self.reservedBuckets != nil {
                map["ReservedBuckets"] = self.reservedBuckets!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["CrowdId"] as? String {
                self.crowdId = value
            }
            if let value = dict["CrowdTargetType"] as? String {
                self.crowdTargetType = value
            }
            if let value = dict["DebugCrowdId"] as? String {
                self.debugCrowdId = value
            }
            if let value = dict["DebugUsers"] as? String {
                self.debugUsers = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DistributionTimeDuration"] as? Int32 {
                self.distributionTimeDuration = value
            }
            if let value = dict["DistributionType"] as? String {
                self.distributionType = value
            }
            if let value = dict["ExperimentGroupId"] as? String {
                self.experimentGroupId = value
            }
            if let value = dict["Filter"] as? String {
                self.filter = value
            }
            if let value = dict["HoldingBuckets"] as? String {
                self.holdingBuckets = value
            }
            if let value = dict["LaboratoryId"] as? String {
                self.laboratoryId = value
            }
            if let value = dict["LayerId"] as? String {
                self.layerId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NeedAA"] as? Bool {
                self.needAA = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["RandomFlow"] as? Int64 {
                self.randomFlow = value
            }
            if let value = dict["ReservedBuckets"] as? String {
                self.reservedBuckets = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var experimentGroups: [ListExperimentGroupsResponseBody.ExperimentGroups]?

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
        if self.experimentGroups != nil {
            var tmp : [Any] = []
            for k in self.experimentGroups! {
                tmp.append(k.toMap())
            }
            map["ExperimentGroups"] = tmp
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
        if let value = dict["ExperimentGroups"] as? [Any?] {
            var tmp : [ListExperimentGroupsResponseBody.ExperimentGroups] = []
            for v in value {
                if v != nil {
                    var model = ListExperimentGroupsResponseBody.ExperimentGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experimentGroups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExperimentGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentGroupsResponseBody?

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
            var model = ListExperimentGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentsRequest : Tea.TeaModel {
    public var experimentGroupId: String?

    public var instanceId: String?

    public var query: String?

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
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListExperimentsResponseBody : Tea.TeaModel {
    public class Experiments : Tea.TeaModel {
        public var aliasExperimentId: String?

        public var buckets: String?

        public var config: String?

        public var debugCrowdId: String?

        public var debugUsers: String?

        public var description_: String?

        public var experimentGroupId: String?

        public var experimentId: String?

        public var flowPercent: Int32?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var laboratoryId: String?

        public var layerId: String?

        public var name: String?

        public var sceneId: String?

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
            if self.aliasExperimentId != nil {
                map["AliasExperimentId"] = self.aliasExperimentId!
            }
            if self.buckets != nil {
                map["Buckets"] = self.buckets!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.debugCrowdId != nil {
                map["DebugCrowdId"] = self.debugCrowdId!
            }
            if self.debugUsers != nil {
                map["DebugUsers"] = self.debugUsers!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.experimentGroupId != nil {
                map["ExperimentGroupId"] = self.experimentGroupId!
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.flowPercent != nil {
                map["FlowPercent"] = self.flowPercent!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.laboratoryId != nil {
                map["LaboratoryId"] = self.laboratoryId!
            }
            if self.layerId != nil {
                map["LayerId"] = self.layerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
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
            if let value = dict["AliasExperimentId"] as? String {
                self.aliasExperimentId = value
            }
            if let value = dict["Buckets"] as? String {
                self.buckets = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["DebugCrowdId"] as? String {
                self.debugCrowdId = value
            }
            if let value = dict["DebugUsers"] as? String {
                self.debugUsers = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExperimentGroupId"] as? String {
                self.experimentGroupId = value
            }
            if let value = dict["ExperimentId"] as? String {
                self.experimentId = value
            }
            if let value = dict["FlowPercent"] as? Int32 {
                self.flowPercent = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["LaboratoryId"] as? String {
                self.laboratoryId = value
            }
            if let value = dict["LayerId"] as? String {
                self.layerId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var experiments: [ListExperimentsResponseBody.Experiments]?

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
        if self.experiments != nil {
            var tmp : [Any] = []
            for k in self.experiments! {
                tmp.append(k.toMap())
            }
            map["Experiments"] = tmp
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
        if let value = dict["Experiments"] as? [Any?] {
            var tmp : [ListExperimentsResponseBody.Experiments] = []
            for v in value {
                if v != nil {
                    var model = ListExperimentsResponseBody.Experiments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experiments = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExperimentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentsResponseBody?

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
            var model = ListExperimentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFeatureConsistencyCheckJobConfigsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class ListFeatureConsistencyCheckJobConfigsResponseBody : Tea.TeaModel {
    public class FeatureConsistencyCheckConfigs : Tea.TeaModel {
        public var compareFeature: Bool?

        public var datasetId: String?

        public var datasetMountPath: String?

        public var datasetName: String?

        public var datasetType: String?

        public var datasetUri: String?

        public var defaultRoute: String?

        public var easServiceName: String?

        public var easyRecPackagePath: String?

        public var easyRecVersion: String?

        public var featureConsistencyCheckJobConfigId: String?

        public var featureDisplayExclude: String?

        public var featureLandingResourceId: String?

        public var featureLandingResourceUri: String?

        public var featurePriority: String?

        public var featureStoreItemId: String?

        public var featureStoreModelId: String?

        public var featureStoreProjectId: String?

        public var featureStoreProjectName: String?

        public var featureStoreSeqFeatureView: String?

        public var featureStoreUserId: String?

        public var fgJarVersion: String?

        public var fgJsonFileName: String?

        public var generateZip: Bool?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var itemIdField: String?

        public var itemTable: String?

        public var itemTablePartitionField: String?

        public var itemTablePartitionFieldFormat: String?

        public var latestJobGmtSamplingEndTime: String?

        public var latestJobGmtSamplingStartTime: String?

        public var latestJobId: String?

        public var name: String?

        public var ossBucket: String?

        public var ossResourceId: String?

        public var predictWorkerCount: Int32?

        public var predictWorkerCpu: Int32?

        public var predictWorkerMemory: Int32?

        public var resourceConfig: String?

        public var sampleRate: String?

        public var sceneId: String?

        public var sceneName: String?

        public var securityGroupId: String?

        public var serviceId: String?

        public var serviceName: String?

        public var status: String?

        public var switchId: String?

        public var useFeatureStore: String?

        public var userIdField: String?

        public var userTable: String?

        public var userTablePartitionField: String?

        public var userTablePartitionFieldFormat: String?

        public var vpcId: String?

        public var workflowName: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compareFeature != nil {
                map["CompareFeature"] = self.compareFeature!
            }
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.datasetMountPath != nil {
                map["DatasetMountPath"] = self.datasetMountPath!
            }
            if self.datasetName != nil {
                map["DatasetName"] = self.datasetName!
            }
            if self.datasetType != nil {
                map["DatasetType"] = self.datasetType!
            }
            if self.datasetUri != nil {
                map["DatasetUri"] = self.datasetUri!
            }
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.easServiceName != nil {
                map["EasServiceName"] = self.easServiceName!
            }
            if self.easyRecPackagePath != nil {
                map["EasyRecPackagePath"] = self.easyRecPackagePath!
            }
            if self.easyRecVersion != nil {
                map["EasyRecVersion"] = self.easyRecVersion!
            }
            if self.featureConsistencyCheckJobConfigId != nil {
                map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
            }
            if self.featureDisplayExclude != nil {
                map["FeatureDisplayExclude"] = self.featureDisplayExclude!
            }
            if self.featureLandingResourceId != nil {
                map["FeatureLandingResourceId"] = self.featureLandingResourceId!
            }
            if self.featureLandingResourceUri != nil {
                map["FeatureLandingResourceUri"] = self.featureLandingResourceUri!
            }
            if self.featurePriority != nil {
                map["FeaturePriority"] = self.featurePriority!
            }
            if self.featureStoreItemId != nil {
                map["FeatureStoreItemId"] = self.featureStoreItemId!
            }
            if self.featureStoreModelId != nil {
                map["FeatureStoreModelId"] = self.featureStoreModelId!
            }
            if self.featureStoreProjectId != nil {
                map["FeatureStoreProjectId"] = self.featureStoreProjectId!
            }
            if self.featureStoreProjectName != nil {
                map["FeatureStoreProjectName"] = self.featureStoreProjectName!
            }
            if self.featureStoreSeqFeatureView != nil {
                map["FeatureStoreSeqFeatureView"] = self.featureStoreSeqFeatureView!
            }
            if self.featureStoreUserId != nil {
                map["FeatureStoreUserId"] = self.featureStoreUserId!
            }
            if self.fgJarVersion != nil {
                map["FgJarVersion"] = self.fgJarVersion!
            }
            if self.fgJsonFileName != nil {
                map["FgJsonFileName"] = self.fgJsonFileName!
            }
            if self.generateZip != nil {
                map["GenerateZip"] = self.generateZip!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.itemIdField != nil {
                map["ItemIdField"] = self.itemIdField!
            }
            if self.itemTable != nil {
                map["ItemTable"] = self.itemTable!
            }
            if self.itemTablePartitionField != nil {
                map["ItemTablePartitionField"] = self.itemTablePartitionField!
            }
            if self.itemTablePartitionFieldFormat != nil {
                map["ItemTablePartitionFieldFormat"] = self.itemTablePartitionFieldFormat!
            }
            if self.latestJobGmtSamplingEndTime != nil {
                map["LatestJobGmtSamplingEndTime"] = self.latestJobGmtSamplingEndTime!
            }
            if self.latestJobGmtSamplingStartTime != nil {
                map["LatestJobGmtSamplingStartTime"] = self.latestJobGmtSamplingStartTime!
            }
            if self.latestJobId != nil {
                map["LatestJobId"] = self.latestJobId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossBucket != nil {
                map["OssBucket"] = self.ossBucket!
            }
            if self.ossResourceId != nil {
                map["OssResourceId"] = self.ossResourceId!
            }
            if self.predictWorkerCount != nil {
                map["PredictWorkerCount"] = self.predictWorkerCount!
            }
            if self.predictWorkerCpu != nil {
                map["PredictWorkerCpu"] = self.predictWorkerCpu!
            }
            if self.predictWorkerMemory != nil {
                map["PredictWorkerMemory"] = self.predictWorkerMemory!
            }
            if self.resourceConfig != nil {
                map["ResourceConfig"] = self.resourceConfig!
            }
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.switchId != nil {
                map["SwitchId"] = self.switchId!
            }
            if self.useFeatureStore != nil {
                map["UseFeatureStore"] = self.useFeatureStore!
            }
            if self.userIdField != nil {
                map["UserIdField"] = self.userIdField!
            }
            if self.userTable != nil {
                map["UserTable"] = self.userTable!
            }
            if self.userTablePartitionField != nil {
                map["UserTablePartitionField"] = self.userTablePartitionField!
            }
            if self.userTablePartitionFieldFormat != nil {
                map["UserTablePartitionFieldFormat"] = self.userTablePartitionFieldFormat!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.workflowName != nil {
                map["WorkflowName"] = self.workflowName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CompareFeature"] as? Bool {
                self.compareFeature = value
            }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["DatasetMountPath"] as? String {
                self.datasetMountPath = value
            }
            if let value = dict["DatasetName"] as? String {
                self.datasetName = value
            }
            if let value = dict["DatasetType"] as? String {
                self.datasetType = value
            }
            if let value = dict["DatasetUri"] as? String {
                self.datasetUri = value
            }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["EasServiceName"] as? String {
                self.easServiceName = value
            }
            if let value = dict["EasyRecPackagePath"] as? String {
                self.easyRecPackagePath = value
            }
            if let value = dict["EasyRecVersion"] as? String {
                self.easyRecVersion = value
            }
            if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
                self.featureConsistencyCheckJobConfigId = value
            }
            if let value = dict["FeatureDisplayExclude"] as? String {
                self.featureDisplayExclude = value
            }
            if let value = dict["FeatureLandingResourceId"] as? String {
                self.featureLandingResourceId = value
            }
            if let value = dict["FeatureLandingResourceUri"] as? String {
                self.featureLandingResourceUri = value
            }
            if let value = dict["FeaturePriority"] as? String {
                self.featurePriority = value
            }
            if let value = dict["FeatureStoreItemId"] as? String {
                self.featureStoreItemId = value
            }
            if let value = dict["FeatureStoreModelId"] as? String {
                self.featureStoreModelId = value
            }
            if let value = dict["FeatureStoreProjectId"] as? String {
                self.featureStoreProjectId = value
            }
            if let value = dict["FeatureStoreProjectName"] as? String {
                self.featureStoreProjectName = value
            }
            if let value = dict["FeatureStoreSeqFeatureView"] as? String {
                self.featureStoreSeqFeatureView = value
            }
            if let value = dict["FeatureStoreUserId"] as? String {
                self.featureStoreUserId = value
            }
            if let value = dict["FgJarVersion"] as? String {
                self.fgJarVersion = value
            }
            if let value = dict["FgJsonFileName"] as? String {
                self.fgJsonFileName = value
            }
            if let value = dict["GenerateZip"] as? Bool {
                self.generateZip = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ItemIdField"] as? String {
                self.itemIdField = value
            }
            if let value = dict["ItemTable"] as? String {
                self.itemTable = value
            }
            if let value = dict["ItemTablePartitionField"] as? String {
                self.itemTablePartitionField = value
            }
            if let value = dict["ItemTablePartitionFieldFormat"] as? String {
                self.itemTablePartitionFieldFormat = value
            }
            if let value = dict["LatestJobGmtSamplingEndTime"] as? String {
                self.latestJobGmtSamplingEndTime = value
            }
            if let value = dict["LatestJobGmtSamplingStartTime"] as? String {
                self.latestJobGmtSamplingStartTime = value
            }
            if let value = dict["LatestJobId"] as? String {
                self.latestJobId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OssBucket"] as? String {
                self.ossBucket = value
            }
            if let value = dict["OssResourceId"] as? String {
                self.ossResourceId = value
            }
            if let value = dict["PredictWorkerCount"] as? Int32 {
                self.predictWorkerCount = value
            }
            if let value = dict["PredictWorkerCpu"] as? Int32 {
                self.predictWorkerCpu = value
            }
            if let value = dict["PredictWorkerMemory"] as? Int32 {
                self.predictWorkerMemory = value
            }
            if let value = dict["ResourceConfig"] as? String {
                self.resourceConfig = value
            }
            if let value = dict["SampleRate"] as? String {
                self.sampleRate = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SwitchId"] as? String {
                self.switchId = value
            }
            if let value = dict["UseFeatureStore"] as? String {
                self.useFeatureStore = value
            }
            if let value = dict["UserIdField"] as? String {
                self.userIdField = value
            }
            if let value = dict["UserTable"] as? String {
                self.userTable = value
            }
            if let value = dict["UserTablePartitionField"] as? String {
                self.userTablePartitionField = value
            }
            if let value = dict["UserTablePartitionFieldFormat"] as? String {
                self.userTablePartitionFieldFormat = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["WorkflowName"] as? String {
                self.workflowName = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var featureConsistencyCheckConfigs: [ListFeatureConsistencyCheckJobConfigsResponseBody.FeatureConsistencyCheckConfigs]?

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
        if self.featureConsistencyCheckConfigs != nil {
            var tmp : [Any] = []
            for k in self.featureConsistencyCheckConfigs! {
                tmp.append(k.toMap())
            }
            map["FeatureConsistencyCheckConfigs"] = tmp
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
        if let value = dict["FeatureConsistencyCheckConfigs"] as? [Any?] {
            var tmp : [ListFeatureConsistencyCheckJobConfigsResponseBody.FeatureConsistencyCheckConfigs] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureConsistencyCheckJobConfigsResponseBody.FeatureConsistencyCheckConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featureConsistencyCheckConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListFeatureConsistencyCheckJobConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureConsistencyCheckJobConfigsResponseBody?

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
            var model = ListFeatureConsistencyCheckJobConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFeatureConsistencyCheckJobFeatureReportsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var logItemId: String?

    public var logRequestId: String?

    public var logUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logItemId != nil {
            map["LogItemId"] = self.logItemId!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LogItemId"] as? String {
            self.logItemId = value
        }
        if let value = dict["LogRequestId"] as? String {
            self.logRequestId = value
        }
        if let value = dict["LogUserId"] as? String {
            self.logUserId = value
        }
    }
}

public class ListFeatureConsistencyCheckJobFeatureReportsResponseBody : Tea.TeaModel {
    public class ReportsOfFeatureDiff : Tea.TeaModel {
        public var featureName: String?

        public var logItemId: String?

        public var logRequestId: String?

        public var logUserId: String?

        public var offlineValue: String?

        public var onlineValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.logItemId != nil {
                map["LogItemId"] = self.logItemId!
            }
            if self.logRequestId != nil {
                map["LogRequestId"] = self.logRequestId!
            }
            if self.logUserId != nil {
                map["LogUserId"] = self.logUserId!
            }
            if self.offlineValue != nil {
                map["OfflineValue"] = self.offlineValue!
            }
            if self.onlineValue != nil {
                map["OnlineValue"] = self.onlineValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["LogItemId"] as? String {
                self.logItemId = value
            }
            if let value = dict["LogRequestId"] as? String {
                self.logRequestId = value
            }
            if let value = dict["LogUserId"] as? String {
                self.logUserId = value
            }
            if let value = dict["OfflineValue"] as? String {
                self.offlineValue = value
            }
            if let value = dict["OnlineValue"] as? String {
                self.onlineValue = value
            }
        }
    }
    public var dataPath: String?

    public var ossPath: String?

    public var reportsOfFeatureDiff: [ListFeatureConsistencyCheckJobFeatureReportsResponseBody.ReportsOfFeatureDiff]?

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
        if self.dataPath != nil {
            map["DataPath"] = self.dataPath!
        }
        if self.ossPath != nil {
            map["OssPath"] = self.ossPath!
        }
        if self.reportsOfFeatureDiff != nil {
            var tmp : [Any] = []
            for k in self.reportsOfFeatureDiff! {
                tmp.append(k.toMap())
            }
            map["ReportsOfFeatureDiff"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPath"] as? String {
            self.dataPath = value
        }
        if let value = dict["OssPath"] as? String {
            self.ossPath = value
        }
        if let value = dict["ReportsOfFeatureDiff"] as? [Any?] {
            var tmp : [ListFeatureConsistencyCheckJobFeatureReportsResponseBody.ReportsOfFeatureDiff] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureConsistencyCheckJobFeatureReportsResponseBody.ReportsOfFeatureDiff()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reportsOfFeatureDiff = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFeatureConsistencyCheckJobFeatureReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureConsistencyCheckJobFeatureReportsResponseBody?

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
            var model = ListFeatureConsistencyCheckJobFeatureReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFeatureConsistencyCheckJobScoreReportsRequest : Tea.TeaModel {
    public var excludeRequestIds: [String]?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeRequestIds != nil {
            map["ExcludeRequestIds"] = self.excludeRequestIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeRequestIds"] as? [String] {
            self.excludeRequestIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListFeatureConsistencyCheckJobScoreReportsShrinkRequest : Tea.TeaModel {
    public var excludeRequestIdsShrink: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeRequestIdsShrink != nil {
            map["ExcludeRequestIds"] = self.excludeRequestIdsShrink!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeRequestIds"] as? String {
            self.excludeRequestIdsShrink = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListFeatureConsistencyCheckJobScoreReportsResponseBody : Tea.TeaModel {
    public class ReportsOfScoreDiff : Tea.TeaModel {
        public var logItemId: String?

        public var logRequestId: String?

        public var logUserId: String?

        public var scoreDiff: String?

        public var scoreDiffDetail: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logItemId != nil {
                map["LogItemId"] = self.logItemId!
            }
            if self.logRequestId != nil {
                map["LogRequestId"] = self.logRequestId!
            }
            if self.logUserId != nil {
                map["LogUserId"] = self.logUserId!
            }
            if self.scoreDiff != nil {
                map["ScoreDiff"] = self.scoreDiff!
            }
            if self.scoreDiffDetail != nil {
                map["ScoreDiffDetail"] = self.scoreDiffDetail!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogItemId"] as? String {
                self.logItemId = value
            }
            if let value = dict["LogRequestId"] as? String {
                self.logRequestId = value
            }
            if let value = dict["LogUserId"] as? String {
                self.logUserId = value
            }
            if let value = dict["ScoreDiff"] as? String {
                self.scoreDiff = value
            }
            if let value = dict["ScoreDiffDetail"] as? String {
                self.scoreDiffDetail = value
            }
        }
    }
    public var dataPath: String?

    public var ossPath: String?

    public var reportsOfScoreDiff: [ListFeatureConsistencyCheckJobScoreReportsResponseBody.ReportsOfScoreDiff]?

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
        if self.dataPath != nil {
            map["DataPath"] = self.dataPath!
        }
        if self.ossPath != nil {
            map["OssPath"] = self.ossPath!
        }
        if self.reportsOfScoreDiff != nil {
            var tmp : [Any] = []
            for k in self.reportsOfScoreDiff! {
                tmp.append(k.toMap())
            }
            map["ReportsOfScoreDiff"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPath"] as? String {
            self.dataPath = value
        }
        if let value = dict["OssPath"] as? String {
            self.ossPath = value
        }
        if let value = dict["ReportsOfScoreDiff"] as? [Any?] {
            var tmp : [ListFeatureConsistencyCheckJobScoreReportsResponseBody.ReportsOfScoreDiff] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureConsistencyCheckJobScoreReportsResponseBody.ReportsOfScoreDiff()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reportsOfScoreDiff = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFeatureConsistencyCheckJobScoreReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureConsistencyCheckJobScoreReportsResponseBody?

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
            var model = ListFeatureConsistencyCheckJobScoreReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFeatureConsistencyCheckJobsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var sortBy: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListFeatureConsistencyCheckJobsResponseBody : Tea.TeaModel {
    public class FeatureConsistencyCheckJobs : Tea.TeaModel {
        public var config: String?

        public var featureConsistencyCheckJobConfigId: String?

        public var featureConsistencyCheckJobConfigName: String?

        public var featureConsistencyCheckJobId: String?

        public var gmtEndTime: String?

        public var gmtStartTime: String?

        public var logs: [String]?

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
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.featureConsistencyCheckJobConfigId != nil {
                map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
            }
            if self.featureConsistencyCheckJobConfigName != nil {
                map["FeatureConsistencyCheckJobConfigName"] = self.featureConsistencyCheckJobConfigName!
            }
            if self.featureConsistencyCheckJobId != nil {
                map["FeatureConsistencyCheckJobId"] = self.featureConsistencyCheckJobId!
            }
            if self.gmtEndTime != nil {
                map["GmtEndTime"] = self.gmtEndTime!
            }
            if self.gmtStartTime != nil {
                map["GmtStartTime"] = self.gmtStartTime!
            }
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
                self.featureConsistencyCheckJobConfigId = value
            }
            if let value = dict["FeatureConsistencyCheckJobConfigName"] as? String {
                self.featureConsistencyCheckJobConfigName = value
            }
            if let value = dict["FeatureConsistencyCheckJobId"] as? String {
                self.featureConsistencyCheckJobId = value
            }
            if let value = dict["GmtEndTime"] as? String {
                self.gmtEndTime = value
            }
            if let value = dict["GmtStartTime"] as? String {
                self.gmtStartTime = value
            }
            if let value = dict["Logs"] as? [String] {
                self.logs = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var featureConsistencyCheckJobs: [ListFeatureConsistencyCheckJobsResponseBody.FeatureConsistencyCheckJobs]?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureConsistencyCheckJobs != nil {
            var tmp : [Any] = []
            for k in self.featureConsistencyCheckJobs! {
                tmp.append(k.toMap())
            }
            map["FeatureConsistencyCheckJobs"] = tmp
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
        if let value = dict["FeatureConsistencyCheckJobs"] as? [Any?] {
            var tmp : [ListFeatureConsistencyCheckJobsResponseBody.FeatureConsistencyCheckJobs] = []
            for v in value {
                if v != nil {
                    var model = ListFeatureConsistencyCheckJobsResponseBody.FeatureConsistencyCheckJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featureConsistencyCheckJobs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListFeatureConsistencyCheckJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeatureConsistencyCheckJobsResponseBody?

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
            var model = ListFeatureConsistencyCheckJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceResourcesRequest : Tea.TeaModel {
    public var category: String?

    public var group: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Group"] as? String {
            self.group = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListInstanceResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var category: String?

        public var config: String?

        public var gmtCreateAt: String?

        public var gmtModifiedAt: String?

        public var group: String?

        public var resourceId: String?

        public var type: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.gmtCreateAt != nil {
                map["GmtCreateAt"] = self.gmtCreateAt!
            }
            if self.gmtModifiedAt != nil {
                map["GmtModifiedAt"] = self.gmtModifiedAt!
            }
            if self.group != nil {
                map["Group"] = self.group!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["GmtCreateAt"] as? String {
                self.gmtCreateAt = value
            }
            if let value = dict["GmtModifiedAt"] as? String {
                self.gmtModifiedAt = value
            }
            if let value = dict["Group"] as? String {
                self.group = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public var requestId: String?

    public var resources: [ListInstanceResourcesResponseBody.Resources]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListInstanceResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListInstanceResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListInstanceResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceResourcesResponseBody?

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
            var model = ListInstanceResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public class DataManagements : Tea.TeaModel {
                public var componentCode: String?

                public var meta: [String: Any]?

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
                    if self.componentCode != nil {
                        map["ComponentCode"] = self.componentCode!
                    }
                    if self.meta != nil {
                        map["Meta"] = self.meta!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ComponentCode"] as? String {
                        self.componentCode = value
                    }
                    if let value = dict["Meta"] as? [String: Any] {
                        self.meta = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class Engines : Tea.TeaModel {
                public var componentCode: String?

                public var meta: [String: Any]?

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
                    if self.componentCode != nil {
                        map["ComponentCode"] = self.componentCode!
                    }
                    if self.meta != nil {
                        map["Meta"] = self.meta!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ComponentCode"] as? String {
                        self.componentCode = value
                    }
                    if let value = dict["Meta"] as? [String: Any] {
                        self.meta = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class Monitors : Tea.TeaModel {
                public var componentCode: String?

                public var meta: [String: Any]?

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
                    if self.componentCode != nil {
                        map["ComponentCode"] = self.componentCode!
                    }
                    if self.meta != nil {
                        map["Meta"] = self.meta!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ComponentCode"] as? String {
                        self.componentCode = value
                    }
                    if let value = dict["Meta"] as? [String: Any] {
                        self.meta = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var dataManagements: [ListInstancesResponseBody.Instances.Config.DataManagements]?

            public var engines: [ListInstancesResponseBody.Instances.Config.Engines]?

            public var monitors: [ListInstancesResponseBody.Instances.Config.Monitors]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataManagements != nil {
                    var tmp : [Any] = []
                    for k in self.dataManagements! {
                        tmp.append(k.toMap())
                    }
                    map["DataManagements"] = tmp
                }
                if self.engines != nil {
                    var tmp : [Any] = []
                    for k in self.engines! {
                        tmp.append(k.toMap())
                    }
                    map["Engines"] = tmp
                }
                if self.monitors != nil {
                    var tmp : [Any] = []
                    for k in self.monitors! {
                        tmp.append(k.toMap())
                    }
                    map["Monitors"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataManagements"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Instances.Config.DataManagements] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Instances.Config.DataManagements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dataManagements = tmp
                }
                if let value = dict["Engines"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Instances.Config.Engines] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Instances.Config.Engines()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.engines = tmp
                }
                if let value = dict["Monitors"] as? [Any?] {
                    var tmp : [ListInstancesResponseBody.Instances.Config.Monitors] = []
                    for v in value {
                        if v != nil {
                            var model = ListInstancesResponseBody.Instances.Config.Monitors()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.monitors = tmp
                }
            }
        }
        public class OperatingTool : Tea.TeaModel {
            public var isEnable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isEnable != nil {
                    map["IsEnable"] = self.isEnable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IsEnable"] as? Bool {
                    self.isEnable = value
                }
            }
        }
        public var chargeType: String?

        public var commodityCode: String?

        public var config: ListInstancesResponseBody.Instances.Config?

        public var expiredTime: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var instanceId: String?

        public var operatingTool: ListInstancesResponseBody.Instances.OperatingTool?

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
            try self.config?.validate()
            try self.operatingTool?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.operatingTool != nil {
                map["OperatingTool"] = self.operatingTool?.toMap()
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
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["Config"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OperatingTool"] as? [String: Any?] {
                var model = ListInstancesResponseBody.Instances.OperatingTool()
                model.fromMap(value)
                self.operatingTool = model
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var instances: [ListInstancesResponseBody.Instances]?

    public var requestId: String?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = ListInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLaboratoriesRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public var sceneId: String?

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
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListLaboratoriesResponseBody : Tea.TeaModel {
    public class Laboratories : Tea.TeaModel {
        public var bucketCount: Int32?

        public var bucketType: String?

        public var buckets: String?

        public var crowdId: String?

        public var debugCrowdId: String?

        public var debugUsers: String?

        public var description_: String?

        public var environment: String?

        public var filter: String?

        public var laboratoryId: String?

        public var name: String?

        public var sceneId: String?

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
            if self.bucketCount != nil {
                map["BucketCount"] = self.bucketCount!
            }
            if self.bucketType != nil {
                map["BucketType"] = self.bucketType!
            }
            if self.buckets != nil {
                map["Buckets"] = self.buckets!
            }
            if self.crowdId != nil {
                map["CrowdId"] = self.crowdId!
            }
            if self.debugCrowdId != nil {
                map["DebugCrowdId"] = self.debugCrowdId!
            }
            if self.debugUsers != nil {
                map["DebugUsers"] = self.debugUsers!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.environment != nil {
                map["Environment"] = self.environment!
            }
            if self.filter != nil {
                map["Filter"] = self.filter!
            }
            if self.laboratoryId != nil {
                map["LaboratoryId"] = self.laboratoryId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
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
            if let value = dict["BucketCount"] as? Int32 {
                self.bucketCount = value
            }
            if let value = dict["BucketType"] as? String {
                self.bucketType = value
            }
            if let value = dict["Buckets"] as? String {
                self.buckets = value
            }
            if let value = dict["CrowdId"] as? String {
                self.crowdId = value
            }
            if let value = dict["DebugCrowdId"] as? String {
                self.debugCrowdId = value
            }
            if let value = dict["DebugUsers"] as? String {
                self.debugUsers = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Environment"] as? String {
                self.environment = value
            }
            if let value = dict["Filter"] as? String {
                self.filter = value
            }
            if let value = dict["LaboratoryId"] as? String {
                self.laboratoryId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var laboratories: [ListLaboratoriesResponseBody.Laboratories]?

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
        if self.laboratories != nil {
            var tmp : [Any] = []
            for k in self.laboratories! {
                tmp.append(k.toMap())
            }
            map["Laboratories"] = tmp
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
        if let value = dict["Laboratories"] as? [Any?] {
            var tmp : [ListLaboratoriesResponseBody.Laboratories] = []
            for v in value {
                if v != nil {
                    var model = ListLaboratoriesResponseBody.Laboratories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.laboratories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListLaboratoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLaboratoriesResponseBody?

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
            var model = ListLaboratoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLayersRequest : Tea.TeaModel {
    public var instanceId: String?

    public var laboratoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.laboratoryId != nil {
            map["LaboratoryId"] = self.laboratoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LaboratoryId"] as? String {
            self.laboratoryId = value
        }
    }
}

public class ListLayersResponseBody : Tea.TeaModel {
    public class Layers : Tea.TeaModel {
        public var description_: String?

        public var gmtCreateTime: String?

        public var laboratoryId: String?

        public var layerId: String?

        public var name: String?

        public var residualFlow: Int64?

        public var sceneId: String?

        public override init() {
            super.init()
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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.laboratoryId != nil {
                map["LaboratoryId"] = self.laboratoryId!
            }
            if self.layerId != nil {
                map["LayerId"] = self.layerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.residualFlow != nil {
                map["ResidualFlow"] = self.residualFlow!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["LaboratoryId"] as? String {
                self.laboratoryId = value
            }
            if let value = dict["LayerId"] as? String {
                self.layerId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResidualFlow"] as? Int64 {
                self.residualFlow = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
        }
    }
    public var layers: [ListLayersResponseBody.Layers]?

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
        if self.layers != nil {
            var tmp : [Any] = []
            for k in self.layers! {
                tmp.append(k.toMap())
            }
            map["Layers"] = tmp
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
        if let value = dict["Layers"] as? [Any?] {
            var tmp : [ListLayersResponseBody.Layers] = []
            for v in value {
                if v != nil {
                    var model = ListLayersResponseBody.Layers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.layers = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListLayersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLayersResponseBody?

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
            var model = ListLayersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListParamsRequest : Tea.TeaModel {
    public var encrypted: Bool?

    public var environment: String?

    public var instanceId: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encrypted != nil {
            map["Encrypted"] = self.encrypted!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Encrypted"] as? Bool {
            self.encrypted = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class ListParamsResponseBody : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public var environment: String?

        public var gmtModifiedTime: String?

        public var name: String?

        public var paramId: String?

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
            if self.environment != nil {
                map["Environment"] = self.environment!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.paramId != nil {
                map["ParamId"] = self.paramId!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Environment"] as? String {
                self.environment = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParamId"] as? String {
                self.paramId = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var params: [ListParamsResponseBody.Params]?

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
        if self.params != nil {
            var tmp : [Any] = []
            for k in self.params! {
                tmp.append(k.toMap())
            }
            map["Params"] = tmp
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
        if let value = dict["Params"] as? [Any?] {
            var tmp : [ListParamsResponseBody.Params] = []
            for v in value {
                if v != nil {
                    var model = ListParamsResponseBody.Params()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListParamsResponseBody?

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
            var model = ListParamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceRulesRequest : Tea.TeaModel {
    public var all: Bool?

    public var instanceId: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var resourceRuleId: String?

    public var resourceRuleName: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceRuleId != nil {
            map["ResourceRuleId"] = self.resourceRuleId!
        }
        if self.resourceRuleName != nil {
            map["ResourceRuleName"] = self.resourceRuleName!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceRuleId"] as? String {
            self.resourceRuleId = value
        }
        if let value = dict["ResourceRuleName"] as? String {
            self.resourceRuleName = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class ListResourceRulesResponseBody : Tea.TeaModel {
    public class ResourceRules : Tea.TeaModel {
        public class RuleItems : Tea.TeaModel {
            public var description_: String?

            public var maxValue: String?

            public var minValue: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.maxValue != nil {
                    map["MaxValue"] = self.maxValue!
                }
                if self.minValue != nil {
                    map["MinValue"] = self.minValue!
                }
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
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["MaxValue"] as? String {
                    self.maxValue = value
                }
                if let value = dict["MinValue"] as? String {
                    self.minValue = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var description_: String?

        public var metricOperationType: String?

        public var metricPullInfo: String?

        public var metricPullPeriod: String?

        public var name: String?

        public var resourceRuleId: String?

        public var ruleComputingDefinition: String?

        public var ruleItems: [ListResourceRulesResponseBody.ResourceRules.RuleItems]?

        public override init() {
            super.init()
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
            if self.metricOperationType != nil {
                map["MetricOperationType"] = self.metricOperationType!
            }
            if self.metricPullInfo != nil {
                map["MetricPullInfo"] = self.metricPullInfo!
            }
            if self.metricPullPeriod != nil {
                map["MetricPullPeriod"] = self.metricPullPeriod!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceRuleId != nil {
                map["ResourceRuleId"] = self.resourceRuleId!
            }
            if self.ruleComputingDefinition != nil {
                map["RuleComputingDefinition"] = self.ruleComputingDefinition!
            }
            if self.ruleItems != nil {
                var tmp : [Any] = []
                for k in self.ruleItems! {
                    tmp.append(k.toMap())
                }
                map["RuleItems"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MetricOperationType"] as? String {
                self.metricOperationType = value
            }
            if let value = dict["MetricPullInfo"] as? String {
                self.metricPullInfo = value
            }
            if let value = dict["MetricPullPeriod"] as? String {
                self.metricPullPeriod = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceRuleId"] as? String {
                self.resourceRuleId = value
            }
            if let value = dict["RuleComputingDefinition"] as? String {
                self.ruleComputingDefinition = value
            }
            if let value = dict["RuleItems"] as? [Any?] {
                var tmp : [ListResourceRulesResponseBody.ResourceRules.RuleItems] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceRulesResponseBody.ResourceRules.RuleItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleItems = tmp
            }
        }
    }
    public var requestId: String?

    public var resourceRules: [ListResourceRulesResponseBody.ResourceRules]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceRules != nil {
            var tmp : [Any] = []
            for k in self.resourceRules! {
                tmp.append(k.toMap())
            }
            map["ResourceRules"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceRules"] as? [Any?] {
            var tmp : [ListResourceRulesResponseBody.ResourceRules] = []
            for v in value {
                if v != nil {
                    var model = ListResourceRulesResponseBody.ResourceRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceRules = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListResourceRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceRulesResponseBody?

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
            var model = ListResourceRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSampleConsistencyJobsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
    }
}

public class ListSampleConsistencyJobsResponseBody : Tea.TeaModel {
    public class SampleConsistencyJobs : Tea.TeaModel {
        public var config: String?

        public var duration: String?

        public var easModelServiceName: String?

        public var endTime: Int64?

        public var featureSaveResourceId: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var itemIdField: String?

        public var logs: String?

        public var name: String?

        public var partitionField: String?

        public var partitionFieldFormat: String?

        public var requestIdField: String?

        public var sampleConsistencyJobId: String?

        public var sampleRate: String?

        public var sampleTableName: String?

        public var sceneId: String?

        public var sceneName: String?

        public var startTime: Int64?

        public var status: String?

        public var userIdField: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.easModelServiceName != nil {
                map["EasModelServiceName"] = self.easModelServiceName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.featureSaveResourceId != nil {
                map["FeatureSaveResourceId"] = self.featureSaveResourceId!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.itemIdField != nil {
                map["ItemIdField"] = self.itemIdField!
            }
            if self.logs != nil {
                map["Logs"] = self.logs!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.partitionField != nil {
                map["PartitionField"] = self.partitionField!
            }
            if self.partitionFieldFormat != nil {
                map["PartitionFieldFormat"] = self.partitionFieldFormat!
            }
            if self.requestIdField != nil {
                map["RequestIdField"] = self.requestIdField!
            }
            if self.sampleConsistencyJobId != nil {
                map["SampleConsistencyJobId"] = self.sampleConsistencyJobId!
            }
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
            }
            if self.sampleTableName != nil {
                map["SampleTableName"] = self.sampleTableName!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userIdField != nil {
                map["UserIdField"] = self.userIdField!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["EasModelServiceName"] as? String {
                self.easModelServiceName = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["FeatureSaveResourceId"] as? String {
                self.featureSaveResourceId = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ItemIdField"] as? String {
                self.itemIdField = value
            }
            if let value = dict["Logs"] as? String {
                self.logs = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PartitionField"] as? String {
                self.partitionField = value
            }
            if let value = dict["PartitionFieldFormat"] as? String {
                self.partitionFieldFormat = value
            }
            if let value = dict["RequestIdField"] as? String {
                self.requestIdField = value
            }
            if let value = dict["SampleConsistencyJobId"] as? String {
                self.sampleConsistencyJobId = value
            }
            if let value = dict["SampleRate"] as? String {
                self.sampleRate = value
            }
            if let value = dict["SampleTableName"] as? String {
                self.sampleTableName = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserIdField"] as? String {
                self.userIdField = value
            }
        }
    }
    public var requestId: String?

    public var sampleConsistencyJobs: [ListSampleConsistencyJobsResponseBody.SampleConsistencyJobs]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sampleConsistencyJobs != nil {
            var tmp : [Any] = []
            for k in self.sampleConsistencyJobs! {
                tmp.append(k.toMap())
            }
            map["SampleConsistencyJobs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SampleConsistencyJobs"] as? [Any?] {
            var tmp : [ListSampleConsistencyJobsResponseBody.SampleConsistencyJobs] = []
            for v in value {
                if v != nil {
                    var model = ListSampleConsistencyJobsResponseBody.SampleConsistencyJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sampleConsistencyJobs = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListSampleConsistencyJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSampleConsistencyJobsResponseBody?

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
            var model = ListSampleConsistencyJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListScenesRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class ListScenesResponseBody : Tea.TeaModel {
    public class Scenes : Tea.TeaModel {
        public class Flows : Tea.TeaModel {
            public var flowCode: String?

            public var flowName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flowCode != nil {
                    map["FlowCode"] = self.flowCode!
                }
                if self.flowName != nil {
                    map["FlowName"] = self.flowName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FlowCode"] as? String {
                    self.flowCode = value
                }
                if let value = dict["FlowName"] as? String {
                    self.flowName = value
                }
            }
        }
        public var description_: String?

        public var flows: [ListScenesResponseBody.Scenes.Flows]?

        public var name: String?

        public var sceneId: String?

        public override init() {
            super.init()
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
            if self.flows != nil {
                var tmp : [Any] = []
                for k in self.flows! {
                    tmp.append(k.toMap())
                }
                map["Flows"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Flows"] as? [Any?] {
                var tmp : [ListScenesResponseBody.Scenes.Flows] = []
                for v in value {
                    if v != nil {
                        var model = ListScenesResponseBody.Scenes.Flows()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.flows = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
        }
    }
    public var requestId: String?

    public var scenes: [ListScenesResponseBody.Scenes]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scenes != nil {
            var tmp : [Any] = []
            for k in self.scenes! {
                tmp.append(k.toMap())
            }
            map["Scenes"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scenes"] as? [Any?] {
            var tmp : [ListScenesResponseBody.Scenes] = []
            for v in value {
                if v != nil {
                    var model = ListScenesResponseBody.Scenes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scenes = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListScenesResponseBody?

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
            var model = ListScenesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSubCrowdsRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ListSubCrowdsResponseBody : Tea.TeaModel {
    public class SubCrowds : Tea.TeaModel {
        public var gmtCreateTime: String?

        public var quantity: Int32?

        public var source: String?

        public var subCrowdId: String?

        public var users: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.subCrowdId != nil {
                map["SubCrowdId"] = self.subCrowdId!
            }
            if self.users != nil {
                map["Users"] = self.users!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["Quantity"] as? Int32 {
                self.quantity = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SubCrowdId"] as? String {
                self.subCrowdId = value
            }
            if let value = dict["Users"] as? String {
                self.users = value
            }
        }
    }
    public var requestId: String?

    public var subCrowds: [ListSubCrowdsResponseBody.SubCrowds]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subCrowds != nil {
            var tmp : [Any] = []
            for k in self.subCrowds! {
                tmp.append(k.toMap())
            }
            map["SubCrowds"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubCrowds"] as? [Any?] {
            var tmp : [ListSubCrowdsResponseBody.SubCrowds] = []
            for v in value {
                if v != nil {
                    var model = ListSubCrowdsResponseBody.SubCrowds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subCrowds = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListSubCrowdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSubCrowdsResponseBody?

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
            var model = ListSubCrowdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTableMetasRequest : Tea.TeaModel {
    public var instanceId: String?

    public var module: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListTableMetasResponseBody : Tea.TeaModel {
    public class TableMetas : Tea.TeaModel {
        public class Fields : Tea.TeaModel {
            public var isDimensionField: Bool?

            public var meaning: String?

            public var name: String?

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
                if self.isDimensionField != nil {
                    map["IsDimensionField"] = self.isDimensionField!
                }
                if self.meaning != nil {
                    map["Meaning"] = self.meaning!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IsDimensionField"] as? Bool {
                    self.isDimensionField = value
                }
                if let value = dict["Meaning"] as? String {
                    self.meaning = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var canDelete: Bool?

        public var config: String?

        public var description_: String?

        public var fields: [ListTableMetasResponseBody.TableMetas.Fields]?

        public var gmtCreateTime: String?

        public var gmtImportedTime: String?

        public var gmtModifiedTime: String?

        public var module: String?

        public var name: String?

        public var resourceId: String?

        public var tableMetaId: String?

        public var tableName: String?

        public var type: String?

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
            if self.canDelete != nil {
                map["CanDelete"] = self.canDelete!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fields != nil {
                var tmp : [Any] = []
                for k in self.fields! {
                    tmp.append(k.toMap())
                }
                map["Fields"] = tmp
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtImportedTime != nil {
                map["GmtImportedTime"] = self.gmtImportedTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.module != nil {
                map["Module"] = self.module!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.tableMetaId != nil {
                map["TableMetaId"] = self.tableMetaId!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanDelete"] as? Bool {
                self.canDelete = value
            }
            if let value = dict["Config"] as? String {
                self.config = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Fields"] as? [Any?] {
                var tmp : [ListTableMetasResponseBody.TableMetas.Fields] = []
                for v in value {
                    if v != nil {
                        var model = ListTableMetasResponseBody.TableMetas.Fields()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fields = tmp
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtImportedTime"] as? String {
                self.gmtImportedTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["Module"] as? String {
                self.module = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["TableMetaId"] as? String {
                self.tableMetaId = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var requestId: String?

    public var tableMetas: [ListTableMetasResponseBody.TableMetas]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tableMetas != nil {
            var tmp : [Any] = []
            for k in self.tableMetas! {
                tmp.append(k.toMap())
            }
            map["TableMetas"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TableMetas"] as? [Any?] {
            var tmp : [ListTableMetasResponseBody.TableMetas] = []
            for v in value {
                if v != nil {
                    var model = ListTableMetasResponseBody.TableMetas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tableMetas = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTableMetasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTableMetasResponseBody?

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
            var model = ListTableMetasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrafficControlTargetTrafficHistoryRequest : Tea.TeaModel {
    public var endTime: String?

    public var environment: String?

    public var experimentGroupId: String?

    public var experimentId: String?

    public var instanceId: String?

    public var itemId: String?

    public var startTime: String?

    public var threshold: String?

    public override init() {
        super.init()
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
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemId != nil {
            map["ItemId"] = self.itemId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemId"] as? String {
            self.itemId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Threshold"] as? String {
            self.threshold = value
        }
    }
}

public class ListTrafficControlTargetTrafficHistoryResponseBody : Tea.TeaModel {
    public class TrafficControlTaskTrafficHistories : Tea.TeaModel {
        public var experimentId: String?

        public var itemId: String?

        public var recordTime: String?

        public var trafficControlTargetAimTraffic: Double?

        public var trafficControlTargetTraffic: Double?

        public var trafficControlTaskTraffic: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.recordTime != nil {
                map["RecordTime"] = self.recordTime!
            }
            if self.trafficControlTargetAimTraffic != nil {
                map["TrafficControlTargetAimTraffic"] = self.trafficControlTargetAimTraffic!
            }
            if self.trafficControlTargetTraffic != nil {
                map["TrafficControlTargetTraffic"] = self.trafficControlTargetTraffic!
            }
            if self.trafficControlTaskTraffic != nil {
                map["TrafficControlTaskTraffic"] = self.trafficControlTaskTraffic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExperimentId"] as? String {
                self.experimentId = value
            }
            if let value = dict["ItemId"] as? String {
                self.itemId = value
            }
            if let value = dict["RecordTime"] as? String {
                self.recordTime = value
            }
            if let value = dict["TrafficControlTargetAimTraffic"] as? Double {
                self.trafficControlTargetAimTraffic = value
            }
            if let value = dict["TrafficControlTargetTraffic"] as? Double {
                self.trafficControlTargetTraffic = value
            }
            if let value = dict["TrafficControlTaskTraffic"] as? Double {
                self.trafficControlTaskTraffic = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: String?

    public var trafficControlTaskTrafficHistories: [ListTrafficControlTargetTrafficHistoryResponseBody.TrafficControlTaskTrafficHistories]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trafficControlTaskTrafficHistories != nil {
            var tmp : [Any] = []
            for k in self.trafficControlTaskTrafficHistories! {
                tmp.append(k.toMap())
            }
            map["TrafficControlTaskTrafficHistories"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["TrafficControlTaskTrafficHistories"] as? [Any?] {
            var tmp : [ListTrafficControlTargetTrafficHistoryResponseBody.TrafficControlTaskTrafficHistories] = []
            for v in value {
                if v != nil {
                    var model = ListTrafficControlTargetTrafficHistoryResponseBody.TrafficControlTaskTrafficHistories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficControlTaskTrafficHistories = tmp
        }
    }
}

public class ListTrafficControlTargetTrafficHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrafficControlTargetTrafficHistoryResponseBody?

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
            var model = ListTrafficControlTargetTrafficHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrafficControlTasksRequest : Tea.TeaModel {
    public var all: Bool?

    public var controlTargetFilter: String?

    public var environment: String?

    public var instanceId: String?

    public var name: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var sceneId: String?

    public var sortBy: String?

    public var status: String?

    public var trafficControlTaskId: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.controlTargetFilter != nil {
            map["ControlTargetFilter"] = self.controlTargetFilter!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.trafficControlTaskId != nil {
            map["TrafficControlTaskId"] = self.trafficControlTaskId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ControlTargetFilter"] as? String {
            self.controlTargetFilter = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TrafficControlTaskId"] as? String {
            self.trafficControlTaskId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class ListTrafficControlTasksResponseBody : Tea.TeaModel {
    public class TrafficControlTasks : Tea.TeaModel {
        public class TrafficControlTargets : Tea.TeaModel {
            public class SplitParts : Tea.TeaModel {
                public var setValues: [Int64]?

                public var timePoints: [Int64]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.setValues != nil {
                        map["SetValues"] = self.setValues!
                    }
                    if self.timePoints != nil {
                        map["TimePoints"] = self.timePoints!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SetValues"] as? [Int64] {
                        self.setValues = value
                    }
                    if let value = dict["TimePoints"] as? [Int64] {
                        self.timePoints = value
                    }
                }
            }
            public var endTime: String?

            public var event: String?

            public var gmtCreateTime: String?

            public var gmtModifiedTime: String?

            public var itemConditionArray: String?

            public var itemConditionExpress: String?

            public var itemConditionType: String?

            public var name: String?

            public var newProductRegulation: Bool?

            public var recallName: String?

            public var splitParts: ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets.SplitParts?

            public var startTime: String?

            public var statisPeriod: String?

            public var status: String?

            public var toleranceValue: Int64?

            public var trafficControlTargetId: String?

            public var trafficControlTaskId: String?

            public var value: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.splitParts?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.event != nil {
                    map["Event"] = self.event!
                }
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtModifiedTime != nil {
                    map["GmtModifiedTime"] = self.gmtModifiedTime!
                }
                if self.itemConditionArray != nil {
                    map["ItemConditionArray"] = self.itemConditionArray!
                }
                if self.itemConditionExpress != nil {
                    map["ItemConditionExpress"] = self.itemConditionExpress!
                }
                if self.itemConditionType != nil {
                    map["ItemConditionType"] = self.itemConditionType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newProductRegulation != nil {
                    map["NewProductRegulation"] = self.newProductRegulation!
                }
                if self.recallName != nil {
                    map["RecallName"] = self.recallName!
                }
                if self.splitParts != nil {
                    map["SplitParts"] = self.splitParts?.toMap()
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.statisPeriod != nil {
                    map["StatisPeriod"] = self.statisPeriod!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.toleranceValue != nil {
                    map["ToleranceValue"] = self.toleranceValue!
                }
                if self.trafficControlTargetId != nil {
                    map["TrafficControlTargetId"] = self.trafficControlTargetId!
                }
                if self.trafficControlTaskId != nil {
                    map["TrafficControlTaskId"] = self.trafficControlTaskId!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Event"] as? String {
                    self.event = value
                }
                if let value = dict["GmtCreateTime"] as? String {
                    self.gmtCreateTime = value
                }
                if let value = dict["GmtModifiedTime"] as? String {
                    self.gmtModifiedTime = value
                }
                if let value = dict["ItemConditionArray"] as? String {
                    self.itemConditionArray = value
                }
                if let value = dict["ItemConditionExpress"] as? String {
                    self.itemConditionExpress = value
                }
                if let value = dict["ItemConditionType"] as? String {
                    self.itemConditionType = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NewProductRegulation"] as? Bool {
                    self.newProductRegulation = value
                }
                if let value = dict["RecallName"] as? String {
                    self.recallName = value
                }
                if let value = dict["SplitParts"] as? [String: Any?] {
                    var model = ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets.SplitParts()
                    model.fromMap(value)
                    self.splitParts = model
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["StatisPeriod"] as? String {
                    self.statisPeriod = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["ToleranceValue"] as? Int64 {
                    self.toleranceValue = value
                }
                if let value = dict["TrafficControlTargetId"] as? String {
                    self.trafficControlTargetId = value
                }
                if let value = dict["TrafficControlTaskId"] as? String {
                    self.trafficControlTaskId = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
                }
            }
        }
        public var behaviorTableMetaId: String?

        public var controlGranularity: String?

        public var controlLogic: String?

        public var controlType: String?

        public var description_: String?

        public var effectiveSceneIds: [Int32]?

        public var effectiveSceneNameList: [String]?

        public var effectiveSceneNames: [Int32]?

        public var endTime: String?

        public var everPublished: Bool?

        public var executionTime: String?

        public var flinkResourceId: String?

        public var flinkResourceName: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var itemConditionArray: String?

        public var itemConditionExpress: String?

        public var itemConditionType: String?

        public var itemTableMetaId: String?

        public var name: String?

        public var preExperimentIds: String?

        public var prepubStatus: String?

        public var prodExperimentIds: String?

        public var productStatus: String?

        public var sceneId: String?

        public var sceneName: String?

        public var serviceId: String?

        public var serviceIdList: [Int32]?

        public var serviceIds: [String]?

        public var startTime: String?

        public var statisBahaviorConditionExpress: String?

        public var statisBehaviorConditionArray: String?

        public var statisBehaviorConditionType: String?

        public var trafficControlTargets: [ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets]?

        public var trafficControlTaskId: String?

        public var userConditionArray: String?

        public var userConditionExpress: String?

        public var userConditionType: String?

        public var userTableMetaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.behaviorTableMetaId != nil {
                map["BehaviorTableMetaId"] = self.behaviorTableMetaId!
            }
            if self.controlGranularity != nil {
                map["ControlGranularity"] = self.controlGranularity!
            }
            if self.controlLogic != nil {
                map["ControlLogic"] = self.controlLogic!
            }
            if self.controlType != nil {
                map["ControlType"] = self.controlType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.effectiveSceneIds != nil {
                map["EffectiveSceneIds"] = self.effectiveSceneIds!
            }
            if self.effectiveSceneNameList != nil {
                map["EffectiveSceneNameList"] = self.effectiveSceneNameList!
            }
            if self.effectiveSceneNames != nil {
                map["EffectiveSceneNames"] = self.effectiveSceneNames!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.everPublished != nil {
                map["EverPublished"] = self.everPublished!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
            }
            if self.flinkResourceId != nil {
                map["FlinkResourceId"] = self.flinkResourceId!
            }
            if self.flinkResourceName != nil {
                map["FlinkResourceName"] = self.flinkResourceName!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.itemConditionArray != nil {
                map["ItemConditionArray"] = self.itemConditionArray!
            }
            if self.itemConditionExpress != nil {
                map["ItemConditionExpress"] = self.itemConditionExpress!
            }
            if self.itemConditionType != nil {
                map["ItemConditionType"] = self.itemConditionType!
            }
            if self.itemTableMetaId != nil {
                map["ItemTableMetaId"] = self.itemTableMetaId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.preExperimentIds != nil {
                map["PreExperimentIds"] = self.preExperimentIds!
            }
            if self.prepubStatus != nil {
                map["PrepubStatus"] = self.prepubStatus!
            }
            if self.prodExperimentIds != nil {
                map["ProdExperimentIds"] = self.prodExperimentIds!
            }
            if self.productStatus != nil {
                map["ProductStatus"] = self.productStatus!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.serviceId != nil {
                map["ServiceId"] = self.serviceId!
            }
            if self.serviceIdList != nil {
                map["ServiceIdList"] = self.serviceIdList!
            }
            if self.serviceIds != nil {
                map["ServiceIds"] = self.serviceIds!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.statisBahaviorConditionExpress != nil {
                map["StatisBahaviorConditionExpress"] = self.statisBahaviorConditionExpress!
            }
            if self.statisBehaviorConditionArray != nil {
                map["StatisBehaviorConditionArray"] = self.statisBehaviorConditionArray!
            }
            if self.statisBehaviorConditionType != nil {
                map["StatisBehaviorConditionType"] = self.statisBehaviorConditionType!
            }
            if self.trafficControlTargets != nil {
                var tmp : [Any] = []
                for k in self.trafficControlTargets! {
                    tmp.append(k.toMap())
                }
                map["TrafficControlTargets"] = tmp
            }
            if self.trafficControlTaskId != nil {
                map["TrafficControlTaskId"] = self.trafficControlTaskId!
            }
            if self.userConditionArray != nil {
                map["UserConditionArray"] = self.userConditionArray!
            }
            if self.userConditionExpress != nil {
                map["UserConditionExpress"] = self.userConditionExpress!
            }
            if self.userConditionType != nil {
                map["UserConditionType"] = self.userConditionType!
            }
            if self.userTableMetaId != nil {
                map["UserTableMetaId"] = self.userTableMetaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BehaviorTableMetaId"] as? String {
                self.behaviorTableMetaId = value
            }
            if let value = dict["ControlGranularity"] as? String {
                self.controlGranularity = value
            }
            if let value = dict["ControlLogic"] as? String {
                self.controlLogic = value
            }
            if let value = dict["ControlType"] as? String {
                self.controlType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EffectiveSceneIds"] as? [Int32] {
                self.effectiveSceneIds = value
            }
            if let value = dict["EffectiveSceneNameList"] as? [String] {
                self.effectiveSceneNameList = value
            }
            if let value = dict["EffectiveSceneNames"] as? [Int32] {
                self.effectiveSceneNames = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EverPublished"] as? Bool {
                self.everPublished = value
            }
            if let value = dict["ExecutionTime"] as? String {
                self.executionTime = value
            }
            if let value = dict["FlinkResourceId"] as? String {
                self.flinkResourceId = value
            }
            if let value = dict["FlinkResourceName"] as? String {
                self.flinkResourceName = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ItemConditionArray"] as? String {
                self.itemConditionArray = value
            }
            if let value = dict["ItemConditionExpress"] as? String {
                self.itemConditionExpress = value
            }
            if let value = dict["ItemConditionType"] as? String {
                self.itemConditionType = value
            }
            if let value = dict["ItemTableMetaId"] as? String {
                self.itemTableMetaId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PreExperimentIds"] as? String {
                self.preExperimentIds = value
            }
            if let value = dict["PrepubStatus"] as? String {
                self.prepubStatus = value
            }
            if let value = dict["ProdExperimentIds"] as? String {
                self.prodExperimentIds = value
            }
            if let value = dict["ProductStatus"] as? String {
                self.productStatus = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["ServiceId"] as? String {
                self.serviceId = value
            }
            if let value = dict["ServiceIdList"] as? [Int32] {
                self.serviceIdList = value
            }
            if let value = dict["ServiceIds"] as? [String] {
                self.serviceIds = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["StatisBahaviorConditionExpress"] as? String {
                self.statisBahaviorConditionExpress = value
            }
            if let value = dict["StatisBehaviorConditionArray"] as? String {
                self.statisBehaviorConditionArray = value
            }
            if let value = dict["StatisBehaviorConditionType"] as? String {
                self.statisBehaviorConditionType = value
            }
            if let value = dict["TrafficControlTargets"] as? [Any?] {
                var tmp : [ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets] = []
                for v in value {
                    if v != nil {
                        var model = ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.trafficControlTargets = tmp
            }
            if let value = dict["TrafficControlTaskId"] as? String {
                self.trafficControlTaskId = value
            }
            if let value = dict["UserConditionArray"] as? String {
                self.userConditionArray = value
            }
            if let value = dict["UserConditionExpress"] as? String {
                self.userConditionExpress = value
            }
            if let value = dict["UserConditionType"] as? String {
                self.userConditionType = value
            }
            if let value = dict["UserTableMetaId"] as? String {
                self.userTableMetaId = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: String?

    public var trafficControlTasks: [ListTrafficControlTasksResponseBody.TrafficControlTasks]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trafficControlTasks != nil {
            var tmp : [Any] = []
            for k in self.trafficControlTasks! {
                tmp.append(k.toMap())
            }
            map["TrafficControlTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["TrafficControlTasks"] as? [Any?] {
            var tmp : [ListTrafficControlTasksResponseBody.TrafficControlTasks] = []
            for v in value {
                if v != nil {
                    var model = ListTrafficControlTasksResponseBody.TrafficControlTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficControlTasks = tmp
        }
    }
}

public class ListTrafficControlTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrafficControlTasksResponseBody?

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
            var model = ListTrafficControlTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OfflineExperimentRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class OfflineExperimentResponseBody : Tea.TeaModel {
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

public class OfflineExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineExperimentResponseBody?

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
            var model = OfflineExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OfflineExperimentGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class OfflineExperimentGroupResponseBody : Tea.TeaModel {
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

public class OfflineExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineExperimentGroupResponseBody?

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
            var model = OfflineExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OfflineLaboratoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class OfflineLaboratoryResponseBody : Tea.TeaModel {
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

public class OfflineLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineLaboratoryResponseBody?

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
            var model = OfflineLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnlineExperimentRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class OnlineExperimentResponseBody : Tea.TeaModel {
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

public class OnlineExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnlineExperimentResponseBody?

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
            var model = OnlineExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnlineExperimentGroupRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class OnlineExperimentGroupResponseBody : Tea.TeaModel {
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

public class OnlineExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnlineExperimentGroupResponseBody?

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
            var model = OnlineExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnlineLaboratoryRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class OnlineLaboratoryResponseBody : Tea.TeaModel {
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

public class OnlineLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnlineLaboratoryResponseBody?

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
            var model = OnlineLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushAllExperimentRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class PushAllExperimentResponseBody : Tea.TeaModel {
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

public class PushAllExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushAllExperimentResponseBody?

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
            var model = PushAllExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushResourceRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var metricInfo: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricInfo != nil {
            map["MetricInfo"] = self.metricInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricInfo"] as? [String: Any] {
            self.metricInfo = value
        }
    }
}

public class PushResourceRuleShrinkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var metricInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricInfoShrink != nil {
            map["MetricInfo"] = self.metricInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricInfo"] as? String {
            self.metricInfoShrink = value
        }
    }
}

public class PushResourceRuleResponseBody : Tea.TeaModel {
    public class RuleItems : Tea.TeaModel {
        public var description_: String?

        public var maxValue: String?

        public var minValue: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxValue != nil {
                map["MaxValue"] = self.maxValue!
            }
            if self.minValue != nil {
                map["MinValue"] = self.minValue!
            }
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
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxValue"] as? String {
                self.maxValue = value
            }
            if let value = dict["MinValue"] as? String {
                self.minValue = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var description_: String?

    public var metricOperationType: String?

    public var metricPullInfo: String?

    public var metricPullPeriod: String?

    public var name: String?

    public var requestId: String?

    public var resourceRuleId: String?

    public var ruleComputingDefinition: String?

    public var ruleItems: [PushResourceRuleResponseBody.RuleItems]?

    public override init() {
        super.init()
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
        if self.metricOperationType != nil {
            map["MetricOperationType"] = self.metricOperationType!
        }
        if self.metricPullInfo != nil {
            map["MetricPullInfo"] = self.metricPullInfo!
        }
        if self.metricPullPeriod != nil {
            map["MetricPullPeriod"] = self.metricPullPeriod!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceRuleId != nil {
            map["ResourceRuleId"] = self.resourceRuleId!
        }
        if self.ruleComputingDefinition != nil {
            map["RuleComputingDefinition"] = self.ruleComputingDefinition!
        }
        if self.ruleItems != nil {
            var tmp : [Any] = []
            for k in self.ruleItems! {
                tmp.append(k.toMap())
            }
            map["RuleItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["MetricOperationType"] as? String {
            self.metricOperationType = value
        }
        if let value = dict["MetricPullInfo"] as? String {
            self.metricPullInfo = value
        }
        if let value = dict["MetricPullPeriod"] as? String {
            self.metricPullPeriod = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceRuleId"] as? String {
            self.resourceRuleId = value
        }
        if let value = dict["RuleComputingDefinition"] as? String {
            self.ruleComputingDefinition = value
        }
        if let value = dict["RuleItems"] as? [Any?] {
            var tmp : [PushResourceRuleResponseBody.RuleItems] = []
            for v in value {
                if v != nil {
                    var model = PushResourceRuleResponseBody.RuleItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleItems = tmp
        }
    }
}

public class PushResourceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushResourceRuleResponseBody?

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
            var model = PushResourceRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySampleConsistencyJobDifferenceRequest : Tea.TeaModel {
    public var featureName: String?

    public var featureType: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureName != nil {
            map["FeatureName"] = self.featureName!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureName"] as? String {
            self.featureName = value
        }
        if let value = dict["FeatureType"] as? String {
            self.featureType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class QuerySampleConsistencyJobDifferenceResponseBody : Tea.TeaModel {
    public class DifferenceHistogram : Tea.TeaModel {
        public var abscissa: String?

        public var value: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.abscissa != nil {
                map["Abscissa"] = self.abscissa!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Abscissa"] as? String {
                self.abscissa = value
            }
            if let value = dict["Value"] as? Int64 {
                self.value = value
            }
        }
    }
    public class NumberFeatureDifferences : Tea.TeaModel {
        public var diffValue: Double?

        public var itemId: String?

        public var replyTableFeatureValue: Double?

        public var requestId: String?

        public var sampleTableFeatureValue: Double?

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
            if self.diffValue != nil {
                map["DiffValue"] = self.diffValue!
            }
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.replyTableFeatureValue != nil {
                map["ReplyTableFeatureValue"] = self.replyTableFeatureValue!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sampleTableFeatureValue != nil {
                map["SampleTableFeatureValue"] = self.sampleTableFeatureValue!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DiffValue"] as? Double {
                self.diffValue = value
            }
            if let value = dict["ItemId"] as? String {
                self.itemId = value
            }
            if let value = dict["ReplyTableFeatureValue"] as? Double {
                self.replyTableFeatureValue = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["SampleTableFeatureValue"] as? Double {
                self.sampleTableFeatureValue = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public class StringFeatureDifferences : Tea.TeaModel {
        public var itemId: String?

        public var replyTableFeatureValue: String?

        public var requestId: String?

        public var sampleTableFeatureValue: String?

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
            if self.itemId != nil {
                map["ItemId"] = self.itemId!
            }
            if self.replyTableFeatureValue != nil {
                map["ReplyTableFeatureValue"] = self.replyTableFeatureValue!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sampleTableFeatureValue != nil {
                map["SampleTableFeatureValue"] = self.sampleTableFeatureValue!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ItemId"] as? String {
                self.itemId = value
            }
            if let value = dict["ReplyTableFeatureValue"] as? String {
                self.replyTableFeatureValue = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["SampleTableFeatureValue"] as? String {
                self.sampleTableFeatureValue = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var differenceHistogram: [QuerySampleConsistencyJobDifferenceResponseBody.DifferenceHistogram]?

    public var numberFeatureDifferences: [QuerySampleConsistencyJobDifferenceResponseBody.NumberFeatureDifferences]?

    public var requestId: String?

    public var stringFeatureDifferences: [QuerySampleConsistencyJobDifferenceResponseBody.StringFeatureDifferences]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.differenceHistogram != nil {
            var tmp : [Any] = []
            for k in self.differenceHistogram! {
                tmp.append(k.toMap())
            }
            map["DifferenceHistogram"] = tmp
        }
        if self.numberFeatureDifferences != nil {
            var tmp : [Any] = []
            for k in self.numberFeatureDifferences! {
                tmp.append(k.toMap())
            }
            map["NumberFeatureDifferences"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stringFeatureDifferences != nil {
            var tmp : [Any] = []
            for k in self.stringFeatureDifferences! {
                tmp.append(k.toMap())
            }
            map["StringFeatureDifferences"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DifferenceHistogram"] as? [Any?] {
            var tmp : [QuerySampleConsistencyJobDifferenceResponseBody.DifferenceHistogram] = []
            for v in value {
                if v != nil {
                    var model = QuerySampleConsistencyJobDifferenceResponseBody.DifferenceHistogram()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.differenceHistogram = tmp
        }
        if let value = dict["NumberFeatureDifferences"] as? [Any?] {
            var tmp : [QuerySampleConsistencyJobDifferenceResponseBody.NumberFeatureDifferences] = []
            for v in value {
                if v != nil {
                    var model = QuerySampleConsistencyJobDifferenceResponseBody.NumberFeatureDifferences()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.numberFeatureDifferences = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StringFeatureDifferences"] as? [Any?] {
            var tmp : [QuerySampleConsistencyJobDifferenceResponseBody.StringFeatureDifferences] = []
            for v in value {
                if v != nil {
                    var model = QuerySampleConsistencyJobDifferenceResponseBody.StringFeatureDifferences()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stringFeatureDifferences = tmp
        }
    }
}

public class QuerySampleConsistencyJobDifferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySampleConsistencyJobDifferenceResponseBody?

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
            var model = QuerySampleConsistencyJobDifferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTrafficControlTargetItemReportDetailRequest : Tea.TeaModel {
    public var date: String?

    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
            map["Date"] = self.date!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Date"] as? String {
            self.date = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class QueryTrafficControlTargetItemReportDetailResponseBody : Tea.TeaModel {
    public class TrafficControlTargetItemReportDetail : Tea.TeaModel {
        public class ItemControlTailReportDetails : Tea.TeaModel {
            public var features: [String: Any]?

            public var itemId: String?

            public var targetProgress: String?

            public var targetTraffic: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.features != nil {
                    map["Features"] = self.features!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.targetProgress != nil {
                    map["TargetProgress"] = self.targetProgress!
                }
                if self.targetTraffic != nil {
                    map["TargetTraffic"] = self.targetTraffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Features"] as? [String: Any] {
                    self.features = value
                }
                if let value = dict["ItemId"] as? String {
                    self.itemId = value
                }
                if let value = dict["TargetProgress"] as? String {
                    self.targetProgress = value
                }
                if let value = dict["TargetTraffic"] as? Int64 {
                    self.targetTraffic = value
                }
            }
        }
        public class ItemControlTopReportDetails : Tea.TeaModel {
            public var features: [String: Any]?

            public var itemId: String?

            public var targetProgress: String?

            public var targetTraffic: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.features != nil {
                    map["Features"] = self.features!
                }
                if self.itemId != nil {
                    map["ItemId"] = self.itemId!
                }
                if self.targetProgress != nil {
                    map["TargetProgress"] = self.targetProgress!
                }
                if self.targetTraffic != nil {
                    map["TargetTraffic"] = self.targetTraffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Features"] as? [String: Any] {
                    self.features = value
                }
                if let value = dict["ItemId"] as? String {
                    self.itemId = value
                }
                if let value = dict["TargetProgress"] as? String {
                    self.targetProgress = value
                }
                if let value = dict["TargetTraffic"] as? Int64 {
                    self.targetTraffic = value
                }
            }
        }
        public var itemControlTailReportDetails: [QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail.ItemControlTailReportDetails]?

        public var itemControlTopReportDetails: [QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail.ItemControlTopReportDetails]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.itemControlTailReportDetails != nil {
                var tmp : [Any] = []
                for k in self.itemControlTailReportDetails! {
                    tmp.append(k.toMap())
                }
                map["ItemControlTailReportDetails"] = tmp
            }
            if self.itemControlTopReportDetails != nil {
                var tmp : [Any] = []
                for k in self.itemControlTopReportDetails! {
                    tmp.append(k.toMap())
                }
                map["ItemControlTopReportDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ItemControlTailReportDetails"] as? [Any?] {
                var tmp : [QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail.ItemControlTailReportDetails] = []
                for v in value {
                    if v != nil {
                        var model = QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail.ItemControlTailReportDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.itemControlTailReportDetails = tmp
            }
            if let value = dict["ItemControlTopReportDetails"] as? [Any?] {
                var tmp : [QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail.ItemControlTopReportDetails] = []
                for v in value {
                    if v != nil {
                        var model = QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail.ItemControlTopReportDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.itemControlTopReportDetails = tmp
            }
        }
    }
    public var requestId: String?

    public var trafficControlTargetItemReportDetail: QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trafficControlTargetItemReportDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trafficControlTargetItemReportDetail != nil {
            map["TrafficControlTargetItemReportDetail"] = self.trafficControlTargetItemReportDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrafficControlTargetItemReportDetail"] as? [String: Any?] {
            var model = QueryTrafficControlTargetItemReportDetailResponseBody.TrafficControlTargetItemReportDetail()
            model.fromMap(value)
            self.trafficControlTargetItemReportDetail = model
        }
    }
}

public class QueryTrafficControlTargetItemReportDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTrafficControlTargetItemReportDetailResponseBody?

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
            var model = QueryTrafficControlTargetItemReportDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseTrafficControlTaskRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleaseTrafficControlTaskResponseBody : Tea.TeaModel {
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

public class ReleaseTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseTrafficControlTaskResponseBody?

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
            var model = ReleaseTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReportABMetricGroupRequest : Tea.TeaModel {
    public var baseExperimentId: String?

    public var dimensionFields: String?

    public var endDate: String?

    public var experimentGroupId: String?

    public var experimentIds: String?

    public var instanceId: String?

    public var reportType: String?

    public var sceneId: String?

    public var startDate: String?

    public var timeStatisticsMethod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseExperimentId != nil {
            map["BaseExperimentId"] = self.baseExperimentId!
        }
        if self.dimensionFields != nil {
            map["DimensionFields"] = self.dimensionFields!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.experimentGroupId != nil {
            map["ExperimentGroupId"] = self.experimentGroupId!
        }
        if self.experimentIds != nil {
            map["ExperimentIds"] = self.experimentIds!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.timeStatisticsMethod != nil {
            map["TimeStatisticsMethod"] = self.timeStatisticsMethod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BaseExperimentId"] as? String {
            self.baseExperimentId = value
        }
        if let value = dict["DimensionFields"] as? String {
            self.dimensionFields = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["ExperimentGroupId"] as? String {
            self.experimentGroupId = value
        }
        if let value = dict["ExperimentIds"] as? String {
            self.experimentIds = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TimeStatisticsMethod"] as? String {
            self.timeStatisticsMethod = value
        }
    }
}

public class ReportABMetricGroupResponseBody : Tea.TeaModel {
    public var experimentReport: [String: ExperimentReportValue]?

    public var groupDimension: [String]?

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
        if self.experimentReport != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.experimentReport! {
                tmp[k] = v.toMap()
            }
            map["ExperimentReport"] = tmp
        }
        if self.groupDimension != nil {
            map["GroupDimension"] = self.groupDimension!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentReport"] as? [String: Any?] {
            var tmp : [String: ExperimentReportValue] = [:]
            for (k, v) in value {
                if v != nil {
                    var model = ExperimentReportValue()
                    model.fromMap(v as? [String: Any?])
                    tmp[k] = model
                }
            }
            self.experimentReport = tmp
        }
        if let value = dict["GroupDimension"] as? [String] {
            self.groupDimension = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReportABMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportABMetricGroupResponseBody?

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
            var model = ReportABMetricGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReportSampleConsistencyJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReportSampleConsistencyJobResponseBody : Tea.TeaModel {
    public class FeaturesDifference : Tea.TeaModel {
        public var count: Int64?

        public var featureName: String?

        public var featureType: String?

        public var ratio: String?

        public override init() {
            super.init()
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
            if self.featureName != nil {
                map["FeatureName"] = self.featureName!
            }
            if self.featureType != nil {
                map["FeatureType"] = self.featureType!
            }
            if self.ratio != nil {
                map["Ratio"] = self.ratio!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["FeatureName"] as? String {
                self.featureName = value
            }
            if let value = dict["FeatureType"] as? String {
                self.featureType = value
            }
            if let value = dict["Ratio"] as? String {
                self.ratio = value
            }
        }
    }
    public var featuresDifference: [ReportSampleConsistencyJobResponseBody.FeaturesDifference]?

    public var replyTableFeatures: Int64?

    public var replyTableLostFeatures: Int64?

    public var requestId: Int64?

    public var sampleTableFeatures: Int64?

    public var sampleTableLostFeatures: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featuresDifference != nil {
            var tmp : [Any] = []
            for k in self.featuresDifference! {
                tmp.append(k.toMap())
            }
            map["FeaturesDifference"] = tmp
        }
        if self.replyTableFeatures != nil {
            map["ReplyTableFeatures"] = self.replyTableFeatures!
        }
        if self.replyTableLostFeatures != nil {
            map["ReplyTableLostFeatures"] = self.replyTableLostFeatures!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sampleTableFeatures != nil {
            map["SampleTableFeatures"] = self.sampleTableFeatures!
        }
        if self.sampleTableLostFeatures != nil {
            map["SampleTableLostFeatures"] = self.sampleTableLostFeatures!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeaturesDifference"] as? [Any?] {
            var tmp : [ReportSampleConsistencyJobResponseBody.FeaturesDifference] = []
            for v in value {
                if v != nil {
                    var model = ReportSampleConsistencyJobResponseBody.FeaturesDifference()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.featuresDifference = tmp
        }
        if let value = dict["ReplyTableFeatures"] as? Int64 {
            self.replyTableFeatures = value
        }
        if let value = dict["ReplyTableLostFeatures"] as? Int64 {
            self.replyTableLostFeatures = value
        }
        if let value = dict["RequestId"] as? Int64 {
            self.requestId = value
        }
        if let value = dict["SampleTableFeatures"] as? Int64 {
            self.sampleTableFeatures = value
        }
        if let value = dict["SampleTableLostFeatures"] as? Int64 {
            self.sampleTableLostFeatures = value
        }
    }
}

public class ReportSampleConsistencyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportSampleConsistencyJobResponseBody?

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
            var model = ReportSampleConsistencyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SplitTrafficControlTargetRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public var setPoints: [Int64]?

    public var setValues: [Int64]?

    public var timePoints: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.setPoints != nil {
            map["SetPoints"] = self.setPoints!
        }
        if self.setValues != nil {
            map["SetValues"] = self.setValues!
        }
        if self.timePoints != nil {
            map["TimePoints"] = self.timePoints!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["SetPoints"] as? [Int64] {
            self.setPoints = value
        }
        if let value = dict["SetValues"] as? [Int64] {
            self.setValues = value
        }
        if let value = dict["TimePoints"] as? [Int64] {
            self.timePoints = value
        }
    }
}

public class SplitTrafficControlTargetResponseBody : Tea.TeaModel {
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

public class SplitTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SplitTrafficControlTargetResponseBody?

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
            var model = SplitTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartTrafficControlTargetRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class StartTrafficControlTargetResponseBody : Tea.TeaModel {
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

public class StartTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTrafficControlTargetResponseBody?

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
            var model = StartTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartTrafficControlTaskRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class StartTrafficControlTaskResponseBody : Tea.TeaModel {
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

public class StartTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTrafficControlTaskResponseBody?

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
            var model = StartTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopSampleConsistencyJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class StopSampleConsistencyJobResponseBody : Tea.TeaModel {
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

public class StopSampleConsistencyJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopSampleConsistencyJobResponseBody?

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
            var model = StopSampleConsistencyJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTrafficControlTargetRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class StopTrafficControlTargetResponseBody : Tea.TeaModel {
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

public class StopTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTrafficControlTargetResponseBody?

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
            var model = StopTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopTrafficControlTaskRequest : Tea.TeaModel {
    public var regionId: String?

    public var environment: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class StopTrafficControlTaskResponseBody : Tea.TeaModel {
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

public class StopTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopTrafficControlTaskResponseBody?

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
            var model = StopTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncFeatureConsistencyCheckJobReplayLogRequest : Tea.TeaModel {
    public var contextFeatures: String?

    public var featureConsistencyCheckJobConfigId: String?

    public var generatedFeatures: String?

    public var instanceId: String?

    public var logItemId: String?

    public var logRequestId: String?

    public var logRequestTime: Int64?

    public var logUserId: String?

    public var rawFeatures: String?

    public var sceneName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contextFeatures != nil {
            map["ContextFeatures"] = self.contextFeatures!
        }
        if self.featureConsistencyCheckJobConfigId != nil {
            map["FeatureConsistencyCheckJobConfigId"] = self.featureConsistencyCheckJobConfigId!
        }
        if self.generatedFeatures != nil {
            map["GeneratedFeatures"] = self.generatedFeatures!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logItemId != nil {
            map["LogItemId"] = self.logItemId!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.logRequestTime != nil {
            map["LogRequestTime"] = self.logRequestTime!
        }
        if self.logUserId != nil {
            map["LogUserId"] = self.logUserId!
        }
        if self.rawFeatures != nil {
            map["RawFeatures"] = self.rawFeatures!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContextFeatures"] as? String {
            self.contextFeatures = value
        }
        if let value = dict["FeatureConsistencyCheckJobConfigId"] as? String {
            self.featureConsistencyCheckJobConfigId = value
        }
        if let value = dict["GeneratedFeatures"] as? String {
            self.generatedFeatures = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LogItemId"] as? String {
            self.logItemId = value
        }
        if let value = dict["LogRequestId"] as? String {
            self.logRequestId = value
        }
        if let value = dict["LogRequestTime"] as? Int64 {
            self.logRequestTime = value
        }
        if let value = dict["LogUserId"] as? String {
            self.logUserId = value
        }
        if let value = dict["RawFeatures"] as? String {
            self.rawFeatures = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
    }
}

public class SyncFeatureConsistencyCheckJobReplayLogResponseBody : Tea.TeaModel {
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

public class SyncFeatureConsistencyCheckJobReplayLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncFeatureConsistencyCheckJobReplayLogResponseBody?

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
            var model = SyncFeatureConsistencyCheckJobReplayLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TerminateFeatureConsistencyCheckJobRequest : Tea.TeaModel {
    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class TerminateFeatureConsistencyCheckJobResponseBody : Tea.TeaModel {
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

public class TerminateFeatureConsistencyCheckJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TerminateFeatureConsistencyCheckJobResponseBody?

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
            var model = TerminateFeatureConsistencyCheckJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateABMetricRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var instanceId: String?

    public var leftMetricId: String?

    public var name: String?

    public var operator_: String?

    public var realtime: Bool?

    public var resultResourceId: String?

    public var rightMetricId: String?

    public var sceneId: String?

    public var statisticsCycle: Int32?

    public var tableMetaId: String?

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
        if self.definition != nil {
            map["Definition"] = self.definition!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.leftMetricId != nil {
            map["LeftMetricId"] = self.leftMetricId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.resultResourceId != nil {
            map["ResultResourceId"] = self.resultResourceId!
        }
        if self.rightMetricId != nil {
            map["RightMetricId"] = self.rightMetricId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.statisticsCycle != nil {
            map["StatisticsCycle"] = self.statisticsCycle!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definition = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LeftMetricId"] as? String {
            self.leftMetricId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["ResultResourceId"] as? String {
            self.resultResourceId = value
        }
        if let value = dict["RightMetricId"] as? String {
            self.rightMetricId = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["StatisticsCycle"] as? Int32 {
            self.statisticsCycle = value
        }
        if let value = dict["TableMetaId"] as? String {
            self.tableMetaId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdateABMetricResponseBody : Tea.TeaModel {
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

public class UpdateABMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateABMetricResponseBody?

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
            var model = UpdateABMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateABMetricGroupRequest : Tea.TeaModel {
    public var ABMetricIds: String?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public var realtime: Bool?

    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ABMetricIds != nil {
            map["ABMetricIds"] = self.ABMetricIds!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.realtime != nil {
            map["Realtime"] = self.realtime!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ABMetricIds"] as? String {
            self.ABMetricIds = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Realtime"] as? Bool {
            self.realtime = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class UpdateABMetricGroupResponseBody : Tea.TeaModel {
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

public class UpdateABMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateABMetricGroupResponseBody?

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
            var model = UpdateABMetricGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCrowdRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateCrowdResponseBody : Tea.TeaModel {
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

public class UpdateCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCrowdResponseBody?

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
            var model = UpdateCrowdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEngineConfigRequest : Tea.TeaModel {
    public var configValue: String?

    public var description_: String?

    public var environment: String?

    public var instanceId: String?

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
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateEngineConfigResponseBody : Tea.TeaModel {
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

public class UpdateEngineConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEngineConfigResponseBody?

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
            var model = UpdateEngineConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentRequest : Tea.TeaModel {
    public var config: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var flowPercent: Int32?

    public var instanceId: String?

    public var name: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flowPercent != nil {
            map["FlowPercent"] = self.flowPercent!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FlowPercent"] as? Int32 {
            self.flowPercent = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdateExperimentResponseBody : Tea.TeaModel {
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

public class UpdateExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentResponseBody?

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
            var model = UpdateExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentGroupRequest : Tea.TeaModel {
    public var config: String?

    public var crowdId: String?

    public var crowdTargetType: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var distributionTimeDuration: Int32?

    public var distributionType: String?

    public var filter: String?

    public var instanceId: String?

    public var layerId: String?

    public var name: String?

    public var needAA: Bool?

    public var randomFlow: Int64?

    public var reservcedBuckets: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.crowdTargetType != nil {
            map["CrowdTargetType"] = self.crowdTargetType!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.distributionTimeDuration != nil {
            map["DistributionTimeDuration"] = self.distributionTimeDuration!
        }
        if self.distributionType != nil {
            map["DistributionType"] = self.distributionType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.needAA != nil {
            map["NeedAA"] = self.needAA!
        }
        if self.randomFlow != nil {
            map["RandomFlow"] = self.randomFlow!
        }
        if self.reservcedBuckets != nil {
            map["ReservcedBuckets"] = self.reservcedBuckets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["CrowdId"] as? String {
            self.crowdId = value
        }
        if let value = dict["CrowdTargetType"] as? String {
            self.crowdTargetType = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DistributionTimeDuration"] as? Int32 {
            self.distributionTimeDuration = value
        }
        if let value = dict["DistributionType"] as? String {
            self.distributionType = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LayerId"] as? String {
            self.layerId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NeedAA"] as? Bool {
            self.needAA = value
        }
        if let value = dict["RandomFlow"] as? Int64 {
            self.randomFlow = value
        }
        if let value = dict["ReservcedBuckets"] as? String {
            self.reservcedBuckets = value
        }
    }
}

public class UpdateExperimentGroupResponseBody : Tea.TeaModel {
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

public class UpdateExperimentGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentGroupResponseBody?

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
            var model = UpdateExperimentGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFeatureConsistencyCheckJobConfigRequest : Tea.TeaModel {
    public var compareFeature: Bool?

    public var datasetId: String?

    public var datasetMountPath: String?

    public var datasetName: String?

    public var datasetType: String?

    public var datasetUri: String?

    public var defaultRoute: String?

    public var easServiceName: String?

    public var easyRecPackagePath: String?

    public var easyRecVersion: String?

    public var featureDisplayExclude: String?

    public var featureLandingResourceId: String?

    public var featurePriority: String?

    public var featureStoreItemId: String?

    public var featureStoreModelId: String?

    public var featureStoreProjectId: String?

    public var featureStoreProjectName: String?

    public var featureStoreSeqFeatureView: String?

    public var featureStoreUserId: String?

    public var fgJarVersion: String?

    public var fgJsonFileName: String?

    public var generateZip: Bool?

    public var instanceId: String?

    public var isUseFeatureStore: Bool?

    public var itemIdField: String?

    public var itemTable: String?

    public var itemTablePartitionField: String?

    public var itemTablePartitionFieldFormat: String?

    public var name: String?

    public var ossResourceId: String?

    public var predictWorkerCount: Int32?

    public var predictWorkerCpu: Int32?

    public var predictWorkerMemory: Int32?

    public var resourceConfig: String?

    public var sampleRate: Double?

    public var sceneId: String?

    public var securityGroupId: String?

    public var serviceId: String?

    public var switchId: String?

    public var userIdField: String?

    public var userTable: String?

    public var userTablePartitionField: String?

    public var userTablePartitionFieldFormat: String?

    public var vpcId: String?

    public var workflowName: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compareFeature != nil {
            map["CompareFeature"] = self.compareFeature!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.datasetMountPath != nil {
            map["DatasetMountPath"] = self.datasetMountPath!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.datasetType != nil {
            map["DatasetType"] = self.datasetType!
        }
        if self.datasetUri != nil {
            map["DatasetUri"] = self.datasetUri!
        }
        if self.defaultRoute != nil {
            map["DefaultRoute"] = self.defaultRoute!
        }
        if self.easServiceName != nil {
            map["EasServiceName"] = self.easServiceName!
        }
        if self.easyRecPackagePath != nil {
            map["EasyRecPackagePath"] = self.easyRecPackagePath!
        }
        if self.easyRecVersion != nil {
            map["EasyRecVersion"] = self.easyRecVersion!
        }
        if self.featureDisplayExclude != nil {
            map["FeatureDisplayExclude"] = self.featureDisplayExclude!
        }
        if self.featureLandingResourceId != nil {
            map["FeatureLandingResourceId"] = self.featureLandingResourceId!
        }
        if self.featurePriority != nil {
            map["FeaturePriority"] = self.featurePriority!
        }
        if self.featureStoreItemId != nil {
            map["FeatureStoreItemId"] = self.featureStoreItemId!
        }
        if self.featureStoreModelId != nil {
            map["FeatureStoreModelId"] = self.featureStoreModelId!
        }
        if self.featureStoreProjectId != nil {
            map["FeatureStoreProjectId"] = self.featureStoreProjectId!
        }
        if self.featureStoreProjectName != nil {
            map["FeatureStoreProjectName"] = self.featureStoreProjectName!
        }
        if self.featureStoreSeqFeatureView != nil {
            map["FeatureStoreSeqFeatureView"] = self.featureStoreSeqFeatureView!
        }
        if self.featureStoreUserId != nil {
            map["FeatureStoreUserId"] = self.featureStoreUserId!
        }
        if self.fgJarVersion != nil {
            map["FgJarVersion"] = self.fgJarVersion!
        }
        if self.fgJsonFileName != nil {
            map["FgJsonFileName"] = self.fgJsonFileName!
        }
        if self.generateZip != nil {
            map["GenerateZip"] = self.generateZip!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isUseFeatureStore != nil {
            map["IsUseFeatureStore"] = self.isUseFeatureStore!
        }
        if self.itemIdField != nil {
            map["ItemIdField"] = self.itemIdField!
        }
        if self.itemTable != nil {
            map["ItemTable"] = self.itemTable!
        }
        if self.itemTablePartitionField != nil {
            map["ItemTablePartitionField"] = self.itemTablePartitionField!
        }
        if self.itemTablePartitionFieldFormat != nil {
            map["ItemTablePartitionFieldFormat"] = self.itemTablePartitionFieldFormat!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossResourceId != nil {
            map["OssResourceId"] = self.ossResourceId!
        }
        if self.predictWorkerCount != nil {
            map["PredictWorkerCount"] = self.predictWorkerCount!
        }
        if self.predictWorkerCpu != nil {
            map["PredictWorkerCpu"] = self.predictWorkerCpu!
        }
        if self.predictWorkerMemory != nil {
            map["PredictWorkerMemory"] = self.predictWorkerMemory!
        }
        if self.resourceConfig != nil {
            map["ResourceConfig"] = self.resourceConfig!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.switchId != nil {
            map["SwitchId"] = self.switchId!
        }
        if self.userIdField != nil {
            map["UserIdField"] = self.userIdField!
        }
        if self.userTable != nil {
            map["UserTable"] = self.userTable!
        }
        if self.userTablePartitionField != nil {
            map["UserTablePartitionField"] = self.userTablePartitionField!
        }
        if self.userTablePartitionFieldFormat != nil {
            map["UserTablePartitionFieldFormat"] = self.userTablePartitionFieldFormat!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompareFeature"] as? Bool {
            self.compareFeature = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["DatasetMountPath"] as? String {
            self.datasetMountPath = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["DatasetType"] as? String {
            self.datasetType = value
        }
        if let value = dict["DatasetUri"] as? String {
            self.datasetUri = value
        }
        if let value = dict["DefaultRoute"] as? String {
            self.defaultRoute = value
        }
        if let value = dict["EasServiceName"] as? String {
            self.easServiceName = value
        }
        if let value = dict["EasyRecPackagePath"] as? String {
            self.easyRecPackagePath = value
        }
        if let value = dict["EasyRecVersion"] as? String {
            self.easyRecVersion = value
        }
        if let value = dict["FeatureDisplayExclude"] as? String {
            self.featureDisplayExclude = value
        }
        if let value = dict["FeatureLandingResourceId"] as? String {
            self.featureLandingResourceId = value
        }
        if let value = dict["FeaturePriority"] as? String {
            self.featurePriority = value
        }
        if let value = dict["FeatureStoreItemId"] as? String {
            self.featureStoreItemId = value
        }
        if let value = dict["FeatureStoreModelId"] as? String {
            self.featureStoreModelId = value
        }
        if let value = dict["FeatureStoreProjectId"] as? String {
            self.featureStoreProjectId = value
        }
        if let value = dict["FeatureStoreProjectName"] as? String {
            self.featureStoreProjectName = value
        }
        if let value = dict["FeatureStoreSeqFeatureView"] as? String {
            self.featureStoreSeqFeatureView = value
        }
        if let value = dict["FeatureStoreUserId"] as? String {
            self.featureStoreUserId = value
        }
        if let value = dict["FgJarVersion"] as? String {
            self.fgJarVersion = value
        }
        if let value = dict["FgJsonFileName"] as? String {
            self.fgJsonFileName = value
        }
        if let value = dict["GenerateZip"] as? Bool {
            self.generateZip = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsUseFeatureStore"] as? Bool {
            self.isUseFeatureStore = value
        }
        if let value = dict["ItemIdField"] as? String {
            self.itemIdField = value
        }
        if let value = dict["ItemTable"] as? String {
            self.itemTable = value
        }
        if let value = dict["ItemTablePartitionField"] as? String {
            self.itemTablePartitionField = value
        }
        if let value = dict["ItemTablePartitionFieldFormat"] as? String {
            self.itemTablePartitionFieldFormat = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssResourceId"] as? String {
            self.ossResourceId = value
        }
        if let value = dict["PredictWorkerCount"] as? Int32 {
            self.predictWorkerCount = value
        }
        if let value = dict["PredictWorkerCpu"] as? Int32 {
            self.predictWorkerCpu = value
        }
        if let value = dict["PredictWorkerMemory"] as? Int32 {
            self.predictWorkerMemory = value
        }
        if let value = dict["ResourceConfig"] as? String {
            self.resourceConfig = value
        }
        if let value = dict["SampleRate"] as? Double {
            self.sampleRate = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["SwitchId"] as? String {
            self.switchId = value
        }
        if let value = dict["UserIdField"] as? String {
            self.userIdField = value
        }
        if let value = dict["UserTable"] as? String {
            self.userTable = value
        }
        if let value = dict["UserTablePartitionField"] as? String {
            self.userTablePartitionField = value
        }
        if let value = dict["UserTablePartitionFieldFormat"] as? String {
            self.userTablePartitionFieldFormat = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["WorkflowName"] as? String {
            self.workflowName = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateFeatureConsistencyCheckJobConfigResponseBody : Tea.TeaModel {
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

public class UpdateFeatureConsistencyCheckJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFeatureConsistencyCheckJobConfigResponseBody?

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
            var model = UpdateFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceResourceRequest : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class UpdateInstanceResourceResponseBody : Tea.TeaModel {
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

public class UpdateInstanceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResourceResponseBody?

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
            var model = UpdateInstanceResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLaboratoryRequest : Tea.TeaModel {
    public var bucketCount: Int32?

    public var bucketType: String?

    public var buckets: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var environment: String?

    public var filter: String?

    public var instanceId: String?

    public var name: String?

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
        if self.bucketCount != nil {
            map["BucketCount"] = self.bucketCount!
        }
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.debugCrowdId != nil {
            map["DebugCrowdId"] = self.debugCrowdId!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketCount"] as? Int32 {
            self.bucketCount = value
        }
        if let value = dict["BucketType"] as? String {
            self.bucketType = value
        }
        if let value = dict["Buckets"] as? String {
            self.buckets = value
        }
        if let value = dict["DebugCrowdId"] as? String {
            self.debugCrowdId = value
        }
        if let value = dict["DebugUsers"] as? String {
            self.debugUsers = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class UpdateLaboratoryResponseBody : Tea.TeaModel {
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

public class UpdateLaboratoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLaboratoryResponseBody?

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
            var model = UpdateLaboratoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLayerRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateLayerResponseBody : Tea.TeaModel {
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

public class UpdateLayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLayerResponseBody?

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
            var model = UpdateLayerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateParamRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class UpdateParamResponseBody : Tea.TeaModel {
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

public class UpdateParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateParamResponseBody?

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
            var model = UpdateParamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceRuleRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var metricOperationType: String?

    public var metricPullInfo: String?

    public var metricPullPeriod: String?

    public var name: String?

    public var ruleComputingDefinition: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.metricOperationType != nil {
            map["MetricOperationType"] = self.metricOperationType!
        }
        if self.metricPullInfo != nil {
            map["MetricPullInfo"] = self.metricPullInfo!
        }
        if self.metricPullPeriod != nil {
            map["MetricPullPeriod"] = self.metricPullPeriod!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ruleComputingDefinition != nil {
            map["RuleComputingDefinition"] = self.ruleComputingDefinition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MetricOperationType"] as? String {
            self.metricOperationType = value
        }
        if let value = dict["MetricPullInfo"] as? String {
            self.metricPullInfo = value
        }
        if let value = dict["MetricPullPeriod"] as? String {
            self.metricPullPeriod = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RuleComputingDefinition"] as? String {
            self.ruleComputingDefinition = value
        }
    }
}

public class UpdateResourceRuleResponseBody : Tea.TeaModel {
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

public class UpdateResourceRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceRuleResponseBody?

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
            var model = UpdateResourceRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceRuleItemRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var maxValue: Double?

    public var minValue: Double?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.maxValue != nil {
            map["MaxValue"] = self.maxValue!
        }
        if self.minValue != nil {
            map["MinValue"] = self.minValue!
        }
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MaxValue"] as? Double {
            self.maxValue = value
        }
        if let value = dict["MinValue"] as? Double {
            self.minValue = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? Double {
            self.value = value
        }
    }
}

public class UpdateResourceRuleItemResponseBody : Tea.TeaModel {
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

public class UpdateResourceRuleItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceRuleItemResponseBody?

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
            var model = UpdateResourceRuleItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSceneRequest : Tea.TeaModel {
    public class Flows : Tea.TeaModel {
        public var flowCode: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowCode != nil {
                map["FlowCode"] = self.flowCode!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowCode"] as? String {
                self.flowCode = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
        }
    }
    public var description_: String?

    public var flows: [UpdateSceneRequest.Flows]?

    public var instanceId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flows != nil {
            var tmp : [Any] = []
            for k in self.flows! {
                tmp.append(k.toMap())
            }
            map["Flows"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Flows"] as? [Any?] {
            var tmp : [UpdateSceneRequest.Flows] = []
            for v in value {
                if v != nil {
                    var model = UpdateSceneRequest.Flows()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flows = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateSceneResponseBody : Tea.TeaModel {
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

public class UpdateSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSceneResponseBody?

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
            var model = UpdateSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTableMetaRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
        public var dataType: String?

        public var isDimensionField: Bool?

        public var isPartitionField: String?

        public var meaning: String?

        public var name: String?

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
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.isDimensionField != nil {
                map["IsDimensionField"] = self.isDimensionField!
            }
            if self.isPartitionField != nil {
                map["IsPartitionField"] = self.isPartitionField!
            }
            if self.meaning != nil {
                map["Meaning"] = self.meaning!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["IsDimensionField"] as? Bool {
                self.isDimensionField = value
            }
            if let value = dict["IsPartitionField"] as? String {
                self.isPartitionField = value
            }
            if let value = dict["Meaning"] as? String {
                self.meaning = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var description_: String?

    public var fields: [UpdateTableMetaRequest.Fields]?

    public var instanceId: String?

    public var module: String?

    public var name: String?

    public var resourceId: String?

    public var tableName: String?

    public override init() {
        super.init()
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
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Fields"] as? [Any?] {
            var tmp : [UpdateTableMetaRequest.Fields] = []
            for v in value {
                if v != nil {
                    var model = UpdateTableMetaRequest.Fields()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fields = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class UpdateTableMetaResponseBody : Tea.TeaModel {
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

public class UpdateTableMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTableMetaResponseBody?

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
            var model = UpdateTableMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTrafficControlTargetRequest : Tea.TeaModel {
    public var endTime: String?

    public var event: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var name: String?

    public var newProductRegulation: Bool?

    public var recallName: String?

    public var startTime: String?

    public var statisPeriod: String?

    public var status: String?

    public var toleranceValue: Int64?

    public var value: Double?

    public var newParam3: String?

    public override init() {
        super.init()
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
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.itemConditionArray != nil {
            map["ItemConditionArray"] = self.itemConditionArray!
        }
        if self.itemConditionExpress != nil {
            map["ItemConditionExpress"] = self.itemConditionExpress!
        }
        if self.itemConditionType != nil {
            map["ItemConditionType"] = self.itemConditionType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.newProductRegulation != nil {
            map["NewProductRegulation"] = self.newProductRegulation!
        }
        if self.recallName != nil {
            map["RecallName"] = self.recallName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisPeriod != nil {
            map["StatisPeriod"] = self.statisPeriod!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.toleranceValue != nil {
            map["ToleranceValue"] = self.toleranceValue!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.newParam3 != nil {
            map["new-param-3"] = self.newParam3!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Event"] as? String {
            self.event = value
        }
        if let value = dict["ItemConditionArray"] as? String {
            self.itemConditionArray = value
        }
        if let value = dict["ItemConditionExpress"] as? String {
            self.itemConditionExpress = value
        }
        if let value = dict["ItemConditionType"] as? String {
            self.itemConditionType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NewProductRegulation"] as? Bool {
            self.newProductRegulation = value
        }
        if let value = dict["RecallName"] as? String {
            self.recallName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisPeriod"] as? String {
            self.statisPeriod = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ToleranceValue"] as? Int64 {
            self.toleranceValue = value
        }
        if let value = dict["Value"] as? Double {
            self.value = value
        }
        if let value = dict["new-param-3"] as? String {
            self.newParam3 = value
        }
    }
}

public class UpdateTrafficControlTargetResponseBody : Tea.TeaModel {
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

public class UpdateTrafficControlTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrafficControlTargetResponseBody?

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
            var model = UpdateTrafficControlTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTrafficControlTaskRequest : Tea.TeaModel {
    public class TrafficControlTargets : Tea.TeaModel {
        public var endTime: String?

        public var event: String?

        public var itemConditionArray: String?

        public var itemConditionExpress: String?

        public var itemConditionType: String?

        public var name: String?

        public var newProductRegulation: Bool?

        public var recallName: String?

        public var startTime: String?

        public var statisPeriod: String?

        public var status: String?

        public var toleranceValue: Int64?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.itemConditionArray != nil {
                map["ItemConditionArray"] = self.itemConditionArray!
            }
            if self.itemConditionExpress != nil {
                map["ItemConditionExpress"] = self.itemConditionExpress!
            }
            if self.itemConditionType != nil {
                map["ItemConditionType"] = self.itemConditionType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newProductRegulation != nil {
                map["NewProductRegulation"] = self.newProductRegulation!
            }
            if self.recallName != nil {
                map["RecallName"] = self.recallName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.statisPeriod != nil {
                map["StatisPeriod"] = self.statisPeriod!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.toleranceValue != nil {
                map["ToleranceValue"] = self.toleranceValue!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Event"] as? String {
                self.event = value
            }
            if let value = dict["ItemConditionArray"] as? String {
                self.itemConditionArray = value
            }
            if let value = dict["ItemConditionExpress"] as? String {
                self.itemConditionExpress = value
            }
            if let value = dict["ItemConditionType"] as? String {
                self.itemConditionType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NewProductRegulation"] as? Bool {
                self.newProductRegulation = value
            }
            if let value = dict["RecallName"] as? String {
                self.recallName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["StatisPeriod"] as? String {
                self.statisPeriod = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ToleranceValue"] as? Int64 {
                self.toleranceValue = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var behaviorTableMetaId: String?

    public var controlGranularity: String?

    public var controlLogic: String?

    public var controlType: String?

    public var description_: String?

    public var effectiveSceneIds: [Int32]?

    public var endTime: String?

    public var executionTime: String?

    public var flinkResourceId: String?

    public var instanceId: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var itemTableMetaId: String?

    public var name: String?

    public var preExperimentIds: String?

    public var prodExperimentIds: String?

    public var sceneId: String?

    public var serviceId: String?

    public var serviceIds: [Int32]?

    public var startTime: String?

    public var statisBaeaviorConditionArray: String?

    public var statisBehaviorConditionExpress: String?

    public var statisBehaviorConditionType: String?

    public var trafficControlTargets: [UpdateTrafficControlTaskRequest.TrafficControlTargets]?

    public var userConditionArray: String?

    public var userConditionExpress: String?

    public var userConditionType: String?

    public var userTableMetaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.behaviorTableMetaId != nil {
            map["BehaviorTableMetaId"] = self.behaviorTableMetaId!
        }
        if self.controlGranularity != nil {
            map["ControlGranularity"] = self.controlGranularity!
        }
        if self.controlLogic != nil {
            map["ControlLogic"] = self.controlLogic!
        }
        if self.controlType != nil {
            map["ControlType"] = self.controlType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.effectiveSceneIds != nil {
            map["EffectiveSceneIds"] = self.effectiveSceneIds!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executionTime != nil {
            map["ExecutionTime"] = self.executionTime!
        }
        if self.flinkResourceId != nil {
            map["FlinkResourceId"] = self.flinkResourceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.itemConditionArray != nil {
            map["ItemConditionArray"] = self.itemConditionArray!
        }
        if self.itemConditionExpress != nil {
            map["ItemConditionExpress"] = self.itemConditionExpress!
        }
        if self.itemConditionType != nil {
            map["ItemConditionType"] = self.itemConditionType!
        }
        if self.itemTableMetaId != nil {
            map["ItemTableMetaId"] = self.itemTableMetaId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.preExperimentIds != nil {
            map["PreExperimentIds"] = self.preExperimentIds!
        }
        if self.prodExperimentIds != nil {
            map["ProdExperimentIds"] = self.prodExperimentIds!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceIds != nil {
            map["ServiceIds"] = self.serviceIds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.statisBaeaviorConditionArray != nil {
            map["StatisBaeaviorConditionArray"] = self.statisBaeaviorConditionArray!
        }
        if self.statisBehaviorConditionExpress != nil {
            map["StatisBehaviorConditionExpress"] = self.statisBehaviorConditionExpress!
        }
        if self.statisBehaviorConditionType != nil {
            map["StatisBehaviorConditionType"] = self.statisBehaviorConditionType!
        }
        if self.trafficControlTargets != nil {
            var tmp : [Any] = []
            for k in self.trafficControlTargets! {
                tmp.append(k.toMap())
            }
            map["TrafficControlTargets"] = tmp
        }
        if self.userConditionArray != nil {
            map["UserConditionArray"] = self.userConditionArray!
        }
        if self.userConditionExpress != nil {
            map["UserConditionExpress"] = self.userConditionExpress!
        }
        if self.userConditionType != nil {
            map["UserConditionType"] = self.userConditionType!
        }
        if self.userTableMetaId != nil {
            map["UserTableMetaId"] = self.userTableMetaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BehaviorTableMetaId"] as? String {
            self.behaviorTableMetaId = value
        }
        if let value = dict["ControlGranularity"] as? String {
            self.controlGranularity = value
        }
        if let value = dict["ControlLogic"] as? String {
            self.controlLogic = value
        }
        if let value = dict["ControlType"] as? String {
            self.controlType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EffectiveSceneIds"] as? [Int32] {
            self.effectiveSceneIds = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["ExecutionTime"] as? String {
            self.executionTime = value
        }
        if let value = dict["FlinkResourceId"] as? String {
            self.flinkResourceId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ItemConditionArray"] as? String {
            self.itemConditionArray = value
        }
        if let value = dict["ItemConditionExpress"] as? String {
            self.itemConditionExpress = value
        }
        if let value = dict["ItemConditionType"] as? String {
            self.itemConditionType = value
        }
        if let value = dict["ItemTableMetaId"] as? String {
            self.itemTableMetaId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PreExperimentIds"] as? String {
            self.preExperimentIds = value
        }
        if let value = dict["ProdExperimentIds"] as? String {
            self.prodExperimentIds = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceIds"] as? [Int32] {
            self.serviceIds = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StatisBaeaviorConditionArray"] as? String {
            self.statisBaeaviorConditionArray = value
        }
        if let value = dict["StatisBehaviorConditionExpress"] as? String {
            self.statisBehaviorConditionExpress = value
        }
        if let value = dict["StatisBehaviorConditionType"] as? String {
            self.statisBehaviorConditionType = value
        }
        if let value = dict["TrafficControlTargets"] as? [Any?] {
            var tmp : [UpdateTrafficControlTaskRequest.TrafficControlTargets] = []
            for v in value {
                if v != nil {
                    var model = UpdateTrafficControlTaskRequest.TrafficControlTargets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trafficControlTargets = tmp
        }
        if let value = dict["UserConditionArray"] as? String {
            self.userConditionArray = value
        }
        if let value = dict["UserConditionExpress"] as? String {
            self.userConditionExpress = value
        }
        if let value = dict["UserConditionType"] as? String {
            self.userConditionType = value
        }
        if let value = dict["UserTableMetaId"] as? String {
            self.userTableMetaId = value
        }
    }
}

public class UpdateTrafficControlTaskResponseBody : Tea.TeaModel {
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

public class UpdateTrafficControlTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrafficControlTaskResponseBody?

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
            var model = UpdateTrafficControlTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTrafficControlTaskTrafficRequest : Tea.TeaModel {
    public class Traffics : Tea.TeaModel {
        public var itemOrExperimentId: String?

        public var recordTime: String?

        public var trafficControlTargetAimTraffic: Double?

        public var trafficControlTargetId: String?

        public var trafficControlTargetTraffic: Int64?

        public var trafficControlTaskTraffic: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.itemOrExperimentId != nil {
                map["ItemOrExperimentId"] = self.itemOrExperimentId!
            }
            if self.recordTime != nil {
                map["RecordTime"] = self.recordTime!
            }
            if self.trafficControlTargetAimTraffic != nil {
                map["TrafficControlTargetAimTraffic"] = self.trafficControlTargetAimTraffic!
            }
            if self.trafficControlTargetId != nil {
                map["TrafficControlTargetId"] = self.trafficControlTargetId!
            }
            if self.trafficControlTargetTraffic != nil {
                map["TrafficControlTargetTraffic"] = self.trafficControlTargetTraffic!
            }
            if self.trafficControlTaskTraffic != nil {
                map["TrafficControlTaskTraffic"] = self.trafficControlTaskTraffic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ItemOrExperimentId"] as? String {
                self.itemOrExperimentId = value
            }
            if let value = dict["RecordTime"] as? String {
                self.recordTime = value
            }
            if let value = dict["TrafficControlTargetAimTraffic"] as? Double {
                self.trafficControlTargetAimTraffic = value
            }
            if let value = dict["TrafficControlTargetId"] as? String {
                self.trafficControlTargetId = value
            }
            if let value = dict["TrafficControlTargetTraffic"] as? Int64 {
                self.trafficControlTargetTraffic = value
            }
            if let value = dict["TrafficControlTaskTraffic"] as? Int64 {
                self.trafficControlTaskTraffic = value
            }
        }
    }
    public var environment: String?

    public var instanceId: String?

    public var traffics: [UpdateTrafficControlTaskTrafficRequest.Traffics]?

    public var newParam3: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environment != nil {
            map["Environment"] = self.environment!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.traffics != nil {
            var tmp : [Any] = []
            for k in self.traffics! {
                tmp.append(k.toMap())
            }
            map["Traffics"] = tmp
        }
        if self.newParam3 != nil {
            map["new-param-3"] = self.newParam3!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Environment"] as? String {
            self.environment = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Traffics"] as? [Any?] {
            var tmp : [UpdateTrafficControlTaskTrafficRequest.Traffics] = []
            for v in value {
                if v != nil {
                    var model = UpdateTrafficControlTaskTrafficRequest.Traffics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.traffics = tmp
        }
        if let value = dict["new-param-3"] as? String {
            self.newParam3 = value
        }
    }
}

public class UpdateTrafficControlTaskTrafficResponseBody : Tea.TeaModel {
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

public class UpdateTrafficControlTaskTrafficResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrafficControlTaskTrafficResponseBody?

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
            var model = UpdateTrafficControlTaskTrafficResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadRecommendationDataRequest : Tea.TeaModel {
    public class Content : Tea.TeaModel {
        public var fields: String?

        public var operationType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fields != nil {
                map["Fields"] = self.fields!
            }
            if self.operationType != nil {
                map["OperationType"] = self.operationType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Fields"] as? String {
                self.fields = value
            }
            if let value = dict["OperationType"] as? String {
                self.operationType = value
            }
        }
    }
    public var regionId: String?

    public var content: [UploadRecommendationDataRequest.Content]?

    public var dataType: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            var tmp : [Any] = []
            for k in self.content! {
                tmp.append(k.toMap())
            }
            map["Content"] = tmp
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Content"] as? [Any?] {
            var tmp : [UploadRecommendationDataRequest.Content] = []
            for v in value {
                if v != nil {
                    var model = UploadRecommendationDataRequest.Content()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.content = tmp
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
    }
}

public class UploadRecommendationDataResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UploadRecommendationDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadRecommendationDataResponseBody?

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
            var model = UploadRecommendationDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
