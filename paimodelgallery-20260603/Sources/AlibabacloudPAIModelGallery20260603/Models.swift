import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ModelGalleryModel : Tea.TeaModel {
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
    public var collection: String?

    public var compressible: Bool?

    public var deepThink: Bool?

    public var demonstrable: Bool?

    public var deployable: Bool?

    public var distillable: Bool?

    public var domain: String?

    public var evaluable: Bool?

    public var extraInfo: [String: Any]?

    public var functionCall: Bool?

    public var gmtCreateTime: String?

    public var gmtLatestVersionModified: String?

    public var gmtModifiedTime: String?

    public var latestVersionName: String?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelId: String?

    public var modelName: String?

    public var modelSeries: String?

    public var modelType: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var parameterSize: Int64?

    public var searchWords: String?

    public var supportedCompressionMethods: [String: Any]?

    public var supportedCompressionResources: String?

    public var supportedDistillationMethods: [String: Any]?

    public var supportedDistillationResources: String?

    public var supportedEvaluationMethods: [String: Any]?

    public var supportedEvaluationResources: String?

    public var supportedInferenceMethods: [String: Any]?

    public var supportedInferenceResources: String?

    public var supportedTrainingMethods: [String: Any]?

    public var supportedTrainingResources: String?

    public var tags: ModelGalleryModel.Tags?

    public var task: String?

    public var trainable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collection != nil {
            map["Collection"] = self.collection!
        }
        if self.compressible != nil {
            map["Compressible"] = self.compressible!
        }
        if self.deepThink != nil {
            map["DeepThink"] = self.deepThink!
        }
        if self.demonstrable != nil {
            map["Demonstrable"] = self.demonstrable!
        }
        if self.deployable != nil {
            map["Deployable"] = self.deployable!
        }
        if self.distillable != nil {
            map["Distillable"] = self.distillable!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.evaluable != nil {
            map["Evaluable"] = self.evaluable!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.functionCall != nil {
            map["FunctionCall"] = self.functionCall!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtLatestVersionModified != nil {
            map["GmtLatestVersionModified"] = self.gmtLatestVersionModified!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.latestVersionName != nil {
            map["LatestVersionName"] = self.latestVersionName!
        }
        if self.modelDescription != nil {
            map["ModelDescription"] = self.modelDescription!
        }
        if self.modelDoc != nil {
            map["ModelDoc"] = self.modelDoc!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelSeries != nil {
            map["ModelSeries"] = self.modelSeries!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.parameterSize != nil {
            map["ParameterSize"] = self.parameterSize!
        }
        if self.searchWords != nil {
            map["SearchWords"] = self.searchWords!
        }
        if self.supportedCompressionMethods != nil {
            map["SupportedCompressionMethods"] = self.supportedCompressionMethods!
        }
        if self.supportedCompressionResources != nil {
            map["SupportedCompressionResources"] = self.supportedCompressionResources!
        }
        if self.supportedDistillationMethods != nil {
            map["SupportedDistillationMethods"] = self.supportedDistillationMethods!
        }
        if self.supportedDistillationResources != nil {
            map["SupportedDistillationResources"] = self.supportedDistillationResources!
        }
        if self.supportedEvaluationMethods != nil {
            map["SupportedEvaluationMethods"] = self.supportedEvaluationMethods!
        }
        if self.supportedEvaluationResources != nil {
            map["SupportedEvaluationResources"] = self.supportedEvaluationResources!
        }
        if self.supportedInferenceMethods != nil {
            map["SupportedInferenceMethods"] = self.supportedInferenceMethods!
        }
        if self.supportedInferenceResources != nil {
            map["SupportedInferenceResources"] = self.supportedInferenceResources!
        }
        if self.supportedTrainingMethods != nil {
            map["SupportedTrainingMethods"] = self.supportedTrainingMethods!
        }
        if self.supportedTrainingResources != nil {
            map["SupportedTrainingResources"] = self.supportedTrainingResources!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.trainable != nil {
            map["Trainable"] = self.trainable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collection"] as? String {
            self.collection = value
        }
        if let value = dict["Compressible"] as? Bool {
            self.compressible = value
        }
        if let value = dict["DeepThink"] as? Bool {
            self.deepThink = value
        }
        if let value = dict["Demonstrable"] as? Bool {
            self.demonstrable = value
        }
        if let value = dict["Deployable"] as? Bool {
            self.deployable = value
        }
        if let value = dict["Distillable"] as? Bool {
            self.distillable = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Evaluable"] as? Bool {
            self.evaluable = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["FunctionCall"] as? Bool {
            self.functionCall = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtLatestVersionModified"] as? String {
            self.gmtLatestVersionModified = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["LatestVersionName"] as? String {
            self.latestVersionName = value
        }
        if let value = dict["ModelDescription"] as? String {
            self.modelDescription = value
        }
        if let value = dict["ModelDoc"] as? String {
            self.modelDoc = value
        }
        if let value = dict["ModelId"] as? String {
            self.modelId = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["ModelSeries"] as? String {
            self.modelSeries = value
        }
        if let value = dict["ModelType"] as? String {
            self.modelType = value
        }
        if let value = dict["OrderNumber"] as? Int64 {
            self.orderNumber = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["ParameterSize"] as? Int64 {
            self.parameterSize = value
        }
        if let value = dict["SearchWords"] as? String {
            self.searchWords = value
        }
        if let value = dict["SupportedCompressionMethods"] as? [String: Any] {
            self.supportedCompressionMethods = value
        }
        if let value = dict["SupportedCompressionResources"] as? String {
            self.supportedCompressionResources = value
        }
        if let value = dict["SupportedDistillationMethods"] as? [String: Any] {
            self.supportedDistillationMethods = value
        }
        if let value = dict["SupportedDistillationResources"] as? String {
            self.supportedDistillationResources = value
        }
        if let value = dict["SupportedEvaluationMethods"] as? [String: Any] {
            self.supportedEvaluationMethods = value
        }
        if let value = dict["SupportedEvaluationResources"] as? String {
            self.supportedEvaluationResources = value
        }
        if let value = dict["SupportedInferenceMethods"] as? [String: Any] {
            self.supportedInferenceMethods = value
        }
        if let value = dict["SupportedInferenceResources"] as? String {
            self.supportedInferenceResources = value
        }
        if let value = dict["SupportedTrainingMethods"] as? [String: Any] {
            self.supportedTrainingMethods = value
        }
        if let value = dict["SupportedTrainingResources"] as? String {
            self.supportedTrainingResources = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = ModelGalleryModel.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["Trainable"] as? Bool {
            self.trainable = value
        }
    }
}

public class GetModelDeploymentResourcesRequest : Tea.TeaModel {
    public var bizKey: String?

    public var modelVersion: String?

    public var profileId: String?

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
        if self.bizKey != nil {
            map["BizKey"] = self.bizKey!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.profileId != nil {
            map["ProfileId"] = self.profileId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizKey"] as? String {
            self.bizKey = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["ProfileId"] as? String {
            self.profileId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetModelDeploymentResourcesResponseBody : Tea.TeaModel {
    public class MemberMatches : Tea.TeaModel {
        public class DedicatedResources : Tea.TeaModel {
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
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
            }
        }
        public class PublicResources : Tea.TeaModel {
            public var instanceType: String?

            public override init() {
                super.init()
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
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
            }
        }
        public class Quotas : Tea.TeaModel {
            public var quotaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.quotaId != nil {
                    map["QuotaId"] = self.quotaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["QuotaId"] as? String {
                    self.quotaId = value
                }
            }
        }
        public var dedicatedResources: [GetModelDeploymentResourcesResponseBody.MemberMatches.DedicatedResources]?

        public var memberType: String?

        public var publicResources: [GetModelDeploymentResourcesResponseBody.MemberMatches.PublicResources]?

        public var quotas: [GetModelDeploymentResourcesResponseBody.MemberMatches.Quotas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dedicatedResources != nil {
                var tmp : [Any] = []
                for k in self.dedicatedResources! {
                    tmp.append(k.toMap())
                }
                map["DedicatedResources"] = tmp
            }
            if self.memberType != nil {
                map["MemberType"] = self.memberType!
            }
            if self.publicResources != nil {
                var tmp : [Any] = []
                for k in self.publicResources! {
                    tmp.append(k.toMap())
                }
                map["PublicResources"] = tmp
            }
            if self.quotas != nil {
                var tmp : [Any] = []
                for k in self.quotas! {
                    tmp.append(k.toMap())
                }
                map["Quotas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DedicatedResources"] as? [Any?] {
                var tmp : [GetModelDeploymentResourcesResponseBody.MemberMatches.DedicatedResources] = []
                for v in value {
                    if v != nil {
                        var model = GetModelDeploymentResourcesResponseBody.MemberMatches.DedicatedResources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dedicatedResources = tmp
            }
            if let value = dict["MemberType"] as? String {
                self.memberType = value
            }
            if let value = dict["PublicResources"] as? [Any?] {
                var tmp : [GetModelDeploymentResourcesResponseBody.MemberMatches.PublicResources] = []
                for v in value {
                    if v != nil {
                        var model = GetModelDeploymentResourcesResponseBody.MemberMatches.PublicResources()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.publicResources = tmp
            }
            if let value = dict["Quotas"] as? [Any?] {
                var tmp : [GetModelDeploymentResourcesResponseBody.MemberMatches.Quotas] = []
                for v in value {
                    if v != nil {
                        var model = GetModelDeploymentResourcesResponseBody.MemberMatches.Quotas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.quotas = tmp
            }
        }
    }
    public var memberMatches: [GetModelDeploymentResourcesResponseBody.MemberMatches]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberMatches != nil {
            var tmp : [Any] = []
            for k in self.memberMatches! {
                tmp.append(k.toMap())
            }
            map["MemberMatches"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberMatches"] as? [Any?] {
            var tmp : [GetModelDeploymentResourcesResponseBody.MemberMatches] = []
            for v in value {
                if v != nil {
                    var model = GetModelDeploymentResourcesResponseBody.MemberMatches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.memberMatches = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetModelDeploymentResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelDeploymentResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelDeploymentResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelDeploymentSpecRequest : Tea.TeaModel {
    public var bizKey: String?

    public var modelVersion: String?

    public var profileId: String?

    public var resourceSelections: String?

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
        if self.bizKey != nil {
            map["BizKey"] = self.bizKey!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.profileId != nil {
            map["ProfileId"] = self.profileId!
        }
        if self.resourceSelections != nil {
            map["ResourceSelections"] = self.resourceSelections!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizKey"] as? String {
            self.bizKey = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["ProfileId"] as? String {
            self.profileId = value
        }
        if let value = dict["ResourceSelections"] as? String {
            self.resourceSelections = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetModelDeploymentSpecResponseBody : Tea.TeaModel {
    public var inferenceSpec: [String: Any]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InferenceSpec"] as? [String: Any] {
            self.inferenceSpec = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetModelDeploymentSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelDeploymentSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelDeploymentSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelDeploymentProfilesRequest : Tea.TeaModel {
    public var bizKey: String?

    public var modelVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizKey != nil {
            map["BizKey"] = self.bizKey!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizKey"] as? String {
            self.bizKey = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
    }
}

public class ListModelDeploymentProfilesResponseBody : Tea.TeaModel {
    public class Profiles : Tea.TeaModel {
        public class Devices : Tea.TeaModel {
            public var deviceCategory: String?

            public var deviceType: String?

            public var displayName: String?

            public var instanceTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceCategory != nil {
                    map["DeviceCategory"] = self.deviceCategory!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.instanceTypes != nil {
                    map["InstanceTypes"] = self.instanceTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceCategory"] as? String {
                    self.deviceCategory = value
                }
                if let value = dict["DeviceType"] as? String {
                    self.deviceType = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["InstanceTypes"] as? [String] {
                    self.instanceTypes = value
                }
            }
        }
        public class Members : Tea.TeaModel {
            public var memberType: String?

            public var meta: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.memberType != nil {
                    map["MemberType"] = self.memberType!
                }
                if self.meta != nil {
                    map["Meta"] = self.meta!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MemberType"] as? String {
                    self.memberType = value
                }
                if let value = dict["Meta"] as? [String: Any] {
                    self.meta = value
                }
            }
        }
        public var category: String?

        public var devices: [ListModelDeploymentProfilesResponseBody.Profiles.Devices]?

        public var framework: String?

        public var labels: [String: String]?

        public var members: [ListModelDeploymentProfilesResponseBody.Profiles.Members]?

        public var optimizations: [String: String]?

        public var profileId: String?

        public var scenario: String?

        public override init() {
            super.init()
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
            if self.devices != nil {
                var tmp : [Any] = []
                for k in self.devices! {
                    tmp.append(k.toMap())
                }
                map["Devices"] = tmp
            }
            if self.framework != nil {
                map["Framework"] = self.framework!
            }
            if self.labels != nil {
                map["Labels"] = self.labels!
            }
            if self.members != nil {
                var tmp : [Any] = []
                for k in self.members! {
                    tmp.append(k.toMap())
                }
                map["Members"] = tmp
            }
            if self.optimizations != nil {
                map["Optimizations"] = self.optimizations!
            }
            if self.profileId != nil {
                map["ProfileId"] = self.profileId!
            }
            if self.scenario != nil {
                map["Scenario"] = self.scenario!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Devices"] as? [Any?] {
                var tmp : [ListModelDeploymentProfilesResponseBody.Profiles.Devices] = []
                for v in value {
                    if v != nil {
                        var model = ListModelDeploymentProfilesResponseBody.Profiles.Devices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.devices = tmp
            }
            if let value = dict["Framework"] as? String {
                self.framework = value
            }
            if let value = dict["Labels"] as? [String: String] {
                self.labels = value
            }
            if let value = dict["Members"] as? [Any?] {
                var tmp : [ListModelDeploymentProfilesResponseBody.Profiles.Members] = []
                for v in value {
                    if v != nil {
                        var model = ListModelDeploymentProfilesResponseBody.Profiles.Members()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.members = tmp
            }
            if let value = dict["Optimizations"] as? [String: String] {
                self.optimizations = value
            }
            if let value = dict["ProfileId"] as? String {
                self.profileId = value
            }
            if let value = dict["Scenario"] as? String {
                self.scenario = value
            }
        }
    }
    public var modelId: String?

    public var modelVersion: String?

    public var profiles: [ListModelDeploymentProfilesResponseBody.Profiles]?

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
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.profiles != nil {
            var tmp : [Any] = []
            for k in self.profiles! {
                tmp.append(k.toMap())
            }
            map["Profiles"] = tmp
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
        if let value = dict["ModelId"] as? String {
            self.modelId = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["Profiles"] as? [Any?] {
            var tmp : [ListModelDeploymentProfilesResponseBody.Profiles] = []
            for v in value {
                if v != nil {
                    var model = ListModelDeploymentProfilesResponseBody.Profiles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.profiles = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListModelDeploymentProfilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelDeploymentProfilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelDeploymentProfilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelGalleryModelsRequest : Tea.TeaModel {
    public class Conditions : Tea.TeaModel {
        public var column: String?

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
            if self.column != nil {
                map["Column"] = self.column!
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
            if let value = dict["Column"] as? String {
                self.column = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
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
    public var collections: String?

    public var compressible: Bool?

    public var conditions: [ListModelGalleryModelsRequest.Conditions]?

    public var deepThink: Bool?

    public var demonstrable: Bool?

    public var deployable: Bool?

    public var distillable: Bool?

    public var domain: String?

    public var evaluable: Bool?

    public var functionCall: Bool?

    public var modelName: String?

    public var modelSeries: String?

    public var modelType: String?

    public var order: String?

    public var origin: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var sortBy: String?

    public var supportedCompressionResource: String?

    public var supportedDistillationResource: String?

    public var supportedEvaluationResource: String?

    public var supportedInferenceResource: String?

    public var supportedTrainingResource: String?

    public var tag: [ListModelGalleryModelsRequest.Tag]?

    public var task: String?

    public var trainable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collections != nil {
            map["Collections"] = self.collections!
        }
        if self.compressible != nil {
            map["Compressible"] = self.compressible!
        }
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["Conditions"] = tmp
        }
        if self.deepThink != nil {
            map["DeepThink"] = self.deepThink!
        }
        if self.demonstrable != nil {
            map["Demonstrable"] = self.demonstrable!
        }
        if self.deployable != nil {
            map["Deployable"] = self.deployable!
        }
        if self.distillable != nil {
            map["Distillable"] = self.distillable!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.evaluable != nil {
            map["Evaluable"] = self.evaluable!
        }
        if self.functionCall != nil {
            map["FunctionCall"] = self.functionCall!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelSeries != nil {
            map["ModelSeries"] = self.modelSeries!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.supportedCompressionResource != nil {
            map["SupportedCompressionResource"] = self.supportedCompressionResource!
        }
        if self.supportedDistillationResource != nil {
            map["SupportedDistillationResource"] = self.supportedDistillationResource!
        }
        if self.supportedEvaluationResource != nil {
            map["SupportedEvaluationResource"] = self.supportedEvaluationResource!
        }
        if self.supportedInferenceResource != nil {
            map["SupportedInferenceResource"] = self.supportedInferenceResource!
        }
        if self.supportedTrainingResource != nil {
            map["SupportedTrainingResource"] = self.supportedTrainingResource!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.trainable != nil {
            map["Trainable"] = self.trainable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collections"] as? String {
            self.collections = value
        }
        if let value = dict["Compressible"] as? Bool {
            self.compressible = value
        }
        if let value = dict["Conditions"] as? [Any?] {
            var tmp : [ListModelGalleryModelsRequest.Conditions] = []
            for v in value {
                if v != nil {
                    var model = ListModelGalleryModelsRequest.Conditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditions = tmp
        }
        if let value = dict["DeepThink"] as? Bool {
            self.deepThink = value
        }
        if let value = dict["Demonstrable"] as? Bool {
            self.demonstrable = value
        }
        if let value = dict["Deployable"] as? Bool {
            self.deployable = value
        }
        if let value = dict["Distillable"] as? Bool {
            self.distillable = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Evaluable"] as? Bool {
            self.evaluable = value
        }
        if let value = dict["FunctionCall"] as? Bool {
            self.functionCall = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["ModelSeries"] as? String {
            self.modelSeries = value
        }
        if let value = dict["ModelType"] as? String {
            self.modelType = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SupportedCompressionResource"] as? String {
            self.supportedCompressionResource = value
        }
        if let value = dict["SupportedDistillationResource"] as? String {
            self.supportedDistillationResource = value
        }
        if let value = dict["SupportedEvaluationResource"] as? String {
            self.supportedEvaluationResource = value
        }
        if let value = dict["SupportedInferenceResource"] as? String {
            self.supportedInferenceResource = value
        }
        if let value = dict["SupportedTrainingResource"] as? String {
            self.supportedTrainingResource = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListModelGalleryModelsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListModelGalleryModelsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["Trainable"] as? Bool {
            self.trainable = value
        }
    }
}

public class ListModelGalleryModelsShrinkRequest : Tea.TeaModel {
    public var collections: String?

    public var compressible: Bool?

    public var conditionsShrink: String?

    public var deepThink: Bool?

    public var demonstrable: Bool?

    public var deployable: Bool?

    public var distillable: Bool?

    public var domain: String?

    public var evaluable: Bool?

    public var functionCall: Bool?

    public var modelName: String?

    public var modelSeries: String?

    public var modelType: String?

    public var order: String?

    public var origin: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var sortBy: String?

    public var supportedCompressionResource: String?

    public var supportedDistillationResource: String?

    public var supportedEvaluationResource: String?

    public var supportedInferenceResource: String?

    public var supportedTrainingResource: String?

    public var tagShrink: String?

    public var task: String?

    public var trainable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collections != nil {
            map["Collections"] = self.collections!
        }
        if self.compressible != nil {
            map["Compressible"] = self.compressible!
        }
        if self.conditionsShrink != nil {
            map["Conditions"] = self.conditionsShrink!
        }
        if self.deepThink != nil {
            map["DeepThink"] = self.deepThink!
        }
        if self.demonstrable != nil {
            map["Demonstrable"] = self.demonstrable!
        }
        if self.deployable != nil {
            map["Deployable"] = self.deployable!
        }
        if self.distillable != nil {
            map["Distillable"] = self.distillable!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.evaluable != nil {
            map["Evaluable"] = self.evaluable!
        }
        if self.functionCall != nil {
            map["FunctionCall"] = self.functionCall!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.modelSeries != nil {
            map["ModelSeries"] = self.modelSeries!
        }
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.supportedCompressionResource != nil {
            map["SupportedCompressionResource"] = self.supportedCompressionResource!
        }
        if self.supportedDistillationResource != nil {
            map["SupportedDistillationResource"] = self.supportedDistillationResource!
        }
        if self.supportedEvaluationResource != nil {
            map["SupportedEvaluationResource"] = self.supportedEvaluationResource!
        }
        if self.supportedInferenceResource != nil {
            map["SupportedInferenceResource"] = self.supportedInferenceResource!
        }
        if self.supportedTrainingResource != nil {
            map["SupportedTrainingResource"] = self.supportedTrainingResource!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.trainable != nil {
            map["Trainable"] = self.trainable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collections"] as? String {
            self.collections = value
        }
        if let value = dict["Compressible"] as? Bool {
            self.compressible = value
        }
        if let value = dict["Conditions"] as? String {
            self.conditionsShrink = value
        }
        if let value = dict["DeepThink"] as? Bool {
            self.deepThink = value
        }
        if let value = dict["Demonstrable"] as? Bool {
            self.demonstrable = value
        }
        if let value = dict["Deployable"] as? Bool {
            self.deployable = value
        }
        if let value = dict["Distillable"] as? Bool {
            self.distillable = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Evaluable"] as? Bool {
            self.evaluable = value
        }
        if let value = dict["FunctionCall"] as? Bool {
            self.functionCall = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
        }
        if let value = dict["ModelSeries"] as? String {
            self.modelSeries = value
        }
        if let value = dict["ModelType"] as? String {
            self.modelType = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SupportedCompressionResource"] as? String {
            self.supportedCompressionResource = value
        }
        if let value = dict["SupportedDistillationResource"] as? String {
            self.supportedDistillationResource = value
        }
        if let value = dict["SupportedEvaluationResource"] as? String {
            self.supportedEvaluationResource = value
        }
        if let value = dict["SupportedInferenceResource"] as? String {
            self.supportedInferenceResource = value
        }
        if let value = dict["SupportedTrainingResource"] as? String {
            self.supportedTrainingResource = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["Trainable"] as? Bool {
            self.trainable = value
        }
    }
}

public class ListModelGalleryModelsResponseBody : Tea.TeaModel {
    public var models: ModelGalleryModel?

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
        try self.models?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.models != nil {
            map["Models"] = self.models?.toMap()
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
        if let value = dict["Models"] as? [String: Any?] {
            var model = ModelGalleryModel()
            model.fromMap(value)
            self.models = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListModelGalleryModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelGalleryModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelGalleryModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
