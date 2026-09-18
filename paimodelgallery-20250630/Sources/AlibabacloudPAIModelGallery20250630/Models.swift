import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DistillationTemplate : Tea.TeaModel {
    public class ModelSlots : Tea.TeaModel {
        public class Backends : Tea.TeaModel {
            public var channel: String?

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
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? String {
                    self.channel = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var backends: [DistillationTemplate.ModelSlots.Backends]?

        public var description_: String?

        public var key: String?

        public var name: String?

        public var required_: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backends != nil {
                var tmp : [Any] = []
                for k in self.backends! {
                    tmp.append(k.toMap())
                }
                map["Backends"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.required_ != nil {
                map["Required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Backends"] as? [Any?] {
                var tmp : [DistillationTemplate.ModelSlots.Backends] = []
                for v in value {
                    if v != nil {
                        var model = DistillationTemplate.ModelSlots.Backends()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backends = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Required"] as? Bool {
                self.required_ = value
            }
        }
    }
    public class PipelineStages : Tea.TeaModel {
        public var description_: String?

        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
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
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class PresetConfig : Tea.TeaModel {
        public var label: String?

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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public class TrainingOptions : Tea.TeaModel {
        public var modelTasks: [String]?

        public var trainingMethods: [String]?

        public var trainingType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelTasks != nil {
                map["ModelTasks"] = self.modelTasks!
            }
            if self.trainingMethods != nil {
                map["TrainingMethods"] = self.trainingMethods!
            }
            if self.trainingType != nil {
                map["TrainingType"] = self.trainingType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModelTasks"] as? [String] {
                self.modelTasks = value
            }
            if let value = dict["TrainingMethods"] as? [String] {
                self.trainingMethods = value
            }
            if let value = dict["TrainingType"] as? String {
                self.trainingType = value
            }
        }
    }
    public var algorithmName: String?

    public var algorithmProvider: String?

    public var algorithmVersion: String?

    public var capabilityTags: [String]?

    public var category: String?

    public var defaultConfig: String?

    public var description_: String?

    public var inputDatasetMustBeDirectory: Bool?

    public var inputExampleUri: String?

    public var jobType: String?

    public var modelSlots: [DistillationTemplate.ModelSlots]?

    public var orderNumber: Int32?

    public var pipelineStages: [DistillationTemplate.PipelineStages]?

    public var presetConfig: [DistillationTemplate.PresetConfig]?

    public var templateId: String?

    public var templateName: String?

    public var trainingOptions: [DistillationTemplate.TrainingOptions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmName != nil {
            map["AlgorithmName"] = self.algorithmName!
        }
        if self.algorithmProvider != nil {
            map["AlgorithmProvider"] = self.algorithmProvider!
        }
        if self.algorithmVersion != nil {
            map["AlgorithmVersion"] = self.algorithmVersion!
        }
        if self.capabilityTags != nil {
            map["CapabilityTags"] = self.capabilityTags!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.defaultConfig != nil {
            map["DefaultConfig"] = self.defaultConfig!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputDatasetMustBeDirectory != nil {
            map["InputDatasetMustBeDirectory"] = self.inputDatasetMustBeDirectory!
        }
        if self.inputExampleUri != nil {
            map["InputExampleUri"] = self.inputExampleUri!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.modelSlots != nil {
            var tmp : [Any] = []
            for k in self.modelSlots! {
                tmp.append(k.toMap())
            }
            map["ModelSlots"] = tmp
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.pipelineStages != nil {
            var tmp : [Any] = []
            for k in self.pipelineStages! {
                tmp.append(k.toMap())
            }
            map["PipelineStages"] = tmp
        }
        if self.presetConfig != nil {
            var tmp : [Any] = []
            for k in self.presetConfig! {
                tmp.append(k.toMap())
            }
            map["PresetConfig"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trainingOptions != nil {
            var tmp : [Any] = []
            for k in self.trainingOptions! {
                tmp.append(k.toMap())
            }
            map["TrainingOptions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmName"] as? String {
            self.algorithmName = value
        }
        if let value = dict["AlgorithmProvider"] as? String {
            self.algorithmProvider = value
        }
        if let value = dict["AlgorithmVersion"] as? String {
            self.algorithmVersion = value
        }
        if let value = dict["CapabilityTags"] as? [String] {
            self.capabilityTags = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["DefaultConfig"] as? String {
            self.defaultConfig = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InputDatasetMustBeDirectory"] as? Bool {
            self.inputDatasetMustBeDirectory = value
        }
        if let value = dict["InputExampleUri"] as? String {
            self.inputExampleUri = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["ModelSlots"] as? [Any?] {
            var tmp : [DistillationTemplate.ModelSlots] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplate.ModelSlots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.modelSlots = tmp
        }
        if let value = dict["OrderNumber"] as? Int32 {
            self.orderNumber = value
        }
        if let value = dict["PipelineStages"] as? [Any?] {
            var tmp : [DistillationTemplate.PipelineStages] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplate.PipelineStages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pipelineStages = tmp
        }
        if let value = dict["PresetConfig"] as? [Any?] {
            var tmp : [DistillationTemplate.PresetConfig] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplate.PresetConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.presetConfig = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrainingOptions"] as? [Any?] {
            var tmp : [DistillationTemplate.TrainingOptions] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplate.TrainingOptions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trainingOptions = tmp
        }
    }
}

public class DistillationTemplateSummary : Tea.TeaModel {
    public class PipelineStages : Tea.TeaModel {
        public var description_: String?

        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
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
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public class TrainingOptions : Tea.TeaModel {
        public var modelTasks: [String]?

        public var trainingMethods: [String]?

        public var trainingType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelTasks != nil {
                map["ModelTasks"] = self.modelTasks!
            }
            if self.trainingMethods != nil {
                map["TrainingMethods"] = self.trainingMethods!
            }
            if self.trainingType != nil {
                map["TrainingType"] = self.trainingType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ModelTasks"] as? [String] {
                self.modelTasks = value
            }
            if let value = dict["TrainingMethods"] as? [String] {
                self.trainingMethods = value
            }
            if let value = dict["TrainingType"] as? String {
                self.trainingType = value
            }
        }
    }
    public var capabilityTags: [String]?

    public var category: String?

    public var description_: String?

    public var jobType: String?

    public var orderNumber: Int32?

    public var pipelineStages: [DistillationTemplateSummary.PipelineStages]?

    public var templateId: String?

    public var templateName: String?

    public var trainingOptions: [DistillationTemplateSummary.TrainingOptions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capabilityTags != nil {
            map["CapabilityTags"] = self.capabilityTags!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.pipelineStages != nil {
            var tmp : [Any] = []
            for k in self.pipelineStages! {
                tmp.append(k.toMap())
            }
            map["PipelineStages"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.trainingOptions != nil {
            var tmp : [Any] = []
            for k in self.trainingOptions! {
                tmp.append(k.toMap())
            }
            map["TrainingOptions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CapabilityTags"] as? [String] {
            self.capabilityTags = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["OrderNumber"] as? Int32 {
            self.orderNumber = value
        }
        if let value = dict["PipelineStages"] as? [Any?] {
            var tmp : [DistillationTemplateSummary.PipelineStages] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplateSummary.PipelineStages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pipelineStages = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TrainingOptions"] as? [Any?] {
            var tmp : [DistillationTemplateSummary.TrainingOptions] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplateSummary.TrainingOptions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trainingOptions = tmp
        }
    }
}

public class JobPlan : Tea.TeaModel {
    public class JobPlanSteps : Tea.TeaModel {
        public var jobPlanStepId: String?

        public var jobPlanStepName: String?

        public var jobPlanStepSpec: [String: Any]?

        public var jobPlanStepType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobPlanStepId != nil {
                map["JobPlanStepId"] = self.jobPlanStepId!
            }
            if self.jobPlanStepName != nil {
                map["JobPlanStepName"] = self.jobPlanStepName!
            }
            if self.jobPlanStepSpec != nil {
                map["JobPlanStepSpec"] = self.jobPlanStepSpec!
            }
            if self.jobPlanStepType != nil {
                map["JobPlanStepType"] = self.jobPlanStepType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobPlanStepId"] as? String {
                self.jobPlanStepId = value
            }
            if let value = dict["JobPlanStepName"] as? String {
                self.jobPlanStepName = value
            }
            if let value = dict["JobPlanStepSpec"] as? [String: Any] {
                self.jobPlanStepSpec = value
            }
            if let value = dict["JobPlanStepType"] as? String {
                self.jobPlanStepType = value
            }
        }
    }
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
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var jobPlanCurrentStep: String?

    public var jobPlanId: String?

    public var jobPlanName: String?

    public var jobPlanSteps: [JobPlan.JobPlanSteps]?

    public var jobPlanType: String?

    public var ownerId: String?

    public var tags: [JobPlan.Tags]?

    public var templateId: String?

    public var templateName: String?

    public var userId: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.jobPlanCurrentStep != nil {
            map["JobPlanCurrentStep"] = self.jobPlanCurrentStep!
        }
        if self.jobPlanId != nil {
            map["JobPlanId"] = self.jobPlanId!
        }
        if self.jobPlanName != nil {
            map["JobPlanName"] = self.jobPlanName!
        }
        if self.jobPlanSteps != nil {
            var tmp : [Any] = []
            for k in self.jobPlanSteps! {
                tmp.append(k.toMap())
            }
            map["JobPlanSteps"] = tmp
        }
        if self.jobPlanType != nil {
            map["JobPlanType"] = self.jobPlanType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["JobPlanCurrentStep"] as? String {
            self.jobPlanCurrentStep = value
        }
        if let value = dict["JobPlanId"] as? String {
            self.jobPlanId = value
        }
        if let value = dict["JobPlanName"] as? String {
            self.jobPlanName = value
        }
        if let value = dict["JobPlanSteps"] as? [Any?] {
            var tmp : [JobPlan.JobPlanSteps] = []
            for v in value {
                if v != nil {
                    var model = JobPlan.JobPlanSteps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobPlanSteps = tmp
        }
        if let value = dict["JobPlanType"] as? String {
            self.jobPlanType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [JobPlan.Tags] = []
            for v in value {
                if v != nil {
                    var model = JobPlan.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

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

public class CreateJobPlanRequest : Tea.TeaModel {
    public class JobPlanSteps : Tea.TeaModel {
        public var jobPlanStepName: String?

        public var jobPlanStepSpec: [String: Any]?

        public var jobPlanStepType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobPlanStepName != nil {
                map["JobPlanStepName"] = self.jobPlanStepName!
            }
            if self.jobPlanStepSpec != nil {
                map["JobPlanStepSpec"] = self.jobPlanStepSpec!
            }
            if self.jobPlanStepType != nil {
                map["JobPlanStepType"] = self.jobPlanStepType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobPlanStepName"] as? String {
                self.jobPlanStepName = value
            }
            if let value = dict["JobPlanStepSpec"] as? [String: Any] {
                self.jobPlanStepSpec = value
            }
            if let value = dict["JobPlanStepType"] as? String {
                self.jobPlanStepType = value
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
    public var jobPlanName: String?

    public var jobPlanSteps: [CreateJobPlanRequest.JobPlanSteps]?

    public var jobPlanType: String?

    public var tag: [CreateJobPlanRequest.Tag]?

    public var templateId: String?

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
        if self.jobPlanName != nil {
            map["JobPlanName"] = self.jobPlanName!
        }
        if self.jobPlanSteps != nil {
            var tmp : [Any] = []
            for k in self.jobPlanSteps! {
                tmp.append(k.toMap())
            }
            map["JobPlanSteps"] = tmp
        }
        if self.jobPlanType != nil {
            map["JobPlanType"] = self.jobPlanType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobPlanName"] as? String {
            self.jobPlanName = value
        }
        if let value = dict["JobPlanSteps"] as? [Any?] {
            var tmp : [CreateJobPlanRequest.JobPlanSteps] = []
            for v in value {
                if v != nil {
                    var model = CreateJobPlanRequest.JobPlanSteps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobPlanSteps = tmp
        }
        if let value = dict["JobPlanType"] as? String {
            self.jobPlanType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateJobPlanRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateJobPlanRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateJobPlanResponseBody : Tea.TeaModel {
    public var jobPlanId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobPlanId != nil {
            map["JobPlanId"] = self.jobPlanId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobPlanId"] as? String {
            self.jobPlanId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateJobPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateJobPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteJobPlanRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class DeleteJobPlanResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteJobPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteJobPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDistillationTemplateRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetDistillationTemplateResponseBody : Tea.TeaModel {
    public var distillationTemplate: DistillationTemplate?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.distillationTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distillationTemplate != nil {
            map["DistillationTemplate"] = self.distillationTemplate?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DistillationTemplate"] as? [String: Any?] {
            var model = DistillationTemplate()
            model.fromMap(value)
            self.distillationTemplate = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDistillationTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDistillationTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDistillationTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobPlanRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetJobPlanResponseBody : Tea.TeaModel {
    public class JobPlanSteps : Tea.TeaModel {
        public var jobPlanStepId: String?

        public var jobPlanStepName: String?

        public var jobPlanStepSpec: [String: Any]?

        public var jobPlanStepType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobPlanStepId != nil {
                map["JobPlanStepId"] = self.jobPlanStepId!
            }
            if self.jobPlanStepName != nil {
                map["JobPlanStepName"] = self.jobPlanStepName!
            }
            if self.jobPlanStepSpec != nil {
                map["JobPlanStepSpec"] = self.jobPlanStepSpec!
            }
            if self.jobPlanStepType != nil {
                map["JobPlanStepType"] = self.jobPlanStepType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobPlanStepId"] as? String {
                self.jobPlanStepId = value
            }
            if let value = dict["JobPlanStepName"] as? String {
                self.jobPlanStepName = value
            }
            if let value = dict["JobPlanStepSpec"] as? [String: Any] {
                self.jobPlanStepSpec = value
            }
            if let value = dict["JobPlanStepType"] as? String {
                self.jobPlanStepType = value
            }
        }
    }
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
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var jobPlanCurrentStep: String?

    public var jobPlanId: String?

    public var jobPlanName: String?

    public var jobPlanSteps: [GetJobPlanResponseBody.JobPlanSteps]?

    public var jobPlanType: String?

    public var ownerId: String?

    public var requestId: String?

    public var tags: [GetJobPlanResponseBody.Tags]?

    public var templateId: String?

    public var templateName: String?

    public var userId: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.jobPlanCurrentStep != nil {
            map["JobPlanCurrentStep"] = self.jobPlanCurrentStep!
        }
        if self.jobPlanId != nil {
            map["JobPlanId"] = self.jobPlanId!
        }
        if self.jobPlanName != nil {
            map["JobPlanName"] = self.jobPlanName!
        }
        if self.jobPlanSteps != nil {
            var tmp : [Any] = []
            for k in self.jobPlanSteps! {
                tmp.append(k.toMap())
            }
            map["JobPlanSteps"] = tmp
        }
        if self.jobPlanType != nil {
            map["JobPlanType"] = self.jobPlanType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["JobPlanCurrentStep"] as? String {
            self.jobPlanCurrentStep = value
        }
        if let value = dict["JobPlanId"] as? String {
            self.jobPlanId = value
        }
        if let value = dict["JobPlanName"] as? String {
            self.jobPlanName = value
        }
        if let value = dict["JobPlanSteps"] as? [Any?] {
            var tmp : [GetJobPlanResponseBody.JobPlanSteps] = []
            for v in value {
                if v != nil {
                    var model = GetJobPlanResponseBody.JobPlanSteps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobPlanSteps = tmp
        }
        if let value = dict["JobPlanType"] as? String {
            self.jobPlanType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetJobPlanResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetJobPlanResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetJobPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDistillationTemplatesRequest : Tea.TeaModel {
    public var category: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var templateId: String?

    public override init() {
        super.init()
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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class ListDistillationTemplatesResponseBody : Tea.TeaModel {
    public var distillationTemplates: [DistillationTemplateSummary]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.distillationTemplates != nil {
            var tmp : [Any] = []
            for k in self.distillationTemplates! {
                tmp.append(k.toMap())
            }
            map["DistillationTemplates"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DistillationTemplates"] as? [Any?] {
            var tmp : [DistillationTemplateSummary] = []
            for v in value {
                if v != nil {
                    var model = DistillationTemplateSummary()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.distillationTemplates = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDistillationTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDistillationTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDistillationTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobPlansRequest : Tea.TeaModel {
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
    public var hasTemplate: Bool?

    public var jobPlanName: String?

    public var jobPlanType: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var tag: [ListJobPlansRequest.Tag]?

    public var templateId: String?

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
        if self.hasTemplate != nil {
            map["HasTemplate"] = self.hasTemplate!
        }
        if self.jobPlanName != nil {
            map["JobPlanName"] = self.jobPlanName!
        }
        if self.jobPlanType != nil {
            map["JobPlanType"] = self.jobPlanType!
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasTemplate"] as? Bool {
            self.hasTemplate = value
        }
        if let value = dict["JobPlanName"] as? String {
            self.jobPlanName = value
        }
        if let value = dict["JobPlanType"] as? String {
            self.jobPlanType = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListJobPlansRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListJobPlansRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListJobPlansShrinkRequest : Tea.TeaModel {
    public var hasTemplate: Bool?

    public var jobPlanName: String?

    public var jobPlanType: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var tagShrink: String?

    public var templateId: String?

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
        if self.hasTemplate != nil {
            map["HasTemplate"] = self.hasTemplate!
        }
        if self.jobPlanName != nil {
            map["JobPlanName"] = self.jobPlanName!
        }
        if self.jobPlanType != nil {
            map["JobPlanType"] = self.jobPlanType!
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasTemplate"] as? Bool {
            self.hasTemplate = value
        }
        if let value = dict["JobPlanName"] as? String {
            self.jobPlanName = value
        }
        if let value = dict["JobPlanType"] as? String {
            self.jobPlanType = value
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
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListJobPlansResponseBody : Tea.TeaModel {
    public var jobPlans: [JobPlan]?

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
        if self.jobPlans != nil {
            var tmp : [Any] = []
            for k in self.jobPlans! {
                tmp.append(k.toMap())
            }
            map["JobPlans"] = tmp
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
        if let value = dict["JobPlans"] as? [Any?] {
            var tmp : [JobPlan] = []
            for v in value {
                if v != nil {
                    var model = JobPlan()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobPlans = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListJobPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobPlansResponseBody()
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

public class UpdateJobPlanRequest : Tea.TeaModel {
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
    public var jobPlanCurrentStep: String?

    public var tag: [UpdateJobPlanRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobPlanCurrentStep != nil {
            map["JobPlanCurrentStep"] = self.jobPlanCurrentStep!
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
        if let value = dict["JobPlanCurrentStep"] as? String {
            self.jobPlanCurrentStep = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateJobPlanRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateJobPlanRequest.Tag()
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

public class UpdateJobPlanResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateJobPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateJobPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateJobPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
