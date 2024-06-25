import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Baseline") {
            self.baseline = dict["Baseline"] as! Bool
        }
        if dict.keys.contains("MetricResults") {
            self.metricResults = dict["MetricResults"] as! [String: [String: Any]]
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
        if self.userFeatures != nil {
            map["UserFeatures"] = self.userFeatures!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemFeatures") {
            self.itemFeatures = dict["ItemFeatures"] as! String
        }
        if dict.keys.contains("LogItemId") {
            self.logItemId = dict["LogItemId"] as! String
        }
        if dict.keys.contains("LogRequestId") {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogRequestTime") {
            self.logRequestTime = dict["LogRequestTime"] as! Int64
        }
        if dict.keys.contains("LogUserId") {
            self.logUserId = dict["LogUserId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("Scores") {
            self.scores = dict["Scores"] as! String
        }
        if dict.keys.contains("UserFeatures") {
            self.userFeatures = dict["UserFeatures"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BackflowFeatureConsistencyCheckJobDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckInstanceResourcesRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            var tmp : [CheckInstanceResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = CheckInstanceResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckInstanceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloneExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloneExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureConsistencyCheckId") {
            self.featureConsistencyCheckId = dict["FeatureConsistencyCheckId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloneFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloneExperimentGroup") {
            self.cloneExperimentGroup = dict["CloneExperimentGroup"] as! Bool
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloneLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficControlTaskId") {
            self.trafficControlTaskId = dict["TrafficControlTaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloneTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LeftMetricId") {
            self.leftMetricId = dict["LeftMetricId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("ResultResourceId") {
            self.resultResourceId = dict["ResultResourceId"] as! String
        }
        if dict.keys.contains("RightMetricId") {
            self.rightMetricId = dict["RightMetricId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StatisticsCycle") {
            self.statisticsCycle = dict["StatisticsCycle"] as! Int32
        }
        if dict.keys.contains("TableMetaId") {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricId") {
            self.ABMetricId = dict["ABMetricId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateABMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricIds") {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricGroupId") {
            self.ABMetricGroupId = dict["ABMetricGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateABMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricIds") {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalculationJobIds") {
            self.calculationJobIds = dict["CalculationJobIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCalculationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CrowdId") {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("FlowPercent") {
            self.flowPercent = dict["FlowPercent"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdId") {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("CrowdTargetType") {
            self.crowdTargetType = dict["CrowdTargetType"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributionTimeDuration") {
            self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
        }
        if dict.keys.contains("DistributionType") {
            self.distributionType = dict["DistributionType"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NeedAA") {
            self.needAA = dict["NeedAA"] as! Bool
        }
        if dict.keys.contains("RandomFlow") {
            self.randomFlow = dict["RandomFlow"] as! Int64
        }
        if dict.keys.contains("ReservedBuckets") {
            self.reservedBuckets = dict["ReservedBuckets"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SamplingDuration") {
            self.samplingDuration = dict["SamplingDuration"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureConsistencyCheckJobId") {
            self.featureConsistencyCheckJobId = dict["FeatureConsistencyCheckJobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFeatureConsistencyCheckJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFeatureConsistencyCheckJobConfigRequest : Tea.TeaModel {
    public var compareFeature: Bool?

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

    public var sampleRate: Double?

    public var sceneId: String?

    public var serviceId: String?

    public var useFeatureStore: Bool?

    public var userIdField: String?

    public var userTable: String?

    public var userTablePartitionField: String?

    public var userTablePartitionFieldFormat: String?

    public var workflowName: String?

    public override init() {
        super.init()
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
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
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
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompareFeature") {
            self.compareFeature = dict["CompareFeature"] as! Bool
        }
        if dict.keys.contains("EasServiceName") {
            self.easServiceName = dict["EasServiceName"] as! String
        }
        if dict.keys.contains("EasyRecPackagePath") {
            self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
        }
        if dict.keys.contains("EasyRecVersion") {
            self.easyRecVersion = dict["EasyRecVersion"] as! String
        }
        if dict.keys.contains("FeatureDisplayExclude") {
            self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceId") {
            self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
        }
        if dict.keys.contains("FeaturePriority") {
            self.featurePriority = dict["FeaturePriority"] as! String
        }
        if dict.keys.contains("FeatureStoreItemId") {
            self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
        }
        if dict.keys.contains("FeatureStoreModelId") {
            self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectId") {
            self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectName") {
            self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
        }
        if dict.keys.contains("FeatureStoreSeqFeatureView") {
            self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
        }
        if dict.keys.contains("FeatureStoreUserId") {
            self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
        }
        if dict.keys.contains("FgJarVersion") {
            self.fgJarVersion = dict["FgJarVersion"] as! String
        }
        if dict.keys.contains("FgJsonFileName") {
            self.fgJsonFileName = dict["FgJsonFileName"] as! String
        }
        if dict.keys.contains("GenerateZip") {
            self.generateZip = dict["GenerateZip"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemIdField") {
            self.itemIdField = dict["ItemIdField"] as! String
        }
        if dict.keys.contains("ItemTable") {
            self.itemTable = dict["ItemTable"] as! String
        }
        if dict.keys.contains("ItemTablePartitionField") {
            self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
        }
        if dict.keys.contains("ItemTablePartitionFieldFormat") {
            self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssResourceId") {
            self.ossResourceId = dict["OssResourceId"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! Double
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UseFeatureStore") {
            self.useFeatureStore = dict["UseFeatureStore"] as! Bool
        }
        if dict.keys.contains("UserIdField") {
            self.userIdField = dict["UserIdField"] as! String
        }
        if dict.keys.contains("UserTable") {
            self.userTable = dict["UserTable"] as! String
        }
        if dict.keys.contains("UserTablePartitionField") {
            self.userTablePartitionField = dict["UserTablePartitionField"] as! String
        }
        if dict.keys.contains("UserTablePartitionFieldFormat") {
            self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("WorkflowName") {
            self.workflowName = dict["WorkflowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateInstanceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketCount") {
            self.bucketCount = dict["BucketCount"] as! Int32
        }
        if dict.keys.contains("BucketType") {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLayerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateParamRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

    public var name: String?

    public var sceneId: String?

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
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamId") {
            self.paramId = dict["ParamId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MaxValue") {
                self.maxValue = dict["MaxValue"] as! Double
            }
            if dict.keys.contains("MinValue") {
                self.minValue = dict["MinValue"] as! Double
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MetricOperationType") {
            self.metricOperationType = dict["MetricOperationType"] as! String
        }
        if dict.keys.contains("MetricPullInfo") {
            self.metricPullInfo = dict["MetricPullInfo"] as! String
        }
        if dict.keys.contains("MetricPullPeriod") {
            self.metricPullPeriod = dict["MetricPullPeriod"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RuleComputingDefinition") {
            self.ruleComputingDefinition = dict["RuleComputingDefinition"] as! String
        }
        if dict.keys.contains("RuleItems") {
            var tmp : [CreateResourceRuleRequest.RuleItems] = []
            for v in dict["RuleItems"] as! [Any] {
                var model = CreateResourceRuleRequest.RuleItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceRuleId") {
            self.resourceRuleId = dict["ResourceRuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxValue") {
            self.maxValue = dict["MaxValue"] as! Double
        }
        if dict.keys.contains("MinValue") {
            self.minValue = dict["MinValue"] as! Double
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceRuleItemId") {
            self.resourceRuleItemId = dict["ResourceRuleItemId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourceRuleItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowCode") {
                self.flowCode = dict["FlowCode"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flows") {
            var tmp : [CreateSceneRequest.Flows] = []
            for v in dict["Flows"] as! [Any] {
                var model = CreateSceneRequest.Flows()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flows = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCrowdId") {
            self.subCrowdId = dict["SubCrowdId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSubCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("IsDimensionField") {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("IsPartitionField") {
                self.isPartitionField = dict["IsPartitionField"] as! String
            }
            if dict.keys.contains("Meaning") {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [CreateTableMetaRequest.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = CreateTableMetaRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableMetaId") {
            self.tableMetaId = dict["TableMetaId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTableMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Event") {
            self.event = dict["Event"] as! String
        }
        if dict.keys.contains("ItemConditionArray") {
            self.itemConditionArray = dict["ItemConditionArray"] as! String
        }
        if dict.keys.contains("ItemConditionExpress") {
            self.itemConditionExpress = dict["ItemConditionExpress"] as! String
        }
        if dict.keys.contains("ItemConditionType") {
            self.itemConditionType = dict["ItemConditionType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewProductRegulation") {
            self.newProductRegulation = dict["NewProductRegulation"] as! Bool
        }
        if dict.keys.contains("RecallName") {
            self.recallName = dict["RecallName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StatisPeriod") {
            self.statisPeriod = dict["StatisPeriod"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ToleranceValue") {
            self.toleranceValue = dict["ToleranceValue"] as! Int64
        }
        if dict.keys.contains("TrafficControlTaskId") {
            self.trafficControlTaskId = dict["TrafficControlTaskId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficControlTargetId") {
            self.trafficControlTargetId = dict["TrafficControlTargetId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ItemConditionArray") {
                self.itemConditionArray = dict["ItemConditionArray"] as! String
            }
            if dict.keys.contains("ItemConditionExpress") {
                self.itemConditionExpress = dict["ItemConditionExpress"] as! String
            }
            if dict.keys.contains("ItemConditionType") {
                self.itemConditionType = dict["ItemConditionType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewProductRegulation") {
                self.newProductRegulation = dict["NewProductRegulation"] as! Bool
            }
            if dict.keys.contains("RecallName") {
                self.recallName = dict["RecallName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StatisPeriod") {
                self.statisPeriod = dict["StatisPeriod"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ToleranceValue") {
                self.toleranceValue = dict["ToleranceValue"] as! Int64
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
            }
        }
    }
    public var behaviorTableMetaId: String?

    public var controlGranularity: String?

    public var controlLogic: String?

    public var controlType: String?

    public var description_: String?

    public var endTime: String?

    public var executionTime: String?

    public var instanceId: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var itemTableMetaId: String?

    public var name: String?

    public var sceneId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executionTime != nil {
            map["ExecutionTime"] = self.executionTime!
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BehaviorTableMetaId") {
            self.behaviorTableMetaId = dict["BehaviorTableMetaId"] as! String
        }
        if dict.keys.contains("ControlGranularity") {
            self.controlGranularity = dict["ControlGranularity"] as! String
        }
        if dict.keys.contains("ControlLogic") {
            self.controlLogic = dict["ControlLogic"] as! String
        }
        if dict.keys.contains("ControlType") {
            self.controlType = dict["ControlType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecutionTime") {
            self.executionTime = dict["ExecutionTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemConditionArray") {
            self.itemConditionArray = dict["ItemConditionArray"] as! String
        }
        if dict.keys.contains("ItemConditionExpress") {
            self.itemConditionExpress = dict["ItemConditionExpress"] as! String
        }
        if dict.keys.contains("ItemConditionType") {
            self.itemConditionType = dict["ItemConditionType"] as! String
        }
        if dict.keys.contains("ItemTableMetaId") {
            self.itemTableMetaId = dict["ItemTableMetaId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionArray") {
            self.statisBehaviorConditionArray = dict["StatisBehaviorConditionArray"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionExpress") {
            self.statisBehaviorConditionExpress = dict["StatisBehaviorConditionExpress"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionType") {
            self.statisBehaviorConditionType = dict["StatisBehaviorConditionType"] as! String
        }
        if dict.keys.contains("TrafficControlTargets") {
            var tmp : [CreateTrafficControlTaskRequest.TrafficControlTargets] = []
            for v in dict["TrafficControlTargets"] as! [Any] {
                var model = CreateTrafficControlTaskRequest.TrafficControlTargets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trafficControlTargets = tmp
        }
        if dict.keys.contains("UserConditionArray") {
            self.userConditionArray = dict["UserConditionArray"] as! String
        }
        if dict.keys.contains("UserConditionExpress") {
            self.userConditionExpress = dict["UserConditionExpress"] as! String
        }
        if dict.keys.contains("UserConditionType") {
            self.userConditionType = dict["UserConditionType"] as! String
        }
        if dict.keys.contains("UserTableMetaId") {
            self.userTableMetaId = dict["UserTableMetaId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficControlTaskId") {
            self.trafficControlTaskId = dict["TrafficControlTaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MetricInfo") {
            self.metricInfo = dict["MetricInfo"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MetricInfo") {
            self.metricInfoShrink = dict["MetricInfo"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentValues") {
            self.currentValues = dict["CurrentValues"] as! [String: Any]
        }
        if dict.keys.contains("OutputValues") {
            self.outputValues = dict["OutputValues"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DebugResourceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteABMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteABMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLayerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteResourceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteResourceRuleItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSubCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTableMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateTrafficControlTaskCodeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GenerateTrafficControlTaskCodeResponseBody : Tea.TeaModel {
    public var code: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateTrafficControlTaskCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateTrafficControlTaskConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LeftMetricId") {
            self.leftMetricId = dict["LeftMetricId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultResourceId") {
            self.resultResourceId = dict["ResultResourceId"] as! String
        }
        if dict.keys.contains("ResultTableMetaId") {
            self.resultTableMetaId = dict["ResultTableMetaId"] as! String
        }
        if dict.keys.contains("RightMetricId") {
            self.rightMetricId = dict["RightMetricId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("StatisticsCycle") {
            self.statisticsCycle = dict["StatisticsCycle"] as! Int32
        }
        if dict.keys.contains("TableMetaId") {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetABMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricIds") {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("ABMetricNames") {
            self.ABMetricNames = dict["ABMetricNames"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetABMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricId") {
            self.ABMetricId = dict["ABMetricId"] as! String
        }
        if dict.keys.contains("ABMetricName") {
            self.ABMetricName = dict["ABMetricName"] as! String
        }
        if dict.keys.contains("BizDate") {
            self.bizDate = dict["BizDate"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("GmtRanTime") {
            self.gmtRanTime = dict["GmtRanTime"] as! String
        }
        if dict.keys.contains("JobMessage") {
            self.jobMessage = dict["JobMessage"] as! [String]
        }
        if dict.keys.contains("JobSource") {
            self.jobSource = dict["JobSource"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCalculationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasExperimentId") {
            self.aliasExperimentId = dict["AliasExperimentId"] as! String
        }
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("FlowPercent") {
            self.flowPercent = dict["FlowPercent"] as! Int32
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdId") {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("CrowdTargetType") {
            self.crowdTargetType = dict["CrowdTargetType"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributionTimeDuration") {
            self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
        }
        if dict.keys.contains("DistributionType") {
            self.distributionType = dict["DistributionType"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("HoldingBuckets") {
            self.holdingBuckets = dict["HoldingBuckets"] as! String
        }
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NeedAA") {
            self.needAA = dict["NeedAA"] as! Bool
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("RandomFlow") {
            self.randomFlow = dict["RandomFlow"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReservedBuckets") {
            self.reservedBuckets = dict["ReservedBuckets"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigName") {
            self.featureConsistencyCheckJobConfigName = dict["FeatureConsistencyCheckJobConfigName"] as! String
        }
        if dict.keys.contains("GmtEndTime") {
            self.gmtEndTime = dict["GmtEndTime"] as! String
        }
        if dict.keys.contains("GmtStartTime") {
            self.gmtStartTime = dict["GmtStartTime"] as! String
        }
        if dict.keys.contains("Logs") {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetFeatureConsistencyCheckJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetFeatureConsistencyCheckJobConfigResponseBody : Tea.TeaModel {
    public var compareFeature: Bool?

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

    public var requestId: String?

    public var sampleRate: String?

    public var sceneId: String?

    public var sceneName: String?

    public var serviceId: String?

    public var serviceName: String?

    public var status: String?

    public var useFeatureStore: Bool?

    public var userIdField: String?

    public var userTable: String?

    public var userTablePartitionField: String?

    public var userTablePartitionFieldFormat: String?

    public var workflowName: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompareFeature") {
            self.compareFeature = dict["CompareFeature"] as! Bool
        }
        if dict.keys.contains("EasServiceName") {
            self.easServiceName = dict["EasServiceName"] as! String
        }
        if dict.keys.contains("EasyRecPackagePath") {
            self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
        }
        if dict.keys.contains("EasyRecVersion") {
            self.easyRecVersion = dict["EasyRecVersion"] as! String
        }
        if dict.keys.contains("FeatureDisplayExclude") {
            self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceId") {
            self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceUri") {
            self.featureLandingResourceUri = dict["FeatureLandingResourceUri"] as! String
        }
        if dict.keys.contains("FeaturePriority") {
            self.featurePriority = dict["FeaturePriority"] as! String
        }
        if dict.keys.contains("FeatureStoreItemId") {
            self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
        }
        if dict.keys.contains("FeatureStoreModelId") {
            self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectId") {
            self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectName") {
            self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
        }
        if dict.keys.contains("FeatureStoreSeqFeatureView") {
            self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
        }
        if dict.keys.contains("FeatureStoreUserId") {
            self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
        }
        if dict.keys.contains("FgJarVersion") {
            self.fgJarVersion = dict["FgJarVersion"] as! String
        }
        if dict.keys.contains("FgJsonFileName") {
            self.fgJsonFileName = dict["FgJsonFileName"] as! String
        }
        if dict.keys.contains("GenerateZip") {
            self.generateZip = dict["GenerateZip"] as! Bool
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("ItemIdField") {
            self.itemIdField = dict["ItemIdField"] as! String
        }
        if dict.keys.contains("ItemTable") {
            self.itemTable = dict["ItemTable"] as! String
        }
        if dict.keys.contains("ItemTablePartitionField") {
            self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
        }
        if dict.keys.contains("ItemTablePartitionFieldFormat") {
            self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("LatestJobGmtSamplingEndTime") {
            self.latestJobGmtSamplingEndTime = dict["LatestJobGmtSamplingEndTime"] as! String
        }
        if dict.keys.contains("LatestJobGmtSamplingStartTime") {
            self.latestJobGmtSamplingStartTime = dict["LatestJobGmtSamplingStartTime"] as! String
        }
        if dict.keys.contains("LatestJobId") {
            self.latestJobId = dict["LatestJobId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssResourceId") {
            self.ossResourceId = dict["OssResourceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UseFeatureStore") {
            self.useFeatureStore = dict["UseFeatureStore"] as! Bool
        }
        if dict.keys.contains("UserIdField") {
            self.userIdField = dict["UserIdField"] as! String
        }
        if dict.keys.contains("UserTable") {
            self.userTable = dict["UserTable"] as! String
        }
        if dict.keys.contains("UserTablePartitionField") {
            self.userTablePartitionField = dict["UserTablePartitionField"] as! String
        }
        if dict.keys.contains("UserTablePartitionFieldFormat") {
            self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("WorkflowName") {
            self.workflowName = dict["WorkflowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComponentCode") {
                    self.componentCode = dict["ComponentCode"] as! String
                }
                if dict.keys.contains("Meta") {
                    self.meta = dict["Meta"] as! [String: Any]
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComponentCode") {
                    self.componentCode = dict["ComponentCode"] as! String
                }
                if dict.keys.contains("Meta") {
                    self.meta = dict["Meta"] as! [String: Any]
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComponentCode") {
                    self.componentCode = dict["ComponentCode"] as! String
                }
                if dict.keys.contains("Meta") {
                    self.meta = dict["Meta"] as! [String: Any]
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataManagements") {
                var tmp : [GetInstanceResponseBody.Config.DataManagements] = []
                for v in dict["DataManagements"] as! [Any] {
                    var model = GetInstanceResponseBody.Config.DataManagements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataManagements = tmp
            }
            if dict.keys.contains("Engines") {
                var tmp : [GetInstanceResponseBody.Config.Engines] = []
                for v in dict["Engines"] as! [Any] {
                    var model = GetInstanceResponseBody.Config.Engines()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.engines = tmp
            }
            if dict.keys.contains("Monitors") {
                var tmp : [GetInstanceResponseBody.Config.Monitors] = []
                for v in dict["Monitors"] as! [Any] {
                    var model = GetInstanceResponseBody.Config.Monitors()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.monitors = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Config") {
            var model = GetInstanceResponseBody.Config()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsDimensionField") {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("IsPartitionField") {
                self.isPartitionField = dict["IsPartitionField"] as! Bool
            }
            if dict.keys.contains("Meaning") {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") {
            var tmp : [GetInstanceResourceTableResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = GetInstanceResourceTableResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInstanceResourceTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketCount") {
            self.bucketCount = dict["BucketCount"] as! Int32
        }
        if dict.keys.contains("BucketType") {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("CrowdId") {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResidualFlow") {
            self.residualFlow = dict["ResidualFlow"] as! Int64
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLayerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MaxValue") {
                self.maxValue = dict["MaxValue"] as! String
            }
            if dict.keys.contains("MinValue") {
                self.minValue = dict["MinValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MetricOperationType") {
            self.metricOperationType = dict["MetricOperationType"] as! String
        }
        if dict.keys.contains("MetricPullInfo") {
            self.metricPullInfo = dict["MetricPullInfo"] as! String
        }
        if dict.keys.contains("MetricPullPeriod") {
            self.metricPullPeriod = dict["MetricPullPeriod"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceRuleId") {
            self.resourceRuleId = dict["ResourceRuleId"] as! String
        }
        if dict.keys.contains("RuleComputingDefinition") {
            self.ruleComputingDefinition = dict["RuleComputingDefinition"] as! String
        }
        if dict.keys.contains("RuleItems") {
            var tmp : [GetResourceRuleResponseBody.RuleItems] = []
            for v in dict["RuleItems"] as! [Any] {
                var model = GetResourceRuleResponseBody.RuleItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowCode") {
                self.flowCode = dict["FlowCode"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flows") {
            var tmp : [GetSceneResponseBody.Flows] = []
            for v in dict["Flows"] as! [Any] {
                var model = GetSceneResponseBody.Flows()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flows = tmp
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSubCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsDimensionField") {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("Meaning") {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CanDelete") {
            self.canDelete = dict["CanDelete"] as! Bool
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [GetTableMetaResponseBody.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = GetTableMetaResponseBody.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtImportedTime") {
            self.gmtImportedTime = dict["GmtImportedTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TableMetaId") {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTableMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetTrafficControlTargetResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SetValues") {
                self.setValues = dict["SetValues"] as! [Int64]
            }
            if dict.keys.contains("TimePoints") {
                self.timePoints = dict["TimePoints"] as! [Int64]
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
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Event") {
            self.event = dict["Event"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("ItemConditionArray") {
            self.itemConditionArray = dict["ItemConditionArray"] as! String
        }
        if dict.keys.contains("ItemConditionExpress") {
            self.itemConditionExpress = dict["ItemConditionExpress"] as! String
        }
        if dict.keys.contains("ItemConditionType") {
            self.itemConditionType = dict["ItemConditionType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewProductRegulation") {
            self.newProductRegulation = dict["NewProductRegulation"] as! Bool
        }
        if dict.keys.contains("RecallName") {
            self.recallName = dict["RecallName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SplitParts") {
            var model = GetTrafficControlTargetResponseBody.SplitParts()
            model.fromMap(dict["SplitParts"] as! [String: Any])
            self.splitParts = model
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StatisPeriod") {
            self.statisPeriod = dict["StatisPeriod"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ToleranceValue") {
            self.toleranceValue = dict["ToleranceValue"] as! Int64
        }
        if dict.keys.contains("TrafficControlTargetId") {
            self.trafficControlTargetId = dict["TrafficControlTargetId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlTargetFilter") {
            self.controlTargetFilter = dict["ControlTargetFilter"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class GetTrafficControlTaskResponseBody : Tea.TeaModel {
    public class TrafficControlTargets : Tea.TeaModel {
        public class SplitParts : Tea.TeaModel {
            public var setPoints: [Int32]?

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
                if self.timePoints != nil {
                    map["TimePoints"] = self.timePoints!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SetPoints") {
                    self.setPoints = dict["SetPoints"] as! [Int32]
                }
                if dict.keys.contains("TimePoints") {
                    self.timePoints = dict["TimePoints"] as! [Int32]
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ItemConditionArray") {
                self.itemConditionArray = dict["ItemConditionArray"] as! String
            }
            if dict.keys.contains("ItemConditionExpress") {
                self.itemConditionExpress = dict["ItemConditionExpress"] as! String
            }
            if dict.keys.contains("ItemConditionType") {
                self.itemConditionType = dict["ItemConditionType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewProductRegulation") {
                self.newProductRegulation = dict["NewProductRegulation"] as! Bool
            }
            if dict.keys.contains("RecallName") {
                self.recallName = dict["RecallName"] as! String
            }
            if dict.keys.contains("SplitParts") {
                var model = GetTrafficControlTaskResponseBody.TrafficControlTargets.SplitParts()
                model.fromMap(dict["SplitParts"] as! [String: Any])
                self.splitParts = model
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StatisPeriod") {
                self.statisPeriod = dict["StatisPeriod"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ToleranceValue") {
                self.toleranceValue = dict["ToleranceValue"] as! Int64
            }
            if dict.keys.contains("TrafficControlTargetId") {
                self.trafficControlTargetId = dict["TrafficControlTargetId"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
            }
        }
    }
    public var behaviorTableMetaId: String?

    public var controlGranularity: String?

    public var controlLogic: String?

    public var controlType: String?

    public var description_: String?

    public var endTime: String?

    public var everPublished: Bool?

    public var executionTime: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var itemTableMetaId: String?

    public var name: String?

    public var prepubStatus: String?

    public var productStatus: String?

    public var requestId: String?

    public var sceneId: String?

    public var sceneName: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.everPublished != nil {
            map["EverPublished"] = self.everPublished!
        }
        if self.executionTime != nil {
            map["ExecutionTime"] = self.executionTime!
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
        if self.prepubStatus != nil {
            map["PrepubStatus"] = self.prepubStatus!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BehaviorTableMetaId") {
            self.behaviorTableMetaId = dict["BehaviorTableMetaId"] as! String
        }
        if dict.keys.contains("ControlGranularity") {
            self.controlGranularity = dict["ControlGranularity"] as! String
        }
        if dict.keys.contains("ControlLogic") {
            self.controlLogic = dict["ControlLogic"] as! String
        }
        if dict.keys.contains("ControlType") {
            self.controlType = dict["ControlType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EverPublished") {
            self.everPublished = dict["EverPublished"] as! Bool
        }
        if dict.keys.contains("ExecutionTime") {
            self.executionTime = dict["ExecutionTime"] as! String
        }
        if dict.keys.contains("GmtCreateTime") {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("ItemConditionArray") {
            self.itemConditionArray = dict["ItemConditionArray"] as! String
        }
        if dict.keys.contains("ItemConditionExpress") {
            self.itemConditionExpress = dict["ItemConditionExpress"] as! String
        }
        if dict.keys.contains("ItemConditionType") {
            self.itemConditionType = dict["ItemConditionType"] as! String
        }
        if dict.keys.contains("ItemTableMetaId") {
            self.itemTableMetaId = dict["ItemTableMetaId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PrepubStatus") {
            self.prepubStatus = dict["PrepubStatus"] as! String
        }
        if dict.keys.contains("ProductStatus") {
            self.productStatus = dict["ProductStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionArray") {
            self.statisBehaviorConditionArray = dict["StatisBehaviorConditionArray"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionExpress") {
            self.statisBehaviorConditionExpress = dict["StatisBehaviorConditionExpress"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionType") {
            self.statisBehaviorConditionType = dict["StatisBehaviorConditionType"] as! String
        }
        if dict.keys.contains("TrafficControlTargets") {
            var tmp : [GetTrafficControlTaskResponseBody.TrafficControlTargets] = []
            for v in dict["TrafficControlTargets"] as! [Any] {
                var model = GetTrafficControlTaskResponseBody.TrafficControlTargets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trafficControlTargets = tmp
        }
        if dict.keys.contains("TrafficControlTaskId") {
            self.trafficControlTaskId = dict["TrafficControlTaskId"] as! String
        }
        if dict.keys.contains("UserConditionArray") {
            self.userConditionArray = dict["UserConditionArray"] as! String
        }
        if dict.keys.contains("UserConditionExpress") {
            self.userConditionExpress = dict["UserConditionExpress"] as! String
        }
        if dict.keys.contains("UserConditionType") {
            self.userConditionType = dict["UserConditionType"] as! String
        }
        if dict.keys.contains("UserTableMetaId") {
            self.userTableMetaId = dict["UserTableMetaId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetTrafficControlTaskTrafficResponseBody : Tea.TeaModel {
    public class TrafficControlTaskTrafficInfo : Tea.TeaModel {
        public class TargetTraffics : Tea.TeaModel {
            public var data: [[String: Any]]?

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
                    map["Data"] = self.data!
                }
                if self.trafficContorlTargetId != nil {
                    map["TrafficContorlTargetId"] = self.trafficContorlTargetId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! [[String: Any]]
                }
                if dict.keys.contains("TrafficContorlTargetId") {
                    self.trafficContorlTargetId = dict["TrafficContorlTargetId"] as! String
                }
            }
        }
        public var targetTraffics: [GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo.TargetTraffics]?

        public var taskTraffics: [String: Any]?

        public override init() {
            super.init()
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
                map["TaskTraffics"] = self.taskTraffics!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TargetTraffics") {
                var tmp : [GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo.TargetTraffics] = []
                for v in dict["TargetTraffics"] as! [Any] {
                    var model = GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo.TargetTraffics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.targetTraffics = tmp
            }
            if dict.keys.contains("TaskTraffics") {
                self.taskTraffics = dict["TaskTraffics"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrafficControlTaskTrafficInfo") {
            var model = GetTrafficControlTaskTrafficResponseBody.TrafficControlTaskTrafficInfo()
            model.fromMap(dict["TrafficControlTaskTrafficInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTrafficControlTaskTrafficResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ABMetricGroupId") {
                self.ABMetricGroupId = dict["ABMetricGroupId"] as! String
            }
            if dict.keys.contains("ABMetricIds") {
                self.ABMetricIds = dict["ABMetricIds"] as! String
            }
            if dict.keys.contains("ABMetricNames") {
                self.ABMetricNames = dict["ABMetricNames"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("Realtime") {
                self.realtime = dict["Realtime"] as! Bool
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricGroups") {
            var tmp : [ListABMetricGroupsResponseBody.ABMetricGroups] = []
            for v in dict["ABMetricGroups"] as! [Any] {
                var model = ListABMetricGroupsResponseBody.ABMetricGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ABMetricGroups = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListABMetricGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("TableMetaId") {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ABMetricId") {
                self.ABMetricId = dict["ABMetricId"] as! String
            }
            if dict.keys.contains("Definition") {
                self.definition = dict["Definition"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LeftMetricId") {
                self.leftMetricId = dict["LeftMetricId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Realtime") {
                self.realtime = dict["Realtime"] as! String
            }
            if dict.keys.contains("ResultResourceId") {
                self.resultResourceId = dict["ResultResourceId"] as! String
            }
            if dict.keys.contains("ResultTableMetaId") {
                self.resultTableMetaId = dict["ResultTableMetaId"] as! String
            }
            if dict.keys.contains("RightMetricId") {
                self.rightMetricId = dict["RightMetricId"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("StatisticsCycle") {
                self.statisticsCycle = dict["StatisticsCycle"] as! Int32
            }
            if dict.keys.contains("TableMetaId") {
                self.tableMetaId = dict["TableMetaId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetrics") {
            var tmp : [ListABMetricsResponseBody.ABMetrics] = []
            for v in dict["ABMetrics"] as! [Any] {
                var model = ListABMetricsResponseBody.ABMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ABMetrics = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListABMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ABMetricName") {
                self.ABMetricName = dict["ABMetricName"] as! String
            }
            if dict.keys.contains("BizDate") {
                self.bizDate = dict["BizDate"] as! String
            }
            if dict.keys.contains("CalculationJobId") {
                self.calculationJobId = dict["CalculationJobId"] as! String
            }
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("GmtRanTime") {
                self.gmtRanTime = dict["GmtRanTime"] as! String
            }
            if dict.keys.contains("JobMessage") {
                self.jobMessage = dict["JobMessage"] as! [String]
            }
            if dict.keys.contains("JobSource") {
                self.jobSource = dict["JobSource"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CalculationJobs") {
            var tmp : [ListCalculationJobsResponseBody.CalculationJobs] = []
            for v in dict["CalculationJobs"] as! [Any] {
                var model = ListCalculationJobsResponseBody.CalculationJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.calculationJobs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCalculationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCrowdUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CrowdId") {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Users") {
                self.users = dict["Users"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Crowds") {
            var tmp : [ListCrowdsResponseBody.Crowds] = []
            for v in dict["Crowds"] as! [Any] {
                var model = ListCrowdsResponseBody.Crowds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.crowds = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCrowdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TimeRangeEnd") {
            self.timeRangeEnd = dict["TimeRangeEnd"] as! String
        }
        if dict.keys.contains("TimeRangeStart") {
            self.timeRangeStart = dict["TimeRangeStart"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("CrowdId") {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("CrowdTargetType") {
                self.crowdTargetType = dict["CrowdTargetType"] as! String
            }
            if dict.keys.contains("DebugCrowdId") {
                self.debugCrowdId = dict["DebugCrowdId"] as! String
            }
            if dict.keys.contains("DebugUsers") {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DistributionTimeDuration") {
                self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
            }
            if dict.keys.contains("DistributionType") {
                self.distributionType = dict["DistributionType"] as! String
            }
            if dict.keys.contains("ExperimentGroupId") {
                self.experimentGroupId = dict["ExperimentGroupId"] as! String
            }
            if dict.keys.contains("Filter") {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("HoldingBuckets") {
                self.holdingBuckets = dict["HoldingBuckets"] as! String
            }
            if dict.keys.contains("LaboratoryId") {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("LayerId") {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedAA") {
                self.needAA = dict["NeedAA"] as! Bool
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("RandomFlow") {
                self.randomFlow = dict["RandomFlow"] as! Int64
            }
            if dict.keys.contains("ReservedBuckets") {
                self.reservedBuckets = dict["ReservedBuckets"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentGroups") {
            var tmp : [ListExperimentGroupsResponseBody.ExperimentGroups] = []
            for v in dict["ExperimentGroups"] as! [Any] {
                var model = ListExperimentGroupsResponseBody.ExperimentGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.experimentGroups = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExperimentGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliasExperimentId") {
                self.aliasExperimentId = dict["AliasExperimentId"] as! String
            }
            if dict.keys.contains("Buckets") {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DebugCrowdId") {
                self.debugCrowdId = dict["DebugCrowdId"] as! String
            }
            if dict.keys.contains("DebugUsers") {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExperimentGroupId") {
                self.experimentGroupId = dict["ExperimentGroupId"] as! String
            }
            if dict.keys.contains("ExperimentId") {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("FlowPercent") {
                self.flowPercent = dict["FlowPercent"] as! Int32
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("LaboratoryId") {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("LayerId") {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Experiments") {
            var tmp : [ListExperimentsResponseBody.Experiments] = []
            for v in dict["Experiments"] as! [Any] {
                var model = ListExperimentsResponseBody.Experiments()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.experiments = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExperimentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListFeatureConsistencyCheckJobConfigsResponseBody : Tea.TeaModel {
    public class FeatureConsistencyCheckConfigs : Tea.TeaModel {
        public var compareFeature: Bool?

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

        public var sampleRate: String?

        public var sceneId: String?

        public var sceneName: String?

        public var serviceId: String?

        public var serviceName: String?

        public var status: String?

        public var useFeatureStore: String?

        public var userIdField: String?

        public var userTable: String?

        public var userTablePartitionField: String?

        public var userTablePartitionFieldFormat: String?

        public var workflowName: String?

        public override init() {
            super.init()
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
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
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
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if self.workflowName != nil {
                map["WorkflowName"] = self.workflowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompareFeature") {
                self.compareFeature = dict["CompareFeature"] as! Bool
            }
            if dict.keys.contains("EasServiceName") {
                self.easServiceName = dict["EasServiceName"] as! String
            }
            if dict.keys.contains("EasyRecPackagePath") {
                self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
            }
            if dict.keys.contains("EasyRecVersion") {
                self.easyRecVersion = dict["EasyRecVersion"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
                self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
            }
            if dict.keys.contains("FeatureDisplayExclude") {
                self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
            }
            if dict.keys.contains("FeatureLandingResourceId") {
                self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
            }
            if dict.keys.contains("FeatureLandingResourceUri") {
                self.featureLandingResourceUri = dict["FeatureLandingResourceUri"] as! String
            }
            if dict.keys.contains("FeaturePriority") {
                self.featurePriority = dict["FeaturePriority"] as! String
            }
            if dict.keys.contains("FeatureStoreItemId") {
                self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
            }
            if dict.keys.contains("FeatureStoreModelId") {
                self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
            }
            if dict.keys.contains("FeatureStoreProjectId") {
                self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
            }
            if dict.keys.contains("FeatureStoreProjectName") {
                self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
            }
            if dict.keys.contains("FeatureStoreSeqFeatureView") {
                self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
            }
            if dict.keys.contains("FeatureStoreUserId") {
                self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
            }
            if dict.keys.contains("FgJarVersion") {
                self.fgJarVersion = dict["FgJarVersion"] as! String
            }
            if dict.keys.contains("FgJsonFileName") {
                self.fgJsonFileName = dict["FgJsonFileName"] as! String
            }
            if dict.keys.contains("GenerateZip") {
                self.generateZip = dict["GenerateZip"] as! Bool
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ItemIdField") {
                self.itemIdField = dict["ItemIdField"] as! String
            }
            if dict.keys.contains("ItemTable") {
                self.itemTable = dict["ItemTable"] as! String
            }
            if dict.keys.contains("ItemTablePartitionField") {
                self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
            }
            if dict.keys.contains("ItemTablePartitionFieldFormat") {
                self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
            }
            if dict.keys.contains("LatestJobGmtSamplingEndTime") {
                self.latestJobGmtSamplingEndTime = dict["LatestJobGmtSamplingEndTime"] as! String
            }
            if dict.keys.contains("LatestJobGmtSamplingStartTime") {
                self.latestJobGmtSamplingStartTime = dict["LatestJobGmtSamplingStartTime"] as! String
            }
            if dict.keys.contains("LatestJobId") {
                self.latestJobId = dict["LatestJobId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssBucket") {
                self.ossBucket = dict["OssBucket"] as! String
            }
            if dict.keys.contains("OssResourceId") {
                self.ossResourceId = dict["OssResourceId"] as! String
            }
            if dict.keys.contains("SampleRate") {
                self.sampleRate = dict["SampleRate"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UseFeatureStore") {
                self.useFeatureStore = dict["UseFeatureStore"] as! String
            }
            if dict.keys.contains("UserIdField") {
                self.userIdField = dict["UserIdField"] as! String
            }
            if dict.keys.contains("UserTable") {
                self.userTable = dict["UserTable"] as! String
            }
            if dict.keys.contains("UserTablePartitionField") {
                self.userTablePartitionField = dict["UserTablePartitionField"] as! String
            }
            if dict.keys.contains("UserTablePartitionFieldFormat") {
                self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
            }
            if dict.keys.contains("WorkflowName") {
                self.workflowName = dict["WorkflowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureConsistencyCheckConfigs") {
            var tmp : [ListFeatureConsistencyCheckJobConfigsResponseBody.FeatureConsistencyCheckConfigs] = []
            for v in dict["FeatureConsistencyCheckConfigs"] as! [Any] {
                var model = ListFeatureConsistencyCheckJobConfigsResponseBody.FeatureConsistencyCheckConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.featureConsistencyCheckConfigs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFeatureConsistencyCheckJobConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogItemId") {
            self.logItemId = dict["LogItemId"] as! String
        }
        if dict.keys.contains("LogRequestId") {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogUserId") {
            self.logUserId = dict["LogUserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FeatureName") {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("LogItemId") {
                self.logItemId = dict["LogItemId"] as! String
            }
            if dict.keys.contains("LogRequestId") {
                self.logRequestId = dict["LogRequestId"] as! String
            }
            if dict.keys.contains("LogUserId") {
                self.logUserId = dict["LogUserId"] as! String
            }
            if dict.keys.contains("OfflineValue") {
                self.offlineValue = dict["OfflineValue"] as! String
            }
            if dict.keys.contains("OnlineValue") {
                self.onlineValue = dict["OnlineValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPath") {
            self.dataPath = dict["DataPath"] as! String
        }
        if dict.keys.contains("OssPath") {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("ReportsOfFeatureDiff") {
            var tmp : [ListFeatureConsistencyCheckJobFeatureReportsResponseBody.ReportsOfFeatureDiff] = []
            for v in dict["ReportsOfFeatureDiff"] as! [Any] {
                var model = ListFeatureConsistencyCheckJobFeatureReportsResponseBody.ReportsOfFeatureDiff()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.reportsOfFeatureDiff = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFeatureConsistencyCheckJobFeatureReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeRequestIds") {
            self.excludeRequestIds = dict["ExcludeRequestIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeRequestIds") {
            self.excludeRequestIdsShrink = dict["ExcludeRequestIds"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogItemId") {
                self.logItemId = dict["LogItemId"] as! String
            }
            if dict.keys.contains("LogRequestId") {
                self.logRequestId = dict["LogRequestId"] as! String
            }
            if dict.keys.contains("LogUserId") {
                self.logUserId = dict["LogUserId"] as! String
            }
            if dict.keys.contains("ScoreDiff") {
                self.scoreDiff = dict["ScoreDiff"] as! String
            }
            if dict.keys.contains("ScoreDiffDetail") {
                self.scoreDiffDetail = dict["ScoreDiffDetail"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPath") {
            self.dataPath = dict["DataPath"] as! String
        }
        if dict.keys.contains("OssPath") {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("ReportsOfScoreDiff") {
            var tmp : [ListFeatureConsistencyCheckJobScoreReportsResponseBody.ReportsOfScoreDiff] = []
            for v in dict["ReportsOfScoreDiff"] as! [Any] {
                var model = ListFeatureConsistencyCheckJobScoreReportsResponseBody.ReportsOfScoreDiff()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.reportsOfScoreDiff = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFeatureConsistencyCheckJobScoreReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
                self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobConfigName") {
                self.featureConsistencyCheckJobConfigName = dict["FeatureConsistencyCheckJobConfigName"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobId") {
                self.featureConsistencyCheckJobId = dict["FeatureConsistencyCheckJobId"] as! String
            }
            if dict.keys.contains("GmtEndTime") {
                self.gmtEndTime = dict["GmtEndTime"] as! String
            }
            if dict.keys.contains("GmtStartTime") {
                self.gmtStartTime = dict["GmtStartTime"] as! String
            }
            if dict.keys.contains("Logs") {
                self.logs = dict["Logs"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureConsistencyCheckJobs") {
            var tmp : [ListFeatureConsistencyCheckJobsResponseBody.FeatureConsistencyCheckJobs] = []
            for v in dict["FeatureConsistencyCheckJobs"] as! [Any] {
                var model = ListFeatureConsistencyCheckJobsResponseBody.FeatureConsistencyCheckJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.featureConsistencyCheckJobs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFeatureConsistencyCheckJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("GmtCreateAt") {
                self.gmtCreateAt = dict["GmtCreateAt"] as! String
            }
            if dict.keys.contains("GmtModifiedAt") {
                self.gmtModifiedAt = dict["GmtModifiedAt"] as! String
            }
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            var tmp : [ListInstanceResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListInstanceResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstanceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComponentCode") {
                        self.componentCode = dict["ComponentCode"] as! String
                    }
                    if dict.keys.contains("Meta") {
                        self.meta = dict["Meta"] as! [String: Any]
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComponentCode") {
                        self.componentCode = dict["ComponentCode"] as! String
                    }
                    if dict.keys.contains("Meta") {
                        self.meta = dict["Meta"] as! [String: Any]
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ComponentCode") {
                        self.componentCode = dict["ComponentCode"] as! String
                    }
                    if dict.keys.contains("Meta") {
                        self.meta = dict["Meta"] as! [String: Any]
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataManagements") {
                    var tmp : [ListInstancesResponseBody.Instances.Config.DataManagements] = []
                    for v in dict["DataManagements"] as! [Any] {
                        var model = ListInstancesResponseBody.Instances.Config.DataManagements()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.dataManagements = tmp
                }
                if dict.keys.contains("Engines") {
                    var tmp : [ListInstancesResponseBody.Instances.Config.Engines] = []
                    for v in dict["Engines"] as! [Any] {
                        var model = ListInstancesResponseBody.Instances.Config.Engines()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.engines = tmp
                }
                if dict.keys.contains("Monitors") {
                    var tmp : [ListInstancesResponseBody.Instances.Config.Monitors] = []
                    for v in dict["Monitors"] as! [Any] {
                        var model = ListInstancesResponseBody.Instances.Config.Monitors()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.monitors = tmp
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
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("Config") {
                var model = ListInstancesResponseBody.Instances.Config()
                model.fromMap(dict["Config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [ListInstancesResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = ListInstancesResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketCount") {
                self.bucketCount = dict["BucketCount"] as! Int32
            }
            if dict.keys.contains("BucketType") {
                self.bucketType = dict["BucketType"] as! String
            }
            if dict.keys.contains("Buckets") {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("CrowdId") {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("DebugCrowdId") {
                self.debugCrowdId = dict["DebugCrowdId"] as! String
            }
            if dict.keys.contains("DebugUsers") {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Environment") {
                self.environment = dict["Environment"] as! String
            }
            if dict.keys.contains("Filter") {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("LaboratoryId") {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Laboratories") {
            var tmp : [ListLaboratoriesResponseBody.Laboratories] = []
            for v in dict["Laboratories"] as! [Any] {
                var model = ListLaboratoriesResponseBody.Laboratories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.laboratories = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLaboratoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LaboratoryId") {
            self.laboratoryId = dict["LaboratoryId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("LaboratoryId") {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("LayerId") {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResidualFlow") {
                self.residualFlow = dict["ResidualFlow"] as! Int64
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Layers") {
            var tmp : [ListLayersResponseBody.Layers] = []
            for v in dict["Layers"] as! [Any] {
                var model = ListLayersResponseBody.Layers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.layers = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLayersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListParamsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Environment") {
                self.environment = dict["Environment"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParamId") {
                self.paramId = dict["ParamId"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Params") {
            var tmp : [ListParamsResponseBody.Params] = []
            for v in dict["Params"] as! [Any] {
                var model = ListParamsResponseBody.Params()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.params = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceRuleId") {
            self.resourceRuleId = dict["ResourceRuleId"] as! String
        }
        if dict.keys.contains("ResourceRuleName") {
            self.resourceRuleName = dict["ResourceRuleName"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("MaxValue") {
                    self.maxValue = dict["MaxValue"] as! String
                }
                if dict.keys.contains("MinValue") {
                    self.minValue = dict["MinValue"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MetricOperationType") {
                self.metricOperationType = dict["MetricOperationType"] as! String
            }
            if dict.keys.contains("MetricPullInfo") {
                self.metricPullInfo = dict["MetricPullInfo"] as! String
            }
            if dict.keys.contains("MetricPullPeriod") {
                self.metricPullPeriod = dict["MetricPullPeriod"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceRuleId") {
                self.resourceRuleId = dict["ResourceRuleId"] as! String
            }
            if dict.keys.contains("RuleComputingDefinition") {
                self.ruleComputingDefinition = dict["RuleComputingDefinition"] as! String
            }
            if dict.keys.contains("RuleItems") {
                var tmp : [ListResourceRulesResponseBody.ResourceRules.RuleItems] = []
                for v in dict["RuleItems"] as! [Any] {
                    var model = ListResourceRulesResponseBody.ResourceRules.RuleItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceRules") {
            var tmp : [ListResourceRulesResponseBody.ResourceRules] = []
            for v in dict["ResourceRules"] as! [Any] {
                var model = ListResourceRulesResponseBody.ResourceRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceRules = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FlowCode") {
                    self.flowCode = dict["FlowCode"] as! String
                }
                if dict.keys.contains("FlowName") {
                    self.flowName = dict["FlowName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Flows") {
                var tmp : [ListScenesResponseBody.Scenes.Flows] = []
                for v in dict["Flows"] as! [Any] {
                    var model = ListScenesResponseBody.Scenes.Flows()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.flows = tmp
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scenes") {
            var tmp : [ListScenesResponseBody.Scenes] = []
            for v in dict["Scenes"] as! [Any] {
                var model = ListScenesResponseBody.Scenes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scenes = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListScenesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SubCrowdId") {
                self.subCrowdId = dict["SubCrowdId"] as! String
            }
            if dict.keys.contains("Users") {
                self.users = dict["Users"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCrowds") {
            var tmp : [ListSubCrowdsResponseBody.SubCrowds] = []
            for v in dict["SubCrowds"] as! [Any] {
                var model = ListSubCrowdsResponseBody.SubCrowds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subCrowds = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSubCrowdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsDimensionField") {
                    self.isDimensionField = dict["IsDimensionField"] as! Bool
                }
                if dict.keys.contains("Meaning") {
                    self.meaning = dict["Meaning"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanDelete") {
                self.canDelete = dict["CanDelete"] as! Bool
            }
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fields") {
                var tmp : [ListTableMetasResponseBody.TableMetas.Fields] = []
                for v in dict["Fields"] as! [Any] {
                    var model = ListTableMetasResponseBody.TableMetas.Fields()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fields = tmp
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtImportedTime") {
                self.gmtImportedTime = dict["GmtImportedTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Module") {
                self.module = dict["Module"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("TableMetaId") {
                self.tableMetaId = dict["TableMetaId"] as! String
            }
            if dict.keys.contains("TableName") {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableMetas") {
            var tmp : [ListTableMetasResponseBody.TableMetas] = []
            for v in dict["TableMetas"] as! [Any] {
                var model = ListTableMetasResponseBody.TableMetas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tableMetas = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTableMetasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemId") {
            self.itemId = dict["ItemId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! String
        }
    }
}

public class ListTrafficControlTargetTrafficHistoryResponseBody : Tea.TeaModel {
    public class TrafficControlTaskTrafficHistories : Tea.TeaModel {
        public var experimentId: String?

        public var itemId: String?

        public var recordTime: String?

        public var trafficControlTargetAimTraffic: String?

        public var trafficControlTargetTraffic: String?

        public var trafficControlTaskTraffic: String?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExperimentId") {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("ItemId") {
                self.itemId = dict["ItemId"] as! String
            }
            if dict.keys.contains("RecordTime") {
                self.recordTime = dict["RecordTime"] as! String
            }
            if dict.keys.contains("TrafficControlTargetAimTraffic") {
                self.trafficControlTargetAimTraffic = dict["TrafficControlTargetAimTraffic"] as! String
            }
            if dict.keys.contains("TrafficControlTargetTraffic") {
                self.trafficControlTargetTraffic = dict["TrafficControlTargetTraffic"] as! String
            }
            if dict.keys.contains("TrafficControlTaskTraffic") {
                self.trafficControlTaskTraffic = dict["TrafficControlTaskTraffic"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("TrafficControlTaskTrafficHistories") {
            var tmp : [ListTrafficControlTargetTrafficHistoryResponseBody.TrafficControlTaskTrafficHistories] = []
            for v in dict["TrafficControlTaskTrafficHistories"] as! [Any] {
                var model = ListTrafficControlTargetTrafficHistoryResponseBody.TrafficControlTaskTrafficHistories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTrafficControlTargetTrafficHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ControlTargetFilter") {
            self.controlTargetFilter = dict["ControlTargetFilter"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TrafficControlTaskId") {
            self.trafficControlTaskId = dict["TrafficControlTaskId"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SetValues") {
                        self.setValues = dict["SetValues"] as! [Int64]
                    }
                    if dict.keys.contains("TimePoints") {
                        self.timePoints = dict["TimePoints"] as! [Int64]
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
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Event") {
                    self.event = dict["Event"] as! String
                }
                if dict.keys.contains("GmtCreateTime") {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtModifiedTime") {
                    self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
                }
                if dict.keys.contains("ItemConditionArray") {
                    self.itemConditionArray = dict["ItemConditionArray"] as! String
                }
                if dict.keys.contains("ItemConditionExpress") {
                    self.itemConditionExpress = dict["ItemConditionExpress"] as! String
                }
                if dict.keys.contains("ItemConditionType") {
                    self.itemConditionType = dict["ItemConditionType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewProductRegulation") {
                    self.newProductRegulation = dict["NewProductRegulation"] as! Bool
                }
                if dict.keys.contains("RecallName") {
                    self.recallName = dict["RecallName"] as! String
                }
                if dict.keys.contains("SplitParts") {
                    var model = ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets.SplitParts()
                    model.fromMap(dict["SplitParts"] as! [String: Any])
                    self.splitParts = model
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("StatisPeriod") {
                    self.statisPeriod = dict["StatisPeriod"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ToleranceValue") {
                    self.toleranceValue = dict["ToleranceValue"] as! Int64
                }
                if dict.keys.contains("TrafficControlTargetId") {
                    self.trafficControlTargetId = dict["TrafficControlTargetId"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public var behaviorTableMetaId: String?

        public var controlGranularity: String?

        public var controlLogic: String?

        public var controlType: String?

        public var description_: String?

        public var endTime: String?

        public var everPublished: Bool?

        public var executionTime: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var itemConditionArray: String?

        public var itemConditionExpress: String?

        public var itemConditionType: String?

        public var itemTableMetaId: String?

        public var name: String?

        public var prepubStatus: String?

        public var productStatus: String?

        public var sceneId: String?

        public var sceneName: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.everPublished != nil {
                map["EverPublished"] = self.everPublished!
            }
            if self.executionTime != nil {
                map["ExecutionTime"] = self.executionTime!
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
            if self.prepubStatus != nil {
                map["PrepubStatus"] = self.prepubStatus!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BehaviorTableMetaId") {
                self.behaviorTableMetaId = dict["BehaviorTableMetaId"] as! String
            }
            if dict.keys.contains("ControlGranularity") {
                self.controlGranularity = dict["ControlGranularity"] as! String
            }
            if dict.keys.contains("ControlLogic") {
                self.controlLogic = dict["ControlLogic"] as! String
            }
            if dict.keys.contains("ControlType") {
                self.controlType = dict["ControlType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EverPublished") {
                self.everPublished = dict["EverPublished"] as! Bool
            }
            if dict.keys.contains("ExecutionTime") {
                self.executionTime = dict["ExecutionTime"] as! String
            }
            if dict.keys.contains("GmtCreateTime") {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ItemConditionArray") {
                self.itemConditionArray = dict["ItemConditionArray"] as! String
            }
            if dict.keys.contains("ItemConditionExpress") {
                self.itemConditionExpress = dict["ItemConditionExpress"] as! String
            }
            if dict.keys.contains("ItemConditionType") {
                self.itemConditionType = dict["ItemConditionType"] as! String
            }
            if dict.keys.contains("ItemTableMetaId") {
                self.itemTableMetaId = dict["ItemTableMetaId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PrepubStatus") {
                self.prepubStatus = dict["PrepubStatus"] as! String
            }
            if dict.keys.contains("ProductStatus") {
                self.productStatus = dict["ProductStatus"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StatisBahaviorConditionExpress") {
                self.statisBahaviorConditionExpress = dict["StatisBahaviorConditionExpress"] as! String
            }
            if dict.keys.contains("StatisBehaviorConditionArray") {
                self.statisBehaviorConditionArray = dict["StatisBehaviorConditionArray"] as! String
            }
            if dict.keys.contains("StatisBehaviorConditionType") {
                self.statisBehaviorConditionType = dict["StatisBehaviorConditionType"] as! String
            }
            if dict.keys.contains("TrafficControlTargets") {
                var tmp : [ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets] = []
                for v in dict["TrafficControlTargets"] as! [Any] {
                    var model = ListTrafficControlTasksResponseBody.TrafficControlTasks.TrafficControlTargets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.trafficControlTargets = tmp
            }
            if dict.keys.contains("TrafficControlTaskId") {
                self.trafficControlTaskId = dict["TrafficControlTaskId"] as! String
            }
            if dict.keys.contains("UserConditionArray") {
                self.userConditionArray = dict["UserConditionArray"] as! String
            }
            if dict.keys.contains("UserConditionExpress") {
                self.userConditionExpress = dict["UserConditionExpress"] as! String
            }
            if dict.keys.contains("UserConditionType") {
                self.userConditionType = dict["UserConditionType"] as! String
            }
            if dict.keys.contains("UserTableMetaId") {
                self.userTableMetaId = dict["UserTableMetaId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("TrafficControlTasks") {
            var tmp : [ListTrafficControlTasksResponseBody.TrafficControlTasks] = []
            for v in dict["TrafficControlTasks"] as! [Any] {
                var model = ListTrafficControlTasksResponseBody.TrafficControlTasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTrafficControlTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OfflineExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OfflineExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OfflineLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OnlineExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OnlineExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OnlineLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PushAllExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MetricInfo") {
            self.metricInfo = dict["MetricInfo"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MetricInfo") {
            self.metricInfoShrink = dict["MetricInfo"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MaxValue") {
                self.maxValue = dict["MaxValue"] as! String
            }
            if dict.keys.contains("MinValue") {
                self.minValue = dict["MinValue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MetricOperationType") {
            self.metricOperationType = dict["MetricOperationType"] as! String
        }
        if dict.keys.contains("MetricPullInfo") {
            self.metricPullInfo = dict["MetricPullInfo"] as! String
        }
        if dict.keys.contains("MetricPullPeriod") {
            self.metricPullPeriod = dict["MetricPullPeriod"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceRuleId") {
            self.resourceRuleId = dict["ResourceRuleId"] as! String
        }
        if dict.keys.contains("RuleComputingDefinition") {
            self.ruleComputingDefinition = dict["RuleComputingDefinition"] as! String
        }
        if dict.keys.contains("RuleItems") {
            var tmp : [PushResourceRuleResponseBody.RuleItems] = []
            for v in dict["RuleItems"] as! [Any] {
                var model = PushResourceRuleResponseBody.RuleItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PushResourceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseExperimentId") {
            self.baseExperimentId = dict["BaseExperimentId"] as! String
        }
        if dict.keys.contains("DimensionFields") {
            self.dimensionFields = dict["DimensionFields"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("ExperimentIds") {
            self.experimentIds = dict["ExperimentIds"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ReportType") {
            self.reportType = dict["ReportType"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TimeStatisticsMethod") {
            self.timeStatisticsMethod = dict["TimeStatisticsMethod"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentReport") {
            var tmp : [String: ExperimentReportValue] = [:]
            for (k, v) in dict["ExperimentReport"] as! [String: Any] {
                if v != nil {
                    var model = ExperimentReportValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.experimentReport = tmp
        }
        if dict.keys.contains("GroupDimension") {
            self.groupDimension = dict["GroupDimension"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReportABMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SplitTrafficControlTargetRequest : Tea.TeaModel {
    public var environment: String?

    public var instanceId: String?

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
        if self.setValues != nil {
            map["SetValues"] = self.setValues!
        }
        if self.timePoints != nil {
            map["TimePoints"] = self.timePoints!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SetValues") {
            self.setValues = dict["SetValues"] as! [Int64]
        }
        if dict.keys.contains("TimePoints") {
            self.timePoints = dict["TimePoints"] as! [Int64]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SplitTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContextFeatures") {
            self.contextFeatures = dict["ContextFeatures"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("GeneratedFeatures") {
            self.generatedFeatures = dict["GeneratedFeatures"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogItemId") {
            self.logItemId = dict["LogItemId"] as! String
        }
        if dict.keys.contains("LogRequestId") {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogRequestTime") {
            self.logRequestTime = dict["LogRequestTime"] as! Int64
        }
        if dict.keys.contains("LogUserId") {
            self.logUserId = dict["LogUserId"] as! String
        }
        if dict.keys.contains("RawFeatures") {
            self.rawFeatures = dict["RawFeatures"] as! String
        }
        if dict.keys.contains("SceneName") {
            self.sceneName = dict["SceneName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SyncFeatureConsistencyCheckJobReplayLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TerminateFeatureConsistencyCheckJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Definition") {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LeftMetricId") {
            self.leftMetricId = dict["LeftMetricId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("ResultResourceId") {
            self.resultResourceId = dict["ResultResourceId"] as! String
        }
        if dict.keys.contains("RightMetricId") {
            self.rightMetricId = dict["RightMetricId"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StatisticsCycle") {
            self.statisticsCycle = dict["StatisticsCycle"] as! Int32
        }
        if dict.keys.contains("TableMetaId") {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateABMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ABMetricIds") {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Realtime") {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateABMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FlowPercent") {
            self.flowPercent = dict["FlowPercent"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdId") {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("CrowdTargetType") {
            self.crowdTargetType = dict["CrowdTargetType"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributionTimeDuration") {
            self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
        }
        if dict.keys.contains("DistributionType") {
            self.distributionType = dict["DistributionType"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NeedAA") {
            self.needAA = dict["NeedAA"] as! Bool
        }
        if dict.keys.contains("RandomFlow") {
            self.randomFlow = dict["RandomFlow"] as! Int64
        }
        if dict.keys.contains("ReservcedBuckets") {
            self.reservcedBuckets = dict["ReservcedBuckets"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateExperimentGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFeatureConsistencyCheckJobConfigRequest : Tea.TeaModel {
    public var compareFeature: Bool?

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

    public var sampleRate: Double?

    public var sceneId: String?

    public var serviceId: String?

    public var userIdField: String?

    public var userTable: String?

    public var userTablePartitionField: String?

    public var userTablePartitionFieldFormat: String?

    public var workflowName: String?

    public override init() {
        super.init()
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
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
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
        if self.workflowName != nil {
            map["WorkflowName"] = self.workflowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompareFeature") {
            self.compareFeature = dict["CompareFeature"] as! Bool
        }
        if dict.keys.contains("EasServiceName") {
            self.easServiceName = dict["EasServiceName"] as! String
        }
        if dict.keys.contains("EasyRecPackagePath") {
            self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
        }
        if dict.keys.contains("EasyRecVersion") {
            self.easyRecVersion = dict["EasyRecVersion"] as! String
        }
        if dict.keys.contains("FeatureDisplayExclude") {
            self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceId") {
            self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
        }
        if dict.keys.contains("FeaturePriority") {
            self.featurePriority = dict["FeaturePriority"] as! String
        }
        if dict.keys.contains("FeatureStoreItemId") {
            self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
        }
        if dict.keys.contains("FeatureStoreModelId") {
            self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectId") {
            self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectName") {
            self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
        }
        if dict.keys.contains("FeatureStoreSeqFeatureView") {
            self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
        }
        if dict.keys.contains("FeatureStoreUserId") {
            self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
        }
        if dict.keys.contains("FgJarVersion") {
            self.fgJarVersion = dict["FgJarVersion"] as! String
        }
        if dict.keys.contains("FgJsonFileName") {
            self.fgJsonFileName = dict["FgJsonFileName"] as! String
        }
        if dict.keys.contains("GenerateZip") {
            self.generateZip = dict["GenerateZip"] as! Bool
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsUseFeatureStore") {
            self.isUseFeatureStore = dict["IsUseFeatureStore"] as! Bool
        }
        if dict.keys.contains("ItemIdField") {
            self.itemIdField = dict["ItemIdField"] as! String
        }
        if dict.keys.contains("ItemTable") {
            self.itemTable = dict["ItemTable"] as! String
        }
        if dict.keys.contains("ItemTablePartitionField") {
            self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
        }
        if dict.keys.contains("ItemTablePartitionFieldFormat") {
            self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssResourceId") {
            self.ossResourceId = dict["OssResourceId"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! Double
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserIdField") {
            self.userIdField = dict["UserIdField"] as! String
        }
        if dict.keys.contains("UserTable") {
            self.userTable = dict["UserTable"] as! String
        }
        if dict.keys.contains("UserTablePartitionField") {
            self.userTablePartitionField = dict["UserTablePartitionField"] as! String
        }
        if dict.keys.contains("UserTablePartitionFieldFormat") {
            self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("WorkflowName") {
            self.workflowName = dict["WorkflowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateFeatureConsistencyCheckJobConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateInstanceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketCount") {
            self.bucketCount = dict["BucketCount"] as! Int32
        }
        if dict.keys.contains("BucketType") {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("DebugCrowdId") {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLaboratoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLayerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MetricOperationType") {
            self.metricOperationType = dict["MetricOperationType"] as! String
        }
        if dict.keys.contains("MetricPullInfo") {
            self.metricPullInfo = dict["MetricPullInfo"] as! String
        }
        if dict.keys.contains("MetricPullPeriod") {
            self.metricPullPeriod = dict["MetricPullPeriod"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RuleComputingDefinition") {
            self.ruleComputingDefinition = dict["RuleComputingDefinition"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateResourceRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MaxValue") {
            self.maxValue = dict["MaxValue"] as! Double
        }
        if dict.keys.contains("MinValue") {
            self.minValue = dict["MinValue"] as! Double
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateResourceRuleItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FlowCode") {
                self.flowCode = dict["FlowCode"] as! String
            }
            if dict.keys.contains("FlowName") {
                self.flowName = dict["FlowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flows") {
            var tmp : [UpdateSceneRequest.Flows] = []
            for v in dict["Flows"] as! [Any] {
                var model = UpdateSceneRequest.Flows()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flows = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateSceneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataType") {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("IsDimensionField") {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("IsPartitionField") {
                self.isPartitionField = dict["IsPartitionField"] as! String
            }
            if dict.keys.contains("Meaning") {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fields") {
            var tmp : [UpdateTableMetaRequest.Fields] = []
            for v in dict["Fields"] as! [Any] {
                var model = UpdateTableMetaRequest.Fields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fields = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTableMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Event") {
            self.event = dict["Event"] as! String
        }
        if dict.keys.contains("ItemConditionArray") {
            self.itemConditionArray = dict["ItemConditionArray"] as! String
        }
        if dict.keys.contains("ItemConditionExpress") {
            self.itemConditionExpress = dict["ItemConditionExpress"] as! String
        }
        if dict.keys.contains("ItemConditionType") {
            self.itemConditionType = dict["ItemConditionType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NewProductRegulation") {
            self.newProductRegulation = dict["NewProductRegulation"] as! Bool
        }
        if dict.keys.contains("RecallName") {
            self.recallName = dict["RecallName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StatisPeriod") {
            self.statisPeriod = dict["StatisPeriod"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ToleranceValue") {
            self.toleranceValue = dict["ToleranceValue"] as! Int64
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! Double
        }
        if dict.keys.contains("new-param-3") {
            self.newParam3 = dict["new-param-3"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTrafficControlTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Event") {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("ItemConditionArray") {
                self.itemConditionArray = dict["ItemConditionArray"] as! String
            }
            if dict.keys.contains("ItemConditionExpress") {
                self.itemConditionExpress = dict["ItemConditionExpress"] as! String
            }
            if dict.keys.contains("ItemConditionType") {
                self.itemConditionType = dict["ItemConditionType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewProductRegulation") {
                self.newProductRegulation = dict["NewProductRegulation"] as! Bool
            }
            if dict.keys.contains("RecallName") {
                self.recallName = dict["RecallName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StatisPeriod") {
                self.statisPeriod = dict["StatisPeriod"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ToleranceValue") {
                self.toleranceValue = dict["ToleranceValue"] as! Int64
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
            }
        }
    }
    public var behaviorTableMetaId: String?

    public var controlGranularity: String?

    public var controlLogic: String?

    public var controlType: String?

    public var description_: String?

    public var endTime: String?

    public var executionTime: String?

    public var instanceId: String?

    public var itemConditionArray: String?

    public var itemConditionExpress: String?

    public var itemConditionType: String?

    public var itemTableMetaId: String?

    public var name: String?

    public var sceneId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executionTime != nil {
            map["ExecutionTime"] = self.executionTime!
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BehaviorTableMetaId") {
            self.behaviorTableMetaId = dict["BehaviorTableMetaId"] as! String
        }
        if dict.keys.contains("ControlGranularity") {
            self.controlGranularity = dict["ControlGranularity"] as! String
        }
        if dict.keys.contains("ControlLogic") {
            self.controlLogic = dict["ControlLogic"] as! String
        }
        if dict.keys.contains("ControlType") {
            self.controlType = dict["ControlType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExecutionTime") {
            self.executionTime = dict["ExecutionTime"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemConditionArray") {
            self.itemConditionArray = dict["ItemConditionArray"] as! String
        }
        if dict.keys.contains("ItemConditionExpress") {
            self.itemConditionExpress = dict["ItemConditionExpress"] as! String
        }
        if dict.keys.contains("ItemConditionType") {
            self.itemConditionType = dict["ItemConditionType"] as! String
        }
        if dict.keys.contains("ItemTableMetaId") {
            self.itemTableMetaId = dict["ItemTableMetaId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StatisBaeaviorConditionArray") {
            self.statisBaeaviorConditionArray = dict["StatisBaeaviorConditionArray"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionExpress") {
            self.statisBehaviorConditionExpress = dict["StatisBehaviorConditionExpress"] as! String
        }
        if dict.keys.contains("StatisBehaviorConditionType") {
            self.statisBehaviorConditionType = dict["StatisBehaviorConditionType"] as! String
        }
        if dict.keys.contains("TrafficControlTargets") {
            var tmp : [UpdateTrafficControlTaskRequest.TrafficControlTargets] = []
            for v in dict["TrafficControlTargets"] as! [Any] {
                var model = UpdateTrafficControlTaskRequest.TrafficControlTargets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trafficControlTargets = tmp
        }
        if dict.keys.contains("UserConditionArray") {
            self.userConditionArray = dict["UserConditionArray"] as! String
        }
        if dict.keys.contains("UserConditionExpress") {
            self.userConditionExpress = dict["UserConditionExpress"] as! String
        }
        if dict.keys.contains("UserConditionType") {
            self.userConditionType = dict["UserConditionType"] as! String
        }
        if dict.keys.contains("UserTableMetaId") {
            self.userTableMetaId = dict["UserTableMetaId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTrafficControlTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ItemOrExperimentId") {
                self.itemOrExperimentId = dict["ItemOrExperimentId"] as! String
            }
            if dict.keys.contains("RecordTime") {
                self.recordTime = dict["RecordTime"] as! String
            }
            if dict.keys.contains("TrafficControlTargetAimTraffic") {
                self.trafficControlTargetAimTraffic = dict["TrafficControlTargetAimTraffic"] as! Double
            }
            if dict.keys.contains("TrafficControlTargetId") {
                self.trafficControlTargetId = dict["TrafficControlTargetId"] as! String
            }
            if dict.keys.contains("TrafficControlTargetTraffic") {
                self.trafficControlTargetTraffic = dict["TrafficControlTargetTraffic"] as! Int64
            }
            if dict.keys.contains("TrafficControlTaskTraffic") {
                self.trafficControlTaskTraffic = dict["TrafficControlTaskTraffic"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Environment") {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Traffics") {
            var tmp : [UpdateTrafficControlTaskTrafficRequest.Traffics] = []
            for v in dict["Traffics"] as! [Any] {
                var model = UpdateTrafficControlTaskTrafficRequest.Traffics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.traffics = tmp
        }
        if dict.keys.contains("new-param-3") {
            self.newParam3 = dict["new-param-3"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTrafficControlTaskTrafficResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fields") {
                self.fields = dict["Fields"] as! String
            }
            if dict.keys.contains("OperationType") {
                self.operationType = dict["OperationType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Content") {
            var tmp : [UploadRecommendationDataRequest.Content] = []
            for v in dict["Content"] as! [Any] {
                var model = UploadRecommendationDataRequest.Content()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.content = tmp
        }
        if dict.keys.contains("DataType") {
            self.dataType = dict["DataType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UploadRecommendationDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
