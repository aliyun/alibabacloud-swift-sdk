import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataResultsTaskIndividualResultMapValue : Tea.TeaModel {
    public var experimentId: Int64?

    public var hostname: String?

    public var podName: String?

    public var gpuNum: Int32?

    public var gpuName: String?

    public var warningFlag: Bool?

    public var warningMsg: String?

    public var errorFlag: Bool?

    public var errorMsg: String?

    public var tflops: Double?

    public var samplesPerSecond: Double?

    public override init() {
        super.init()
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
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.podName != nil {
            map["PodName"] = self.podName!
        }
        if self.gpuNum != nil {
            map["GpuNum"] = self.gpuNum!
        }
        if self.gpuName != nil {
            map["GpuName"] = self.gpuName!
        }
        if self.warningFlag != nil {
            map["WarningFlag"] = self.warningFlag!
        }
        if self.warningMsg != nil {
            map["WarningMsg"] = self.warningMsg!
        }
        if self.errorFlag != nil {
            map["ErrorFlag"] = self.errorFlag!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.tflops != nil {
            map["Tflops"] = self.tflops!
        }
        if self.samplesPerSecond != nil {
            map["SamplesPerSecond"] = self.samplesPerSecond!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? Int64 {
            self.experimentId = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["PodName"] as? String {
            self.podName = value
        }
        if let value = dict["GpuNum"] as? Int32 {
            self.gpuNum = value
        }
        if let value = dict["GpuName"] as? String {
            self.gpuName = value
        }
        if let value = dict["WarningFlag"] as? Bool {
            self.warningFlag = value
        }
        if let value = dict["WarningMsg"] as? String {
            self.warningMsg = value
        }
        if let value = dict["ErrorFlag"] as? Bool {
            self.errorFlag = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["Tflops"] as? Double {
            self.tflops = value
        }
        if let value = dict["SamplesPerSecond"] as? Double {
            self.samplesPerSecond = value
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentPlanRequest : Tea.TeaModel {
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
    public var externalParams: [String: Any]?

    public var planTemplateName: String?

    public var resourceGroupId: String?

    public var resourceId: Int64?

    public var tag: [CreateExperimentPlanRequest.Tag]?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalParams != nil {
            map["ExternalParams"] = self.externalParams!
        }
        if self.planTemplateName != nil {
            map["PlanTemplateName"] = self.planTemplateName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExternalParams"] as? [String: Any] {
            self.externalParams = value
        }
        if let value = dict["PlanTemplateName"] as? String {
            self.planTemplateName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? Int64 {
            self.resourceId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateExperimentPlanRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateExperimentPlanRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class CreateExperimentPlanShrinkRequest : Tea.TeaModel {
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
    public var externalParamsShrink: String?

    public var planTemplateName: String?

    public var resourceGroupId: String?

    public var resourceId: Int64?

    public var tag: [CreateExperimentPlanShrinkRequest.Tag]?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalParamsShrink != nil {
            map["ExternalParams"] = self.externalParamsShrink!
        }
        if self.planTemplateName != nil {
            map["PlanTemplateName"] = self.planTemplateName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExternalParams"] as? String {
            self.externalParamsShrink = value
        }
        if let value = dict["PlanTemplateName"] as? String {
            self.planTemplateName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? Int64 {
            self.resourceId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateExperimentPlanShrinkRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateExperimentPlanShrinkRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class CreateExperimentPlanResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Int64?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class CreateExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentPlanTemplateRequest : Tea.TeaModel {
    public class TemplatePipeline : Tea.TeaModel {
        public class EnvParams : Tea.TeaModel {
            public var cpuPerWorker: Int32?

            public var cudaVersion: String?

            public var gpuDriverVersion: String?

            public var gpuPerWorker: Int32?

            public var memoryPerWorker: Int32?

            public var NCCLVersion: String?

            public var pyTorchVersion: String?

            public var shareMemory: Int32?

            public var workerNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuPerWorker != nil {
                    map["CpuPerWorker"] = self.cpuPerWorker!
                }
                if self.cudaVersion != nil {
                    map["CudaVersion"] = self.cudaVersion!
                }
                if self.gpuDriverVersion != nil {
                    map["GpuDriverVersion"] = self.gpuDriverVersion!
                }
                if self.gpuPerWorker != nil {
                    map["GpuPerWorker"] = self.gpuPerWorker!
                }
                if self.memoryPerWorker != nil {
                    map["MemoryPerWorker"] = self.memoryPerWorker!
                }
                if self.NCCLVersion != nil {
                    map["NCCLVersion"] = self.NCCLVersion!
                }
                if self.pyTorchVersion != nil {
                    map["PyTorchVersion"] = self.pyTorchVersion!
                }
                if self.shareMemory != nil {
                    map["ShareMemory"] = self.shareMemory!
                }
                if self.workerNum != nil {
                    map["WorkerNum"] = self.workerNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuPerWorker"] as? Int32 {
                    self.cpuPerWorker = value
                }
                if let value = dict["CudaVersion"] as? String {
                    self.cudaVersion = value
                }
                if let value = dict["GpuDriverVersion"] as? String {
                    self.gpuDriverVersion = value
                }
                if let value = dict["GpuPerWorker"] as? Int32 {
                    self.gpuPerWorker = value
                }
                if let value = dict["MemoryPerWorker"] as? Int32 {
                    self.memoryPerWorker = value
                }
                if let value = dict["NCCLVersion"] as? String {
                    self.NCCLVersion = value
                }
                if let value = dict["PyTorchVersion"] as? String {
                    self.pyTorchVersion = value
                }
                if let value = dict["ShareMemory"] as? Int32 {
                    self.shareMemory = value
                }
                if let value = dict["WorkerNum"] as? Int32 {
                    self.workerNum = value
                }
            }
        }
        public var envParams: CreateExperimentPlanTemplateRequest.TemplatePipeline.EnvParams?

        public var pipelineOrder: Int32?

        public var scene: String?

        public var settingParams: [String: String]?

        public var workloadId: Int64?

        public var workloadName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.envParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.envParams != nil {
                map["EnvParams"] = self.envParams?.toMap()
            }
            if self.pipelineOrder != nil {
                map["PipelineOrder"] = self.pipelineOrder!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.settingParams != nil {
                map["SettingParams"] = self.settingParams!
            }
            if self.workloadId != nil {
                map["WorkloadId"] = self.workloadId!
            }
            if self.workloadName != nil {
                map["WorkloadName"] = self.workloadName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnvParams"] as? [String: Any?] {
                var model = CreateExperimentPlanTemplateRequest.TemplatePipeline.EnvParams()
                model.fromMap(value)
                self.envParams = model
            }
            if let value = dict["PipelineOrder"] as? Int32 {
                self.pipelineOrder = value
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["SettingParams"] as? [String: String] {
                self.settingParams = value
            }
            if let value = dict["WorkloadId"] as? Int64 {
                self.workloadId = value
            }
            if let value = dict["WorkloadName"] as? String {
                self.workloadName = value
            }
        }
    }
    public var privacyLevel: String?

    public var templateDescription: String?

    public var templateId: Int64?

    public var templateName: String?

    public var templatePipeline: [CreateExperimentPlanTemplateRequest.TemplatePipeline]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privacyLevel != nil {
            map["PrivacyLevel"] = self.privacyLevel!
        }
        if self.templateDescription != nil {
            map["TemplateDescription"] = self.templateDescription!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templatePipeline != nil {
            var tmp : [Any] = []
            for k in self.templatePipeline! {
                tmp.append(k.toMap())
            }
            map["TemplatePipeline"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrivacyLevel"] as? String {
            self.privacyLevel = value
        }
        if let value = dict["TemplateDescription"] as? String {
            self.templateDescription = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplatePipeline"] as? [Any?] {
            var tmp : [CreateExperimentPlanTemplateRequest.TemplatePipeline] = []
            for v in value {
                if v != nil {
                    var model = CreateExperimentPlanTemplateRequest.TemplatePipeline()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templatePipeline = tmp
        }
    }
}

public class CreateExperimentPlanTemplateShrinkRequest : Tea.TeaModel {
    public var privacyLevel: String?

    public var templateDescription: String?

    public var templateId: Int64?

    public var templateName: String?

    public var templatePipelineShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privacyLevel != nil {
            map["PrivacyLevel"] = self.privacyLevel!
        }
        if self.templateDescription != nil {
            map["TemplateDescription"] = self.templateDescription!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templatePipelineShrink != nil {
            map["TemplatePipeline"] = self.templatePipelineShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrivacyLevel"] as? String {
            self.privacyLevel = value
        }
        if let value = dict["TemplateDescription"] as? String {
            self.templateDescription = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplatePipeline"] as? String {
            self.templatePipelineShrink = value
        }
    }
}

public class CreateExperimentPlanTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplatePipelineParam : Tea.TeaModel {
            public class EnvParams : Tea.TeaModel {
                public var cpuPerWorker: Int32?

                public var cudaVersion: String?

                public var gpuDriverVersion: String?

                public var gpuPerWorker: Int32?

                public var memoryPerWorker: Int32?

                public var NCCLVersion: String?

                public var pyTorchVersion: String?

                public var shareMemory: Int32?

                public var workerNum: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuPerWorker != nil {
                        map["CpuPerWorker"] = self.cpuPerWorker!
                    }
                    if self.cudaVersion != nil {
                        map["CudaVersion"] = self.cudaVersion!
                    }
                    if self.gpuDriverVersion != nil {
                        map["GpuDriverVersion"] = self.gpuDriverVersion!
                    }
                    if self.gpuPerWorker != nil {
                        map["GpuPerWorker"] = self.gpuPerWorker!
                    }
                    if self.memoryPerWorker != nil {
                        map["MemoryPerWorker"] = self.memoryPerWorker!
                    }
                    if self.NCCLVersion != nil {
                        map["NCCLVersion"] = self.NCCLVersion!
                    }
                    if self.pyTorchVersion != nil {
                        map["PyTorchVersion"] = self.pyTorchVersion!
                    }
                    if self.shareMemory != nil {
                        map["ShareMemory"] = self.shareMemory!
                    }
                    if self.workerNum != nil {
                        map["WorkerNum"] = self.workerNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuPerWorker"] as? Int32 {
                        self.cpuPerWorker = value
                    }
                    if let value = dict["CudaVersion"] as? String {
                        self.cudaVersion = value
                    }
                    if let value = dict["GpuDriverVersion"] as? String {
                        self.gpuDriverVersion = value
                    }
                    if let value = dict["GpuPerWorker"] as? Int32 {
                        self.gpuPerWorker = value
                    }
                    if let value = dict["MemoryPerWorker"] as? Int32 {
                        self.memoryPerWorker = value
                    }
                    if let value = dict["NCCLVersion"] as? String {
                        self.NCCLVersion = value
                    }
                    if let value = dict["PyTorchVersion"] as? String {
                        self.pyTorchVersion = value
                    }
                    if let value = dict["ShareMemory"] as? Int32 {
                        self.shareMemory = value
                    }
                    if let value = dict["WorkerNum"] as? Int32 {
                        self.workerNum = value
                    }
                }
            }
            public var envParams: CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams?

            public var pipelineOrder: Int32?

            public var scene: String?

            public var settingParams: [String: String]?

            public var workloadId: Int64?

            public var workloadName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.envParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.envParams != nil {
                    map["EnvParams"] = self.envParams?.toMap()
                }
                if self.pipelineOrder != nil {
                    map["PipelineOrder"] = self.pipelineOrder!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.settingParams != nil {
                    map["SettingParams"] = self.settingParams!
                }
                if self.workloadId != nil {
                    map["WorkloadId"] = self.workloadId!
                }
                if self.workloadName != nil {
                    map["WorkloadName"] = self.workloadName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnvParams"] as? [String: Any?] {
                    var model = CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams()
                    model.fromMap(value)
                    self.envParams = model
                }
                if let value = dict["PipelineOrder"] as? Int32 {
                    self.pipelineOrder = value
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["SettingParams"] as? [String: String] {
                    self.settingParams = value
                }
                if let value = dict["WorkloadId"] as? Int64 {
                    self.workloadId = value
                }
                if let value = dict["WorkloadName"] as? String {
                    self.workloadName = value
                }
            }
        }
        public var createTime: String?

        public var creatorUid: Int64?

        public var isDelete: Int32?

        public var privacyLevel: String?

        public var templateCode: Int64?

        public var templateDescription: String?

        public var templateId: Int64?

        public var templateName: String?

        public var templatePipelineParam: [CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam]?

        public var updateTime: String?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorUid != nil {
                map["CreatorUid"] = self.creatorUid!
            }
            if self.isDelete != nil {
                map["IsDelete"] = self.isDelete!
            }
            if self.privacyLevel != nil {
                map["PrivacyLevel"] = self.privacyLevel!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateDescription != nil {
                map["TemplateDescription"] = self.templateDescription!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templatePipelineParam != nil {
                var tmp : [Any] = []
                for k in self.templatePipelineParam! {
                    tmp.append(k.toMap())
                }
                map["TemplatePipelineParam"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreatorUid"] as? Int64 {
                self.creatorUid = value
            }
            if let value = dict["IsDelete"] as? Int32 {
                self.isDelete = value
            }
            if let value = dict["PrivacyLevel"] as? String {
                self.privacyLevel = value
            }
            if let value = dict["TemplateCode"] as? Int64 {
                self.templateCode = value
            }
            if let value = dict["TemplateDescription"] as? String {
                self.templateDescription = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplatePipelineParam"] as? [Any?] {
                var tmp : [CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam] = []
                for v in value {
                    if v != nil {
                        var model = CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templatePipelineParam = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: CreateExperimentPlanTemplateResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateExperimentPlanTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class CreateExperimentPlanTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExperimentPlanTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateExperimentPlanTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceRequest : Tea.TeaModel {
    public class MachineTypes : Tea.TeaModel {
        public var bondNum: Int32?

        public var cpuInfo: String?

        public var diskInfo: String?

        public var gpuInfo: String?

        public var memoryInfo: String?

        public var name: String?

        public var networkInfo: String?

        public var networkMode: String?

        public var nodeCount: Int32?

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
            if self.bondNum != nil {
                map["BondNum"] = self.bondNum!
            }
            if self.cpuInfo != nil {
                map["CpuInfo"] = self.cpuInfo!
            }
            if self.diskInfo != nil {
                map["DiskInfo"] = self.diskInfo!
            }
            if self.gpuInfo != nil {
                map["GpuInfo"] = self.gpuInfo!
            }
            if self.memoryInfo != nil {
                map["MemoryInfo"] = self.memoryInfo!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.networkInfo != nil {
                map["NetworkInfo"] = self.networkInfo!
            }
            if self.networkMode != nil {
                map["NetworkMode"] = self.networkMode!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BondNum"] as? Int32 {
                self.bondNum = value
            }
            if let value = dict["CpuInfo"] as? String {
                self.cpuInfo = value
            }
            if let value = dict["DiskInfo"] as? String {
                self.diskInfo = value
            }
            if let value = dict["GpuInfo"] as? String {
                self.gpuInfo = value
            }
            if let value = dict["MemoryInfo"] as? String {
                self.memoryInfo = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NetworkInfo"] as? String {
                self.networkInfo = value
            }
            if let value = dict["NetworkMode"] as? String {
                self.networkMode = value
            }
            if let value = dict["NodeCount"] as? Int32 {
                self.nodeCount = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class UserAccessParam : Tea.TeaModel {
        public var accessId: String?

        public var accessKey: String?

        public var endpoint: String?

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
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var clusterDesc: String?

    public var clusterId: String?

    public var clusterName: String?

    public var machineTypes: CreateResourceRequest.MachineTypes?

    public var userAccessParam: CreateResourceRequest.UserAccessParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.machineTypes?.validate()
        try self.userAccessParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterDesc != nil {
            map["ClusterDesc"] = self.clusterDesc!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.machineTypes != nil {
            map["MachineTypes"] = self.machineTypes?.toMap()
        }
        if self.userAccessParam != nil {
            map["UserAccessParam"] = self.userAccessParam?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterDesc"] as? String {
            self.clusterDesc = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["MachineTypes"] as? [String: Any?] {
            var model = CreateResourceRequest.MachineTypes()
            model.fromMap(value)
            self.machineTypes = model
        }
        if let value = dict["UserAccessParam"] as? [String: Any?] {
            var model = CreateResourceRequest.UserAccessParam()
            model.fromMap(value)
            self.userAccessParam = model
        }
    }
}

public class CreateResourceShrinkRequest : Tea.TeaModel {
    public var clusterDesc: String?

    public var clusterId: String?

    public var clusterName: String?

    public var machineTypesShrink: String?

    public var userAccessParamShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterDesc != nil {
            map["ClusterDesc"] = self.clusterDesc!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.machineTypesShrink != nil {
            map["MachineTypes"] = self.machineTypesShrink!
        }
        if self.userAccessParamShrink != nil {
            map["UserAccessParam"] = self.userAccessParamShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterDesc"] as? String {
            self.clusterDesc = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["MachineTypes"] as? String {
            self.machineTypesShrink = value
        }
        if let value = dict["UserAccessParam"] as? String {
            self.userAccessParamShrink = value
        }
    }
}

public class CreateResourceResponseBody : Tea.TeaModel {
    public var data: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class CreateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperimentRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? Int64 {
            self.experimentId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DeleteExperimentResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

public class DeleteExperimentPlanRequest : Tea.TeaModel {
    public var planId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? Int64 {
            self.planId = value
        }
    }
}

public class DeleteExperimentPlanResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DeleteExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExperimentPlanTemplateRequest : Tea.TeaModel {
    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class DeleteExperimentPlanTemplateResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DeleteExperimentPlanTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentPlanTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteExperimentPlanTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? Int64 {
            self.experimentId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class GetExperimentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EnvParams : Tea.TeaModel {
            public class ResourceNodes : Tea.TeaModel {
                public var nodeName: String?

                public var requestCPU: Int32?

                public var requestGPU: Int32?

                public var requestMemory: Int32?

                public var totalCPU: Int32?

                public var totalGPU: Int32?

                public var totalMemory: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    if self.requestCPU != nil {
                        map["RequestCPU"] = self.requestCPU!
                    }
                    if self.requestGPU != nil {
                        map["RequestGPU"] = self.requestGPU!
                    }
                    if self.requestMemory != nil {
                        map["RequestMemory"] = self.requestMemory!
                    }
                    if self.totalCPU != nil {
                        map["TotalCPU"] = self.totalCPU!
                    }
                    if self.totalGPU != nil {
                        map["TotalGPU"] = self.totalGPU!
                    }
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                    if let value = dict["RequestCPU"] as? Int32 {
                        self.requestCPU = value
                    }
                    if let value = dict["RequestGPU"] as? Int32 {
                        self.requestGPU = value
                    }
                    if let value = dict["RequestMemory"] as? Int32 {
                        self.requestMemory = value
                    }
                    if let value = dict["TotalCPU"] as? Int32 {
                        self.totalCPU = value
                    }
                    if let value = dict["TotalGPU"] as? Int32 {
                        self.totalGPU = value
                    }
                    if let value = dict["TotalMemory"] as? Int64 {
                        self.totalMemory = value
                    }
                }
            }
            public var cpuPerWorker: Int32?

            public var cudaVersion: String?

            public var extendParam: [String: String]?

            public var gpuDriverVersion: String?

            public var gpuPerWorker: Int32?

            public var memoryPerWorker: Int32?

            public var NCCLVersion: String?

            public var pyTorchVersion: String?

            public var resourceNodes: [GetExperimentResponseBody.Data.EnvParams.ResourceNodes]?

            public var shareMemory: Int32?

            public var workerNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuPerWorker != nil {
                    map["CpuPerWorker"] = self.cpuPerWorker!
                }
                if self.cudaVersion != nil {
                    map["CudaVersion"] = self.cudaVersion!
                }
                if self.extendParam != nil {
                    map["ExtendParam"] = self.extendParam!
                }
                if self.gpuDriverVersion != nil {
                    map["GpuDriverVersion"] = self.gpuDriverVersion!
                }
                if self.gpuPerWorker != nil {
                    map["GpuPerWorker"] = self.gpuPerWorker!
                }
                if self.memoryPerWorker != nil {
                    map["MemoryPerWorker"] = self.memoryPerWorker!
                }
                if self.NCCLVersion != nil {
                    map["NCCLVersion"] = self.NCCLVersion!
                }
                if self.pyTorchVersion != nil {
                    map["PyTorchVersion"] = self.pyTorchVersion!
                }
                if self.resourceNodes != nil {
                    var tmp : [Any] = []
                    for k in self.resourceNodes! {
                        tmp.append(k.toMap())
                    }
                    map["ResourceNodes"] = tmp
                }
                if self.shareMemory != nil {
                    map["ShareMemory"] = self.shareMemory!
                }
                if self.workerNum != nil {
                    map["WorkerNum"] = self.workerNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuPerWorker"] as? Int32 {
                    self.cpuPerWorker = value
                }
                if let value = dict["CudaVersion"] as? String {
                    self.cudaVersion = value
                }
                if let value = dict["ExtendParam"] as? [String: String] {
                    self.extendParam = value
                }
                if let value = dict["GpuDriverVersion"] as? String {
                    self.gpuDriverVersion = value
                }
                if let value = dict["GpuPerWorker"] as? Int32 {
                    self.gpuPerWorker = value
                }
                if let value = dict["MemoryPerWorker"] as? Int32 {
                    self.memoryPerWorker = value
                }
                if let value = dict["NCCLVersion"] as? String {
                    self.NCCLVersion = value
                }
                if let value = dict["PyTorchVersion"] as? String {
                    self.pyTorchVersion = value
                }
                if let value = dict["ResourceNodes"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.EnvParams.ResourceNodes] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.EnvParams.ResourceNodes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceNodes = tmp
                }
                if let value = dict["ShareMemory"] as? Int32 {
                    self.shareMemory = value
                }
                if let value = dict["WorkerNum"] as? Int32 {
                    self.workerNum = value
                }
            }
        }
        public class Resource : Tea.TeaModel {
            public class MachineType : Tea.TeaModel {
                public var bondNum: Int32?

                public var cpuInfo: String?

                public var diskInfo: String?

                public var gpuInfo: String?

                public var memoryInfo: String?

                public var name: String?

                public var networkInfo: String?

                public var networkMode: String?

                public var nodeCount: Int32?

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
                    if self.bondNum != nil {
                        map["BondNum"] = self.bondNum!
                    }
                    if self.cpuInfo != nil {
                        map["CpuInfo"] = self.cpuInfo!
                    }
                    if self.diskInfo != nil {
                        map["DiskInfo"] = self.diskInfo!
                    }
                    if self.gpuInfo != nil {
                        map["GpuInfo"] = self.gpuInfo!
                    }
                    if self.memoryInfo != nil {
                        map["MemoryInfo"] = self.memoryInfo!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.networkInfo != nil {
                        map["NetworkInfo"] = self.networkInfo!
                    }
                    if self.networkMode != nil {
                        map["NetworkMode"] = self.networkMode!
                    }
                    if self.nodeCount != nil {
                        map["NodeCount"] = self.nodeCount!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BondNum"] as? Int32 {
                        self.bondNum = value
                    }
                    if let value = dict["CpuInfo"] as? String {
                        self.cpuInfo = value
                    }
                    if let value = dict["DiskInfo"] as? String {
                        self.diskInfo = value
                    }
                    if let value = dict["GpuInfo"] as? String {
                        self.gpuInfo = value
                    }
                    if let value = dict["MemoryInfo"] as? String {
                        self.memoryInfo = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["NetworkInfo"] as? String {
                        self.networkInfo = value
                    }
                    if let value = dict["NetworkMode"] as? String {
                        self.networkMode = value
                    }
                    if let value = dict["NodeCount"] as? Int32 {
                        self.nodeCount = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public class ResourceNodes : Tea.TeaModel {
                public var nodeName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                }
            }
            public class UserAccessParam : Tea.TeaModel {
                public var accessId: String?

                public var accessKey: String?

                public var endpoint: String?

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
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.accessKey != nil {
                        map["AccessKey"] = self.accessKey!
                    }
                    if self.endpoint != nil {
                        map["Endpoint"] = self.endpoint!
                    }
                    if self.workspaceId != nil {
                        map["WorkspaceId"] = self.workspaceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AccessId"] as? String {
                        self.accessId = value
                    }
                    if let value = dict["AccessKey"] as? String {
                        self.accessKey = value
                    }
                    if let value = dict["Endpoint"] as? String {
                        self.endpoint = value
                    }
                    if let value = dict["WorkspaceId"] as? String {
                        self.workspaceId = value
                    }
                }
            }
            public var cpuCoreLimit: Int32?

            public var gpuLimit: Int32?

            public var machineType: GetExperimentResponseBody.Data.Resource.MachineType?

            public var maxCpuCore: Int32?

            public var maxGpu: Int32?

            public var maxMemory: Int64?

            public var memoryLimit: Int64?

            public var resourceId: Int64?

            public var resourceName: String?

            public var resourceNodes: [GetExperimentResponseBody.Data.Resource.ResourceNodes]?

            public var userAccessParam: GetExperimentResponseBody.Data.Resource.UserAccessParam?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.machineType?.validate()
                try self.userAccessParam?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuCoreLimit != nil {
                    map["CpuCoreLimit"] = self.cpuCoreLimit!
                }
                if self.gpuLimit != nil {
                    map["GpuLimit"] = self.gpuLimit!
                }
                if self.machineType != nil {
                    map["MachineType"] = self.machineType?.toMap()
                }
                if self.maxCpuCore != nil {
                    map["MaxCpuCore"] = self.maxCpuCore!
                }
                if self.maxGpu != nil {
                    map["MaxGpu"] = self.maxGpu!
                }
                if self.maxMemory != nil {
                    map["MaxMemory"] = self.maxMemory!
                }
                if self.memoryLimit != nil {
                    map["MemoryLimit"] = self.memoryLimit!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceNodes != nil {
                    var tmp : [Any] = []
                    for k in self.resourceNodes! {
                        tmp.append(k.toMap())
                    }
                    map["ResourceNodes"] = tmp
                }
                if self.userAccessParam != nil {
                    map["UserAccessParam"] = self.userAccessParam?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuCoreLimit"] as? Int32 {
                    self.cpuCoreLimit = value
                }
                if let value = dict["GpuLimit"] as? Int32 {
                    self.gpuLimit = value
                }
                if let value = dict["MachineType"] as? [String: Any?] {
                    var model = GetExperimentResponseBody.Data.Resource.MachineType()
                    model.fromMap(value)
                    self.machineType = model
                }
                if let value = dict["MaxCpuCore"] as? Int32 {
                    self.maxCpuCore = value
                }
                if let value = dict["MaxGpu"] as? Int32 {
                    self.maxGpu = value
                }
                if let value = dict["MaxMemory"] as? Int64 {
                    self.maxMemory = value
                }
                if let value = dict["MemoryLimit"] as? Int64 {
                    self.memoryLimit = value
                }
                if let value = dict["ResourceId"] as? Int64 {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceNodes"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.Resource.ResourceNodes] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.Resource.ResourceNodes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceNodes = tmp
                }
                if let value = dict["UserAccessParam"] as? [String: Any?] {
                    var model = GetExperimentResponseBody.Data.Resource.UserAccessParam()
                    model.fromMap(value)
                    self.userAccessParam = model
                }
            }
        }
        public class Results : Tea.TeaModel {
            public class ErrorWorker : Tea.TeaModel {
                public var errorFlag: Bool?

                public var errorMsg: String?

                public var experimentId: Int64?

                public var gpuName: String?

                public var gpuNum: Int32?

                public var hostname: String?

                public var podName: String?

                public var samplesPerSecond: Double?

                public var tflops: Double?

                public var warningFlag: Bool?

                public var warningMsg: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorFlag != nil {
                        map["ErrorFlag"] = self.errorFlag!
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.experimentId != nil {
                        map["ExperimentId"] = self.experimentId!
                    }
                    if self.gpuName != nil {
                        map["GpuName"] = self.gpuName!
                    }
                    if self.gpuNum != nil {
                        map["GpuNum"] = self.gpuNum!
                    }
                    if self.hostname != nil {
                        map["Hostname"] = self.hostname!
                    }
                    if self.podName != nil {
                        map["PodName"] = self.podName!
                    }
                    if self.samplesPerSecond != nil {
                        map["SamplesPerSecond"] = self.samplesPerSecond!
                    }
                    if self.tflops != nil {
                        map["Tflops"] = self.tflops!
                    }
                    if self.warningFlag != nil {
                        map["WarningFlag"] = self.warningFlag!
                    }
                    if self.warningMsg != nil {
                        map["WarningMsg"] = self.warningMsg!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorFlag"] as? Bool {
                        self.errorFlag = value
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ExperimentId"] as? Int64 {
                        self.experimentId = value
                    }
                    if let value = dict["GpuName"] as? String {
                        self.gpuName = value
                    }
                    if let value = dict["GpuNum"] as? Int32 {
                        self.gpuNum = value
                    }
                    if let value = dict["Hostname"] as? String {
                        self.hostname = value
                    }
                    if let value = dict["PodName"] as? String {
                        self.podName = value
                    }
                    if let value = dict["SamplesPerSecond"] as? Double {
                        self.samplesPerSecond = value
                    }
                    if let value = dict["Tflops"] as? Double {
                        self.tflops = value
                    }
                    if let value = dict["WarningFlag"] as? Bool {
                        self.warningFlag = value
                    }
                    if let value = dict["WarningMsg"] as? String {
                        self.warningMsg = value
                    }
                }
            }
            public class TaskIndividualResultList : Tea.TeaModel {
                public var errorFlag: Bool?

                public var errorMsg: String?

                public var experimentId: Int64?

                public var gpuName: String?

                public var gpuNum: Int32?

                public var hostname: String?

                public var podName: String?

                public var samplesPerSecond: Double?

                public var tflops: Double?

                public var warningFlag: Bool?

                public var warningMsg: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorFlag != nil {
                        map["ErrorFlag"] = self.errorFlag!
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.experimentId != nil {
                        map["ExperimentId"] = self.experimentId!
                    }
                    if self.gpuName != nil {
                        map["GpuName"] = self.gpuName!
                    }
                    if self.gpuNum != nil {
                        map["GpuNum"] = self.gpuNum!
                    }
                    if self.hostname != nil {
                        map["Hostname"] = self.hostname!
                    }
                    if self.podName != nil {
                        map["PodName"] = self.podName!
                    }
                    if self.samplesPerSecond != nil {
                        map["SamplesPerSecond"] = self.samplesPerSecond!
                    }
                    if self.tflops != nil {
                        map["Tflops"] = self.tflops!
                    }
                    if self.warningFlag != nil {
                        map["WarningFlag"] = self.warningFlag!
                    }
                    if self.warningMsg != nil {
                        map["WarningMsg"] = self.warningMsg!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorFlag"] as? Bool {
                        self.errorFlag = value
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ExperimentId"] as? Int64 {
                        self.experimentId = value
                    }
                    if let value = dict["GpuName"] as? String {
                        self.gpuName = value
                    }
                    if let value = dict["GpuNum"] as? Int32 {
                        self.gpuNum = value
                    }
                    if let value = dict["Hostname"] as? String {
                        self.hostname = value
                    }
                    if let value = dict["PodName"] as? String {
                        self.podName = value
                    }
                    if let value = dict["SamplesPerSecond"] as? Double {
                        self.samplesPerSecond = value
                    }
                    if let value = dict["Tflops"] as? Double {
                        self.tflops = value
                    }
                    if let value = dict["WarningFlag"] as? Bool {
                        self.warningFlag = value
                    }
                    if let value = dict["WarningMsg"] as? String {
                        self.warningMsg = value
                    }
                }
            }
            public class WarningBoundList : Tea.TeaModel {
                public var iteration: Int32?

                public var lower: Double?

                public var upper: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.iteration != nil {
                        map["Iteration"] = self.iteration!
                    }
                    if self.lower != nil {
                        map["Lower"] = self.lower!
                    }
                    if self.upper != nil {
                        map["Upper"] = self.upper!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Iteration"] as? Int32 {
                        self.iteration = value
                    }
                    if let value = dict["Lower"] as? Double {
                        self.lower = value
                    }
                    if let value = dict["Upper"] as? Double {
                        self.upper = value
                    }
                }
            }
            public class WarningWorker : Tea.TeaModel {
                public var errorFlag: Bool?

                public var errorMsg: String?

                public var experimentId: Int64?

                public var gpuName: String?

                public var gpuNum: Int32?

                public var hostname: String?

                public var podName: String?

                public var samplesPerSecond: Double?

                public var tflops: Double?

                public var warningFlag: Bool?

                public var warningMsg: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorFlag != nil {
                        map["ErrorFlag"] = self.errorFlag!
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.experimentId != nil {
                        map["ExperimentId"] = self.experimentId!
                    }
                    if self.gpuName != nil {
                        map["GpuName"] = self.gpuName!
                    }
                    if self.gpuNum != nil {
                        map["GpuNum"] = self.gpuNum!
                    }
                    if self.hostname != nil {
                        map["Hostname"] = self.hostname!
                    }
                    if self.podName != nil {
                        map["PodName"] = self.podName!
                    }
                    if self.samplesPerSecond != nil {
                        map["SamplesPerSecond"] = self.samplesPerSecond!
                    }
                    if self.tflops != nil {
                        map["Tflops"] = self.tflops!
                    }
                    if self.warningFlag != nil {
                        map["WarningFlag"] = self.warningFlag!
                    }
                    if self.warningMsg != nil {
                        map["WarningMsg"] = self.warningMsg!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorFlag"] as? Bool {
                        self.errorFlag = value
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ExperimentId"] as? Int64 {
                        self.experimentId = value
                    }
                    if let value = dict["GpuName"] as? String {
                        self.gpuName = value
                    }
                    if let value = dict["GpuNum"] as? Int32 {
                        self.gpuNum = value
                    }
                    if let value = dict["Hostname"] as? String {
                        self.hostname = value
                    }
                    if let value = dict["PodName"] as? String {
                        self.podName = value
                    }
                    if let value = dict["SamplesPerSecond"] as? Double {
                        self.samplesPerSecond = value
                    }
                    if let value = dict["Tflops"] as? Double {
                        self.tflops = value
                    }
                    if let value = dict["WarningFlag"] as? Bool {
                        self.warningFlag = value
                    }
                    if let value = dict["WarningMsg"] as? String {
                        self.warningMsg = value
                    }
                }
            }
            public var duration: Double?

            public var errorWorker: [GetExperimentResponseBody.Data.Results.ErrorWorker]?

            public var experimentId: Int64?

            public var mfu: Double?

            public var samplesPerSecond: Double?

            public var secondsPerIteration: Double?

            public var taskIndividualResultList: [GetExperimentResponseBody.Data.Results.TaskIndividualResultList]?

            public var taskIndividualResultMap: [String: [DataResultsTaskIndividualResultMapValue]]?

            public var warningBoundList: [GetExperimentResponseBody.Data.Results.WarningBoundList]?

            public var warningWorker: [GetExperimentResponseBody.Data.Results.WarningWorker]?

            public override init() {
                super.init()
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
                if self.errorWorker != nil {
                    var tmp : [Any] = []
                    for k in self.errorWorker! {
                        tmp.append(k.toMap())
                    }
                    map["ErrorWorker"] = tmp
                }
                if self.experimentId != nil {
                    map["ExperimentId"] = self.experimentId!
                }
                if self.mfu != nil {
                    map["Mfu"] = self.mfu!
                }
                if self.samplesPerSecond != nil {
                    map["SamplesPerSecond"] = self.samplesPerSecond!
                }
                if self.secondsPerIteration != nil {
                    map["SecondsPerIteration"] = self.secondsPerIteration!
                }
                if self.taskIndividualResultList != nil {
                    var tmp : [Any] = []
                    for k in self.taskIndividualResultList! {
                        tmp.append(k.toMap())
                    }
                    map["TaskIndividualResultList"] = tmp
                }
                if self.taskIndividualResultMap != nil {
                    var tmp : [String: Any] = [:]
                    for (k, v) in self.taskIndividualResultMap! {
                        var l1 : [Any] = []
                        for k1 in v {
                            l1.append(k1.toMap())
                        }
                        tmp[k] = l1
                    }
                    map["TaskIndividualResultMap"] = tmp
                }
                if self.warningBoundList != nil {
                    var tmp : [Any] = []
                    for k in self.warningBoundList! {
                        tmp.append(k.toMap())
                    }
                    map["WarningBoundList"] = tmp
                }
                if self.warningWorker != nil {
                    var tmp : [Any] = []
                    for k in self.warningWorker! {
                        tmp.append(k.toMap())
                    }
                    map["WarningWorker"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Double {
                    self.duration = value
                }
                if let value = dict["ErrorWorker"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.Results.ErrorWorker] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.Results.ErrorWorker()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.errorWorker = tmp
                }
                if let value = dict["ExperimentId"] as? Int64 {
                    self.experimentId = value
                }
                if let value = dict["Mfu"] as? Double {
                    self.mfu = value
                }
                if let value = dict["SamplesPerSecond"] as? Double {
                    self.samplesPerSecond = value
                }
                if let value = dict["SecondsPerIteration"] as? Double {
                    self.secondsPerIteration = value
                }
                if let value = dict["TaskIndividualResultList"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.Results.TaskIndividualResultList] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.Results.TaskIndividualResultList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.taskIndividualResultList = tmp
                }
                if let value = dict["TaskIndividualResultMap"] as? [String: Any?] {
                    var tmp : [String: [DataResultsTaskIndividualResultMapValue]] = [:]
                    for (k, v) in value {
                        var l1 : [DataResultsTaskIndividualResultMapValue] = []
                        for v1 in v as! [Any?] {
                            if v1 != nil {
                                var model = DataResultsTaskIndividualResultMapValue()
                                if v1 != nil {
                                    model.fromMap(v1 as? [String: Any?])
                                }
                                l1.append(model)
                            }
                        }
                        tmp[k] = l1
                    }
                    self.taskIndividualResultMap = tmp
                }
                if let value = dict["WarningBoundList"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.Results.WarningBoundList] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.Results.WarningBoundList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.warningBoundList = tmp
                }
                if let value = dict["WarningWorker"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.Results.WarningWorker] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.Results.WarningWorker()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.warningWorker = tmp
                }
            }
        }
        public class Task : Tea.TeaModel {
            public var createTime: Int64?

            public var endTime: Int64?

            public var params: [String: String]?

            public var scene: String?

            public var startTime: Int64?

            public var status: String?

            public var taskId: Int64?

            public var updateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["Params"] as? [String: String] {
                    self.params = value
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TaskId"] as? Int64 {
                    self.taskId = value
                }
                if let value = dict["UpdateTime"] as? Int64 {
                    self.updateTime = value
                }
            }
        }
        public class Workload : Tea.TeaModel {
            public class ParamSettings : Tea.TeaModel {
                public var defaultValue: String?

                public var paramDesc: String?

                public var paramName: String?

                public var paramRegex: String?

                public var paramType: String?

                public var paramValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.defaultValue != nil {
                        map["DefaultValue"] = self.defaultValue!
                    }
                    if self.paramDesc != nil {
                        map["ParamDesc"] = self.paramDesc!
                    }
                    if self.paramName != nil {
                        map["ParamName"] = self.paramName!
                    }
                    if self.paramRegex != nil {
                        map["ParamRegex"] = self.paramRegex!
                    }
                    if self.paramType != nil {
                        map["ParamType"] = self.paramType!
                    }
                    if self.paramValue != nil {
                        map["ParamValue"] = self.paramValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DefaultValue"] as? String {
                        self.defaultValue = value
                    }
                    if let value = dict["ParamDesc"] as? String {
                        self.paramDesc = value
                    }
                    if let value = dict["ParamName"] as? String {
                        self.paramName = value
                    }
                    if let value = dict["ParamRegex"] as? String {
                        self.paramRegex = value
                    }
                    if let value = dict["ParamType"] as? String {
                        self.paramType = value
                    }
                    if let value = dict["ParamValue"] as? String {
                        self.paramValue = value
                    }
                }
            }
            public class StaticConfig : Tea.TeaModel {
                public var frameWork: String?

                public var os: String?

                public var parameters: String?

                public var softwareStack: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.frameWork != nil {
                        map["FrameWork"] = self.frameWork!
                    }
                    if self.os != nil {
                        map["Os"] = self.os!
                    }
                    if self.parameters != nil {
                        map["Parameters"] = self.parameters!
                    }
                    if self.softwareStack != nil {
                        map["SoftwareStack"] = self.softwareStack!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FrameWork"] as? String {
                        self.frameWork = value
                    }
                    if let value = dict["Os"] as? String {
                        self.os = value
                    }
                    if let value = dict["Parameters"] as? String {
                        self.parameters = value
                    }
                    if let value = dict["SoftwareStack"] as? String {
                        self.softwareStack = value
                    }
                }
            }
            public var defaultCpuPerWorker: Int32?

            public var defaultGpuPerWorker: Int32?

            public var defaultMemoryPerWorker: Int32?

            public var defaultShareMemory: Int32?

            public var family: String?

            public var jobKind: String?

            public var paramSettings: [GetExperimentResponseBody.Data.Workload.ParamSettings]?

            public var scene: String?

            public var scope: String?

            public var staticConfig: GetExperimentResponseBody.Data.Workload.StaticConfig?

            public var versionId: Int64?

            public var workloadDescription: String?

            public var workloadId: Int64?

            public var workloadName: String?

            public var workloadType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.staticConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultCpuPerWorker != nil {
                    map["DefaultCpuPerWorker"] = self.defaultCpuPerWorker!
                }
                if self.defaultGpuPerWorker != nil {
                    map["DefaultGpuPerWorker"] = self.defaultGpuPerWorker!
                }
                if self.defaultMemoryPerWorker != nil {
                    map["DefaultMemoryPerWorker"] = self.defaultMemoryPerWorker!
                }
                if self.defaultShareMemory != nil {
                    map["DefaultShareMemory"] = self.defaultShareMemory!
                }
                if self.family != nil {
                    map["Family"] = self.family!
                }
                if self.jobKind != nil {
                    map["JobKind"] = self.jobKind!
                }
                if self.paramSettings != nil {
                    var tmp : [Any] = []
                    for k in self.paramSettings! {
                        tmp.append(k.toMap())
                    }
                    map["ParamSettings"] = tmp
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.scope != nil {
                    map["Scope"] = self.scope!
                }
                if self.staticConfig != nil {
                    map["StaticConfig"] = self.staticConfig?.toMap()
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                if self.workloadDescription != nil {
                    map["WorkloadDescription"] = self.workloadDescription!
                }
                if self.workloadId != nil {
                    map["WorkloadId"] = self.workloadId!
                }
                if self.workloadName != nil {
                    map["WorkloadName"] = self.workloadName!
                }
                if self.workloadType != nil {
                    map["WorkloadType"] = self.workloadType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultCpuPerWorker"] as? Int32 {
                    self.defaultCpuPerWorker = value
                }
                if let value = dict["DefaultGpuPerWorker"] as? Int32 {
                    self.defaultGpuPerWorker = value
                }
                if let value = dict["DefaultMemoryPerWorker"] as? Int32 {
                    self.defaultMemoryPerWorker = value
                }
                if let value = dict["DefaultShareMemory"] as? Int32 {
                    self.defaultShareMemory = value
                }
                if let value = dict["Family"] as? String {
                    self.family = value
                }
                if let value = dict["JobKind"] as? String {
                    self.jobKind = value
                }
                if let value = dict["ParamSettings"] as? [Any?] {
                    var tmp : [GetExperimentResponseBody.Data.Workload.ParamSettings] = []
                    for v in value {
                        if v != nil {
                            var model = GetExperimentResponseBody.Data.Workload.ParamSettings()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.paramSettings = tmp
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["Scope"] as? String {
                    self.scope = value
                }
                if let value = dict["StaticConfig"] as? [String: Any?] {
                    var model = GetExperimentResponseBody.Data.Workload.StaticConfig()
                    model.fromMap(value)
                    self.staticConfig = model
                }
                if let value = dict["VersionId"] as? Int64 {
                    self.versionId = value
                }
                if let value = dict["WorkloadDescription"] as? String {
                    self.workloadDescription = value
                }
                if let value = dict["WorkloadId"] as? Int64 {
                    self.workloadId = value
                }
                if let value = dict["WorkloadName"] as? String {
                    self.workloadName = value
                }
                if let value = dict["WorkloadType"] as? String {
                    self.workloadType = value
                }
            }
        }
        public var createTime: Int64?

        public var endTime: String?

        public var envParams: GetExperimentResponseBody.Data.EnvParams?

        public var experimentId: Int64?

        public var experimentName: String?

        public var experimentType: String?

        public var getParams: [String: String]?

        public var resource: GetExperimentResponseBody.Data.Resource?

        public var resourceName: String?

        public var results: GetExperimentResponseBody.Data.Results?

        public var setParams: [String: String]?

        public var startTime: String?

        public var status: String?

        public var task: GetExperimentResponseBody.Data.Task?

        public var updateTime: Int64?

        public var workload: GetExperimentResponseBody.Data.Workload?

        public var workloadName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.envParams?.validate()
            try self.resource?.validate()
            try self.results?.validate()
            try self.task?.validate()
            try self.workload?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.envParams != nil {
                map["EnvParams"] = self.envParams?.toMap()
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.experimentName != nil {
                map["ExperimentName"] = self.experimentName!
            }
            if self.experimentType != nil {
                map["ExperimentType"] = self.experimentType!
            }
            if self.getParams != nil {
                map["GetParams"] = self.getParams!
            }
            if self.resource != nil {
                map["Resource"] = self.resource?.toMap()
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.results != nil {
                map["Results"] = self.results?.toMap()
            }
            if self.setParams != nil {
                map["SetParams"] = self.setParams!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.task != nil {
                map["Task"] = self.task?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.workload != nil {
                map["Workload"] = self.workload?.toMap()
            }
            if self.workloadName != nil {
                map["WorkloadName"] = self.workloadName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EnvParams"] as? [String: Any?] {
                var model = GetExperimentResponseBody.Data.EnvParams()
                model.fromMap(value)
                self.envParams = model
            }
            if let value = dict["ExperimentId"] as? Int64 {
                self.experimentId = value
            }
            if let value = dict["ExperimentName"] as? String {
                self.experimentName = value
            }
            if let value = dict["ExperimentType"] as? String {
                self.experimentType = value
            }
            if let value = dict["GetParams"] as? [String: String] {
                self.getParams = value
            }
            if let value = dict["Resource"] as? [String: Any?] {
                var model = GetExperimentResponseBody.Data.Resource()
                model.fromMap(value)
                self.resource = model
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["Results"] as? [String: Any?] {
                var model = GetExperimentResponseBody.Data.Results()
                model.fromMap(value)
                self.results = model
            }
            if let value = dict["SetParams"] as? [String: String] {
                self.setParams = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Task"] as? [String: Any?] {
                var model = GetExperimentResponseBody.Data.Task()
                model.fromMap(value)
                self.task = model
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["Workload"] as? [String: Any?] {
                var model = GetExperimentResponseBody.Data.Workload()
                model.fromMap(value)
                self.workload = model
            }
            if let value = dict["WorkloadName"] as? String {
                self.workloadName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetExperimentResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetExperimentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

public class GetExperimentPlanRequest : Tea.TeaModel {
    public var planId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? Int64 {
            self.planId = value
        }
    }
}

public class GetExperimentPlanResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PlanPipeline : Tea.TeaModel {
            public class EnvParams : Tea.TeaModel {
                public class ResourceNodes : Tea.TeaModel {
                    public var nodeName: String?

                    public var requestCPU: Int32?

                    public var requestGPU: Int32?

                    public var requestMemory: Int32?

                    public var totalCPU: Int32?

                    public var totalGPU: Int32?

                    public var totalMemory: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.nodeName != nil {
                            map["NodeName"] = self.nodeName!
                        }
                        if self.requestCPU != nil {
                            map["RequestCPU"] = self.requestCPU!
                        }
                        if self.requestGPU != nil {
                            map["RequestGPU"] = self.requestGPU!
                        }
                        if self.requestMemory != nil {
                            map["RequestMemory"] = self.requestMemory!
                        }
                        if self.totalCPU != nil {
                            map["TotalCPU"] = self.totalCPU!
                        }
                        if self.totalGPU != nil {
                            map["TotalGPU"] = self.totalGPU!
                        }
                        if self.totalMemory != nil {
                            map["TotalMemory"] = self.totalMemory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["NodeName"] as? String {
                            self.nodeName = value
                        }
                        if let value = dict["RequestCPU"] as? Int32 {
                            self.requestCPU = value
                        }
                        if let value = dict["RequestGPU"] as? Int32 {
                            self.requestGPU = value
                        }
                        if let value = dict["RequestMemory"] as? Int32 {
                            self.requestMemory = value
                        }
                        if let value = dict["TotalCPU"] as? Int32 {
                            self.totalCPU = value
                        }
                        if let value = dict["TotalGPU"] as? Int32 {
                            self.totalGPU = value
                        }
                        if let value = dict["TotalMemory"] as? Int64 {
                            self.totalMemory = value
                        }
                    }
                }
                public var cpuPerWorker: Int32?

                public var cudaVersion: String?

                public var extendParam: [String: String]?

                public var gpuDriverVersion: String?

                public var gpuPerWorker: Int32?

                public var memoryPerWorker: Int32?

                public var NCCLVersion: String?

                public var pyTorchVersion: String?

                public var resourceNodes: [GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams.ResourceNodes]?

                public var shareMemory: Int32?

                public var workerNum: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuPerWorker != nil {
                        map["CpuPerWorker"] = self.cpuPerWorker!
                    }
                    if self.cudaVersion != nil {
                        map["CudaVersion"] = self.cudaVersion!
                    }
                    if self.extendParam != nil {
                        map["ExtendParam"] = self.extendParam!
                    }
                    if self.gpuDriverVersion != nil {
                        map["GpuDriverVersion"] = self.gpuDriverVersion!
                    }
                    if self.gpuPerWorker != nil {
                        map["GpuPerWorker"] = self.gpuPerWorker!
                    }
                    if self.memoryPerWorker != nil {
                        map["MemoryPerWorker"] = self.memoryPerWorker!
                    }
                    if self.NCCLVersion != nil {
                        map["NCCLVersion"] = self.NCCLVersion!
                    }
                    if self.pyTorchVersion != nil {
                        map["PyTorchVersion"] = self.pyTorchVersion!
                    }
                    if self.resourceNodes != nil {
                        var tmp : [Any] = []
                        for k in self.resourceNodes! {
                            tmp.append(k.toMap())
                        }
                        map["ResourceNodes"] = tmp
                    }
                    if self.shareMemory != nil {
                        map["ShareMemory"] = self.shareMemory!
                    }
                    if self.workerNum != nil {
                        map["WorkerNum"] = self.workerNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuPerWorker"] as? Int32 {
                        self.cpuPerWorker = value
                    }
                    if let value = dict["CudaVersion"] as? String {
                        self.cudaVersion = value
                    }
                    if let value = dict["ExtendParam"] as? [String: String] {
                        self.extendParam = value
                    }
                    if let value = dict["GpuDriverVersion"] as? String {
                        self.gpuDriverVersion = value
                    }
                    if let value = dict["GpuPerWorker"] as? Int32 {
                        self.gpuPerWorker = value
                    }
                    if let value = dict["MemoryPerWorker"] as? Int32 {
                        self.memoryPerWorker = value
                    }
                    if let value = dict["NCCLVersion"] as? String {
                        self.NCCLVersion = value
                    }
                    if let value = dict["PyTorchVersion"] as? String {
                        self.pyTorchVersion = value
                    }
                    if let value = dict["ResourceNodes"] as? [Any?] {
                        var tmp : [GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams.ResourceNodes] = []
                        for v in value {
                            if v != nil {
                                var model = GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams.ResourceNodes()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.resourceNodes = tmp
                    }
                    if let value = dict["ShareMemory"] as? Int32 {
                        self.shareMemory = value
                    }
                    if let value = dict["WorkerNum"] as? Int32 {
                        self.workerNum = value
                    }
                }
            }
            public var envParams: GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams?

            public var pipelineOrder: Int32?

            public var resourceId: Int64?

            public var resourceName: String?

            public var scene: String?

            public var settingParams: [String: String]?

            public var workloadId: Int64?

            public var workloadName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.envParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.envParams != nil {
                    map["EnvParams"] = self.envParams?.toMap()
                }
                if self.pipelineOrder != nil {
                    map["PipelineOrder"] = self.pipelineOrder!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.settingParams != nil {
                    map["SettingParams"] = self.settingParams!
                }
                if self.workloadId != nil {
                    map["WorkloadId"] = self.workloadId!
                }
                if self.workloadName != nil {
                    map["WorkloadName"] = self.workloadName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnvParams"] as? [String: Any?] {
                    var model = GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams()
                    model.fromMap(value)
                    self.envParams = model
                }
                if let value = dict["PipelineOrder"] as? Int32 {
                    self.pipelineOrder = value
                }
                if let value = dict["ResourceId"] as? Int64 {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["SettingParams"] as? [String: String] {
                    self.settingParams = value
                }
                if let value = dict["WorkloadId"] as? Int64 {
                    self.workloadId = value
                }
                if let value = dict["WorkloadName"] as? String {
                    self.workloadName = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var planId: Int64?

        public var planPipeline: [GetExperimentPlanResponseBody.Data.PlanPipeline]?

        public var resourceGroupId: String?

        public var resourceId: Int64?

        public var tags: [GetExperimentPlanResponseBody.Data.Tags]?

        public var templateId: Int64?

        public var templateName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planPipeline != nil {
                var tmp : [Any] = []
                for k in self.planPipeline! {
                    tmp.append(k.toMap())
                }
                map["PlanPipeline"] = tmp
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["PlanId"] as? Int64 {
                self.planId = value
            }
            if let value = dict["PlanPipeline"] as? [Any?] {
                var tmp : [GetExperimentPlanResponseBody.Data.PlanPipeline] = []
                for v in value {
                    if v != nil {
                        var model = GetExperimentPlanResponseBody.Data.PlanPipeline()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.planPipeline = tmp
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceId"] as? Int64 {
                self.resourceId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetExperimentPlanResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetExperimentPlanResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetExperimentPlanResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetExperimentPlanResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentPlanTemplateRequest : Tea.TeaModel {
    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class GetExperimentPlanTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplatePipelineParam : Tea.TeaModel {
            public class EnvParams : Tea.TeaModel {
                public class ResourceNodes : Tea.TeaModel {
                    public var nodeName: String?

                    public var requestCPU: Int32?

                    public var requestGPU: Int32?

                    public var requestMemory: Int32?

                    public var totalCPU: Int32?

                    public var totalGPU: Int32?

                    public var totalMemory: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.nodeName != nil {
                            map["NodeName"] = self.nodeName!
                        }
                        if self.requestCPU != nil {
                            map["RequestCPU"] = self.requestCPU!
                        }
                        if self.requestGPU != nil {
                            map["RequestGPU"] = self.requestGPU!
                        }
                        if self.requestMemory != nil {
                            map["RequestMemory"] = self.requestMemory!
                        }
                        if self.totalCPU != nil {
                            map["TotalCPU"] = self.totalCPU!
                        }
                        if self.totalGPU != nil {
                            map["TotalGPU"] = self.totalGPU!
                        }
                        if self.totalMemory != nil {
                            map["TotalMemory"] = self.totalMemory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["NodeName"] as? String {
                            self.nodeName = value
                        }
                        if let value = dict["RequestCPU"] as? Int32 {
                            self.requestCPU = value
                        }
                        if let value = dict["RequestGPU"] as? Int32 {
                            self.requestGPU = value
                        }
                        if let value = dict["RequestMemory"] as? Int32 {
                            self.requestMemory = value
                        }
                        if let value = dict["TotalCPU"] as? Int32 {
                            self.totalCPU = value
                        }
                        if let value = dict["TotalGPU"] as? Int32 {
                            self.totalGPU = value
                        }
                        if let value = dict["TotalMemory"] as? Int64 {
                            self.totalMemory = value
                        }
                    }
                }
                public var cpuPerWorker: Int32?

                public var cudaVersion: String?

                public var extendParam: [String: String]?

                public var gpuDriverVersion: String?

                public var gpuPerWorker: Int32?

                public var memoryPerWorker: Int32?

                public var NCCLVersion: String?

                public var pyTorchVersion: String?

                public var resourceNodes: [GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams.ResourceNodes]?

                public var shareMemory: Int32?

                public var workerNum: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuPerWorker != nil {
                        map["CpuPerWorker"] = self.cpuPerWorker!
                    }
                    if self.cudaVersion != nil {
                        map["CudaVersion"] = self.cudaVersion!
                    }
                    if self.extendParam != nil {
                        map["ExtendParam"] = self.extendParam!
                    }
                    if self.gpuDriverVersion != nil {
                        map["GpuDriverVersion"] = self.gpuDriverVersion!
                    }
                    if self.gpuPerWorker != nil {
                        map["GpuPerWorker"] = self.gpuPerWorker!
                    }
                    if self.memoryPerWorker != nil {
                        map["MemoryPerWorker"] = self.memoryPerWorker!
                    }
                    if self.NCCLVersion != nil {
                        map["NCCLVersion"] = self.NCCLVersion!
                    }
                    if self.pyTorchVersion != nil {
                        map["PyTorchVersion"] = self.pyTorchVersion!
                    }
                    if self.resourceNodes != nil {
                        var tmp : [Any] = []
                        for k in self.resourceNodes! {
                            tmp.append(k.toMap())
                        }
                        map["ResourceNodes"] = tmp
                    }
                    if self.shareMemory != nil {
                        map["ShareMemory"] = self.shareMemory!
                    }
                    if self.workerNum != nil {
                        map["WorkerNum"] = self.workerNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuPerWorker"] as? Int32 {
                        self.cpuPerWorker = value
                    }
                    if let value = dict["CudaVersion"] as? String {
                        self.cudaVersion = value
                    }
                    if let value = dict["ExtendParam"] as? [String: String] {
                        self.extendParam = value
                    }
                    if let value = dict["GpuDriverVersion"] as? String {
                        self.gpuDriverVersion = value
                    }
                    if let value = dict["GpuPerWorker"] as? Int32 {
                        self.gpuPerWorker = value
                    }
                    if let value = dict["MemoryPerWorker"] as? Int32 {
                        self.memoryPerWorker = value
                    }
                    if let value = dict["NCCLVersion"] as? String {
                        self.NCCLVersion = value
                    }
                    if let value = dict["PyTorchVersion"] as? String {
                        self.pyTorchVersion = value
                    }
                    if let value = dict["ResourceNodes"] as? [Any?] {
                        var tmp : [GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams.ResourceNodes] = []
                        for v in value {
                            if v != nil {
                                var model = GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams.ResourceNodes()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.resourceNodes = tmp
                    }
                    if let value = dict["ShareMemory"] as? Int32 {
                        self.shareMemory = value
                    }
                    if let value = dict["WorkerNum"] as? Int32 {
                        self.workerNum = value
                    }
                }
            }
            public var envParams: GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams?

            public var pipelineOrder: Int32?

            public var scene: String?

            public var settingParams: [String: String]?

            public var workloadId: Int64?

            public var workloadName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.envParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.envParams != nil {
                    map["EnvParams"] = self.envParams?.toMap()
                }
                if self.pipelineOrder != nil {
                    map["PipelineOrder"] = self.pipelineOrder!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.settingParams != nil {
                    map["SettingParams"] = self.settingParams!
                }
                if self.workloadId != nil {
                    map["WorkloadId"] = self.workloadId!
                }
                if self.workloadName != nil {
                    map["WorkloadName"] = self.workloadName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnvParams"] as? [String: Any?] {
                    var model = GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams()
                    model.fromMap(value)
                    self.envParams = model
                }
                if let value = dict["PipelineOrder"] as? Int32 {
                    self.pipelineOrder = value
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["SettingParams"] as? [String: String] {
                    self.settingParams = value
                }
                if let value = dict["WorkloadId"] as? Int64 {
                    self.workloadId = value
                }
                if let value = dict["WorkloadName"] as? String {
                    self.workloadName = value
                }
            }
        }
        public var createTime: String?

        public var creatorUid: Int64?

        public var isDelete: Int32?

        public var privacyLevel: String?

        public var templateCode: Int64?

        public var templateDescription: String?

        public var templateId: Int64?

        public var templateName: String?

        public var templatePipelineParam: [GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam]?

        public var updateTime: String?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorUid != nil {
                map["CreatorUid"] = self.creatorUid!
            }
            if self.isDelete != nil {
                map["IsDelete"] = self.isDelete!
            }
            if self.privacyLevel != nil {
                map["PrivacyLevel"] = self.privacyLevel!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateDescription != nil {
                map["TemplateDescription"] = self.templateDescription!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templatePipelineParam != nil {
                var tmp : [Any] = []
                for k in self.templatePipelineParam! {
                    tmp.append(k.toMap())
                }
                map["TemplatePipelineParam"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreatorUid"] as? Int64 {
                self.creatorUid = value
            }
            if let value = dict["IsDelete"] as? Int32 {
                self.isDelete = value
            }
            if let value = dict["PrivacyLevel"] as? String {
                self.privacyLevel = value
            }
            if let value = dict["TemplateCode"] as? Int64 {
                self.templateCode = value
            }
            if let value = dict["TemplateDescription"] as? String {
                self.templateDescription = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplatePipelineParam"] as? [Any?] {
                var tmp : [GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam] = []
                for v in value {
                    if v != nil {
                        var model = GetExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templatePipelineParam = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetExperimentPlanTemplateResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetExperimentPlanTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetExperimentPlanTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentPlanTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExperimentPlanTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentResultDataRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public var hostname: String?

    public var resourceGroupId: String?

    public var workloadType: String?

    public override init() {
        super.init()
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
        if self.hostname != nil {
            map["Hostname"] = self.hostname!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.workloadType != nil {
            map["WorkloadType"] = self.workloadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? Int64 {
            self.experimentId = value
        }
        if let value = dict["Hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["WorkloadType"] as? String {
            self.workloadType = value
        }
    }
}

public class GetExperimentResultDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MetricsInfos : Tea.TeaModel {
            public var gpuNum: String?

            public var iteration: Int64?

            public var tflops: Double?

            public var timestamp: Int64?

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
                if self.gpuNum != nil {
                    map["Gpu_num"] = self.gpuNum!
                }
                if self.iteration != nil {
                    map["Iteration"] = self.iteration!
                }
                if self.tflops != nil {
                    map["Tflops"] = self.tflops!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Gpu_num"] as? String {
                    self.gpuNum = value
                }
                if let value = dict["Iteration"] as? Int64 {
                    self.iteration = value
                }
                if let value = dict["Tflops"] as? Double {
                    self.tflops = value
                }
                if let value = dict["Timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
                }
            }
        }
        public var gpuNum: String?

        public var hostname: String?

        public var metricsInfos: [GetExperimentResultDataResponseBody.Data.MetricsInfos]?

        public var podName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gpuNum != nil {
                map["GpuNum"] = self.gpuNum!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.metricsInfos != nil {
                var tmp : [Any] = []
                for k in self.metricsInfos! {
                    tmp.append(k.toMap())
                }
                map["MetricsInfos"] = tmp
            }
            if self.podName != nil {
                map["PodName"] = self.podName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GpuNum"] as? String {
                self.gpuNum = value
            }
            if let value = dict["Hostname"] as? String {
                self.hostname = value
            }
            if let value = dict["MetricsInfos"] as? [Any?] {
                var tmp : [GetExperimentResultDataResponseBody.Data.MetricsInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetExperimentResultDataResponseBody.Data.MetricsInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metricsInfos = tmp
            }
            if let value = dict["PodName"] as? String {
                self.podName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [GetExperimentResultDataResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetExperimentResultDataResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetExperimentResultDataResponseBody.Data()
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetExperimentResultDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExperimentResultDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetExperimentResultDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class GetResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MachineType : Tea.TeaModel {
            public var bondNum: Int32?

            public var cpuInfo: String?

            public var diskInfo: String?

            public var gpuInfo: String?

            public var memoryInfo: String?

            public var name: String?

            public var networkInfo: String?

            public var networkMode: String?

            public var nodeCount: Int32?

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
                if self.bondNum != nil {
                    map["BondNum"] = self.bondNum!
                }
                if self.cpuInfo != nil {
                    map["CpuInfo"] = self.cpuInfo!
                }
                if self.diskInfo != nil {
                    map["DiskInfo"] = self.diskInfo!
                }
                if self.gpuInfo != nil {
                    map["GpuInfo"] = self.gpuInfo!
                }
                if self.memoryInfo != nil {
                    map["MemoryInfo"] = self.memoryInfo!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.networkInfo != nil {
                    map["NetworkInfo"] = self.networkInfo!
                }
                if self.networkMode != nil {
                    map["NetworkMode"] = self.networkMode!
                }
                if self.nodeCount != nil {
                    map["NodeCount"] = self.nodeCount!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BondNum"] as? Int32 {
                    self.bondNum = value
                }
                if let value = dict["CpuInfo"] as? String {
                    self.cpuInfo = value
                }
                if let value = dict["DiskInfo"] as? String {
                    self.diskInfo = value
                }
                if let value = dict["GpuInfo"] as? String {
                    self.gpuInfo = value
                }
                if let value = dict["MemoryInfo"] as? String {
                    self.memoryInfo = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NetworkInfo"] as? String {
                    self.networkInfo = value
                }
                if let value = dict["NetworkMode"] as? String {
                    self.networkMode = value
                }
                if let value = dict["NodeCount"] as? Int32 {
                    self.nodeCount = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class ResourceNodes : Tea.TeaModel {
            public var nodeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nodeName != nil {
                    map["NodeName"] = self.nodeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NodeName"] as? String {
                    self.nodeName = value
                }
            }
        }
        public class UserAccessParam : Tea.TeaModel {
            public var accessId: String?

            public var accessKey: String?

            public var endpoint: String?

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
                if self.accessId != nil {
                    map["AccessId"] = self.accessId!
                }
                if self.accessKey != nil {
                    map["AccessKey"] = self.accessKey!
                }
                if self.endpoint != nil {
                    map["Endpoint"] = self.endpoint!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessId"] as? String {
                    self.accessId = value
                }
                if let value = dict["AccessKey"] as? String {
                    self.accessKey = value
                }
                if let value = dict["Endpoint"] as? String {
                    self.endpoint = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var clusterDesc: String?

        public var clusterId: String?

        public var clusterName: String?

        public var cpuCoreLimit: Int32?

        public var gpuLimit: Int32?

        public var machineType: GetResourceResponseBody.Data.MachineType?

        public var maxCpuCore: Int32?

        public var maxGpu: Int32?

        public var maxMemory: Int64?

        public var memoryLimit: Int64?

        public var resourceId: Int64?

        public var resourceNodes: [GetResourceResponseBody.Data.ResourceNodes]?

        public var userAccessParam: GetResourceResponseBody.Data.UserAccessParam?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.machineType?.validate()
            try self.userAccessParam?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterDesc != nil {
                map["ClusterDesc"] = self.clusterDesc!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.cpuCoreLimit != nil {
                map["CpuCoreLimit"] = self.cpuCoreLimit!
            }
            if self.gpuLimit != nil {
                map["GpuLimit"] = self.gpuLimit!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType?.toMap()
            }
            if self.maxCpuCore != nil {
                map["MaxCpuCore"] = self.maxCpuCore!
            }
            if self.maxGpu != nil {
                map["MaxGpu"] = self.maxGpu!
            }
            if self.maxMemory != nil {
                map["MaxMemory"] = self.maxMemory!
            }
            if self.memoryLimit != nil {
                map["MemoryLimit"] = self.memoryLimit!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceNodes != nil {
                var tmp : [Any] = []
                for k in self.resourceNodes! {
                    tmp.append(k.toMap())
                }
                map["ResourceNodes"] = tmp
            }
            if self.userAccessParam != nil {
                map["UserAccessParam"] = self.userAccessParam?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterDesc"] as? String {
                self.clusterDesc = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["CpuCoreLimit"] as? Int32 {
                self.cpuCoreLimit = value
            }
            if let value = dict["GpuLimit"] as? Int32 {
                self.gpuLimit = value
            }
            if let value = dict["MachineType"] as? [String: Any?] {
                var model = GetResourceResponseBody.Data.MachineType()
                model.fromMap(value)
                self.machineType = model
            }
            if let value = dict["MaxCpuCore"] as? Int32 {
                self.maxCpuCore = value
            }
            if let value = dict["MaxGpu"] as? Int32 {
                self.maxGpu = value
            }
            if let value = dict["MaxMemory"] as? Int64 {
                self.maxMemory = value
            }
            if let value = dict["MemoryLimit"] as? Int64 {
                self.memoryLimit = value
            }
            if let value = dict["ResourceId"] as? Int64 {
                self.resourceId = value
            }
            if let value = dict["ResourceNodes"] as? [Any?] {
                var tmp : [GetResourceResponseBody.Data.ResourceNodes] = []
                for v in value {
                    if v != nil {
                        var model = GetResourceResponseBody.Data.ResourceNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceNodes = tmp
            }
            if let value = dict["UserAccessParam"] as? [String: Any?] {
                var model = GetResourceResponseBody.Data.UserAccessParam()
                model.fromMap(value)
                self.userAccessParam = model
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetResourceResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetResourceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourcePredictResultRequest : Tea.TeaModel {
    public var resourceId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceId"] as? Int64 {
            self.resourceId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class GetResourcePredictResultResponseBody : Tea.TeaModel {
    public var data: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Int64 {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetResourcePredictResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourcePredictResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetResourcePredictResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkloadRequest : Tea.TeaModel {
    public var workloadId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workloadId != nil {
            map["WorkloadId"] = self.workloadId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkloadId"] as? Int64 {
            self.workloadId = value
        }
    }
}

public class GetWorkloadResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamSettings : Tea.TeaModel {
            public var defaultValue: String?

            public var paramDesc: String?

            public var paramName: String?

            public var paramRegex: String?

            public var paramType: String?

            public var paramValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.paramDesc != nil {
                    map["ParamDesc"] = self.paramDesc!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramRegex != nil {
                    map["ParamRegex"] = self.paramRegex!
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                if self.paramValue != nil {
                    map["ParamValue"] = self.paramValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["ParamDesc"] as? String {
                    self.paramDesc = value
                }
                if let value = dict["ParamName"] as? String {
                    self.paramName = value
                }
                if let value = dict["ParamRegex"] as? String {
                    self.paramRegex = value
                }
                if let value = dict["ParamType"] as? String {
                    self.paramType = value
                }
                if let value = dict["ParamValue"] as? String {
                    self.paramValue = value
                }
            }
        }
        public class StaticConfig : Tea.TeaModel {
            public var frameWork: String?

            public var os: String?

            public var parameters: String?

            public var softwareStack: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.frameWork != nil {
                    map["FrameWork"] = self.frameWork!
                }
                if self.os != nil {
                    map["Os"] = self.os!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.softwareStack != nil {
                    map["SoftwareStack"] = self.softwareStack!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FrameWork"] as? String {
                    self.frameWork = value
                }
                if let value = dict["Os"] as? String {
                    self.os = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["SoftwareStack"] as? String {
                    self.softwareStack = value
                }
            }
        }
        public var defaultCpuPerWorker: Int32?

        public var defaultGpuPerWorker: Int32?

        public var defaultMemoryPerWorker: Int32?

        public var defaultShareMemory: Int32?

        public var family: String?

        public var jobKind: String?

        public var paramSettings: [GetWorkloadResponseBody.Data.ParamSettings]?

        public var scene: String?

        public var scope: String?

        public var staticConfig: GetWorkloadResponseBody.Data.StaticConfig?

        public var versionId: Int64?

        public var workloadDescription: String?

        public var workloadId: Int64?

        public var workloadName: String?

        public var workloadType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.staticConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultCpuPerWorker != nil {
                map["DefaultCpuPerWorker"] = self.defaultCpuPerWorker!
            }
            if self.defaultGpuPerWorker != nil {
                map["DefaultGpuPerWorker"] = self.defaultGpuPerWorker!
            }
            if self.defaultMemoryPerWorker != nil {
                map["DefaultMemoryPerWorker"] = self.defaultMemoryPerWorker!
            }
            if self.defaultShareMemory != nil {
                map["DefaultShareMemory"] = self.defaultShareMemory!
            }
            if self.family != nil {
                map["Family"] = self.family!
            }
            if self.jobKind != nil {
                map["JobKind"] = self.jobKind!
            }
            if self.paramSettings != nil {
                var tmp : [Any] = []
                for k in self.paramSettings! {
                    tmp.append(k.toMap())
                }
                map["ParamSettings"] = tmp
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.staticConfig != nil {
                map["StaticConfig"] = self.staticConfig?.toMap()
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.workloadDescription != nil {
                map["WorkloadDescription"] = self.workloadDescription!
            }
            if self.workloadId != nil {
                map["WorkloadId"] = self.workloadId!
            }
            if self.workloadName != nil {
                map["WorkloadName"] = self.workloadName!
            }
            if self.workloadType != nil {
                map["WorkloadType"] = self.workloadType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultCpuPerWorker"] as? Int32 {
                self.defaultCpuPerWorker = value
            }
            if let value = dict["DefaultGpuPerWorker"] as? Int32 {
                self.defaultGpuPerWorker = value
            }
            if let value = dict["DefaultMemoryPerWorker"] as? Int32 {
                self.defaultMemoryPerWorker = value
            }
            if let value = dict["DefaultShareMemory"] as? Int32 {
                self.defaultShareMemory = value
            }
            if let value = dict["Family"] as? String {
                self.family = value
            }
            if let value = dict["JobKind"] as? String {
                self.jobKind = value
            }
            if let value = dict["ParamSettings"] as? [Any?] {
                var tmp : [GetWorkloadResponseBody.Data.ParamSettings] = []
                for v in value {
                    if v != nil {
                        var model = GetWorkloadResponseBody.Data.ParamSettings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramSettings = tmp
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["StaticConfig"] as? [String: Any?] {
                var model = GetWorkloadResponseBody.Data.StaticConfig()
                model.fromMap(value)
                self.staticConfig = model
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
            if let value = dict["WorkloadDescription"] as? String {
                self.workloadDescription = value
            }
            if let value = dict["WorkloadId"] as? Int64 {
                self.workloadId = value
            }
            if let value = dict["WorkloadName"] as? String {
                self.workloadName = value
            }
            if let value = dict["WorkloadType"] as? String {
                self.workloadType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: GetWorkloadResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWorkloadResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetWorkloadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkloadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkloadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentPlanTemplatesRequest : Tea.TeaModel {
    public var privacyLevel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privacyLevel != nil {
            map["PrivacyLevel"] = self.privacyLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrivacyLevel"] as? String {
            self.privacyLevel = value
        }
    }
}

public class ListExperimentPlanTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplatePipelineParam : Tea.TeaModel {
            public class EnvParams : Tea.TeaModel {
                public var cpuPerWorker: Int32?

                public var cudaVersion: String?

                public var gpuDriverVersion: String?

                public var gpuPerWorker: Int32?

                public var memoryPerWorker: Int32?

                public var NCCLVersion: String?

                public var pyTorchVersion: String?

                public var shareMemory: Int32?

                public var workerNum: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuPerWorker != nil {
                        map["CpuPerWorker"] = self.cpuPerWorker!
                    }
                    if self.cudaVersion != nil {
                        map["CudaVersion"] = self.cudaVersion!
                    }
                    if self.gpuDriverVersion != nil {
                        map["GpuDriverVersion"] = self.gpuDriverVersion!
                    }
                    if self.gpuPerWorker != nil {
                        map["GpuPerWorker"] = self.gpuPerWorker!
                    }
                    if self.memoryPerWorker != nil {
                        map["MemoryPerWorker"] = self.memoryPerWorker!
                    }
                    if self.NCCLVersion != nil {
                        map["NCCLVersion"] = self.NCCLVersion!
                    }
                    if self.pyTorchVersion != nil {
                        map["PyTorchVersion"] = self.pyTorchVersion!
                    }
                    if self.shareMemory != nil {
                        map["ShareMemory"] = self.shareMemory!
                    }
                    if self.workerNum != nil {
                        map["WorkerNum"] = self.workerNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuPerWorker"] as? Int32 {
                        self.cpuPerWorker = value
                    }
                    if let value = dict["CudaVersion"] as? String {
                        self.cudaVersion = value
                    }
                    if let value = dict["GpuDriverVersion"] as? String {
                        self.gpuDriverVersion = value
                    }
                    if let value = dict["GpuPerWorker"] as? Int32 {
                        self.gpuPerWorker = value
                    }
                    if let value = dict["MemoryPerWorker"] as? Int32 {
                        self.memoryPerWorker = value
                    }
                    if let value = dict["NCCLVersion"] as? String {
                        self.NCCLVersion = value
                    }
                    if let value = dict["PyTorchVersion"] as? String {
                        self.pyTorchVersion = value
                    }
                    if let value = dict["ShareMemory"] as? Int32 {
                        self.shareMemory = value
                    }
                    if let value = dict["WorkerNum"] as? Int32 {
                        self.workerNum = value
                    }
                }
            }
            public var envParams: ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam.EnvParams?

            public var pipelineOrder: Int32?

            public var scene: String?

            public var settingParams: [String: String]?

            public var workloadId: Int64?

            public var workloadName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.envParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.envParams != nil {
                    map["EnvParams"] = self.envParams?.toMap()
                }
                if self.pipelineOrder != nil {
                    map["PipelineOrder"] = self.pipelineOrder!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.settingParams != nil {
                    map["SettingParams"] = self.settingParams!
                }
                if self.workloadId != nil {
                    map["WorkloadId"] = self.workloadId!
                }
                if self.workloadName != nil {
                    map["WorkloadName"] = self.workloadName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnvParams"] as? [String: Any?] {
                    var model = ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam.EnvParams()
                    model.fromMap(value)
                    self.envParams = model
                }
                if let value = dict["PipelineOrder"] as? Int32 {
                    self.pipelineOrder = value
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["SettingParams"] as? [String: String] {
                    self.settingParams = value
                }
                if let value = dict["WorkloadId"] as? Int64 {
                    self.workloadId = value
                }
                if let value = dict["WorkloadName"] as? String {
                    self.workloadName = value
                }
            }
        }
        public var createTime: String?

        public var creatorUid: Int64?

        public var isDelete: Int32?

        public var privacyLevel: String?

        public var templateCode: Int64?

        public var templateDescription: String?

        public var templateId: Int64?

        public var templateName: String?

        public var templatePipelineParam: [ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam]?

        public var updateTime: String?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorUid != nil {
                map["CreatorUid"] = self.creatorUid!
            }
            if self.isDelete != nil {
                map["IsDelete"] = self.isDelete!
            }
            if self.privacyLevel != nil {
                map["PrivacyLevel"] = self.privacyLevel!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateDescription != nil {
                map["TemplateDescription"] = self.templateDescription!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templatePipelineParam != nil {
                var tmp : [Any] = []
                for k in self.templatePipelineParam! {
                    tmp.append(k.toMap())
                }
                map["TemplatePipelineParam"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreatorUid"] as? Int64 {
                self.creatorUid = value
            }
            if let value = dict["IsDelete"] as? Int32 {
                self.isDelete = value
            }
            if let value = dict["PrivacyLevel"] as? String {
                self.privacyLevel = value
            }
            if let value = dict["TemplateCode"] as? Int64 {
                self.templateCode = value
            }
            if let value = dict["TemplateDescription"] as? String {
                self.templateDescription = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplatePipelineParam"] as? [Any?] {
                var tmp : [ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam] = []
                for v in value {
                    if v != nil {
                        var model = ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templatePipelineParam = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var data: [ListExperimentPlanTemplatesResponseBody.Data]?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListExperimentPlanTemplatesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListExperimentPlanTemplatesResponseBody.Data()
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExperimentPlanTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentPlanTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExperimentPlanTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentPlansRequest : Tea.TeaModel {
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
    public var creatTimeOrder: String?

    public var endTimeOrder: String?

    public var page: Int32?

    public var planTaskStatus: [String]?

    public var resourceGroupId: String?

    public var resourceId: Int64?

    public var resourceName: [String]?

    public var size: Int32?

    public var startTimeOrder: String?

    public var tag: [ListExperimentPlansRequest.Tag]?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creatTimeOrder != nil {
            map["CreatTimeOrder"] = self.creatTimeOrder!
        }
        if self.endTimeOrder != nil {
            map["EndTimeOrder"] = self.endTimeOrder!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.planTaskStatus != nil {
            map["PlanTaskStatus"] = self.planTaskStatus!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTimeOrder != nil {
            map["StartTimeOrder"] = self.startTimeOrder!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatTimeOrder"] as? String {
            self.creatTimeOrder = value
        }
        if let value = dict["EndTimeOrder"] as? String {
            self.endTimeOrder = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PlanTaskStatus"] as? [String] {
            self.planTaskStatus = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? Int64 {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? [String] {
            self.resourceName = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["StartTimeOrder"] as? String {
            self.startTimeOrder = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListExperimentPlansRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListExperimentPlansRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListExperimentPlansShrinkRequest : Tea.TeaModel {
    public var creatTimeOrder: String?

    public var endTimeOrder: String?

    public var page: Int32?

    public var planTaskStatusShrink: String?

    public var resourceGroupId: String?

    public var resourceId: Int64?

    public var resourceNameShrink: String?

    public var size: Int32?

    public var startTimeOrder: String?

    public var tagShrink: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creatTimeOrder != nil {
            map["CreatTimeOrder"] = self.creatTimeOrder!
        }
        if self.endTimeOrder != nil {
            map["EndTimeOrder"] = self.endTimeOrder!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.planTaskStatusShrink != nil {
            map["PlanTaskStatus"] = self.planTaskStatusShrink!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceNameShrink != nil {
            map["ResourceName"] = self.resourceNameShrink!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTimeOrder != nil {
            map["StartTimeOrder"] = self.startTimeOrder!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatTimeOrder"] as? String {
            self.creatTimeOrder = value
        }
        if let value = dict["EndTimeOrder"] as? String {
            self.endTimeOrder = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PlanTaskStatus"] as? String {
            self.planTaskStatusShrink = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? Int64 {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceNameShrink = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["StartTimeOrder"] as? String {
            self.startTimeOrder = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListExperimentPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var createTime: String?

        public var endTime: String?

        public var planId: Int64?

        public var planTaskStatus: [String: Int32]?

        public var resourceGroupId: String?

        public var resourceId: Int64?

        public var resourceName: String?

        public var startTime: String?

        public var tags: [ListExperimentPlansResponseBody.Data.Tags]?

        public var templateId: Int64?

        public var templateName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.planId != nil {
                map["PlanId"] = self.planId!
            }
            if self.planTaskStatus != nil {
                map["PlanTaskStatus"] = self.planTaskStatus!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
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
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["PlanId"] as? Int64 {
                self.planId = value
            }
            if let value = dict["PlanTaskStatus"] as? [String: Int32] {
                self.planTaskStatus = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceId"] as? Int64 {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListExperimentPlansResponseBody.Data.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListExperimentPlansResponseBody.Data.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [ListExperimentPlansResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListExperimentPlansResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListExperimentPlansResponseBody.Data()
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListExperimentPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentPlansResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExperimentPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentsRequest : Tea.TeaModel {
    public var order: Int32?

    public var planId: Int64?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? Int32 {
            self.order = value
        }
        if let value = dict["PlanId"] as? Int64 {
            self.planId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListExperimentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EnvParams : Tea.TeaModel {
            public class ResourceNodes : Tea.TeaModel {
                public var nodeName: String?

                public var requestCPU: Int32?

                public var requestGPU: Int32?

                public var requestMemory: Int32?

                public var totalCPU: Int32?

                public var totalGPU: Int32?

                public var totalMemory: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    if self.requestCPU != nil {
                        map["RequestCPU"] = self.requestCPU!
                    }
                    if self.requestGPU != nil {
                        map["RequestGPU"] = self.requestGPU!
                    }
                    if self.requestMemory != nil {
                        map["RequestMemory"] = self.requestMemory!
                    }
                    if self.totalCPU != nil {
                        map["TotalCPU"] = self.totalCPU!
                    }
                    if self.totalGPU != nil {
                        map["TotalGPU"] = self.totalGPU!
                    }
                    if self.totalMemory != nil {
                        map["TotalMemory"] = self.totalMemory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                    if let value = dict["RequestCPU"] as? Int32 {
                        self.requestCPU = value
                    }
                    if let value = dict["RequestGPU"] as? Int32 {
                        self.requestGPU = value
                    }
                    if let value = dict["RequestMemory"] as? Int32 {
                        self.requestMemory = value
                    }
                    if let value = dict["TotalCPU"] as? Int32 {
                        self.totalCPU = value
                    }
                    if let value = dict["TotalGPU"] as? Int32 {
                        self.totalGPU = value
                    }
                    if let value = dict["TotalMemory"] as? Int64 {
                        self.totalMemory = value
                    }
                }
            }
            public var cpuPerWorker: Int32?

            public var cudaVersion: String?

            public var extendParam: [String: String]?

            public var gpuDriverVersion: String?

            public var gpuPerWorker: Int32?

            public var memoryPerWorker: Int32?

            public var NCCLVersion: String?

            public var pyTorchVersion: String?

            public var resourceNodes: [ListExperimentsResponseBody.Data.EnvParams.ResourceNodes]?

            public var shareMemory: Int32?

            public var workerNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuPerWorker != nil {
                    map["CpuPerWorker"] = self.cpuPerWorker!
                }
                if self.cudaVersion != nil {
                    map["CudaVersion"] = self.cudaVersion!
                }
                if self.extendParam != nil {
                    map["ExtendParam"] = self.extendParam!
                }
                if self.gpuDriverVersion != nil {
                    map["GpuDriverVersion"] = self.gpuDriverVersion!
                }
                if self.gpuPerWorker != nil {
                    map["GpuPerWorker"] = self.gpuPerWorker!
                }
                if self.memoryPerWorker != nil {
                    map["MemoryPerWorker"] = self.memoryPerWorker!
                }
                if self.NCCLVersion != nil {
                    map["NCCLVersion"] = self.NCCLVersion!
                }
                if self.pyTorchVersion != nil {
                    map["PyTorchVersion"] = self.pyTorchVersion!
                }
                if self.resourceNodes != nil {
                    var tmp : [Any] = []
                    for k in self.resourceNodes! {
                        tmp.append(k.toMap())
                    }
                    map["ResourceNodes"] = tmp
                }
                if self.shareMemory != nil {
                    map["ShareMemory"] = self.shareMemory!
                }
                if self.workerNum != nil {
                    map["WorkerNum"] = self.workerNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuPerWorker"] as? Int32 {
                    self.cpuPerWorker = value
                }
                if let value = dict["CudaVersion"] as? String {
                    self.cudaVersion = value
                }
                if let value = dict["ExtendParam"] as? [String: String] {
                    self.extendParam = value
                }
                if let value = dict["GpuDriverVersion"] as? String {
                    self.gpuDriverVersion = value
                }
                if let value = dict["GpuPerWorker"] as? Int32 {
                    self.gpuPerWorker = value
                }
                if let value = dict["MemoryPerWorker"] as? Int32 {
                    self.memoryPerWorker = value
                }
                if let value = dict["NCCLVersion"] as? String {
                    self.NCCLVersion = value
                }
                if let value = dict["PyTorchVersion"] as? String {
                    self.pyTorchVersion = value
                }
                if let value = dict["ResourceNodes"] as? [Any?] {
                    var tmp : [ListExperimentsResponseBody.Data.EnvParams.ResourceNodes] = []
                    for v in value {
                        if v != nil {
                            var model = ListExperimentsResponseBody.Data.EnvParams.ResourceNodes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resourceNodes = tmp
                }
                if let value = dict["ShareMemory"] as? Int32 {
                    self.shareMemory = value
                }
                if let value = dict["WorkerNum"] as? Int32 {
                    self.workerNum = value
                }
            }
        }
        public class Results : Tea.TeaModel {
            public class ErrorWorker : Tea.TeaModel {
                public var errorFlag: Bool?

                public var errorMsg: String?

                public var experimentId: Int64?

                public var gpuName: String?

                public var gpuNum: Int32?

                public var hostname: String?

                public var podName: String?

                public var samplesPerSecond: Double?

                public var tflops: Double?

                public var warningFlag: Bool?

                public var warningMsg: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorFlag != nil {
                        map["ErrorFlag"] = self.errorFlag!
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.experimentId != nil {
                        map["ExperimentId"] = self.experimentId!
                    }
                    if self.gpuName != nil {
                        map["GpuName"] = self.gpuName!
                    }
                    if self.gpuNum != nil {
                        map["GpuNum"] = self.gpuNum!
                    }
                    if self.hostname != nil {
                        map["Hostname"] = self.hostname!
                    }
                    if self.podName != nil {
                        map["PodName"] = self.podName!
                    }
                    if self.samplesPerSecond != nil {
                        map["SamplesPerSecond"] = self.samplesPerSecond!
                    }
                    if self.tflops != nil {
                        map["Tflops"] = self.tflops!
                    }
                    if self.warningFlag != nil {
                        map["WarningFlag"] = self.warningFlag!
                    }
                    if self.warningMsg != nil {
                        map["WarningMsg"] = self.warningMsg!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorFlag"] as? Bool {
                        self.errorFlag = value
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ExperimentId"] as? Int64 {
                        self.experimentId = value
                    }
                    if let value = dict["GpuName"] as? String {
                        self.gpuName = value
                    }
                    if let value = dict["GpuNum"] as? Int32 {
                        self.gpuNum = value
                    }
                    if let value = dict["Hostname"] as? String {
                        self.hostname = value
                    }
                    if let value = dict["PodName"] as? String {
                        self.podName = value
                    }
                    if let value = dict["SamplesPerSecond"] as? Double {
                        self.samplesPerSecond = value
                    }
                    if let value = dict["Tflops"] as? Double {
                        self.tflops = value
                    }
                    if let value = dict["WarningFlag"] as? Bool {
                        self.warningFlag = value
                    }
                    if let value = dict["WarningMsg"] as? String {
                        self.warningMsg = value
                    }
                }
            }
            public class WarningWorker : Tea.TeaModel {
                public var errorFlag: Bool?

                public var errorMsg: String?

                public var experimentId: Int64?

                public var gpuName: String?

                public var gpuNum: Int32?

                public var hostname: String?

                public var podName: String?

                public var samplesPerSecond: Double?

                public var tflops: Double?

                public var warningFlag: Bool?

                public var warningMsg: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorFlag != nil {
                        map["ErrorFlag"] = self.errorFlag!
                    }
                    if self.errorMsg != nil {
                        map["ErrorMsg"] = self.errorMsg!
                    }
                    if self.experimentId != nil {
                        map["ExperimentId"] = self.experimentId!
                    }
                    if self.gpuName != nil {
                        map["GpuName"] = self.gpuName!
                    }
                    if self.gpuNum != nil {
                        map["GpuNum"] = self.gpuNum!
                    }
                    if self.hostname != nil {
                        map["Hostname"] = self.hostname!
                    }
                    if self.podName != nil {
                        map["PodName"] = self.podName!
                    }
                    if self.samplesPerSecond != nil {
                        map["SamplesPerSecond"] = self.samplesPerSecond!
                    }
                    if self.tflops != nil {
                        map["Tflops"] = self.tflops!
                    }
                    if self.warningFlag != nil {
                        map["WarningFlag"] = self.warningFlag!
                    }
                    if self.warningMsg != nil {
                        map["WarningMsg"] = self.warningMsg!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorFlag"] as? Bool {
                        self.errorFlag = value
                    }
                    if let value = dict["ErrorMsg"] as? String {
                        self.errorMsg = value
                    }
                    if let value = dict["ExperimentId"] as? Int64 {
                        self.experimentId = value
                    }
                    if let value = dict["GpuName"] as? String {
                        self.gpuName = value
                    }
                    if let value = dict["GpuNum"] as? Int32 {
                        self.gpuNum = value
                    }
                    if let value = dict["Hostname"] as? String {
                        self.hostname = value
                    }
                    if let value = dict["PodName"] as? String {
                        self.podName = value
                    }
                    if let value = dict["SamplesPerSecond"] as? Double {
                        self.samplesPerSecond = value
                    }
                    if let value = dict["Tflops"] as? Double {
                        self.tflops = value
                    }
                    if let value = dict["WarningFlag"] as? Bool {
                        self.warningFlag = value
                    }
                    if let value = dict["WarningMsg"] as? String {
                        self.warningMsg = value
                    }
                }
            }
            public var duration: Double?

            public var errorWorker: [ListExperimentsResponseBody.Data.Results.ErrorWorker]?

            public var experimentId: Int64?

            public var mfu: Double?

            public var samplesPerSecond: Double?

            public var secondsPerIteration: Double?

            public var warningWorker: [ListExperimentsResponseBody.Data.Results.WarningWorker]?

            public override init() {
                super.init()
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
                if self.errorWorker != nil {
                    var tmp : [Any] = []
                    for k in self.errorWorker! {
                        tmp.append(k.toMap())
                    }
                    map["ErrorWorker"] = tmp
                }
                if self.experimentId != nil {
                    map["ExperimentId"] = self.experimentId!
                }
                if self.mfu != nil {
                    map["Mfu"] = self.mfu!
                }
                if self.samplesPerSecond != nil {
                    map["SamplesPerSecond"] = self.samplesPerSecond!
                }
                if self.secondsPerIteration != nil {
                    map["SecondsPerIteration"] = self.secondsPerIteration!
                }
                if self.warningWorker != nil {
                    var tmp : [Any] = []
                    for k in self.warningWorker! {
                        tmp.append(k.toMap())
                    }
                    map["WarningWorker"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Double {
                    self.duration = value
                }
                if let value = dict["ErrorWorker"] as? [Any?] {
                    var tmp : [ListExperimentsResponseBody.Data.Results.ErrorWorker] = []
                    for v in value {
                        if v != nil {
                            var model = ListExperimentsResponseBody.Data.Results.ErrorWorker()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.errorWorker = tmp
                }
                if let value = dict["ExperimentId"] as? Int64 {
                    self.experimentId = value
                }
                if let value = dict["Mfu"] as? Double {
                    self.mfu = value
                }
                if let value = dict["SamplesPerSecond"] as? Double {
                    self.samplesPerSecond = value
                }
                if let value = dict["SecondsPerIteration"] as? Double {
                    self.secondsPerIteration = value
                }
                if let value = dict["WarningWorker"] as? [Any?] {
                    var tmp : [ListExperimentsResponseBody.Data.Results.WarningWorker] = []
                    for v in value {
                        if v != nil {
                            var model = ListExperimentsResponseBody.Data.Results.WarningWorker()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.warningWorker = tmp
                }
            }
        }
        public var createTime: Int64?

        public var endTime: String?

        public var envParams: ListExperimentsResponseBody.Data.EnvParams?

        public var experimentId: Int64?

        public var experimentName: String?

        public var experimentType: String?

        public var getParams: [String: String]?

        public var resourceName: String?

        public var results: ListExperimentsResponseBody.Data.Results?

        public var setParams: [String: String]?

        public var startTime: String?

        public var status: String?

        public var updateTime: Int64?

        public var workloadName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.envParams?.validate()
            try self.results?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.envParams != nil {
                map["EnvParams"] = self.envParams?.toMap()
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.experimentName != nil {
                map["ExperimentName"] = self.experimentName!
            }
            if self.experimentType != nil {
                map["ExperimentType"] = self.experimentType!
            }
            if self.getParams != nil {
                map["GetParams"] = self.getParams!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.results != nil {
                map["Results"] = self.results?.toMap()
            }
            if self.setParams != nil {
                map["SetParams"] = self.setParams!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.workloadName != nil {
                map["WorkloadName"] = self.workloadName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["EnvParams"] as? [String: Any?] {
                var model = ListExperimentsResponseBody.Data.EnvParams()
                model.fromMap(value)
                self.envParams = model
            }
            if let value = dict["ExperimentId"] as? Int64 {
                self.experimentId = value
            }
            if let value = dict["ExperimentName"] as? String {
                self.experimentName = value
            }
            if let value = dict["ExperimentType"] as? String {
                self.experimentType = value
            }
            if let value = dict["GetParams"] as? [String: String] {
                self.getParams = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["Results"] as? [String: Any?] {
                var model = ListExperimentsResponseBody.Data.Results()
                model.fromMap(value)
                self.results = model
            }
            if let value = dict["SetParams"] as? [String: String] {
                self.setParams = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
            }
            if let value = dict["WorkloadName"] as? String {
                self.workloadName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [ListExperimentsResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListExperimentsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListExperimentsResponseBody.Data()
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

public class ListTagResourcesRequest : Tea.TeaModel {
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
    public var nextToken: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
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

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
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
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkloadsRequest : Tea.TeaModel {
    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class ListWorkloadsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamSettings : Tea.TeaModel {
            public var defaultValue: String?

            public var paramDesc: String?

            public var paramName: String?

            public var paramRegex: String?

            public var paramType: String?

            public var paramValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.paramDesc != nil {
                    map["ParamDesc"] = self.paramDesc!
                }
                if self.paramName != nil {
                    map["ParamName"] = self.paramName!
                }
                if self.paramRegex != nil {
                    map["ParamRegex"] = self.paramRegex!
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                if self.paramValue != nil {
                    map["ParamValue"] = self.paramValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["ParamDesc"] as? String {
                    self.paramDesc = value
                }
                if let value = dict["ParamName"] as? String {
                    self.paramName = value
                }
                if let value = dict["ParamRegex"] as? String {
                    self.paramRegex = value
                }
                if let value = dict["ParamType"] as? String {
                    self.paramType = value
                }
                if let value = dict["ParamValue"] as? String {
                    self.paramValue = value
                }
            }
        }
        public class StaticConfig : Tea.TeaModel {
            public var frameWork: String?

            public var os: String?

            public var parameters: String?

            public var softwareStack: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.frameWork != nil {
                    map["FrameWork"] = self.frameWork!
                }
                if self.os != nil {
                    map["Os"] = self.os!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.softwareStack != nil {
                    map["SoftwareStack"] = self.softwareStack!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FrameWork"] as? String {
                    self.frameWork = value
                }
                if let value = dict["Os"] as? String {
                    self.os = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["SoftwareStack"] as? String {
                    self.softwareStack = value
                }
            }
        }
        public var defaultCpuPerWorker: Int32?

        public var defaultGpuPerWorker: Int32?

        public var defaultMemoryPerWorker: Int32?

        public var defaultShareMemory: Int32?

        public var family: String?

        public var jobKind: String?

        public var paramSettings: [ListWorkloadsResponseBody.Data.ParamSettings]?

        public var scene: String?

        public var scope: String?

        public var staticConfig: ListWorkloadsResponseBody.Data.StaticConfig?

        public var versionId: Int64?

        public var workloadDescription: String?

        public var workloadId: Int64?

        public var workloadName: String?

        public var workloadType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.staticConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultCpuPerWorker != nil {
                map["DefaultCpuPerWorker"] = self.defaultCpuPerWorker!
            }
            if self.defaultGpuPerWorker != nil {
                map["DefaultGpuPerWorker"] = self.defaultGpuPerWorker!
            }
            if self.defaultMemoryPerWorker != nil {
                map["DefaultMemoryPerWorker"] = self.defaultMemoryPerWorker!
            }
            if self.defaultShareMemory != nil {
                map["DefaultShareMemory"] = self.defaultShareMemory!
            }
            if self.family != nil {
                map["Family"] = self.family!
            }
            if self.jobKind != nil {
                map["JobKind"] = self.jobKind!
            }
            if self.paramSettings != nil {
                var tmp : [Any] = []
                for k in self.paramSettings! {
                    tmp.append(k.toMap())
                }
                map["ParamSettings"] = tmp
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.staticConfig != nil {
                map["StaticConfig"] = self.staticConfig?.toMap()
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            if self.workloadDescription != nil {
                map["WorkloadDescription"] = self.workloadDescription!
            }
            if self.workloadId != nil {
                map["WorkloadId"] = self.workloadId!
            }
            if self.workloadName != nil {
                map["WorkloadName"] = self.workloadName!
            }
            if self.workloadType != nil {
                map["WorkloadType"] = self.workloadType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultCpuPerWorker"] as? Int32 {
                self.defaultCpuPerWorker = value
            }
            if let value = dict["DefaultGpuPerWorker"] as? Int32 {
                self.defaultGpuPerWorker = value
            }
            if let value = dict["DefaultMemoryPerWorker"] as? Int32 {
                self.defaultMemoryPerWorker = value
            }
            if let value = dict["DefaultShareMemory"] as? Int32 {
                self.defaultShareMemory = value
            }
            if let value = dict["Family"] as? String {
                self.family = value
            }
            if let value = dict["JobKind"] as? String {
                self.jobKind = value
            }
            if let value = dict["ParamSettings"] as? [Any?] {
                var tmp : [ListWorkloadsResponseBody.Data.ParamSettings] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkloadsResponseBody.Data.ParamSettings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramSettings = tmp
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
            if let value = dict["StaticConfig"] as? [String: Any?] {
                var model = ListWorkloadsResponseBody.Data.StaticConfig()
                model.fromMap(value)
                self.staticConfig = model
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
            if let value = dict["WorkloadDescription"] as? String {
                self.workloadDescription = value
            }
            if let value = dict["WorkloadId"] as? Int64 {
                self.workloadId = value
            }
            if let value = dict["WorkloadName"] as? String {
                self.workloadName = value
            }
            if let value = dict["WorkloadType"] as? String {
                self.workloadType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: [ListWorkloadsResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListWorkloadsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListWorkloadsResponseBody.Data()
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListWorkloadsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkloadsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkloadsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopExperimentRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? Int64 {
            self.experimentId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class StopExperimentResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

public class TagResourcesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentPlanRequest : Tea.TeaModel {
    public var planId: Int64?

    public var planTemplateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        if self.planTemplateName != nil {
            map["PlanTemplateName"] = self.planTemplateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlanId"] as? Int64 {
            self.planId = value
        }
        if let value = dict["PlanTemplateName"] as? String {
            self.planTemplateName = value
        }
    }
}

public class UpdateExperimentPlanResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class UpdateExperimentPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateExperimentPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentPlanTemplateRequest : Tea.TeaModel {
    public class TemplatePipeline : Tea.TeaModel {
        public class EnvParams : Tea.TeaModel {
            public var cpuPerWorker: Int32?

            public var cudaVersion: String?

            public var gpuDriverVersion: String?

            public var gpuPerWorker: Int32?

            public var memoryPerWorker: Int32?

            public var NCCLVersion: String?

            public var pyTorchVersion: String?

            public var shareMemory: Int32?

            public var workerNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuPerWorker != nil {
                    map["CpuPerWorker"] = self.cpuPerWorker!
                }
                if self.cudaVersion != nil {
                    map["CudaVersion"] = self.cudaVersion!
                }
                if self.gpuDriverVersion != nil {
                    map["GpuDriverVersion"] = self.gpuDriverVersion!
                }
                if self.gpuPerWorker != nil {
                    map["GpuPerWorker"] = self.gpuPerWorker!
                }
                if self.memoryPerWorker != nil {
                    map["MemoryPerWorker"] = self.memoryPerWorker!
                }
                if self.NCCLVersion != nil {
                    map["NCCLVersion"] = self.NCCLVersion!
                }
                if self.pyTorchVersion != nil {
                    map["PyTorchVersion"] = self.pyTorchVersion!
                }
                if self.shareMemory != nil {
                    map["ShareMemory"] = self.shareMemory!
                }
                if self.workerNum != nil {
                    map["WorkerNum"] = self.workerNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuPerWorker"] as? Int32 {
                    self.cpuPerWorker = value
                }
                if let value = dict["CudaVersion"] as? String {
                    self.cudaVersion = value
                }
                if let value = dict["GpuDriverVersion"] as? String {
                    self.gpuDriverVersion = value
                }
                if let value = dict["GpuPerWorker"] as? Int32 {
                    self.gpuPerWorker = value
                }
                if let value = dict["MemoryPerWorker"] as? Int32 {
                    self.memoryPerWorker = value
                }
                if let value = dict["NCCLVersion"] as? String {
                    self.NCCLVersion = value
                }
                if let value = dict["PyTorchVersion"] as? String {
                    self.pyTorchVersion = value
                }
                if let value = dict["ShareMemory"] as? Int32 {
                    self.shareMemory = value
                }
                if let value = dict["WorkerNum"] as? Int32 {
                    self.workerNum = value
                }
            }
        }
        public var envParams: UpdateExperimentPlanTemplateRequest.TemplatePipeline.EnvParams?

        public var pipelineOrder: Int32?

        public var scene: String?

        public var settingParams: [String: String]?

        public var workloadId: Int64?

        public var workloadName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.envParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.envParams != nil {
                map["EnvParams"] = self.envParams?.toMap()
            }
            if self.pipelineOrder != nil {
                map["PipelineOrder"] = self.pipelineOrder!
            }
            if self.scene != nil {
                map["Scene"] = self.scene!
            }
            if self.settingParams != nil {
                map["SettingParams"] = self.settingParams!
            }
            if self.workloadId != nil {
                map["WorkloadId"] = self.workloadId!
            }
            if self.workloadName != nil {
                map["WorkloadName"] = self.workloadName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnvParams"] as? [String: Any?] {
                var model = UpdateExperimentPlanTemplateRequest.TemplatePipeline.EnvParams()
                model.fromMap(value)
                self.envParams = model
            }
            if let value = dict["PipelineOrder"] as? Int32 {
                self.pipelineOrder = value
            }
            if let value = dict["Scene"] as? String {
                self.scene = value
            }
            if let value = dict["SettingParams"] as? [String: String] {
                self.settingParams = value
            }
            if let value = dict["WorkloadId"] as? Int64 {
                self.workloadId = value
            }
            if let value = dict["WorkloadName"] as? String {
                self.workloadName = value
            }
        }
    }
    public var templateId: Int64?

    public var templatePipeline: [UpdateExperimentPlanTemplateRequest.TemplatePipeline]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templatePipeline != nil {
            var tmp : [Any] = []
            for k in self.templatePipeline! {
                tmp.append(k.toMap())
            }
            map["TemplatePipeline"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplatePipeline"] as? [Any?] {
            var tmp : [UpdateExperimentPlanTemplateRequest.TemplatePipeline] = []
            for v in value {
                if v != nil {
                    var model = UpdateExperimentPlanTemplateRequest.TemplatePipeline()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templatePipeline = tmp
        }
    }
}

public class UpdateExperimentPlanTemplateShrinkRequest : Tea.TeaModel {
    public var templateId: Int64?

    public var templatePipelineShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templatePipelineShrink != nil {
            map["TemplatePipeline"] = self.templatePipelineShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplatePipeline"] as? String {
            self.templatePipelineShrink = value
        }
    }
}

public class UpdateExperimentPlanTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplatePipelineParam : Tea.TeaModel {
            public class EnvParams : Tea.TeaModel {
                public class ResourceNodes : Tea.TeaModel {
                    public var nodeName: String?

                    public var requestCPU: Int32?

                    public var requestGPU: Int32?

                    public var requestMemory: Int32?

                    public var totalCPU: Int32?

                    public var totalGPU: Int32?

                    public var totalMemory: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.nodeName != nil {
                            map["NodeName"] = self.nodeName!
                        }
                        if self.requestCPU != nil {
                            map["RequestCPU"] = self.requestCPU!
                        }
                        if self.requestGPU != nil {
                            map["RequestGPU"] = self.requestGPU!
                        }
                        if self.requestMemory != nil {
                            map["RequestMemory"] = self.requestMemory!
                        }
                        if self.totalCPU != nil {
                            map["TotalCPU"] = self.totalCPU!
                        }
                        if self.totalGPU != nil {
                            map["TotalGPU"] = self.totalGPU!
                        }
                        if self.totalMemory != nil {
                            map["TotalMemory"] = self.totalMemory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["NodeName"] as? String {
                            self.nodeName = value
                        }
                        if let value = dict["RequestCPU"] as? Int32 {
                            self.requestCPU = value
                        }
                        if let value = dict["RequestGPU"] as? Int32 {
                            self.requestGPU = value
                        }
                        if let value = dict["RequestMemory"] as? Int32 {
                            self.requestMemory = value
                        }
                        if let value = dict["TotalCPU"] as? Int32 {
                            self.totalCPU = value
                        }
                        if let value = dict["TotalGPU"] as? Int32 {
                            self.totalGPU = value
                        }
                        if let value = dict["TotalMemory"] as? Int64 {
                            self.totalMemory = value
                        }
                    }
                }
                public var cpuPerWorker: Int32?

                public var cudaVersion: String?

                public var extendParam: [String: String]?

                public var gpuDriverVersion: String?

                public var gpuPerWorker: Int32?

                public var memoryPerWorker: Int32?

                public var NCCLVersion: String?

                public var pyTorchVersion: String?

                public var resourceNodes: [UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams.ResourceNodes]?

                public var shareMemory: Int32?

                public var workerNum: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuPerWorker != nil {
                        map["CpuPerWorker"] = self.cpuPerWorker!
                    }
                    if self.cudaVersion != nil {
                        map["CudaVersion"] = self.cudaVersion!
                    }
                    if self.extendParam != nil {
                        map["ExtendParam"] = self.extendParam!
                    }
                    if self.gpuDriverVersion != nil {
                        map["GpuDriverVersion"] = self.gpuDriverVersion!
                    }
                    if self.gpuPerWorker != nil {
                        map["GpuPerWorker"] = self.gpuPerWorker!
                    }
                    if self.memoryPerWorker != nil {
                        map["MemoryPerWorker"] = self.memoryPerWorker!
                    }
                    if self.NCCLVersion != nil {
                        map["NCCLVersion"] = self.NCCLVersion!
                    }
                    if self.pyTorchVersion != nil {
                        map["PyTorchVersion"] = self.pyTorchVersion!
                    }
                    if self.resourceNodes != nil {
                        var tmp : [Any] = []
                        for k in self.resourceNodes! {
                            tmp.append(k.toMap())
                        }
                        map["ResourceNodes"] = tmp
                    }
                    if self.shareMemory != nil {
                        map["ShareMemory"] = self.shareMemory!
                    }
                    if self.workerNum != nil {
                        map["WorkerNum"] = self.workerNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CpuPerWorker"] as? Int32 {
                        self.cpuPerWorker = value
                    }
                    if let value = dict["CudaVersion"] as? String {
                        self.cudaVersion = value
                    }
                    if let value = dict["ExtendParam"] as? [String: String] {
                        self.extendParam = value
                    }
                    if let value = dict["GpuDriverVersion"] as? String {
                        self.gpuDriverVersion = value
                    }
                    if let value = dict["GpuPerWorker"] as? Int32 {
                        self.gpuPerWorker = value
                    }
                    if let value = dict["MemoryPerWorker"] as? Int32 {
                        self.memoryPerWorker = value
                    }
                    if let value = dict["NCCLVersion"] as? String {
                        self.NCCLVersion = value
                    }
                    if let value = dict["PyTorchVersion"] as? String {
                        self.pyTorchVersion = value
                    }
                    if let value = dict["ResourceNodes"] as? [Any?] {
                        var tmp : [UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams.ResourceNodes] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams.ResourceNodes()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.resourceNodes = tmp
                    }
                    if let value = dict["ShareMemory"] as? Int32 {
                        self.shareMemory = value
                    }
                    if let value = dict["WorkerNum"] as? Int32 {
                        self.workerNum = value
                    }
                }
            }
            public var envParams: UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams?

            public var pipelineOrder: Int32?

            public var scene: String?

            public var settingParams: [String: String]?

            public var workloadId: Int64?

            public var workloadName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.envParams?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.envParams != nil {
                    map["EnvParams"] = self.envParams?.toMap()
                }
                if self.pipelineOrder != nil {
                    map["PipelineOrder"] = self.pipelineOrder!
                }
                if self.scene != nil {
                    map["Scene"] = self.scene!
                }
                if self.settingParams != nil {
                    map["SettingParams"] = self.settingParams!
                }
                if self.workloadId != nil {
                    map["WorkloadId"] = self.workloadId!
                }
                if self.workloadName != nil {
                    map["WorkloadName"] = self.workloadName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnvParams"] as? [String: Any?] {
                    var model = UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams()
                    model.fromMap(value)
                    self.envParams = model
                }
                if let value = dict["PipelineOrder"] as? Int32 {
                    self.pipelineOrder = value
                }
                if let value = dict["Scene"] as? String {
                    self.scene = value
                }
                if let value = dict["SettingParams"] as? [String: String] {
                    self.settingParams = value
                }
                if let value = dict["WorkloadId"] as? Int64 {
                    self.workloadId = value
                }
                if let value = dict["WorkloadName"] as? String {
                    self.workloadName = value
                }
            }
        }
        public var createTime: String?

        public var creatorUid: Int64?

        public var isDelete: Int32?

        public var privacyLevel: String?

        public var templateCode: Int64?

        public var templateDescription: String?

        public var templateId: Int64?

        public var templateName: String?

        public var templatePipelineParam: [UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam]?

        public var updateTime: String?

        public var versionId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creatorUid != nil {
                map["CreatorUid"] = self.creatorUid!
            }
            if self.isDelete != nil {
                map["IsDelete"] = self.isDelete!
            }
            if self.privacyLevel != nil {
                map["PrivacyLevel"] = self.privacyLevel!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateDescription != nil {
                map["TemplateDescription"] = self.templateDescription!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templatePipelineParam != nil {
                var tmp : [Any] = []
                for k in self.templatePipelineParam! {
                    tmp.append(k.toMap())
                }
                map["TemplatePipelineParam"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreatorUid"] as? Int64 {
                self.creatorUid = value
            }
            if let value = dict["IsDelete"] as? Int32 {
                self.isDelete = value
            }
            if let value = dict["PrivacyLevel"] as? String {
                self.privacyLevel = value
            }
            if let value = dict["TemplateCode"] as? Int64 {
                self.templateCode = value
            }
            if let value = dict["TemplateDescription"] as? String {
                self.templateDescription = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplatePipelineParam"] as? [Any?] {
                var tmp : [UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam] = []
                for v in value {
                    if v != nil {
                        var model = UpdateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templatePipelineParam = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VersionId"] as? Int64 {
                self.versionId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var data: UpdateExperimentPlanTemplateResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateExperimentPlanTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class UpdateExperimentPlanTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExperimentPlanTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateExperimentPlanTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateResourceRequest : Tea.TeaModel {
    public class UserAccessParam : Tea.TeaModel {
        public var accessId: String?

        public var accessKey: String?

        public var endpoint: String?

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
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["AccessKey"] as? String {
                self.accessKey = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var clusterId: String?

    public var userAccessParam: ValidateResourceRequest.UserAccessParam?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userAccessParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.userAccessParam != nil {
            map["UserAccessParam"] = self.userAccessParam?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["UserAccessParam"] as? [String: Any?] {
            var model = ValidateResourceRequest.UserAccessParam()
            model.fromMap(value)
            self.userAccessParam = model
        }
    }
}

public class ValidateResourceShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var userAccessParamShrink: String?

    public override init() {
        super.init()
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
        if self.userAccessParamShrink != nil {
            map["UserAccessParam"] = self.userAccessParamShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["UserAccessParam"] as? String {
            self.userAccessParamShrink = value
        }
    }
}

public class ValidateResourceResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ValidateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ValidateResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
