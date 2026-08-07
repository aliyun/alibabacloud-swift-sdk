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
