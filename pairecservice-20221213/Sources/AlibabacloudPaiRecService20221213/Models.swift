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
        if dict.keys.contains("Baseline") && dict["Baseline"] != nil {
            self.baseline = dict["Baseline"] as! Bool
        }
        if dict.keys.contains("MetricResults") && dict["MetricResults"] != nil {
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
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemFeatures") && dict["ItemFeatures"] != nil {
            self.itemFeatures = dict["ItemFeatures"] as! String
        }
        if dict.keys.contains("LogItemId") && dict["LogItemId"] != nil {
            self.logItemId = dict["LogItemId"] as! String
        }
        if dict.keys.contains("LogRequestId") && dict["LogRequestId"] != nil {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogRequestTime") && dict["LogRequestTime"] != nil {
            self.logRequestTime = dict["LogRequestTime"] as! Int64
        }
        if dict.keys.contains("LogUserId") && dict["LogUserId"] != nil {
            self.logUserId = dict["LogUserId"] as! String
        }
        if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("Scores") && dict["Scores"] != nil {
            self.scores = dict["Scores"] as! String
        }
        if dict.keys.contains("UserFeatures") && dict["UserFeatures"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
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
        if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("FeatureConsistencyCheckId") && dict["FeatureConsistencyCheckId"] != nil {
            self.featureConsistencyCheckId = dict["FeatureConsistencyCheckId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("CloneExperimentGroup") && dict["CloneExperimentGroup"] != nil {
            self.cloneExperimentGroup = dict["CloneExperimentGroup"] as! Bool
        }
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CloneLaboratoryResponseBody()
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
        if dict.keys.contains("Definition") && dict["Definition"] != nil {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LeftMetricId") && dict["LeftMetricId"] != nil {
            self.leftMetricId = dict["LeftMetricId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") && dict["Operator"] != nil {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("ResultResourceId") && dict["ResultResourceId"] != nil {
            self.resultResourceId = dict["ResultResourceId"] as! String
        }
        if dict.keys.contains("RightMetricId") && dict["RightMetricId"] != nil {
            self.rightMetricId = dict["RightMetricId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StatisticsCycle") && dict["StatisticsCycle"] != nil {
            self.statisticsCycle = dict["StatisticsCycle"] as! Int32
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("ABMetricId") && dict["ABMetricId"] != nil {
            self.ABMetricId = dict["ABMetricId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ABMetricIds") && dict["ABMetricIds"] != nil {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("ABMetricGroupId") && dict["ABMetricGroupId"] != nil {
            self.ABMetricGroupId = dict["ABMetricGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ABMetricIds") && dict["ABMetricIds"] != nil {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
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
        if dict.keys.contains("CalculationJobIds") && dict["CalculationJobIds"] != nil {
            self.calculationJobIds = dict["CalculationJobIds"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("FlowPercent") && dict["FlowPercent"] != nil {
            self.flowPercent = dict["FlowPercent"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateExperimentGroupRequest : Tea.TeaModel {
    public var config: String?

    public var crowdId: String?

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
        if self.reservedBuckets != nil {
            map["ReservedBuckets"] = self.reservedBuckets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributionTimeDuration") && dict["DistributionTimeDuration"] != nil {
            self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
        }
        if dict.keys.contains("DistributionType") && dict["DistributionType"] != nil {
            self.distributionType = dict["DistributionType"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NeedAA") && dict["NeedAA"] != nil {
            self.needAA = dict["NeedAA"] as! Bool
        }
        if dict.keys.contains("ReservedBuckets") && dict["ReservedBuckets"] != nil {
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
        if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SamplingDuration") && dict["SamplingDuration"] != nil {
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
        if dict.keys.contains("FeatureConsistencyCheckJobId") && dict["FeatureConsistencyCheckJobId"] != nil {
            self.featureConsistencyCheckJobId = dict["FeatureConsistencyCheckJobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("CompareFeature") && dict["CompareFeature"] != nil {
            self.compareFeature = dict["CompareFeature"] as! Bool
        }
        if dict.keys.contains("EasServiceName") && dict["EasServiceName"] != nil {
            self.easServiceName = dict["EasServiceName"] as! String
        }
        if dict.keys.contains("EasyRecPackagePath") && dict["EasyRecPackagePath"] != nil {
            self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
        }
        if dict.keys.contains("EasyRecVersion") && dict["EasyRecVersion"] != nil {
            self.easyRecVersion = dict["EasyRecVersion"] as! String
        }
        if dict.keys.contains("FeatureDisplayExclude") && dict["FeatureDisplayExclude"] != nil {
            self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceId") && dict["FeatureLandingResourceId"] != nil {
            self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
        }
        if dict.keys.contains("FeaturePriority") && dict["FeaturePriority"] != nil {
            self.featurePriority = dict["FeaturePriority"] as! String
        }
        if dict.keys.contains("FeatureStoreItemId") && dict["FeatureStoreItemId"] != nil {
            self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
        }
        if dict.keys.contains("FeatureStoreModelId") && dict["FeatureStoreModelId"] != nil {
            self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectId") && dict["FeatureStoreProjectId"] != nil {
            self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectName") && dict["FeatureStoreProjectName"] != nil {
            self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
        }
        if dict.keys.contains("FeatureStoreSeqFeatureView") && dict["FeatureStoreSeqFeatureView"] != nil {
            self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
        }
        if dict.keys.contains("FeatureStoreUserId") && dict["FeatureStoreUserId"] != nil {
            self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
        }
        if dict.keys.contains("FgJarVersion") && dict["FgJarVersion"] != nil {
            self.fgJarVersion = dict["FgJarVersion"] as! String
        }
        if dict.keys.contains("FgJsonFileName") && dict["FgJsonFileName"] != nil {
            self.fgJsonFileName = dict["FgJsonFileName"] as! String
        }
        if dict.keys.contains("GenerateZip") && dict["GenerateZip"] != nil {
            self.generateZip = dict["GenerateZip"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ItemIdField") && dict["ItemIdField"] != nil {
            self.itemIdField = dict["ItemIdField"] as! String
        }
        if dict.keys.contains("ItemTable") && dict["ItemTable"] != nil {
            self.itemTable = dict["ItemTable"] as! String
        }
        if dict.keys.contains("ItemTablePartitionField") && dict["ItemTablePartitionField"] != nil {
            self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
        }
        if dict.keys.contains("ItemTablePartitionFieldFormat") && dict["ItemTablePartitionFieldFormat"] != nil {
            self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssResourceId") && dict["OssResourceId"] != nil {
            self.ossResourceId = dict["OssResourceId"] as! String
        }
        if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
            self.sampleRate = dict["SampleRate"] as! Double
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UseFeatureStore") && dict["UseFeatureStore"] != nil {
            self.useFeatureStore = dict["UseFeatureStore"] as! Bool
        }
        if dict.keys.contains("UserIdField") && dict["UserIdField"] != nil {
            self.userIdField = dict["UserIdField"] as! String
        }
        if dict.keys.contains("UserTable") && dict["UserTable"] != nil {
            self.userTable = dict["UserTable"] as! String
        }
        if dict.keys.contains("UserTablePartitionField") && dict["UserTablePartitionField"] != nil {
            self.userTablePartitionField = dict["UserTablePartitionField"] as! String
        }
        if dict.keys.contains("UserTablePartitionFieldFormat") && dict["UserTablePartitionFieldFormat"] != nil {
            self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("WorkflowName") && dict["WorkflowName"] != nil {
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
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("BucketCount") && dict["BucketCount"] != nil {
            self.bucketCount = dict["BucketCount"] as! Int32
        }
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("ParamId") && dict["ParamId"] != nil {
            self.paramId = dict["ParamId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateParamResponseBody()
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
            if dict.keys.contains("FlowCode") && dict["FlowCode"] != nil {
                self.flowCode = dict["FlowCode"] as! String
            }
            if dict.keys.contains("FlowName") && dict["FlowName"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flows") && dict["Flows"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCrowdId") && dict["SubCrowdId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("IsDimensionField") && dict["IsDimensionField"] != nil {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("IsPartitionField") && dict["IsPartitionField"] != nil {
                self.isPartitionField = dict["IsPartitionField"] as! String
            }
            if dict.keys.contains("Meaning") && dict["Meaning"] != nil {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTableMetaResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteParamResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTableMetaResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("Definition") && dict["Definition"] != nil {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LeftMetricId") && dict["LeftMetricId"] != nil {
            self.leftMetricId = dict["LeftMetricId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") && dict["Operator"] != nil {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultResourceId") && dict["ResultResourceId"] != nil {
            self.resultResourceId = dict["ResultResourceId"] as! String
        }
        if dict.keys.contains("ResultTableMetaId") && dict["ResultTableMetaId"] != nil {
            self.resultTableMetaId = dict["ResultTableMetaId"] as! String
        }
        if dict.keys.contains("RightMetricId") && dict["RightMetricId"] != nil {
            self.rightMetricId = dict["RightMetricId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("StatisticsCycle") && dict["StatisticsCycle"] != nil {
            self.statisticsCycle = dict["StatisticsCycle"] as! Int32
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("ABMetricIds") && dict["ABMetricIds"] != nil {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("ABMetricNames") && dict["ABMetricNames"] != nil {
            self.ABMetricNames = dict["ABMetricNames"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("ABMetricId") && dict["ABMetricId"] != nil {
            self.ABMetricId = dict["ABMetricId"] as! String
        }
        if dict.keys.contains("ABMetricName") && dict["ABMetricName"] != nil {
            self.ABMetricName = dict["ABMetricName"] as! String
        }
        if dict.keys.contains("BizDate") && dict["BizDate"] != nil {
            self.bizDate = dict["BizDate"] as! String
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("GmtRanTime") && dict["GmtRanTime"] != nil {
            self.gmtRanTime = dict["GmtRanTime"] as! String
        }
        if dict.keys.contains("JobMessage") && dict["JobMessage"] != nil {
            self.jobMessage = dict["JobMessage"] as! [String]
        }
        if dict.keys.contains("JobSource") && dict["JobSource"] != nil {
            self.jobSource = dict["JobSource"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("AliasExperimentId") && dict["AliasExperimentId"] != nil {
            self.aliasExperimentId = dict["AliasExperimentId"] as! String
        }
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("FlowPercent") && dict["FlowPercent"] != nil {
            self.flowPercent = dict["FlowPercent"] as! Int32
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetExperimentGroupResponseBody : Tea.TeaModel {
    public var config: String?

    public var crowdId: String?

    public var debugCrowdId: String?

    public var debugUsers: String?

    public var description_: String?

    public var distributionTimeDuration: Int32?

    public var distributionType: String?

    public var filter: String?

    public var laboratoryId: String?

    public var layerId: String?

    public var name: String?

    public var needAA: Bool?

    public var owner: String?

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
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributionTimeDuration") && dict["DistributionTimeDuration"] != nil {
            self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
        }
        if dict.keys.contains("DistributionType") && dict["DistributionType"] != nil {
            self.distributionType = dict["DistributionType"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NeedAA") && dict["NeedAA"] != nil {
            self.needAA = dict["NeedAA"] as! Bool
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReservedBuckets") && dict["ReservedBuckets"] != nil {
            self.reservedBuckets = dict["ReservedBuckets"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigName") && dict["FeatureConsistencyCheckJobConfigName"] != nil {
            self.featureConsistencyCheckJobConfigName = dict["FeatureConsistencyCheckJobConfigName"] as! String
        }
        if dict.keys.contains("GmtEndTime") && dict["GmtEndTime"] != nil {
            self.gmtEndTime = dict["GmtEndTime"] as! String
        }
        if dict.keys.contains("GmtStartTime") && dict["GmtStartTime"] != nil {
            self.gmtStartTime = dict["GmtStartTime"] as! String
        }
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("CompareFeature") && dict["CompareFeature"] != nil {
            self.compareFeature = dict["CompareFeature"] as! Bool
        }
        if dict.keys.contains("EasServiceName") && dict["EasServiceName"] != nil {
            self.easServiceName = dict["EasServiceName"] as! String
        }
        if dict.keys.contains("EasyRecPackagePath") && dict["EasyRecPackagePath"] != nil {
            self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
        }
        if dict.keys.contains("EasyRecVersion") && dict["EasyRecVersion"] != nil {
            self.easyRecVersion = dict["EasyRecVersion"] as! String
        }
        if dict.keys.contains("FeatureDisplayExclude") && dict["FeatureDisplayExclude"] != nil {
            self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceId") && dict["FeatureLandingResourceId"] != nil {
            self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceUri") && dict["FeatureLandingResourceUri"] != nil {
            self.featureLandingResourceUri = dict["FeatureLandingResourceUri"] as! String
        }
        if dict.keys.contains("FeaturePriority") && dict["FeaturePriority"] != nil {
            self.featurePriority = dict["FeaturePriority"] as! String
        }
        if dict.keys.contains("FeatureStoreItemId") && dict["FeatureStoreItemId"] != nil {
            self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
        }
        if dict.keys.contains("FeatureStoreModelId") && dict["FeatureStoreModelId"] != nil {
            self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectId") && dict["FeatureStoreProjectId"] != nil {
            self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectName") && dict["FeatureStoreProjectName"] != nil {
            self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
        }
        if dict.keys.contains("FeatureStoreSeqFeatureView") && dict["FeatureStoreSeqFeatureView"] != nil {
            self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
        }
        if dict.keys.contains("FeatureStoreUserId") && dict["FeatureStoreUserId"] != nil {
            self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
        }
        if dict.keys.contains("FgJarVersion") && dict["FgJarVersion"] != nil {
            self.fgJarVersion = dict["FgJarVersion"] as! String
        }
        if dict.keys.contains("FgJsonFileName") && dict["FgJsonFileName"] != nil {
            self.fgJsonFileName = dict["FgJsonFileName"] as! String
        }
        if dict.keys.contains("GenerateZip") && dict["GenerateZip"] != nil {
            self.generateZip = dict["GenerateZip"] as! Bool
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("ItemIdField") && dict["ItemIdField"] != nil {
            self.itemIdField = dict["ItemIdField"] as! String
        }
        if dict.keys.contains("ItemTable") && dict["ItemTable"] != nil {
            self.itemTable = dict["ItemTable"] as! String
        }
        if dict.keys.contains("ItemTablePartitionField") && dict["ItemTablePartitionField"] != nil {
            self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
        }
        if dict.keys.contains("ItemTablePartitionFieldFormat") && dict["ItemTablePartitionFieldFormat"] != nil {
            self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("LatestJobGmtSamplingEndTime") && dict["LatestJobGmtSamplingEndTime"] != nil {
            self.latestJobGmtSamplingEndTime = dict["LatestJobGmtSamplingEndTime"] as! String
        }
        if dict.keys.contains("LatestJobGmtSamplingStartTime") && dict["LatestJobGmtSamplingStartTime"] != nil {
            self.latestJobGmtSamplingStartTime = dict["LatestJobGmtSamplingStartTime"] as! String
        }
        if dict.keys.contains("LatestJobId") && dict["LatestJobId"] != nil {
            self.latestJobId = dict["LatestJobId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") && dict["OssBucket"] != nil {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssResourceId") && dict["OssResourceId"] != nil {
            self.ossResourceId = dict["OssResourceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
            self.sampleRate = dict["SampleRate"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
            self.sceneName = dict["SceneName"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UseFeatureStore") && dict["UseFeatureStore"] != nil {
            self.useFeatureStore = dict["UseFeatureStore"] as! Bool
        }
        if dict.keys.contains("UserIdField") && dict["UserIdField"] != nil {
            self.userIdField = dict["UserIdField"] as! String
        }
        if dict.keys.contains("UserTable") && dict["UserTable"] != nil {
            self.userTable = dict["UserTable"] as! String
        }
        if dict.keys.contains("UserTablePartitionField") && dict["UserTablePartitionField"] != nil {
            self.userTablePartitionField = dict["UserTablePartitionField"] as! String
        }
        if dict.keys.contains("UserTablePartitionFieldFormat") && dict["UserTablePartitionFieldFormat"] != nil {
            self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("WorkflowName") && dict["WorkflowName"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
                if dict.keys.contains("ComponentCode") && dict["ComponentCode"] != nil {
                    self.componentCode = dict["ComponentCode"] as! String
                }
                if dict.keys.contains("Meta") && dict["Meta"] != nil {
                    self.meta = dict["Meta"] as! [String: Any]
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
                if dict.keys.contains("ComponentCode") && dict["ComponentCode"] != nil {
                    self.componentCode = dict["ComponentCode"] as! String
                }
                if dict.keys.contains("Meta") && dict["Meta"] != nil {
                    self.meta = dict["Meta"] as! [String: Any]
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
                if dict.keys.contains("ComponentCode") && dict["ComponentCode"] != nil {
                    self.componentCode = dict["ComponentCode"] as! String
                }
                if dict.keys.contains("Meta") && dict["Meta"] != nil {
                    self.meta = dict["Meta"] as! [String: Any]
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
            if dict.keys.contains("DataManagements") && dict["DataManagements"] != nil {
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
            if dict.keys.contains("Engines") && dict["Engines"] != nil {
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
            if dict.keys.contains("Monitors") && dict["Monitors"] != nil {
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
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            var model = GetInstanceResponseBody.Config()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("IsDimensionField") && dict["IsDimensionField"] != nil {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("IsPartitionField") && dict["IsPartitionField"] != nil {
                self.isPartitionField = dict["IsPartitionField"] as! Bool
            }
            if dict.keys.contains("Meaning") && dict["Meaning"] != nil {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("BucketCount") && dict["BucketCount"] != nil {
            self.bucketCount = dict["BucketCount"] as! Int32
        }
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetLayerResponseBody : Tea.TeaModel {
    public var description_: String?

    public var laboratoryId: String?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetLayerResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("FlowCode") && dict["FlowCode"] != nil {
                self.flowCode = dict["FlowCode"] as! String
            }
            if dict.keys.contains("FlowName") && dict["FlowName"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flows") && dict["Flows"] != nil {
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
            self.quantity = dict["Quantity"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("IsDimensionField") && dict["IsDimensionField"] != nil {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("Meaning") && dict["Meaning"] != nil {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("CanDelete") && dict["CanDelete"] != nil {
            self.canDelete = dict["CanDelete"] as! Bool
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
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
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtImportedTime") && dict["GmtImportedTime"] != nil {
            self.gmtImportedTime = dict["GmtImportedTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTableMetaResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
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
            if dict.keys.contains("ABMetricGroupId") && dict["ABMetricGroupId"] != nil {
                self.ABMetricGroupId = dict["ABMetricGroupId"] as! String
            }
            if dict.keys.contains("ABMetricIds") && dict["ABMetricIds"] != nil {
                self.ABMetricIds = dict["ABMetricIds"] as! String
            }
            if dict.keys.contains("ABMetricNames") && dict["ABMetricNames"] != nil {
                self.ABMetricNames = dict["ABMetricNames"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
                self.realtime = dict["Realtime"] as! Bool
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("ABMetricGroups") && dict["ABMetricGroups"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
            if dict.keys.contains("ABMetricId") && dict["ABMetricId"] != nil {
                self.ABMetricId = dict["ABMetricId"] as! String
            }
            if dict.keys.contains("Definition") && dict["Definition"] != nil {
                self.definition = dict["Definition"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LeftMetricId") && dict["LeftMetricId"] != nil {
                self.leftMetricId = dict["LeftMetricId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Operator") && dict["Operator"] != nil {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
                self.realtime = dict["Realtime"] as! String
            }
            if dict.keys.contains("ResultResourceId") && dict["ResultResourceId"] != nil {
                self.resultResourceId = dict["ResultResourceId"] as! String
            }
            if dict.keys.contains("ResultTableMetaId") && dict["ResultTableMetaId"] != nil {
                self.resultTableMetaId = dict["ResultTableMetaId"] as! String
            }
            if dict.keys.contains("RightMetricId") && dict["RightMetricId"] != nil {
                self.rightMetricId = dict["RightMetricId"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("StatisticsCycle") && dict["StatisticsCycle"] != nil {
                self.statisticsCycle = dict["StatisticsCycle"] as! Int32
            }
            if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
                self.tableMetaId = dict["TableMetaId"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("ABMetrics") && dict["ABMetrics"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
            if dict.keys.contains("ABMetricName") && dict["ABMetricName"] != nil {
                self.ABMetricName = dict["ABMetricName"] as! String
            }
            if dict.keys.contains("BizDate") && dict["BizDate"] != nil {
                self.bizDate = dict["BizDate"] as! String
            }
            if dict.keys.contains("CalculationJobId") && dict["CalculationJobId"] != nil {
                self.calculationJobId = dict["CalculationJobId"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("GmtRanTime") && dict["GmtRanTime"] != nil {
                self.gmtRanTime = dict["GmtRanTime"] as! String
            }
            if dict.keys.contains("JobMessage") && dict["JobMessage"] != nil {
                self.jobMessage = dict["JobMessage"] as! [String]
            }
            if dict.keys.contains("JobSource") && dict["JobSource"] != nil {
                self.jobSource = dict["JobSource"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("CalculationJobs") && dict["CalculationJobs"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("Label") && dict["Label"] != nil {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                self.quantity = dict["Quantity"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("Crowds") && dict["Crowds"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListCrowdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExperimentGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var layerId: String?

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
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListExperimentGroupsResponseBody : Tea.TeaModel {
    public class ExperimentGroups : Tea.TeaModel {
        public var config: String?

        public var crowdId: String?

        public var debugCrowdId: String?

        public var debugUsers: String?

        public var description_: String?

        public var distributionTimeDuration: Int32?

        public var distributionType: String?

        public var experimentGroupId: String?

        public var filter: String?

        public var laboratoryId: String?

        public var layerId: String?

        public var name: String?

        public var needAA: Bool?

        public var owner: String?

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
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
                self.debugCrowdId = dict["DebugCrowdId"] as! String
            }
            if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DistributionTimeDuration") && dict["DistributionTimeDuration"] != nil {
                self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
            }
            if dict.keys.contains("DistributionType") && dict["DistributionType"] != nil {
                self.distributionType = dict["DistributionType"] as! String
            }
            if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
                self.experimentGroupId = dict["ExperimentGroupId"] as! String
            }
            if dict.keys.contains("Filter") && dict["Filter"] != nil {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NeedAA") && dict["NeedAA"] != nil {
                self.needAA = dict["NeedAA"] as! Bool
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ReservedBuckets") && dict["ReservedBuckets"] != nil {
                self.reservedBuckets = dict["ReservedBuckets"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("ExperimentGroups") && dict["ExperimentGroups"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
            if dict.keys.contains("AliasExperimentId") && dict["AliasExperimentId"] != nil {
                self.aliasExperimentId = dict["AliasExperimentId"] as! String
            }
            if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
                self.debugCrowdId = dict["DebugCrowdId"] as! String
            }
            if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
                self.experimentGroupId = dict["ExperimentGroupId"] as! String
            }
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("FlowPercent") && dict["FlowPercent"] != nil {
                self.flowPercent = dict["FlowPercent"] as! Int32
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Experiments") && dict["Experiments"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
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
            if dict.keys.contains("CompareFeature") && dict["CompareFeature"] != nil {
                self.compareFeature = dict["CompareFeature"] as! Bool
            }
            if dict.keys.contains("EasServiceName") && dict["EasServiceName"] != nil {
                self.easServiceName = dict["EasServiceName"] as! String
            }
            if dict.keys.contains("EasyRecPackagePath") && dict["EasyRecPackagePath"] != nil {
                self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
            }
            if dict.keys.contains("EasyRecVersion") && dict["EasyRecVersion"] != nil {
                self.easyRecVersion = dict["EasyRecVersion"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
                self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
            }
            if dict.keys.contains("FeatureDisplayExclude") && dict["FeatureDisplayExclude"] != nil {
                self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
            }
            if dict.keys.contains("FeatureLandingResourceId") && dict["FeatureLandingResourceId"] != nil {
                self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
            }
            if dict.keys.contains("FeatureLandingResourceUri") && dict["FeatureLandingResourceUri"] != nil {
                self.featureLandingResourceUri = dict["FeatureLandingResourceUri"] as! String
            }
            if dict.keys.contains("FeaturePriority") && dict["FeaturePriority"] != nil {
                self.featurePriority = dict["FeaturePriority"] as! String
            }
            if dict.keys.contains("FeatureStoreItemId") && dict["FeatureStoreItemId"] != nil {
                self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
            }
            if dict.keys.contains("FeatureStoreModelId") && dict["FeatureStoreModelId"] != nil {
                self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
            }
            if dict.keys.contains("FeatureStoreProjectId") && dict["FeatureStoreProjectId"] != nil {
                self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
            }
            if dict.keys.contains("FeatureStoreProjectName") && dict["FeatureStoreProjectName"] != nil {
                self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
            }
            if dict.keys.contains("FeatureStoreSeqFeatureView") && dict["FeatureStoreSeqFeatureView"] != nil {
                self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
            }
            if dict.keys.contains("FeatureStoreUserId") && dict["FeatureStoreUserId"] != nil {
                self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
            }
            if dict.keys.contains("FgJarVersion") && dict["FgJarVersion"] != nil {
                self.fgJarVersion = dict["FgJarVersion"] as! String
            }
            if dict.keys.contains("FgJsonFileName") && dict["FgJsonFileName"] != nil {
                self.fgJsonFileName = dict["FgJsonFileName"] as! String
            }
            if dict.keys.contains("GenerateZip") && dict["GenerateZip"] != nil {
                self.generateZip = dict["GenerateZip"] as! Bool
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ItemIdField") && dict["ItemIdField"] != nil {
                self.itemIdField = dict["ItemIdField"] as! String
            }
            if dict.keys.contains("ItemTable") && dict["ItemTable"] != nil {
                self.itemTable = dict["ItemTable"] as! String
            }
            if dict.keys.contains("ItemTablePartitionField") && dict["ItemTablePartitionField"] != nil {
                self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
            }
            if dict.keys.contains("ItemTablePartitionFieldFormat") && dict["ItemTablePartitionFieldFormat"] != nil {
                self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
            }
            if dict.keys.contains("LatestJobGmtSamplingEndTime") && dict["LatestJobGmtSamplingEndTime"] != nil {
                self.latestJobGmtSamplingEndTime = dict["LatestJobGmtSamplingEndTime"] as! String
            }
            if dict.keys.contains("LatestJobGmtSamplingStartTime") && dict["LatestJobGmtSamplingStartTime"] != nil {
                self.latestJobGmtSamplingStartTime = dict["LatestJobGmtSamplingStartTime"] as! String
            }
            if dict.keys.contains("LatestJobId") && dict["LatestJobId"] != nil {
                self.latestJobId = dict["LatestJobId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssBucket") && dict["OssBucket"] != nil {
                self.ossBucket = dict["OssBucket"] as! String
            }
            if dict.keys.contains("OssResourceId") && dict["OssResourceId"] != nil {
                self.ossResourceId = dict["OssResourceId"] as! String
            }
            if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
                self.sampleRate = dict["SampleRate"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UseFeatureStore") && dict["UseFeatureStore"] != nil {
                self.useFeatureStore = dict["UseFeatureStore"] as! String
            }
            if dict.keys.contains("UserIdField") && dict["UserIdField"] != nil {
                self.userIdField = dict["UserIdField"] as! String
            }
            if dict.keys.contains("UserTable") && dict["UserTable"] != nil {
                self.userTable = dict["UserTable"] as! String
            }
            if dict.keys.contains("UserTablePartitionField") && dict["UserTablePartitionField"] != nil {
                self.userTablePartitionField = dict["UserTablePartitionField"] as! String
            }
            if dict.keys.contains("UserTablePartitionFieldFormat") && dict["UserTablePartitionFieldFormat"] != nil {
                self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
            }
            if dict.keys.contains("WorkflowName") && dict["WorkflowName"] != nil {
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
        if dict.keys.contains("FeatureConsistencyCheckConfigs") && dict["FeatureConsistencyCheckConfigs"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogItemId") && dict["LogItemId"] != nil {
            self.logItemId = dict["LogItemId"] as! String
        }
        if dict.keys.contains("LogRequestId") && dict["LogRequestId"] != nil {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogUserId") && dict["LogUserId"] != nil {
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
            if dict.keys.contains("FeatureName") && dict["FeatureName"] != nil {
                self.featureName = dict["FeatureName"] as! String
            }
            if dict.keys.contains("LogItemId") && dict["LogItemId"] != nil {
                self.logItemId = dict["LogItemId"] as! String
            }
            if dict.keys.contains("LogRequestId") && dict["LogRequestId"] != nil {
                self.logRequestId = dict["LogRequestId"] as! String
            }
            if dict.keys.contains("LogUserId") && dict["LogUserId"] != nil {
                self.logUserId = dict["LogUserId"] as! String
            }
            if dict.keys.contains("OfflineValue") && dict["OfflineValue"] != nil {
                self.offlineValue = dict["OfflineValue"] as! String
            }
            if dict.keys.contains("OnlineValue") && dict["OnlineValue"] != nil {
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
        if dict.keys.contains("DataPath") && dict["DataPath"] != nil {
            self.dataPath = dict["DataPath"] as! String
        }
        if dict.keys.contains("OssPath") && dict["OssPath"] != nil {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("ReportsOfFeatureDiff") && dict["ReportsOfFeatureDiff"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ExcludeRequestIds") && dict["ExcludeRequestIds"] != nil {
            self.excludeRequestIds = dict["ExcludeRequestIds"] as! [String]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("ExcludeRequestIds") && dict["ExcludeRequestIds"] != nil {
            self.excludeRequestIdsShrink = dict["ExcludeRequestIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("LogItemId") && dict["LogItemId"] != nil {
                self.logItemId = dict["LogItemId"] as! String
            }
            if dict.keys.contains("LogRequestId") && dict["LogRequestId"] != nil {
                self.logRequestId = dict["LogRequestId"] as! String
            }
            if dict.keys.contains("LogUserId") && dict["LogUserId"] != nil {
                self.logUserId = dict["LogUserId"] as! String
            }
            if dict.keys.contains("ScoreDiff") && dict["ScoreDiff"] != nil {
                self.scoreDiff = dict["ScoreDiff"] as! String
            }
            if dict.keys.contains("ScoreDiffDetail") && dict["ScoreDiffDetail"] != nil {
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
        if dict.keys.contains("DataPath") && dict["DataPath"] != nil {
            self.dataPath = dict["DataPath"] as! String
        }
        if dict.keys.contains("OssPath") && dict["OssPath"] != nil {
            self.ossPath = dict["OssPath"] as! String
        }
        if dict.keys.contains("ReportsOfScoreDiff") && dict["ReportsOfScoreDiff"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
                self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobConfigName") && dict["FeatureConsistencyCheckJobConfigName"] != nil {
                self.featureConsistencyCheckJobConfigName = dict["FeatureConsistencyCheckJobConfigName"] as! String
            }
            if dict.keys.contains("FeatureConsistencyCheckJobId") && dict["FeatureConsistencyCheckJobId"] != nil {
                self.featureConsistencyCheckJobId = dict["FeatureConsistencyCheckJobId"] as! String
            }
            if dict.keys.contains("GmtEndTime") && dict["GmtEndTime"] != nil {
                self.gmtEndTime = dict["GmtEndTime"] as! String
            }
            if dict.keys.contains("GmtStartTime") && dict["GmtStartTime"] != nil {
                self.gmtStartTime = dict["GmtStartTime"] as! String
            }
            if dict.keys.contains("Logs") && dict["Logs"] != nil {
                self.logs = dict["Logs"] as! [String]
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("FeatureConsistencyCheckJobs") && dict["FeatureConsistencyCheckJobs"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("GmtCreateAt") && dict["GmtCreateAt"] != nil {
                self.gmtCreateAt = dict["GmtCreateAt"] as! String
            }
            if dict.keys.contains("GmtModifiedAt") && dict["GmtModifiedAt"] != nil {
                self.gmtModifiedAt = dict["GmtModifiedAt"] as! String
            }
            if dict.keys.contains("Group") && dict["Group"] != nil {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
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
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
                    if dict.keys.contains("ComponentCode") && dict["ComponentCode"] != nil {
                        self.componentCode = dict["ComponentCode"] as! String
                    }
                    if dict.keys.contains("Meta") && dict["Meta"] != nil {
                        self.meta = dict["Meta"] as! [String: Any]
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
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
                    if dict.keys.contains("ComponentCode") && dict["ComponentCode"] != nil {
                        self.componentCode = dict["ComponentCode"] as! String
                    }
                    if dict.keys.contains("Meta") && dict["Meta"] != nil {
                        self.meta = dict["Meta"] as! [String: Any]
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
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
                    if dict.keys.contains("ComponentCode") && dict["ComponentCode"] != nil {
                        self.componentCode = dict["ComponentCode"] as! String
                    }
                    if dict.keys.contains("Meta") && dict["Meta"] != nil {
                        self.meta = dict["Meta"] as! [String: Any]
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
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
                if dict.keys.contains("DataManagements") && dict["DataManagements"] != nil {
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
                if dict.keys.contains("Engines") && dict["Engines"] != nil {
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
                if dict.keys.contains("Monitors") && dict["Monitors"] != nil {
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
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                var model = ListInstancesResponseBody.Instances.Config()
                model.fromMap(dict["Config"] as! [String: Any])
                self.config = model
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
            if dict.keys.contains("BucketCount") && dict["BucketCount"] != nil {
                self.bucketCount = dict["BucketCount"] as! Int32
            }
            if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
                self.bucketType = dict["BucketType"] as! String
            }
            if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
                self.debugCrowdId = dict["DebugCrowdId"] as! String
            }
            if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Environment") && dict["Environment"] != nil {
                self.environment = dict["Environment"] as! String
            }
            if dict.keys.contains("Filter") && dict["Filter"] != nil {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Laboratories") && dict["Laboratories"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
            self.laboratoryId = dict["LaboratoryId"] as! String
        }
    }
}

public class ListLayersResponseBody : Tea.TeaModel {
    public class Layers : Tea.TeaModel {
        public var description_: String?

        public var laboratoryId: String?

        public var layerId: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("LaboratoryId") && dict["LaboratoryId"] != nil {
                self.laboratoryId = dict["LaboratoryId"] as! String
            }
            if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("Layers") && dict["Layers"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
            if dict.keys.contains("Environment") && dict["Environment"] != nil {
                self.environment = dict["Environment"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParamId") && dict["ParamId"] != nil {
                self.paramId = dict["ParamId"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("Params") && dict["Params"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListParamsResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
                if dict.keys.contains("FlowCode") && dict["FlowCode"] != nil {
                    self.flowCode = dict["FlowCode"] as! String
                }
                if dict.keys.contains("FlowName") && dict["FlowName"] != nil {
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
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Flows") && dict["Flows"] != nil {
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
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scenes") && dict["Scenes"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                self.quantity = dict["Quantity"] as! Int32
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SubCrowdId") && dict["SubCrowdId"] != nil {
                self.subCrowdId = dict["SubCrowdId"] as! String
            }
            if dict.keys.contains("Users") && dict["Users"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubCrowds") && dict["SubCrowds"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
                if dict.keys.contains("IsDimensionField") && dict["IsDimensionField"] != nil {
                    self.isDimensionField = dict["IsDimensionField"] as! Bool
                }
                if dict.keys.contains("Meaning") && dict["Meaning"] != nil {
                    self.meaning = dict["Meaning"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
            if dict.keys.contains("CanDelete") && dict["CanDelete"] != nil {
                self.canDelete = dict["CanDelete"] as! Bool
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fields") && dict["Fields"] != nil {
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
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtImportedTime") && dict["GmtImportedTime"] != nil {
                self.gmtImportedTime = dict["GmtImportedTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Module") && dict["Module"] != nil {
                self.module = dict["Module"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
                self.tableMetaId = dict["TableMetaId"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableMetas") && dict["TableMetas"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTableMetasResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PushAllExperimentResponseBody()
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
        if dict.keys.contains("BaseExperimentId") && dict["BaseExperimentId"] != nil {
            self.baseExperimentId = dict["BaseExperimentId"] as! String
        }
        if dict.keys.contains("DimensionFields") && dict["DimensionFields"] != nil {
            self.dimensionFields = dict["DimensionFields"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ExperimentGroupId") && dict["ExperimentGroupId"] != nil {
            self.experimentGroupId = dict["ExperimentGroupId"] as! String
        }
        if dict.keys.contains("ExperimentIds") && dict["ExperimentIds"] != nil {
            self.experimentIds = dict["ExperimentIds"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ReportType") && dict["ReportType"] != nil {
            self.reportType = dict["ReportType"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TimeStatisticsMethod") && dict["TimeStatisticsMethod"] != nil {
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
        if dict.keys.contains("ExperimentReport") && dict["ExperimentReport"] != nil {
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
        if dict.keys.contains("GroupDimension") && dict["GroupDimension"] != nil {
            self.groupDimension = dict["GroupDimension"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReportABMetricGroupResponseBody()
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
        if dict.keys.contains("ContextFeatures") && dict["ContextFeatures"] != nil {
            self.contextFeatures = dict["ContextFeatures"] as! String
        }
        if dict.keys.contains("FeatureConsistencyCheckJobConfigId") && dict["FeatureConsistencyCheckJobConfigId"] != nil {
            self.featureConsistencyCheckJobConfigId = dict["FeatureConsistencyCheckJobConfigId"] as! String
        }
        if dict.keys.contains("GeneratedFeatures") && dict["GeneratedFeatures"] != nil {
            self.generatedFeatures = dict["GeneratedFeatures"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogItemId") && dict["LogItemId"] != nil {
            self.logItemId = dict["LogItemId"] as! String
        }
        if dict.keys.contains("LogRequestId") && dict["LogRequestId"] != nil {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogRequestTime") && dict["LogRequestTime"] != nil {
            self.logRequestTime = dict["LogRequestTime"] as! Int64
        }
        if dict.keys.contains("LogUserId") && dict["LogUserId"] != nil {
            self.logUserId = dict["LogUserId"] as! String
        }
        if dict.keys.contains("RawFeatures") && dict["RawFeatures"] != nil {
            self.rawFeatures = dict["RawFeatures"] as! String
        }
        if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Definition") && dict["Definition"] != nil {
            self.definition = dict["Definition"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LeftMetricId") && dict["LeftMetricId"] != nil {
            self.leftMetricId = dict["LeftMetricId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") && dict["Operator"] != nil {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("ResultResourceId") && dict["ResultResourceId"] != nil {
            self.resultResourceId = dict["ResultResourceId"] as! String
        }
        if dict.keys.contains("RightMetricId") && dict["RightMetricId"] != nil {
            self.rightMetricId = dict["RightMetricId"] as! String
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("StatisticsCycle") && dict["StatisticsCycle"] != nil {
            self.statisticsCycle = dict["StatisticsCycle"] as! Int32
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ABMetricIds") && dict["ABMetricIds"] != nil {
            self.ABMetricIds = dict["ABMetricIds"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Realtime") && dict["Realtime"] != nil {
            self.realtime = dict["Realtime"] as! Bool
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FlowPercent") && dict["FlowPercent"] != nil {
            self.flowPercent = dict["FlowPercent"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateExperimentGroupRequest : Tea.TeaModel {
    public var config: String?

    public var crowdId: String?

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
        if self.reservcedBuckets != nil {
            map["ReservcedBuckets"] = self.reservcedBuckets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DistributionTimeDuration") && dict["DistributionTimeDuration"] != nil {
            self.distributionTimeDuration = dict["DistributionTimeDuration"] as! Int32
        }
        if dict.keys.contains("DistributionType") && dict["DistributionType"] != nil {
            self.distributionType = dict["DistributionType"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NeedAA") && dict["NeedAA"] != nil {
            self.needAA = dict["NeedAA"] as! Bool
        }
        if dict.keys.contains("ReservcedBuckets") && dict["ReservcedBuckets"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("CompareFeature") && dict["CompareFeature"] != nil {
            self.compareFeature = dict["CompareFeature"] as! Bool
        }
        if dict.keys.contains("EasServiceName") && dict["EasServiceName"] != nil {
            self.easServiceName = dict["EasServiceName"] as! String
        }
        if dict.keys.contains("EasyRecPackagePath") && dict["EasyRecPackagePath"] != nil {
            self.easyRecPackagePath = dict["EasyRecPackagePath"] as! String
        }
        if dict.keys.contains("EasyRecVersion") && dict["EasyRecVersion"] != nil {
            self.easyRecVersion = dict["EasyRecVersion"] as! String
        }
        if dict.keys.contains("FeatureDisplayExclude") && dict["FeatureDisplayExclude"] != nil {
            self.featureDisplayExclude = dict["FeatureDisplayExclude"] as! String
        }
        if dict.keys.contains("FeatureLandingResourceId") && dict["FeatureLandingResourceId"] != nil {
            self.featureLandingResourceId = dict["FeatureLandingResourceId"] as! String
        }
        if dict.keys.contains("FeaturePriority") && dict["FeaturePriority"] != nil {
            self.featurePriority = dict["FeaturePriority"] as! String
        }
        if dict.keys.contains("FeatureStoreItemId") && dict["FeatureStoreItemId"] != nil {
            self.featureStoreItemId = dict["FeatureStoreItemId"] as! String
        }
        if dict.keys.contains("FeatureStoreModelId") && dict["FeatureStoreModelId"] != nil {
            self.featureStoreModelId = dict["FeatureStoreModelId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectId") && dict["FeatureStoreProjectId"] != nil {
            self.featureStoreProjectId = dict["FeatureStoreProjectId"] as! String
        }
        if dict.keys.contains("FeatureStoreProjectName") && dict["FeatureStoreProjectName"] != nil {
            self.featureStoreProjectName = dict["FeatureStoreProjectName"] as! String
        }
        if dict.keys.contains("FeatureStoreSeqFeatureView") && dict["FeatureStoreSeqFeatureView"] != nil {
            self.featureStoreSeqFeatureView = dict["FeatureStoreSeqFeatureView"] as! String
        }
        if dict.keys.contains("FeatureStoreUserId") && dict["FeatureStoreUserId"] != nil {
            self.featureStoreUserId = dict["FeatureStoreUserId"] as! String
        }
        if dict.keys.contains("FgJarVersion") && dict["FgJarVersion"] != nil {
            self.fgJarVersion = dict["FgJarVersion"] as! String
        }
        if dict.keys.contains("FgJsonFileName") && dict["FgJsonFileName"] != nil {
            self.fgJsonFileName = dict["FgJsonFileName"] as! String
        }
        if dict.keys.contains("GenerateZip") && dict["GenerateZip"] != nil {
            self.generateZip = dict["GenerateZip"] as! Bool
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsUseFeatureStore") && dict["IsUseFeatureStore"] != nil {
            self.isUseFeatureStore = dict["IsUseFeatureStore"] as! Bool
        }
        if dict.keys.contains("ItemIdField") && dict["ItemIdField"] != nil {
            self.itemIdField = dict["ItemIdField"] as! String
        }
        if dict.keys.contains("ItemTable") && dict["ItemTable"] != nil {
            self.itemTable = dict["ItemTable"] as! String
        }
        if dict.keys.contains("ItemTablePartitionField") && dict["ItemTablePartitionField"] != nil {
            self.itemTablePartitionField = dict["ItemTablePartitionField"] as! String
        }
        if dict.keys.contains("ItemTablePartitionFieldFormat") && dict["ItemTablePartitionFieldFormat"] != nil {
            self.itemTablePartitionFieldFormat = dict["ItemTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssResourceId") && dict["OssResourceId"] != nil {
            self.ossResourceId = dict["OssResourceId"] as! String
        }
        if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
            self.sampleRate = dict["SampleRate"] as! Double
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("ServiceId") && dict["ServiceId"] != nil {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("UserIdField") && dict["UserIdField"] != nil {
            self.userIdField = dict["UserIdField"] as! String
        }
        if dict.keys.contains("UserTable") && dict["UserTable"] != nil {
            self.userTable = dict["UserTable"] as! String
        }
        if dict.keys.contains("UserTablePartitionField") && dict["UserTablePartitionField"] != nil {
            self.userTablePartitionField = dict["UserTablePartitionField"] as! String
        }
        if dict.keys.contains("UserTablePartitionFieldFormat") && dict["UserTablePartitionFieldFormat"] != nil {
            self.userTablePartitionFieldFormat = dict["UserTablePartitionFieldFormat"] as! String
        }
        if dict.keys.contains("WorkflowName") && dict["WorkflowName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("BucketCount") && dict["BucketCount"] != nil {
            self.bucketCount = dict["BucketCount"] as! Int32
        }
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("DebugCrowdId") && dict["DebugCrowdId"] != nil {
            self.debugCrowdId = dict["DebugCrowdId"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Environment") && dict["Environment"] != nil {
            self.environment = dict["Environment"] as! String
        }
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateParamResponseBody()
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
            if dict.keys.contains("FlowCode") && dict["FlowCode"] != nil {
                self.flowCode = dict["FlowCode"] as! String
            }
            if dict.keys.contains("FlowName") && dict["FlowName"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flows") && dict["Flows"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("IsDimensionField") && dict["IsDimensionField"] != nil {
                self.isDimensionField = dict["IsDimensionField"] as! Bool
            }
            if dict.keys.contains("IsPartitionField") && dict["IsPartitionField"] != nil {
                self.isPartitionField = dict["IsPartitionField"] as! String
            }
            if dict.keys.contains("Meaning") && dict["Meaning"] != nil {
                self.meaning = dict["Meaning"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTableMetaResponseBody()
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
            if dict.keys.contains("Fields") && dict["Fields"] != nil {
                self.fields = dict["Fields"] as! String
            }
            if dict.keys.contains("OperationType") && dict["OperationType"] != nil {
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
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
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
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UploadRecommendationDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
