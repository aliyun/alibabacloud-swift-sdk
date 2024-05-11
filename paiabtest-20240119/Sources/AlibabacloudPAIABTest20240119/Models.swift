import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckLayerRequest : Tea.TeaModel {
    public var paramNames: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramNames != nil {
            map["ParamNames"] = self.paramNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamNames") && dict["ParamNames"] != nil {
            self.paramNames = dict["ParamNames"] as! String
        }
    }
}

public class CheckLayerResponseBody : Tea.TeaModel {
    public class CheckResults : Tea.TeaModel {
        public var experimentId: String?

        public var experimentName: String?

        public var paramName: String?

        public override init() {
            super.init()
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
            if self.experimentName != nil {
                map["ExperimentName"] = self.experimentName!
            }
            if self.paramName != nil {
                map["ParamName"] = self.paramName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("ExperimentName") && dict["ExperimentName"] != nil {
                self.experimentName = dict["ExperimentName"] as! String
            }
            if dict.keys.contains("ParamName") && dict["ParamName"] != nil {
                self.paramName = dict["ParamName"] as! String
            }
        }
    }
    public var checkResults: [CheckLayerResponseBody.CheckResults]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkResults != nil {
            var tmp : [Any] = []
            for k in self.checkResults! {
                tmp.append(k.toMap())
            }
            map["CheckResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckResults") && dict["CheckResults"] != nil {
            var tmp : [CheckLayerResponseBody.CheckResults] = []
            for v in dict["CheckResults"] as! [Any] {
                var model = CheckLayerResponseBody.CheckResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.checkResults = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckLayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckLayerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CheckLayerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCrowdRequest : Tea.TeaModel {
    public var description_: String?

    public var label: String?

    public var name: String?

    public var users: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            self.users = dict["Users"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class CreateDomainRequest : Tea.TeaModel {
    public var bucketType: String?

    public var condition: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var flow: Int64?

    public var layerId: String?

    public var name: String?

    public var projectId: String?

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
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int64
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public var domainId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateExperimentRequest : Tea.TeaModel {
    public var bucketType: String?

    public var condition: String?

    public var coreMetricId: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var endTime: String?

    public var flow: Int32?

    public var focusMetricIds: String?

    public var layerId: String?

    public var name: String?

    public var startTime: String?

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
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.coreMetricId != nil {
            map["CoreMetricId"] = self.coreMetricId!
        }
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.focusMetricIds != nil {
            map["FocusMetricIds"] = self.focusMetricIds!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("CoreMetricId") && dict["CoreMetricId"] != nil {
            self.coreMetricId = dict["CoreMetricId"] as! String
        }
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int32
        }
        if dict.keys.contains("FocusMetricIds") && dict["FocusMetricIds"] != nil {
            self.focusMetricIds = dict["FocusMetricIds"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class CreateExperimentVersionRequest : Tea.TeaModel {
    public var config: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var experimentId: String?

    public var flow: Int32?

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
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
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
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateExperimentVersionResponseBody : Tea.TeaModel {
    public var experimentVersionId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.experimentVersionId != nil {
            map["ExperimentVersionId"] = self.experimentVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentVersionId") && dict["ExperimentVersionId"] != nil {
            self.experimentVersionId = dict["ExperimentVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateExperimentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateExperimentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFeatureRequest : Tea.TeaModel {
    public var regionId: String?

    public var name: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class CreateFeatureResponseBody : Tea.TeaModel {
    public var featureId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureId != nil {
            map["FeatureId"] = self.featureId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureId") && dict["FeatureId"] != nil {
            self.featureId = dict["FeatureId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLayerRequest : Tea.TeaModel {
    public var description_: String?

    public var domainId: String?

    public var name: String?

    public var projectId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class CreateMetricRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var metricGroupId: String?

    public var name: String?

    public var sourceTableMetaId: String?

    public override init() {
        super.init()
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
        if self.metricGroupId != nil {
            map["MetricGroupId"] = self.metricGroupId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceTableMetaId != nil {
            map["SourceTableMetaId"] = self.sourceTableMetaId!
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
        if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
            self.metricGroupId = dict["MetricGroupId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceTableMetaId") && dict["SourceTableMetaId"] != nil {
            self.sourceTableMetaId = dict["SourceTableMetaId"] as! String
        }
    }
}

public class CreateMetricResponseBody : Tea.TeaModel {
    public var metricId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricId != nil {
            map["MetricId"] = self.metricId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricId") && dict["MetricId"] != nil {
            self.metricId = dict["MetricId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMetricGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateMetricGroupResponseBody : Tea.TeaModel {
    public var metricGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricGroupId != nil {
            map["MetricGroupId"] = self.metricGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
            self.metricGroupId = dict["MetricGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMetricGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTableMetaRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
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
    public var datasourceInfo: String?

    public var datasourceType: String?

    public var description_: String?

    public var fields: [CreateTableMetaRequest.Fields]?

    public var name: String?

    public var tableName: String?

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
        if self.datasourceInfo != nil {
            map["DatasourceInfo"] = self.datasourceInfo!
        }
        if self.datasourceType != nil {
            map["DatasourceType"] = self.datasourceType!
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasourceInfo") && dict["DatasourceInfo"] != nil {
            self.datasourceInfo = dict["DatasourceInfo"] as! String
        }
        if dict.keys.contains("DatasourceType") && dict["DatasourceType"] != nil {
            self.datasourceType = dict["DatasourceType"] as! String
        }
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

public class DeleteExperimentVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteExperimentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteExperimentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFeatureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

public class DeleteMetricResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMetricGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMetricGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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

public class GetCrowdResponseBody : Tea.TeaModel {
    public var crowdId: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var label: String?

    public var name: String?

    public var quantity: String?

    public var requestId: String?

    public var users: String?

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
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
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
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            self.users = dict["Users"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetCrowdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCrowdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetCrowdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDomainRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class GetDomainResponseBody : Tea.TeaModel {
    public var bucketType: String?

    public var condition: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var domainId: String?

    public var flow: Int64?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var isDefaultDomain: Bool?

    public var layerId: String?

    public var layerName: String?

    public var name: String?

    public var projectId: String?

    public var projectName: String?

    public var requestId: String?

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
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.isDefaultDomain != nil {
            map["IsDefaultDomain"] = self.isDefaultDomain!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.layerName != nil {
            map["LayerName"] = self.layerName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int64
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("IsDefaultDomain") && dict["IsDefaultDomain"] != nil {
            self.isDefaultDomain = dict["IsDefaultDomain"] as! Bool
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("LayerName") && dict["LayerName"] != nil {
            self.layerName = dict["LayerName"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExperimentResponseBody : Tea.TeaModel {
    public var bucketType: String?

    public var buckets: String?

    public var condition: String?

    public var coreMetricId: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var domainName: String?

    public var endTime: String?

    public var experimentId: String?

    public var flow: Int32?

    public var focusMetricIds: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var layerId: String?

    public var layerName: String?

    public var name: String?

    public var owner: String?

    public var projectName: String?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

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
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.coreMetricId != nil {
            map["CoreMetricId"] = self.coreMetricId!
        }
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.focusMetricIds != nil {
            map["FocusMetricIds"] = self.focusMetricIds!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.layerName != nil {
            map["LayerName"] = self.layerName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("CoreMetricId") && dict["CoreMetricId"] != nil {
            self.coreMetricId = dict["CoreMetricId"] as! String
        }
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int32
        }
        if dict.keys.contains("FocusMetricIds") && dict["FocusMetricIds"] != nil {
            self.focusMetricIds = dict["FocusMetricIds"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("LayerName") && dict["LayerName"] != nil {
            self.layerName = dict["LayerName"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class GetExperimentVersionResponseBody : Tea.TeaModel {
    public var buckets: String?

    public var config: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var experimentId: String?

    public var experimentVersionId: String?

    public var flow: Int32?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var requestId: String?

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
        if self.buckets != nil {
            map["Buckets"] = self.buckets!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.experimentVersionId != nil {
            map["ExperimentVersionId"] = self.experimentVersionId!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
            self.buckets = dict["Buckets"] as! String
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("ExperimentVersionId") && dict["ExperimentVersionId"] != nil {
            self.experimentVersionId = dict["ExperimentVersionId"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int32
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetExperimentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetExperimentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFeatureResponseBody : Tea.TeaModel {
    public var condition: String?

    public var config: String?

    public var domainId: String?

    public var domainName: String?

    public var experimentId: String?

    public var experimentName: String?

    public var experimentOwner: String?

    public var experimentVersionId: String?

    public var experimentVersionName: String?

    public var featureId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var projectId: String?

    public var projectName: String?

    public var releaseTime: String?

    public var requestId: String?

    public var status: String?

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
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.experimentName != nil {
            map["ExperimentName"] = self.experimentName!
        }
        if self.experimentOwner != nil {
            map["ExperimentOwner"] = self.experimentOwner!
        }
        if self.experimentVersionId != nil {
            map["ExperimentVersionId"] = self.experimentVersionId!
        }
        if self.experimentVersionName != nil {
            map["ExperimentVersionName"] = self.experimentVersionName!
        }
        if self.featureId != nil {
            map["FeatureId"] = self.featureId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.releaseTime != nil {
            map["ReleaseTime"] = self.releaseTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("Config") && dict["Config"] != nil {
            self.config = dict["Config"] as! String
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("ExperimentName") && dict["ExperimentName"] != nil {
            self.experimentName = dict["ExperimentName"] as! String
        }
        if dict.keys.contains("ExperimentOwner") && dict["ExperimentOwner"] != nil {
            self.experimentOwner = dict["ExperimentOwner"] as! String
        }
        if dict.keys.contains("ExperimentVersionId") && dict["ExperimentVersionId"] != nil {
            self.experimentVersionId = dict["ExperimentVersionId"] as! String
        }
        if dict.keys.contains("ExperimentVersionName") && dict["ExperimentVersionName"] != nil {
            self.experimentVersionName = dict["ExperimentVersionName"] as! String
        }
        if dict.keys.contains("FeatureId") && dict["FeatureId"] != nil {
            self.featureId = dict["FeatureId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ReleaseTime") && dict["ReleaseTime"] != nil {
            self.releaseTime = dict["ReleaseTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLayerResponseBody : Tea.TeaModel {
    public var description_: String?

    public var domainId: String?

    public var domainName: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var isDefaultLayer: Bool?

    public var layerId: String?

    public var name: String?

    public var projectId: String?

    public var projectName: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.isDefaultLayer != nil {
            map["IsDefaultLayer"] = self.isDefaultLayer!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("IsDefaultLayer") && dict["IsDefaultLayer"] != nil {
            self.isDefaultLayer = dict["IsDefaultLayer"] as! Bool
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class GetMetricResponseBody : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var metricGroupId: String?

    public var metricId: String?

    public var name: String?

    public var requestId: String?

    public var sourceTableMetaId: String?

    public var sourceTableMetaName: String?

    public override init() {
        super.init()
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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.metricGroupId != nil {
            map["MetricGroupId"] = self.metricGroupId!
        }
        if self.metricId != nil {
            map["MetricId"] = self.metricId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceTableMetaId != nil {
            map["SourceTableMetaId"] = self.sourceTableMetaId!
        }
        if self.sourceTableMetaName != nil {
            map["SourceTableMetaName"] = self.sourceTableMetaName!
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
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
            self.metricGroupId = dict["MetricGroupId"] as! String
        }
        if dict.keys.contains("MetricId") && dict["MetricId"] != nil {
            self.metricId = dict["MetricId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceTableMetaId") && dict["SourceTableMetaId"] != nil {
            self.sourceTableMetaId = dict["SourceTableMetaId"] as! String
        }
        if dict.keys.contains("SourceTableMetaName") && dict["SourceTableMetaName"] != nil {
            self.sourceTableMetaName = dict["SourceTableMetaName"] as! String
        }
    }
}

public class GetMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMetricGroupResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var definition: String?

        public var description_: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var metricId: String?

        public var name: String?

        public var relatedExperimentNumber: Int64?

        public var sourceTableMetaId: String?

        public override init() {
            super.init()
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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.metricId != nil {
                map["MetricId"] = self.metricId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.relatedExperimentNumber != nil {
                map["RelatedExperimentNumber"] = self.relatedExperimentNumber!
            }
            if self.sourceTableMetaId != nil {
                map["SourceTableMetaId"] = self.sourceTableMetaId!
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
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("MetricId") && dict["MetricId"] != nil {
                self.metricId = dict["MetricId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RelatedExperimentNumber") && dict["RelatedExperimentNumber"] != nil {
                self.relatedExperimentNumber = dict["RelatedExperimentNumber"] as! Int64
            }
            if dict.keys.contains("SourceTableMetaId") && dict["SourceTableMetaId"] != nil {
                self.sourceTableMetaId = dict["SourceTableMetaId"] as! String
            }
        }
    }
    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var metricGroupId: String?

    public var metrics: [GetMetricGroupResponseBody.Metrics]?

    public var name: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.metricGroupId != nil {
            map["MetricGroupId"] = self.metricGroupId!
        }
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
            self.metricGroupId = dict["MetricGroupId"] as! String
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            var tmp : [GetMetricGroupResponseBody.Metrics] = []
            for v in dict["Metrics"] as! [Any] {
                var model = GetMetricGroupResponseBody.Metrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metrics = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetricGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public var defaultDomainId: String?

    public var defaultLayerId: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var projectId: String?

    public var requestId: String?

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
        if self.defaultDomainId != nil {
            map["DefaultDomainId"] = self.defaultDomainId!
        }
        if self.defaultLayerId != nil {
            map["DefaultLayerId"] = self.defaultLayerId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultDomainId") && dict["DefaultDomainId"] != nil {
            self.defaultDomainId = dict["DefaultDomainId"] as! String
        }
        if dict.keys.contains("DefaultLayerId") && dict["DefaultLayerId"] != nil {
            self.defaultLayerId = dict["DefaultLayerId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTableMetaResponseBody : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
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
    public var datasourceInfo: String?

    public var datasourceType: String?

    public var description_: String?

    public var fields: [GetTableMetaResponseBody.Fields]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var name: String?

    public var requestId: String?

    public var tableMetaId: String?

    public var tableName: String?

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
        if self.datasourceInfo != nil {
            map["DatasourceInfo"] = self.datasourceInfo!
        }
        if self.datasourceType != nil {
            map["DatasourceType"] = self.datasourceType!
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
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasourceInfo") && dict["DatasourceInfo"] != nil {
            self.datasourceInfo = dict["DatasourceInfo"] as! String
        }
        if dict.keys.contains("DatasourceType") && dict["DatasourceType"] != nil {
            self.datasourceType = dict["DatasourceType"] as! String
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
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
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

public class ListCrowdsRequest : Tea.TeaModel {
    public var all: Bool?

    public var crowdId: String?

    public var crowdName: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var sortBy: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.crowdId != nil {
            map["CrowdId"] = self.crowdId!
        }
        if self.crowdName != nil {
            map["CrowdName"] = self.crowdName!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
            self.crowdId = dict["CrowdId"] as! String
        }
        if dict.keys.contains("CrowdName") && dict["CrowdName"] != nil {
            self.crowdName = dict["CrowdName"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListCrowdsResponseBody : Tea.TeaModel {
    public class Crowds : Tea.TeaModel {
        public var aliyunId: String?

        public var crowdId: String?

        public var description_: String?

        public var gmtCreateTime: String?

        public var gmtModifyTime: String?

        public var label: String?

        public var name: String?

        public var quantity: String?

        public var users: String?

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
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.crowdId != nil {
                map["CrowdId"] = self.crowdId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifyTime != nil {
                map["GmtModifyTime"] = self.gmtModifyTime!
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
            if self.users != nil {
                map["Users"] = self.users!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunId") && dict["AliyunId"] != nil {
                self.aliyunId = dict["AliyunId"] as! String
            }
            if dict.keys.contains("CrowdId") && dict["CrowdId"] != nil {
                self.crowdId = dict["CrowdId"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
                self.gmtModifyTime = dict["GmtModifyTime"] as! String
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
            if dict.keys.contains("Users") && dict["Users"] != nil {
                self.users = dict["Users"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
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

public class ListDomainsRequest : Tea.TeaModel {
    public var all: Bool?

    public var domainId: String?

    public var domainName: String?

    public var layerId: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectId: String?

    public var regionId: String?

    public var sortBy: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public var bucketType: String?

        public var condition: String?

        public var crowdIds: String?

        public var debugUsers: String?

        public var description_: String?

        public var domainId: String?

        public var flow: Int64?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var isDefaultDomain: Bool?

        public var layerId: String?

        public var layerName: String?

        public var name: String?

        public var projectId: String?

        public var projectName: String?

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
            if self.bucketType != nil {
                map["BucketType"] = self.bucketType!
            }
            if self.condition != nil {
                map["Condition"] = self.condition!
            }
            if self.crowdIds != nil {
                map["CrowdIds"] = self.crowdIds!
            }
            if self.debugUsers != nil {
                map["DebugUsers"] = self.debugUsers!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.flow != nil {
                map["Flow"] = self.flow!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.isDefaultDomain != nil {
                map["IsDefaultDomain"] = self.isDefaultDomain!
            }
            if self.layerId != nil {
                map["LayerId"] = self.layerId!
            }
            if self.layerName != nil {
                map["LayerName"] = self.layerName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
                self.bucketType = dict["BucketType"] as! String
            }
            if dict.keys.contains("Condition") && dict["Condition"] != nil {
                self.condition = dict["Condition"] as! String
            }
            if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
                self.crowdIds = dict["CrowdIds"] as! String
            }
            if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("Flow") && dict["Flow"] != nil {
                self.flow = dict["Flow"] as! Int64
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("IsDefaultDomain") && dict["IsDefaultDomain"] != nil {
                self.isDefaultDomain = dict["IsDefaultDomain"] as! Bool
            }
            if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("LayerName") && dict["LayerName"] != nil {
                self.layerName = dict["LayerName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var domains: [ListDomainsResponseBody.Domains]?

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
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
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
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            var tmp : [ListDomainsResponseBody.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = ListDomainsResponseBody.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
    }
}

public class ListDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExperimentVersionsRequest : Tea.TeaModel {
    public var all: Bool?

    public var experimentId: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
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
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListExperimentVersionsResponseBody : Tea.TeaModel {
    public class ExperimentVersions : Tea.TeaModel {
        public var buckets: String?

        public var config: String?

        public var crowdIds: String?

        public var debugUsers: String?

        public var description_: String?

        public var experimentId: String?

        public var experimentVersionId: String?

        public var flow: Int32?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

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
            if self.buckets != nil {
                map["Buckets"] = self.buckets!
            }
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.crowdIds != nil {
                map["CrowdIds"] = self.crowdIds!
            }
            if self.debugUsers != nil {
                map["DebugUsers"] = self.debugUsers!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.experimentVersionId != nil {
                map["ExperimentVersionId"] = self.experimentVersionId!
            }
            if self.flow != nil {
                map["Flow"] = self.flow!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
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
            if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
                self.crowdIds = dict["CrowdIds"] as! String
            }
            if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("ExperimentVersionId") && dict["ExperimentVersionId"] != nil {
                self.experimentVersionId = dict["ExperimentVersionId"] as! String
            }
            if dict.keys.contains("Flow") && dict["Flow"] != nil {
                self.flow = dict["Flow"] as! Int32
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var experimentVersions: [ListExperimentVersionsResponseBody.ExperimentVersions]?

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
        if self.experimentVersions != nil {
            var tmp : [Any] = []
            for k in self.experimentVersions! {
                tmp.append(k.toMap())
            }
            map["ExperimentVersions"] = tmp
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
        if dict.keys.contains("ExperimentVersions") && dict["ExperimentVersions"] != nil {
            var tmp : [ListExperimentVersionsResponseBody.ExperimentVersions] = []
            for v in dict["ExperimentVersions"] as! [Any] {
                var model = ListExperimentVersionsResponseBody.ExperimentVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.experimentVersions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListExperimentVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListExperimentVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExperimentsRequest : Tea.TeaModel {
    public var all: Bool?

    public var experimentId: String?

    public var experimentName: String?

    public var layerId: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var projectId: String?

    public var sortBy: String?

    public var status: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.experimentName != nil {
            map["ExperimentName"] = self.experimentName!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("ExperimentName") && dict["ExperimentName"] != nil {
            self.experimentName = dict["ExperimentName"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListExperimentsResponseBody : Tea.TeaModel {
    public class Experiments : Tea.TeaModel {
        public var bucketType: String?

        public var buckets: String?

        public var condition: String?

        public var coreMetricId: String?

        public var crowdIds: String?

        public var debugUsers: String?

        public var description_: String?

        public var domainName: String?

        public var endTime: String?

        public var experimentId: String?

        public var flow: Int32?

        public var focusMetricIds: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var layerId: String?

        public var layerName: String?

        public var name: String?

        public var owner: String?

        public var projectName: String?

        public var startTime: String?

        public var status: String?

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
            if self.bucketType != nil {
                map["BucketType"] = self.bucketType!
            }
            if self.buckets != nil {
                map["Buckets"] = self.buckets!
            }
            if self.condition != nil {
                map["Condition"] = self.condition!
            }
            if self.coreMetricId != nil {
                map["CoreMetricId"] = self.coreMetricId!
            }
            if self.crowdIds != nil {
                map["CrowdIds"] = self.crowdIds!
            }
            if self.debugUsers != nil {
                map["DebugUsers"] = self.debugUsers!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.flow != nil {
                map["Flow"] = self.flow!
            }
            if self.focusMetricIds != nil {
                map["FocusMetricIds"] = self.focusMetricIds!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.layerId != nil {
                map["LayerId"] = self.layerId!
            }
            if self.layerName != nil {
                map["LayerName"] = self.layerName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
                self.bucketType = dict["BucketType"] as! String
            }
            if dict.keys.contains("Buckets") && dict["Buckets"] != nil {
                self.buckets = dict["Buckets"] as! String
            }
            if dict.keys.contains("Condition") && dict["Condition"] != nil {
                self.condition = dict["Condition"] as! String
            }
            if dict.keys.contains("CoreMetricId") && dict["CoreMetricId"] != nil {
                self.coreMetricId = dict["CoreMetricId"] as! String
            }
            if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
                self.crowdIds = dict["CrowdIds"] as! String
            }
            if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
                self.debugUsers = dict["DebugUsers"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("Flow") && dict["Flow"] != nil {
                self.flow = dict["Flow"] as! Int32
            }
            if dict.keys.contains("FocusMetricIds") && dict["FocusMetricIds"] != nil {
                self.focusMetricIds = dict["FocusMetricIds"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("LayerName") && dict["LayerName"] != nil {
                self.layerName = dict["LayerName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
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

public class ListFeaturesRequest : Tea.TeaModel {
    public var all: Bool?

    public var domainId: String?

    public var featureId: String?

    public var featureName: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var sortBy: String?

    public var status: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.featureId != nil {
            map["FeatureId"] = self.featureId!
        }
        if self.featureName != nil {
            map["FeatureName"] = self.featureName!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("FeatureId") && dict["FeatureId"] != nil {
            self.featureId = dict["FeatureId"] as! String
        }
        if dict.keys.contains("FeatureName") && dict["FeatureName"] != nil {
            self.featureName = dict["FeatureName"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListFeaturesResponseBody : Tea.TeaModel {
    public class Features : Tea.TeaModel {
        public var config: String?

        public var domainId: String?

        public var domainName: String?

        public var experimentId: String?

        public var experimentName: String?

        public var experimentOwner: String?

        public var experimentVersionId: String?

        public var experimentVersionName: String?

        public var featureId: String?

        public var filter: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var name: String?

        public var projectId: String?

        public var projectName: String?

        public var releaseTime: String?

        public var status: String?

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
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.experimentName != nil {
                map["ExperimentName"] = self.experimentName!
            }
            if self.experimentOwner != nil {
                map["ExperimentOwner"] = self.experimentOwner!
            }
            if self.experimentVersionId != nil {
                map["ExperimentVersionId"] = self.experimentVersionId!
            }
            if self.experimentVersionName != nil {
                map["ExperimentVersionName"] = self.experimentVersionName!
            }
            if self.featureId != nil {
                map["FeatureId"] = self.featureId!
            }
            if self.filter != nil {
                map["Filter"] = self.filter!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("ExperimentName") && dict["ExperimentName"] != nil {
                self.experimentName = dict["ExperimentName"] as! String
            }
            if dict.keys.contains("ExperimentOwner") && dict["ExperimentOwner"] != nil {
                self.experimentOwner = dict["ExperimentOwner"] as! String
            }
            if dict.keys.contains("ExperimentVersionId") && dict["ExperimentVersionId"] != nil {
                self.experimentVersionId = dict["ExperimentVersionId"] as! String
            }
            if dict.keys.contains("ExperimentVersionName") && dict["ExperimentVersionName"] != nil {
                self.experimentVersionName = dict["ExperimentVersionName"] as! String
            }
            if dict.keys.contains("FeatureId") && dict["FeatureId"] != nil {
                self.featureId = dict["FeatureId"] as! String
            }
            if dict.keys.contains("Filter") && dict["Filter"] != nil {
                self.filter = dict["Filter"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ReleaseTime") && dict["ReleaseTime"] != nil {
                self.releaseTime = dict["ReleaseTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var features: [ListFeaturesResponseBody.Features]?

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
        if self.features != nil {
            var tmp : [Any] = []
            for k in self.features! {
                tmp.append(k.toMap())
            }
            map["Features"] = tmp
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
        if dict.keys.contains("Features") && dict["Features"] != nil {
            var tmp : [ListFeaturesResponseBody.Features] = []
            for v in dict["Features"] as! [Any] {
                var model = ListFeaturesResponseBody.Features()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.features = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListFeaturesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFeaturesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListFeaturesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLayersRequest : Tea.TeaModel {
    public var all: Bool?

    public var domainId: String?

    public var layerId: String?

    public var layerName: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: String?

    public var projectId: String?

    public var sortBy: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.layerId != nil {
            map["LayerId"] = self.layerId!
        }
        if self.layerName != nil {
            map["LayerName"] = self.layerName!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
            self.layerId = dict["LayerId"] as! String
        }
        if dict.keys.contains("LayerName") && dict["LayerName"] != nil {
            self.layerName = dict["LayerName"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListLayersResponseBody : Tea.TeaModel {
    public class Layers : Tea.TeaModel {
        public var description_: String?

        public var domainId: String?

        public var domainName: String?

        public var gmtCreateTime: String?

        public var gmtModifyTime: String?

        public var isDefaultLayer: Bool?

        public var layerId: String?

        public var name: String?

        public var projectId: String?

        public var projectName: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifyTime != nil {
                map["GmtModifyTime"] = self.gmtModifyTime!
            }
            if self.isDefaultLayer != nil {
                map["IsDefaultLayer"] = self.isDefaultLayer!
            }
            if self.layerId != nil {
                map["LayerId"] = self.layerId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
                self.gmtModifyTime = dict["GmtModifyTime"] as! String
            }
            if dict.keys.contains("IsDefaultLayer") && dict["IsDefaultLayer"] != nil {
                self.isDefaultLayer = dict["IsDefaultLayer"] as! Bool
            }
            if dict.keys.contains("LayerId") && dict["LayerId"] != nil {
                self.layerId = dict["LayerId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("ProjectName") && dict["ProjectName"] != nil {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
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

public class ListMetricGroupsRequest : Tea.TeaModel {
    public var all: Bool?

    public var metricGroupId: String?

    public var metricGroupName: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var sortBy: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.metricGroupId != nil {
            map["MetricGroupId"] = self.metricGroupId!
        }
        if self.metricGroupName != nil {
            map["MetricGroupName"] = self.metricGroupName!
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
            self.metricGroupId = dict["MetricGroupId"] as! String
        }
        if dict.keys.contains("MetricGroupName") && dict["MetricGroupName"] != nil {
            self.metricGroupName = dict["MetricGroupName"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListMetricGroupsResponseBody : Tea.TeaModel {
    public class MetricGroups : Tea.TeaModel {
        public class Metrics : Tea.TeaModel {
            public var definition: String?

            public var description_: String?

            public var gmtCreateTime: String?

            public var gmtModifiedTime: String?

            public var metricId: String?

            public var name: String?

            public var relatedExperimentsNumber: Int64?

            public var sourceTableMetaId: String?

            public override init() {
                super.init()
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
                if self.gmtCreateTime != nil {
                    map["GmtCreateTime"] = self.gmtCreateTime!
                }
                if self.gmtModifiedTime != nil {
                    map["GmtModifiedTime"] = self.gmtModifiedTime!
                }
                if self.metricId != nil {
                    map["MetricId"] = self.metricId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.relatedExperimentsNumber != nil {
                    map["RelatedExperimentsNumber"] = self.relatedExperimentsNumber!
                }
                if self.sourceTableMetaId != nil {
                    map["SourceTableMetaId"] = self.sourceTableMetaId!
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
                if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                    self.gmtCreateTime = dict["GmtCreateTime"] as! String
                }
                if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                    self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
                }
                if dict.keys.contains("MetricId") && dict["MetricId"] != nil {
                    self.metricId = dict["MetricId"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RelatedExperimentsNumber") && dict["RelatedExperimentsNumber"] != nil {
                    self.relatedExperimentsNumber = dict["RelatedExperimentsNumber"] as! Int64
                }
                if dict.keys.contains("SourceTableMetaId") && dict["SourceTableMetaId"] != nil {
                    self.sourceTableMetaId = dict["SourceTableMetaId"] as! String
                }
            }
        }
        public var description_: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var metricGroupId: String?

        public var metrics: [ListMetricGroupsResponseBody.MetricGroups.Metrics]?

        public var name: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.metricGroupId != nil {
                map["MetricGroupId"] = self.metricGroupId!
            }
            if self.metrics != nil {
                var tmp : [Any] = []
                for k in self.metrics! {
                    tmp.append(k.toMap())
                }
                map["Metrics"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
                self.metricGroupId = dict["MetricGroupId"] as! String
            }
            if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
                var tmp : [ListMetricGroupsResponseBody.MetricGroups.Metrics] = []
                for v in dict["Metrics"] as! [Any] {
                    var model = ListMetricGroupsResponseBody.MetricGroups.Metrics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metrics = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var metricGroups: [ListMetricGroupsResponseBody.MetricGroups]?

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
        if self.metricGroups != nil {
            var tmp : [Any] = []
            for k in self.metricGroups! {
                tmp.append(k.toMap())
            }
            map["MetricGroups"] = tmp
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
        if dict.keys.contains("MetricGroups") && dict["MetricGroups"] != nil {
            var tmp : [ListMetricGroupsResponseBody.MetricGroups] = []
            for v in dict["MetricGroups"] as! [Any] {
                var model = ListMetricGroupsResponseBody.MetricGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metricGroups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListMetricGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMetricGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListMetricGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMetricsRequest : Tea.TeaModel {
    public var all: String?

    public var metricGroupId: String?

    public var metricId: String?

    public var metricName: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.metricGroupId != nil {
            map["MetricGroupId"] = self.metricGroupId!
        }
        if self.metricId != nil {
            map["MetricId"] = self.metricId!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
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
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! String
        }
        if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
            self.metricGroupId = dict["MetricGroupId"] as! String
        }
        if dict.keys.contains("MetricId") && dict["MetricId"] != nil {
            self.metricId = dict["MetricId"] as! String
        }
        if dict.keys.contains("MetricName") && dict["MetricName"] != nil {
            self.metricName = dict["MetricName"] as! String
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

public class ListMetricsResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var definition: String?

        public var description_: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var metricGroupId: String?

        public var metricId: String?

        public var name: String?

        public var sourceTableMetaId: String?

        public var sourceTableMetaName: String?

        public override init() {
            super.init()
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
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.metricGroupId != nil {
                map["MetricGroupId"] = self.metricGroupId!
            }
            if self.metricId != nil {
                map["MetricId"] = self.metricId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sourceTableMetaId != nil {
                map["SourceTableMetaId"] = self.sourceTableMetaId!
            }
            if self.sourceTableMetaName != nil {
                map["SourceTableMetaName"] = self.sourceTableMetaName!
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
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("MetricGroupId") && dict["MetricGroupId"] != nil {
                self.metricGroupId = dict["MetricGroupId"] as! String
            }
            if dict.keys.contains("MetricId") && dict["MetricId"] != nil {
                self.metricId = dict["MetricId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SourceTableMetaId") && dict["SourceTableMetaId"] != nil {
                self.sourceTableMetaId = dict["SourceTableMetaId"] as! String
            }
            if dict.keys.contains("SourceTableMetaName") && dict["SourceTableMetaName"] != nil {
                self.sourceTableMetaName = dict["SourceTableMetaName"] as! String
            }
        }
    }
    public var metrics: [ListMetricsResponseBody.Metrics]?

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
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
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
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            var tmp : [ListMetricsResponseBody.Metrics] = []
            for v in dict["Metrics"] as! [Any] {
                var model = ListMetricsResponseBody.Metrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metrics = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var all: Bool?

    public var name: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var projectId: String?

    public var sortBy: String?

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
        if self.all != nil {
            map["All"] = self.all!
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
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public var aliyunId: String?

        public var defaultDomainId: String?

        public var defaultLayerId: String?

        public var description_: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var name: String?

        public var projectId: String?

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
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.defaultDomainId != nil {
                map["DefaultDomainId"] = self.defaultDomainId!
            }
            if self.defaultLayerId != nil {
                map["DefaultLayerId"] = self.defaultLayerId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliyunId") && dict["AliyunId"] != nil {
                self.aliyunId = dict["AliyunId"] as! String
            }
            if dict.keys.contains("DefaultDomainId") && dict["DefaultDomainId"] != nil {
                self.defaultDomainId = dict["DefaultDomainId"] as! String
            }
            if dict.keys.contains("DefaultLayerId") && dict["DefaultLayerId"] != nil {
                self.defaultLayerId = dict["DefaultLayerId"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var projects: [ListProjectsResponseBody.Projects]?

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
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["Projects"] = tmp
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
        if dict.keys.contains("Projects") && dict["Projects"] != nil {
            var tmp : [ListProjectsResponseBody.Projects] = []
            for v in dict["Projects"] as! [Any] {
                var model = ListProjectsResponseBody.Projects()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.projects = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTableMetasRequest : Tea.TeaModel {
    public var all: Bool?

    public var datasourceType: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var sortBy: String?

    public var tableMetaId: String?

    public var tableMetaName: String?

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
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.datasourceType != nil {
            map["DatasourceType"] = self.datasourceType!
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
        if self.tableMetaId != nil {
            map["TableMetaId"] = self.tableMetaId!
        }
        if self.tableMetaName != nil {
            map["TableMetaName"] = self.tableMetaName!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("DatasourceType") && dict["DatasourceType"] != nil {
            self.datasourceType = dict["DatasourceType"] as! String
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
        if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
            self.tableMetaId = dict["TableMetaId"] as! String
        }
        if dict.keys.contains("TableMetaName") && dict["TableMetaName"] != nil {
            self.tableMetaName = dict["TableMetaName"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListTableMetasResponseBody : Tea.TeaModel {
    public class TableMetas : Tea.TeaModel {
        public class Fields : Tea.TeaModel {
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

        public var datasourceInfo: String?

        public var datasourceType: String?

        public var description_: String?

        public var fields: [ListTableMetasResponseBody.TableMetas.Fields]?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var name: String?

        public var tableMetaId: String?

        public var tableName: String?

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
            if self.canDelete != nil {
                map["CanDelete"] = self.canDelete!
            }
            if self.datasourceInfo != nil {
                map["DatasourceInfo"] = self.datasourceInfo!
            }
            if self.datasourceType != nil {
                map["DatasourceType"] = self.datasourceType!
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
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.tableMetaId != nil {
                map["TableMetaId"] = self.tableMetaId!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanDelete") && dict["CanDelete"] != nil {
                self.canDelete = dict["CanDelete"] as! Bool
            }
            if dict.keys.contains("DatasourceInfo") && dict["DatasourceInfo"] != nil {
                self.datasourceInfo = dict["DatasourceInfo"] as! String
            }
            if dict.keys.contains("DatasourceType") && dict["DatasourceType"] != nil {
                self.datasourceType = dict["DatasourceType"] as! String
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
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TableMetaId") && dict["TableMetaId"] != nil {
                self.tableMetaId = dict["TableMetaId"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
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

public class PushAllExperimentVersionRequest : Tea.TeaModel {
    public var featureName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureName") && dict["FeatureName"] != nil {
            self.featureName = dict["FeatureName"] as! String
        }
    }
}

public class PushAllExperimentVersionResponseBody : Tea.TeaModel {
    public var featureId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureId != nil {
            map["FeatureId"] = self.featureId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureId") && dict["FeatureId"] != nil {
            self.featureId = dict["FeatureId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushAllExperimentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushAllExperimentVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PushAllExperimentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartExperimentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class StartExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopExperimentResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class StopExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCrowdRequest : Tea.TeaModel {
    public var description_: String?

    public var label: String?

    public var name: String?

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
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Users") && dict["Users"] != nil {
            self.users = dict["Users"] as! String
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

public class UpdateDomainRequest : Tea.TeaModel {
    public var bucketType: String?

    public var condition: String?

    public var crowIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var flow: Int64?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.crowIds != nil {
            map["CrowIds"] = self.crowIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("CrowIds") && dict["CrowIds"] != nil {
            self.crowIds = dict["CrowIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class UpdateDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateExperimentRequest : Tea.TeaModel {
    public var bucketType: String?

    public var condition: String?

    public var coreMetricId: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var endTime: String?

    public var flow: Int32?

    public var focusMetricIds: String?

    public var name: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketType != nil {
            map["BucketType"] = self.bucketType!
        }
        if self.condition != nil {
            map["Condition"] = self.condition!
        }
        if self.coreMetricId != nil {
            map["CoreMetricId"] = self.coreMetricId!
        }
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
        }
        if self.focusMetricIds != nil {
            map["FocusMetricIds"] = self.focusMetricIds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketType") && dict["BucketType"] != nil {
            self.bucketType = dict["BucketType"] as! String
        }
        if dict.keys.contains("Condition") && dict["Condition"] != nil {
            self.condition = dict["Condition"] as! String
        }
        if dict.keys.contains("CoreMetricId") && dict["CoreMetricId"] != nil {
            self.coreMetricId = dict["CoreMetricId"] as! String
        }
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int32
        }
        if dict.keys.contains("FocusMetricIds") && dict["FocusMetricIds"] != nil {
            self.focusMetricIds = dict["FocusMetricIds"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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

public class UpdateExperimentVersionRequest : Tea.TeaModel {
    public var config: String?

    public var crowdIds: String?

    public var debugUsers: String?

    public var description_: String?

    public var flow: Int32?

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
        if self.crowdIds != nil {
            map["CrowdIds"] = self.crowdIds!
        }
        if self.debugUsers != nil {
            map["DebugUsers"] = self.debugUsers!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.flow != nil {
            map["Flow"] = self.flow!
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
        if dict.keys.contains("CrowdIds") && dict["CrowdIds"] != nil {
            self.crowdIds = dict["CrowdIds"] as! String
        }
        if dict.keys.contains("DebugUsers") && dict["DebugUsers"] != nil {
            self.debugUsers = dict["DebugUsers"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Flow") && dict["Flow"] != nil {
            self.flow = dict["Flow"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class UpdateExperimentVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateExperimentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateExperimentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFeatureRequest : Tea.TeaModel {
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateFeatureResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateFeatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFeatureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateFeatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLayerRequest : Tea.TeaModel {
    public var description_: String?

    public var domainId: String?

    public var name: String?

    public var projectId: String?

    public override init() {
        super.init()
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
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
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

public class UpdateMetricRequest : Tea.TeaModel {
    public var definition: String?

    public var description_: String?

    public var name: String?

    public var sourceTableMetaId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourceTableMetaId != nil {
            map["SourceTableMetaId"] = self.sourceTableMetaId!
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SourceTableMetaId") && dict["SourceTableMetaId"] != nil {
            self.sourceTableMetaId = dict["SourceTableMetaId"] as! String
        }
    }
}

public class UpdateMetricResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMetricGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateMetricGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateMetricGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMetricGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateMetricGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var description_: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTableMetaRequest : Tea.TeaModel {
    public class Fields : Tea.TeaModel {
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
        if self.fields != nil {
            var tmp : [Any] = []
            for k in self.fields! {
                tmp.append(k.toMap())
            }
            map["Fields"] = tmp
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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
