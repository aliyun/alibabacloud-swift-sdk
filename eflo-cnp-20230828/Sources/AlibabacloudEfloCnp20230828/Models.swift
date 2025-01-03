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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! Int64
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("PodName") {
            self.podName = dict["PodName"] as! String
        }
        if dict.keys.contains("GpuNum") {
            self.gpuNum = dict["GpuNum"] as! Int32
        }
        if dict.keys.contains("GpuName") {
            self.gpuName = dict["GpuName"] as! String
        }
        if dict.keys.contains("WarningFlag") {
            self.warningFlag = dict["WarningFlag"] as! Bool
        }
        if dict.keys.contains("WarningMsg") {
            self.warningMsg = dict["WarningMsg"] as! String
        }
        if dict.keys.contains("ErrorFlag") {
            self.errorFlag = dict["ErrorFlag"] as! Bool
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Tflops") {
            self.tflops = dict["Tflops"] as! Double
        }
        if dict.keys.contains("SamplesPerSecond") {
            self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateExperimentPlanRequest : Tea.TeaModel {
    public var externalParams: [String: Any]?

    public var resourceGroupId: String?

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
        if self.externalParams != nil {
            map["ExternalParams"] = self.externalParams!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalParams") {
            self.externalParams = dict["ExternalParams"] as! [String: Any]
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class CreateExperimentPlanShrinkRequest : Tea.TeaModel {
    public var externalParamsShrink: String?

    public var resourceGroupId: String?

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
        if self.externalParamsShrink != nil {
            map["ExternalParams"] = self.externalParamsShrink!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalParams") {
            self.externalParamsShrink = dict["ExternalParams"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateExperimentPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuPerWorker") {
                    self.cpuPerWorker = dict["CpuPerWorker"] as! Int32
                }
                if dict.keys.contains("CudaVersion") {
                    self.cudaVersion = dict["CudaVersion"] as! String
                }
                if dict.keys.contains("GpuDriverVersion") {
                    self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
                }
                if dict.keys.contains("GpuPerWorker") {
                    self.gpuPerWorker = dict["GpuPerWorker"] as! Int32
                }
                if dict.keys.contains("MemoryPerWorker") {
                    self.memoryPerWorker = dict["MemoryPerWorker"] as! Int32
                }
                if dict.keys.contains("NCCLVersion") {
                    self.NCCLVersion = dict["NCCLVersion"] as! String
                }
                if dict.keys.contains("PyTorchVersion") {
                    self.pyTorchVersion = dict["PyTorchVersion"] as! String
                }
                if dict.keys.contains("ShareMemory") {
                    self.shareMemory = dict["ShareMemory"] as! Int32
                }
                if dict.keys.contains("WorkerNum") {
                    self.workerNum = dict["WorkerNum"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnvParams") {
                var model = CreateExperimentPlanTemplateRequest.TemplatePipeline.EnvParams()
                model.fromMap(dict["EnvParams"] as! [String: Any])
                self.envParams = model
            }
            if dict.keys.contains("PipelineOrder") {
                self.pipelineOrder = dict["PipelineOrder"] as! Int32
            }
            if dict.keys.contains("Scene") {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("SettingParams") {
                self.settingParams = dict["SettingParams"] as! [String: String]
            }
            if dict.keys.contains("WorkloadId") {
                self.workloadId = dict["WorkloadId"] as! Int64
            }
            if dict.keys.contains("WorkloadName") {
                self.workloadName = dict["WorkloadName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivacyLevel") {
            self.privacyLevel = dict["PrivacyLevel"] as! String
        }
        if dict.keys.contains("TemplateDescription") {
            self.templateDescription = dict["TemplateDescription"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplatePipeline") {
            var tmp : [CreateExperimentPlanTemplateRequest.TemplatePipeline] = []
            for v in dict["TemplatePipeline"] as! [Any] {
                var model = CreateExperimentPlanTemplateRequest.TemplatePipeline()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivacyLevel") {
            self.privacyLevel = dict["PrivacyLevel"] as! String
        }
        if dict.keys.contains("TemplateDescription") {
            self.templateDescription = dict["TemplateDescription"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplatePipeline") {
            self.templatePipelineShrink = dict["TemplatePipeline"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CpuPerWorker") {
                        self.cpuPerWorker = dict["CpuPerWorker"] as! Int32
                    }
                    if dict.keys.contains("CudaVersion") {
                        self.cudaVersion = dict["CudaVersion"] as! String
                    }
                    if dict.keys.contains("GpuDriverVersion") {
                        self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
                    }
                    if dict.keys.contains("GpuPerWorker") {
                        self.gpuPerWorker = dict["GpuPerWorker"] as! Int32
                    }
                    if dict.keys.contains("MemoryPerWorker") {
                        self.memoryPerWorker = dict["MemoryPerWorker"] as! Int32
                    }
                    if dict.keys.contains("NCCLVersion") {
                        self.NCCLVersion = dict["NCCLVersion"] as! String
                    }
                    if dict.keys.contains("PyTorchVersion") {
                        self.pyTorchVersion = dict["PyTorchVersion"] as! String
                    }
                    if dict.keys.contains("ShareMemory") {
                        self.shareMemory = dict["ShareMemory"] as! Int32
                    }
                    if dict.keys.contains("WorkerNum") {
                        self.workerNum = dict["WorkerNum"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnvParams") {
                    var model = CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam.EnvParams()
                    model.fromMap(dict["EnvParams"] as! [String: Any])
                    self.envParams = model
                }
                if dict.keys.contains("PipelineOrder") {
                    self.pipelineOrder = dict["PipelineOrder"] as! Int32
                }
                if dict.keys.contains("Scene") {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("SettingParams") {
                    self.settingParams = dict["SettingParams"] as! [String: String]
                }
                if dict.keys.contains("WorkloadId") {
                    self.workloadId = dict["WorkloadId"] as! Int64
                }
                if dict.keys.contains("WorkloadName") {
                    self.workloadName = dict["WorkloadName"] as! String
                }
            }
        }
        public var createTime: String?

        public var creatorUid: Int64?

        public var isDelete: Int32?

        public var privacyLevel: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreatorUid") {
                self.creatorUid = dict["CreatorUid"] as! Int64
            }
            if dict.keys.contains("IsDelete") {
                self.isDelete = dict["IsDelete"] as! Int32
            }
            if dict.keys.contains("PrivacyLevel") {
                self.privacyLevel = dict["PrivacyLevel"] as! String
            }
            if dict.keys.contains("TemplateDescription") {
                self.templateDescription = dict["TemplateDescription"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplatePipelineParam") {
                var tmp : [CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam] = []
                for v in dict["TemplatePipelineParam"] as! [Any] {
                    var model = CreateExperimentPlanTemplateResponseBody.Data.TemplatePipelineParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.templatePipelineParam = tmp
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateExperimentPlanTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateExperimentPlanTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BondNum") {
                self.bondNum = dict["BondNum"] as! Int32
            }
            if dict.keys.contains("CpuInfo") {
                self.cpuInfo = dict["CpuInfo"] as! String
            }
            if dict.keys.contains("DiskInfo") {
                self.diskInfo = dict["DiskInfo"] as! String
            }
            if dict.keys.contains("GpuInfo") {
                self.gpuInfo = dict["GpuInfo"] as! String
            }
            if dict.keys.contains("MemoryInfo") {
                self.memoryInfo = dict["MemoryInfo"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NetworkInfo") {
                self.networkInfo = dict["NetworkInfo"] as! String
            }
            if dict.keys.contains("NetworkMode") {
                self.networkMode = dict["NetworkMode"] as! String
            }
            if dict.keys.contains("NodeCount") {
                self.nodeCount = dict["NodeCount"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var clusterDesc: String?

    public var clusterId: String?

    public var clusterName: String?

    public var clusterType: String?

    public var machineTypes: CreateResourceRequest.MachineTypes?

    public var resourceType: String?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.machineTypes != nil {
            map["MachineTypes"] = self.machineTypes?.toMap()
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.userAccessParam != nil {
            map["UserAccessParam"] = self.userAccessParam?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterDesc") {
            self.clusterDesc = dict["ClusterDesc"] as! String
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
        if dict.keys.contains("MachineTypes") {
            var model = CreateResourceRequest.MachineTypes()
            model.fromMap(dict["MachineTypes"] as! [String: Any])
            self.machineTypes = model
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("UserAccessParam") {
            var model = CreateResourceRequest.UserAccessParam()
            model.fromMap(dict["UserAccessParam"] as! [String: Any])
            self.userAccessParam = model
        }
    }
}

public class CreateResourceShrinkRequest : Tea.TeaModel {
    public var clusterDesc: String?

    public var clusterId: String?

    public var clusterName: String?

    public var clusterType: String?

    public var machineTypesShrink: String?

    public var resourceType: String?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.machineTypesShrink != nil {
            map["MachineTypes"] = self.machineTypesShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.userAccessParamShrink != nil {
            map["UserAccessParam"] = self.userAccessParamShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterDesc") {
            self.clusterDesc = dict["ClusterDesc"] as! String
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
        if dict.keys.contains("MachineTypes") {
            self.machineTypesShrink = dict["MachineTypes"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("UserAccessParam") {
            self.userAccessParamShrink = dict["UserAccessParam"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteExperimentRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteExperimentPlanTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExperimentRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeName") {
                        self.nodeName = dict["NodeName"] as! String
                    }
                    if dict.keys.contains("RequestCPU") {
                        self.requestCPU = dict["RequestCPU"] as! Int32
                    }
                    if dict.keys.contains("RequestGPU") {
                        self.requestGPU = dict["RequestGPU"] as! Int32
                    }
                    if dict.keys.contains("RequestMemory") {
                        self.requestMemory = dict["RequestMemory"] as! Int32
                    }
                    if dict.keys.contains("TotalCPU") {
                        self.totalCPU = dict["TotalCPU"] as! Int32
                    }
                    if dict.keys.contains("TotalGPU") {
                        self.totalGPU = dict["TotalGPU"] as! Int32
                    }
                    if dict.keys.contains("TotalMemory") {
                        self.totalMemory = dict["TotalMemory"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuPerWorker") {
                    self.cpuPerWorker = dict["CpuPerWorker"] as! Int32
                }
                if dict.keys.contains("CudaVersion") {
                    self.cudaVersion = dict["CudaVersion"] as! String
                }
                if dict.keys.contains("ExtendParam") {
                    self.extendParam = dict["ExtendParam"] as! [String: String]
                }
                if dict.keys.contains("GpuDriverVersion") {
                    self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
                }
                if dict.keys.contains("GpuPerWorker") {
                    self.gpuPerWorker = dict["GpuPerWorker"] as! Int32
                }
                if dict.keys.contains("MemoryPerWorker") {
                    self.memoryPerWorker = dict["MemoryPerWorker"] as! Int32
                }
                if dict.keys.contains("NCCLVersion") {
                    self.NCCLVersion = dict["NCCLVersion"] as! String
                }
                if dict.keys.contains("PyTorchVersion") {
                    self.pyTorchVersion = dict["PyTorchVersion"] as! String
                }
                if dict.keys.contains("ResourceNodes") {
                    var tmp : [GetExperimentResponseBody.Data.EnvParams.ResourceNodes] = []
                    for v in dict["ResourceNodes"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.EnvParams.ResourceNodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceNodes = tmp
                }
                if dict.keys.contains("ShareMemory") {
                    self.shareMemory = dict["ShareMemory"] as! Int32
                }
                if dict.keys.contains("WorkerNum") {
                    self.workerNum = dict["WorkerNum"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BondNum") {
                        self.bondNum = dict["BondNum"] as! Int32
                    }
                    if dict.keys.contains("CpuInfo") {
                        self.cpuInfo = dict["CpuInfo"] as! String
                    }
                    if dict.keys.contains("DiskInfo") {
                        self.diskInfo = dict["DiskInfo"] as! String
                    }
                    if dict.keys.contains("GpuInfo") {
                        self.gpuInfo = dict["GpuInfo"] as! String
                    }
                    if dict.keys.contains("MemoryInfo") {
                        self.memoryInfo = dict["MemoryInfo"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("NetworkInfo") {
                        self.networkInfo = dict["NetworkInfo"] as! String
                    }
                    if dict.keys.contains("NetworkMode") {
                        self.networkMode = dict["NetworkMode"] as! String
                    }
                    if dict.keys.contains("NodeCount") {
                        self.nodeCount = dict["NodeCount"] as! Int32
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeName") {
                        self.nodeName = dict["NodeName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("AccessKey") {
                        self.accessKey = dict["AccessKey"] as! String
                    }
                    if dict.keys.contains("Endpoint") {
                        self.endpoint = dict["Endpoint"] as! String
                    }
                    if dict.keys.contains("WorkspaceId") {
                        self.workspaceId = dict["WorkspaceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuCoreLimit") {
                    self.cpuCoreLimit = dict["CpuCoreLimit"] as! Int32
                }
                if dict.keys.contains("GpuLimit") {
                    self.gpuLimit = dict["GpuLimit"] as! Int32
                }
                if dict.keys.contains("MachineType") {
                    var model = GetExperimentResponseBody.Data.Resource.MachineType()
                    model.fromMap(dict["MachineType"] as! [String: Any])
                    self.machineType = model
                }
                if dict.keys.contains("MaxCpuCore") {
                    self.maxCpuCore = dict["MaxCpuCore"] as! Int32
                }
                if dict.keys.contains("MaxGpu") {
                    self.maxGpu = dict["MaxGpu"] as! Int32
                }
                if dict.keys.contains("MaxMemory") {
                    self.maxMemory = dict["MaxMemory"] as! Int64
                }
                if dict.keys.contains("MemoryLimit") {
                    self.memoryLimit = dict["MemoryLimit"] as! Int64
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! Int64
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceNodes") {
                    var tmp : [GetExperimentResponseBody.Data.Resource.ResourceNodes] = []
                    for v in dict["ResourceNodes"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.Resource.ResourceNodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceNodes = tmp
                }
                if dict.keys.contains("UserAccessParam") {
                    var model = GetExperimentResponseBody.Data.Resource.UserAccessParam()
                    model.fromMap(dict["UserAccessParam"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorFlag") {
                        self.errorFlag = dict["ErrorFlag"] as! Bool
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ExperimentId") {
                        self.experimentId = dict["ExperimentId"] as! Int64
                    }
                    if dict.keys.contains("GpuName") {
                        self.gpuName = dict["GpuName"] as! String
                    }
                    if dict.keys.contains("GpuNum") {
                        self.gpuNum = dict["GpuNum"] as! Int32
                    }
                    if dict.keys.contains("Hostname") {
                        self.hostname = dict["Hostname"] as! String
                    }
                    if dict.keys.contains("PodName") {
                        self.podName = dict["PodName"] as! String
                    }
                    if dict.keys.contains("SamplesPerSecond") {
                        self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                    }
                    if dict.keys.contains("Tflops") {
                        self.tflops = dict["Tflops"] as! Double
                    }
                    if dict.keys.contains("WarningFlag") {
                        self.warningFlag = dict["WarningFlag"] as! Bool
                    }
                    if dict.keys.contains("WarningMsg") {
                        self.warningMsg = dict["WarningMsg"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorFlag") {
                        self.errorFlag = dict["ErrorFlag"] as! Bool
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ExperimentId") {
                        self.experimentId = dict["ExperimentId"] as! Int64
                    }
                    if dict.keys.contains("GpuName") {
                        self.gpuName = dict["GpuName"] as! String
                    }
                    if dict.keys.contains("GpuNum") {
                        self.gpuNum = dict["GpuNum"] as! Int32
                    }
                    if dict.keys.contains("Hostname") {
                        self.hostname = dict["Hostname"] as! String
                    }
                    if dict.keys.contains("PodName") {
                        self.podName = dict["PodName"] as! String
                    }
                    if dict.keys.contains("SamplesPerSecond") {
                        self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                    }
                    if dict.keys.contains("Tflops") {
                        self.tflops = dict["Tflops"] as! Double
                    }
                    if dict.keys.contains("WarningFlag") {
                        self.warningFlag = dict["WarningFlag"] as! Bool
                    }
                    if dict.keys.contains("WarningMsg") {
                        self.warningMsg = dict["WarningMsg"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Iteration") {
                        self.iteration = dict["Iteration"] as! Int32
                    }
                    if dict.keys.contains("Lower") {
                        self.lower = dict["Lower"] as! Double
                    }
                    if dict.keys.contains("Upper") {
                        self.upper = dict["Upper"] as! Double
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorFlag") {
                        self.errorFlag = dict["ErrorFlag"] as! Bool
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ExperimentId") {
                        self.experimentId = dict["ExperimentId"] as! Int64
                    }
                    if dict.keys.contains("GpuName") {
                        self.gpuName = dict["GpuName"] as! String
                    }
                    if dict.keys.contains("GpuNum") {
                        self.gpuNum = dict["GpuNum"] as! Int32
                    }
                    if dict.keys.contains("Hostname") {
                        self.hostname = dict["Hostname"] as! String
                    }
                    if dict.keys.contains("PodName") {
                        self.podName = dict["PodName"] as! String
                    }
                    if dict.keys.contains("SamplesPerSecond") {
                        self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                    }
                    if dict.keys.contains("Tflops") {
                        self.tflops = dict["Tflops"] as! Double
                    }
                    if dict.keys.contains("WarningFlag") {
                        self.warningFlag = dict["WarningFlag"] as! Bool
                    }
                    if dict.keys.contains("WarningMsg") {
                        self.warningMsg = dict["WarningMsg"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Double
                }
                if dict.keys.contains("ErrorWorker") {
                    var tmp : [GetExperimentResponseBody.Data.Results.ErrorWorker] = []
                    for v in dict["ErrorWorker"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.Results.ErrorWorker()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.errorWorker = tmp
                }
                if dict.keys.contains("ExperimentId") {
                    self.experimentId = dict["ExperimentId"] as! Int64
                }
                if dict.keys.contains("Mfu") {
                    self.mfu = dict["Mfu"] as! Double
                }
                if dict.keys.contains("SamplesPerSecond") {
                    self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                }
                if dict.keys.contains("SecondsPerIteration") {
                    self.secondsPerIteration = dict["SecondsPerIteration"] as! Double
                }
                if dict.keys.contains("TaskIndividualResultList") {
                    var tmp : [GetExperimentResponseBody.Data.Results.TaskIndividualResultList] = []
                    for v in dict["TaskIndividualResultList"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.Results.TaskIndividualResultList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.taskIndividualResultList = tmp
                }
                if dict.keys.contains("TaskIndividualResultMap") {
                    var tmp : [String: [DataResultsTaskIndividualResultMapValue]] = [:]
                    for (k, v) in dict["TaskIndividualResultMap"] as! [String: Any] {
                        var l1 : [DataResultsTaskIndividualResultMapValue] = []
                        for v1 in v as! [Any] {
                            var model = DataResultsTaskIndividualResultMapValue()
                            if v1 != nil {
                                model.fromMap(v1 as! [String: Any])
                            }
                            l1.append(model)
                        }
                        tmp[k] = l1
                    }
                    self.taskIndividualResultMap = tmp
                }
                if dict.keys.contains("WarningBoundList") {
                    var tmp : [GetExperimentResponseBody.Data.Results.WarningBoundList] = []
                    for v in dict["WarningBoundList"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.Results.WarningBoundList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.warningBoundList = tmp
                }
                if dict.keys.contains("WarningWorker") {
                    var tmp : [GetExperimentResponseBody.Data.Results.WarningWorker] = []
                    for v in dict["WarningWorker"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.Results.WarningWorker()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("Params") {
                    self.params = dict["Params"] as! [String: String]
                }
                if dict.keys.contains("Scene") {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! Int64
                }
                if dict.keys.contains("UpdateTime") {
                    self.updateTime = dict["UpdateTime"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DefaultValue") {
                        self.defaultValue = dict["DefaultValue"] as! String
                    }
                    if dict.keys.contains("ParamDesc") {
                        self.paramDesc = dict["ParamDesc"] as! String
                    }
                    if dict.keys.contains("ParamName") {
                        self.paramName = dict["ParamName"] as! String
                    }
                    if dict.keys.contains("ParamRegex") {
                        self.paramRegex = dict["ParamRegex"] as! String
                    }
                    if dict.keys.contains("ParamType") {
                        self.paramType = dict["ParamType"] as! String
                    }
                    if dict.keys.contains("ParamValue") {
                        self.paramValue = dict["ParamValue"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FrameWork") {
                        self.frameWork = dict["FrameWork"] as! String
                    }
                    if dict.keys.contains("Os") {
                        self.os = dict["Os"] as! String
                    }
                    if dict.keys.contains("Parameters") {
                        self.parameters = dict["Parameters"] as! String
                    }
                    if dict.keys.contains("SoftwareStack") {
                        self.softwareStack = dict["SoftwareStack"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultCpuPerWorker") {
                    self.defaultCpuPerWorker = dict["DefaultCpuPerWorker"] as! Int32
                }
                if dict.keys.contains("DefaultGpuPerWorker") {
                    self.defaultGpuPerWorker = dict["DefaultGpuPerWorker"] as! Int32
                }
                if dict.keys.contains("DefaultMemoryPerWorker") {
                    self.defaultMemoryPerWorker = dict["DefaultMemoryPerWorker"] as! Int32
                }
                if dict.keys.contains("DefaultShareMemory") {
                    self.defaultShareMemory = dict["DefaultShareMemory"] as! Int32
                }
                if dict.keys.contains("Family") {
                    self.family = dict["Family"] as! String
                }
                if dict.keys.contains("JobKind") {
                    self.jobKind = dict["JobKind"] as! String
                }
                if dict.keys.contains("ParamSettings") {
                    var tmp : [GetExperimentResponseBody.Data.Workload.ParamSettings] = []
                    for v in dict["ParamSettings"] as! [Any] {
                        var model = GetExperimentResponseBody.Data.Workload.ParamSettings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.paramSettings = tmp
                }
                if dict.keys.contains("Scene") {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("Scope") {
                    self.scope = dict["Scope"] as! String
                }
                if dict.keys.contains("StaticConfig") {
                    var model = GetExperimentResponseBody.Data.Workload.StaticConfig()
                    model.fromMap(dict["StaticConfig"] as! [String: Any])
                    self.staticConfig = model
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! Int64
                }
                if dict.keys.contains("WorkloadDescription") {
                    self.workloadDescription = dict["WorkloadDescription"] as! String
                }
                if dict.keys.contains("WorkloadId") {
                    self.workloadId = dict["WorkloadId"] as! Int64
                }
                if dict.keys.contains("WorkloadName") {
                    self.workloadName = dict["WorkloadName"] as! String
                }
                if dict.keys.contains("WorkloadType") {
                    self.workloadType = dict["WorkloadType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EnvParams") {
                var model = GetExperimentResponseBody.Data.EnvParams()
                model.fromMap(dict["EnvParams"] as! [String: Any])
                self.envParams = model
            }
            if dict.keys.contains("ExperimentId") {
                self.experimentId = dict["ExperimentId"] as! Int64
            }
            if dict.keys.contains("ExperimentName") {
                self.experimentName = dict["ExperimentName"] as! String
            }
            if dict.keys.contains("ExperimentType") {
                self.experimentType = dict["ExperimentType"] as! String
            }
            if dict.keys.contains("GetParams") {
                self.getParams = dict["GetParams"] as! [String: String]
            }
            if dict.keys.contains("Resource") {
                var model = GetExperimentResponseBody.Data.Resource()
                model.fromMap(dict["Resource"] as! [String: Any])
                self.resource = model
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("Results") {
                var model = GetExperimentResponseBody.Data.Results()
                model.fromMap(dict["Results"] as! [String: Any])
                self.results = model
            }
            if dict.keys.contains("SetParams") {
                self.setParams = dict["SetParams"] as! [String: String]
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Task") {
                var model = GetExperimentResponseBody.Data.Task()
                model.fromMap(dict["Task"] as! [String: Any])
                self.task = model
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("Workload") {
                var model = GetExperimentResponseBody.Data.Workload()
                model.fromMap(dict["Workload"] as! [String: Any])
                self.workload = model
            }
            if dict.keys.contains("WorkloadName") {
                self.workloadName = dict["WorkloadName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetExperimentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! Int64
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("NodeName") {
                            self.nodeName = dict["NodeName"] as! String
                        }
                        if dict.keys.contains("RequestCPU") {
                            self.requestCPU = dict["RequestCPU"] as! Int32
                        }
                        if dict.keys.contains("RequestGPU") {
                            self.requestGPU = dict["RequestGPU"] as! Int32
                        }
                        if dict.keys.contains("RequestMemory") {
                            self.requestMemory = dict["RequestMemory"] as! Int32
                        }
                        if dict.keys.contains("TotalCPU") {
                            self.totalCPU = dict["TotalCPU"] as! Int32
                        }
                        if dict.keys.contains("TotalGPU") {
                            self.totalGPU = dict["TotalGPU"] as! Int32
                        }
                        if dict.keys.contains("TotalMemory") {
                            self.totalMemory = dict["TotalMemory"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CpuPerWorker") {
                        self.cpuPerWorker = dict["CpuPerWorker"] as! Int32
                    }
                    if dict.keys.contains("CudaVersion") {
                        self.cudaVersion = dict["CudaVersion"] as! String
                    }
                    if dict.keys.contains("ExtendParam") {
                        self.extendParam = dict["ExtendParam"] as! [String: String]
                    }
                    if dict.keys.contains("GpuDriverVersion") {
                        self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
                    }
                    if dict.keys.contains("GpuPerWorker") {
                        self.gpuPerWorker = dict["GpuPerWorker"] as! Int32
                    }
                    if dict.keys.contains("MemoryPerWorker") {
                        self.memoryPerWorker = dict["MemoryPerWorker"] as! Int32
                    }
                    if dict.keys.contains("NCCLVersion") {
                        self.NCCLVersion = dict["NCCLVersion"] as! String
                    }
                    if dict.keys.contains("PyTorchVersion") {
                        self.pyTorchVersion = dict["PyTorchVersion"] as! String
                    }
                    if dict.keys.contains("ResourceNodes") {
                        var tmp : [GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams.ResourceNodes] = []
                        for v in dict["ResourceNodes"] as! [Any] {
                            var model = GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams.ResourceNodes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.resourceNodes = tmp
                    }
                    if dict.keys.contains("ShareMemory") {
                        self.shareMemory = dict["ShareMemory"] as! Int32
                    }
                    if dict.keys.contains("WorkerNum") {
                        self.workerNum = dict["WorkerNum"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnvParams") {
                    var model = GetExperimentPlanResponseBody.Data.PlanPipeline.EnvParams()
                    model.fromMap(dict["EnvParams"] as! [String: Any])
                    self.envParams = model
                }
                if dict.keys.contains("PipelineOrder") {
                    self.pipelineOrder = dict["PipelineOrder"] as! Int32
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! Int64
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("Scene") {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("SettingParams") {
                    self.settingParams = dict["SettingParams"] as! [String: String]
                }
                if dict.keys.contains("WorkloadId") {
                    self.workloadId = dict["WorkloadId"] as! Int64
                }
                if dict.keys.contains("WorkloadName") {
                    self.workloadName = dict["WorkloadName"] as! String
                }
            }
        }
        public var createTime: String?

        public var planId: Int64?

        public var planPipeline: [GetExperimentPlanResponseBody.Data.PlanPipeline]?

        public var resourceGroupId: String?

        public var resourceId: Int64?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("PlanId") {
                self.planId = dict["PlanId"] as! Int64
            }
            if dict.keys.contains("PlanPipeline") {
                var tmp : [GetExperimentPlanResponseBody.Data.PlanPipeline] = []
                for v in dict["PlanPipeline"] as! [Any] {
                    var model = GetExperimentPlanResponseBody.Data.PlanPipeline()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.planPipeline = tmp
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! Int64
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetExperimentPlanResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetExperimentPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExperimentResultDataRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public var hostname: String?

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
        if self.workloadType != nil {
            map["WorkloadType"] = self.workloadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! Int64
        }
        if dict.keys.contains("Hostname") {
            self.hostname = dict["Hostname"] as! String
        }
        if dict.keys.contains("WorkloadType") {
            self.workloadType = dict["WorkloadType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Gpu_num") {
                    self.gpuNum = dict["Gpu_num"] as! String
                }
                if dict.keys.contains("Iteration") {
                    self.iteration = dict["Iteration"] as! Int64
                }
                if dict.keys.contains("Tflops") {
                    self.tflops = dict["Tflops"] as! Double
                }
                if dict.keys.contains("Timestamp") {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GpuNum") {
                self.gpuNum = dict["GpuNum"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("MetricsInfos") {
                var tmp : [GetExperimentResultDataResponseBody.Data.MetricsInfos] = []
                for v in dict["MetricsInfos"] as! [Any] {
                    var model = GetExperimentResultDataResponseBody.Data.MetricsInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metricsInfos = tmp
            }
            if dict.keys.contains("PodName") {
                self.podName = dict["PodName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetExperimentResultDataResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetExperimentResultDataResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetExperimentResultDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BondNum") {
                    self.bondNum = dict["BondNum"] as! Int32
                }
                if dict.keys.contains("CpuInfo") {
                    self.cpuInfo = dict["CpuInfo"] as! String
                }
                if dict.keys.contains("DiskInfo") {
                    self.diskInfo = dict["DiskInfo"] as! String
                }
                if dict.keys.contains("GpuInfo") {
                    self.gpuInfo = dict["GpuInfo"] as! String
                }
                if dict.keys.contains("MemoryInfo") {
                    self.memoryInfo = dict["MemoryInfo"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NetworkInfo") {
                    self.networkInfo = dict["NetworkInfo"] as! String
                }
                if dict.keys.contains("NetworkMode") {
                    self.networkMode = dict["NetworkMode"] as! String
                }
                if dict.keys.contains("NodeCount") {
                    self.nodeCount = dict["NodeCount"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NodeName") {
                    self.nodeName = dict["NodeName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessId") {
                    self.accessId = dict["AccessId"] as! String
                }
                if dict.keys.contains("AccessKey") {
                    self.accessKey = dict["AccessKey"] as! String
                }
                if dict.keys.contains("Endpoint") {
                    self.endpoint = dict["Endpoint"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
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

        public var resourceName: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterDesc") {
                self.clusterDesc = dict["ClusterDesc"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("CpuCoreLimit") {
                self.cpuCoreLimit = dict["CpuCoreLimit"] as! Int32
            }
            if dict.keys.contains("GpuLimit") {
                self.gpuLimit = dict["GpuLimit"] as! Int32
            }
            if dict.keys.contains("MachineType") {
                var model = GetResourceResponseBody.Data.MachineType()
                model.fromMap(dict["MachineType"] as! [String: Any])
                self.machineType = model
            }
            if dict.keys.contains("MaxCpuCore") {
                self.maxCpuCore = dict["MaxCpuCore"] as! Int32
            }
            if dict.keys.contains("MaxGpu") {
                self.maxGpu = dict["MaxGpu"] as! Int32
            }
            if dict.keys.contains("MaxMemory") {
                self.maxMemory = dict["MaxMemory"] as! Int64
            }
            if dict.keys.contains("MemoryLimit") {
                self.memoryLimit = dict["MemoryLimit"] as! Int64
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! Int64
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceNodes") {
                var tmp : [GetResourceResponseBody.Data.ResourceNodes] = []
                for v in dict["ResourceNodes"] as! [Any] {
                    var model = GetResourceResponseBody.Data.ResourceNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourceNodes = tmp
            }
            if dict.keys.contains("UserAccessParam") {
                var model = GetResourceResponseBody.Data.UserAccessParam()
                model.fromMap(dict["UserAccessParam"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetResourcePredictResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkloadId") {
            self.workloadId = dict["WorkloadId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("ParamDesc") {
                    self.paramDesc = dict["ParamDesc"] as! String
                }
                if dict.keys.contains("ParamName") {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamRegex") {
                    self.paramRegex = dict["ParamRegex"] as! String
                }
                if dict.keys.contains("ParamType") {
                    self.paramType = dict["ParamType"] as! String
                }
                if dict.keys.contains("ParamValue") {
                    self.paramValue = dict["ParamValue"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FrameWork") {
                    self.frameWork = dict["FrameWork"] as! String
                }
                if dict.keys.contains("Os") {
                    self.os = dict["Os"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("SoftwareStack") {
                    self.softwareStack = dict["SoftwareStack"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultCpuPerWorker") {
                self.defaultCpuPerWorker = dict["DefaultCpuPerWorker"] as! Int32
            }
            if dict.keys.contains("DefaultGpuPerWorker") {
                self.defaultGpuPerWorker = dict["DefaultGpuPerWorker"] as! Int32
            }
            if dict.keys.contains("DefaultMemoryPerWorker") {
                self.defaultMemoryPerWorker = dict["DefaultMemoryPerWorker"] as! Int32
            }
            if dict.keys.contains("DefaultShareMemory") {
                self.defaultShareMemory = dict["DefaultShareMemory"] as! Int32
            }
            if dict.keys.contains("Family") {
                self.family = dict["Family"] as! String
            }
            if dict.keys.contains("JobKind") {
                self.jobKind = dict["JobKind"] as! String
            }
            if dict.keys.contains("ParamSettings") {
                var tmp : [GetWorkloadResponseBody.Data.ParamSettings] = []
                for v in dict["ParamSettings"] as! [Any] {
                    var model = GetWorkloadResponseBody.Data.ParamSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramSettings = tmp
            }
            if dict.keys.contains("Scene") {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("StaticConfig") {
                var model = GetWorkloadResponseBody.Data.StaticConfig()
                model.fromMap(dict["StaticConfig"] as! [String: Any])
                self.staticConfig = model
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int64
            }
            if dict.keys.contains("WorkloadDescription") {
                self.workloadDescription = dict["WorkloadDescription"] as! String
            }
            if dict.keys.contains("WorkloadId") {
                self.workloadId = dict["WorkloadId"] as! Int64
            }
            if dict.keys.contains("WorkloadName") {
                self.workloadName = dict["WorkloadName"] as! String
            }
            if dict.keys.contains("WorkloadType") {
                self.workloadType = dict["WorkloadType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetWorkloadResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetWorkloadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivacyLevel") {
            self.privacyLevel = dict["PrivacyLevel"] as! String
        }
    }
}

public class ListExperimentPlanTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TemplatePipelineParam : Tea.TeaModel {
            public class EnvParams : Tea.TeaModel {
                public var cpuPerWorker: Int32?

                public var gpuPerWorker: Int32?

                public var memoryPerWorker: Int32?

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
                    if self.gpuPerWorker != nil {
                        map["GpuPerWorker"] = self.gpuPerWorker!
                    }
                    if self.memoryPerWorker != nil {
                        map["MemoryPerWorker"] = self.memoryPerWorker!
                    }
                    if self.shareMemory != nil {
                        map["ShareMemory"] = self.shareMemory!
                    }
                    if self.workerNum != nil {
                        map["WorkerNum"] = self.workerNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CpuPerWorker") {
                        self.cpuPerWorker = dict["CpuPerWorker"] as! Int32
                    }
                    if dict.keys.contains("GpuPerWorker") {
                        self.gpuPerWorker = dict["GpuPerWorker"] as! Int32
                    }
                    if dict.keys.contains("MemoryPerWorker") {
                        self.memoryPerWorker = dict["MemoryPerWorker"] as! Int32
                    }
                    if dict.keys.contains("ShareMemory") {
                        self.shareMemory = dict["ShareMemory"] as! Int32
                    }
                    if dict.keys.contains("WorkerNum") {
                        self.workerNum = dict["WorkerNum"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnvParams") {
                    var model = ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam.EnvParams()
                    model.fromMap(dict["EnvParams"] as! [String: Any])
                    self.envParams = model
                }
                if dict.keys.contains("PipelineOrder") {
                    self.pipelineOrder = dict["PipelineOrder"] as! Int32
                }
                if dict.keys.contains("Scene") {
                    self.scene = dict["Scene"] as! String
                }
                if dict.keys.contains("SettingParams") {
                    self.settingParams = dict["SettingParams"] as! [String: String]
                }
                if dict.keys.contains("WorkloadId") {
                    self.workloadId = dict["WorkloadId"] as! Int64
                }
                if dict.keys.contains("WorkloadName") {
                    self.workloadName = dict["WorkloadName"] as! String
                }
            }
        }
        public var createTime: String?

        public var creatorUid: Int64?

        public var isDelete: Int32?

        public var privacyLevel: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreatorUid") {
                self.creatorUid = dict["CreatorUid"] as! Int64
            }
            if dict.keys.contains("IsDelete") {
                self.isDelete = dict["IsDelete"] as! Int32
            }
            if dict.keys.contains("PrivacyLevel") {
                self.privacyLevel = dict["PrivacyLevel"] as! String
            }
            if dict.keys.contains("TemplateDescription") {
                self.templateDescription = dict["TemplateDescription"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplatePipelineParam") {
                var tmp : [ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam] = []
                for v in dict["TemplatePipelineParam"] as! [Any] {
                    var model = ListExperimentPlanTemplatesResponseBody.Data.TemplatePipelineParam()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.templatePipelineParam = tmp
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListExperimentPlanTemplatesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListExperimentPlanTemplatesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExperimentPlanTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExperimentPlansRequest : Tea.TeaModel {
    public var creatTimeOrder: String?

    public var endTimeOrder: String?

    public var page: Int32?

    public var planTaskStatus: [String]?

    public var resourceGroupId: String?

    public var resourceName: [String]?

    public var size: Int32?

    public var startTimeOrder: String?

    public override init() {
        super.init()
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
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTimeOrder != nil {
            map["StartTimeOrder"] = self.startTimeOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatTimeOrder") {
            self.creatTimeOrder = dict["CreatTimeOrder"] as! String
        }
        if dict.keys.contains("EndTimeOrder") {
            self.endTimeOrder = dict["EndTimeOrder"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PlanTaskStatus") {
            self.planTaskStatus = dict["PlanTaskStatus"] as! [String]
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! [String]
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTimeOrder") {
            self.startTimeOrder = dict["StartTimeOrder"] as! String
        }
    }
}

public class ListExperimentPlansShrinkRequest : Tea.TeaModel {
    public var creatTimeOrder: String?

    public var endTimeOrder: String?

    public var page: Int32?

    public var planTaskStatusShrink: String?

    public var resourceGroupId: String?

    public var resourceNameShrink: String?

    public var size: Int32?

    public var startTimeOrder: String?

    public override init() {
        super.init()
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
        if self.resourceNameShrink != nil {
            map["ResourceName"] = self.resourceNameShrink!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTimeOrder != nil {
            map["StartTimeOrder"] = self.startTimeOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatTimeOrder") {
            self.creatTimeOrder = dict["CreatTimeOrder"] as! String
        }
        if dict.keys.contains("EndTimeOrder") {
            self.endTimeOrder = dict["EndTimeOrder"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PlanTaskStatus") {
            self.planTaskStatusShrink = dict["PlanTaskStatus"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceNameShrink = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("StartTimeOrder") {
            self.startTimeOrder = dict["StartTimeOrder"] as! String
        }
    }
}

public class ListExperimentPlansResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var endTime: String?

        public var planId: Int64?

        public var planTaskStatus: [String: Int32]?

        public var resourceGroupId: String?

        public var resourceName: String?

        public var startTime: String?

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
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("PlanId") {
                self.planId = dict["PlanId"] as! Int64
            }
            if dict.keys.contains("PlanTaskStatus") {
                self.planTaskStatus = dict["PlanTaskStatus"] as! [String: Int32]
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListExperimentPlansResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListExperimentPlansResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExperimentPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExperimentsRequest : Tea.TeaModel {
    public var order: Int32?

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
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.planId != nil {
            map["PlanId"] = self.planId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! Int32
        }
        if dict.keys.contains("PlanId") {
            self.planId = dict["PlanId"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("NodeName") {
                        self.nodeName = dict["NodeName"] as! String
                    }
                    if dict.keys.contains("RequestCPU") {
                        self.requestCPU = dict["RequestCPU"] as! Int32
                    }
                    if dict.keys.contains("RequestGPU") {
                        self.requestGPU = dict["RequestGPU"] as! Int32
                    }
                    if dict.keys.contains("RequestMemory") {
                        self.requestMemory = dict["RequestMemory"] as! Int32
                    }
                    if dict.keys.contains("TotalCPU") {
                        self.totalCPU = dict["TotalCPU"] as! Int32
                    }
                    if dict.keys.contains("TotalGPU") {
                        self.totalGPU = dict["TotalGPU"] as! Int32
                    }
                    if dict.keys.contains("TotalMemory") {
                        self.totalMemory = dict["TotalMemory"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuPerWorker") {
                    self.cpuPerWorker = dict["CpuPerWorker"] as! Int32
                }
                if dict.keys.contains("CudaVersion") {
                    self.cudaVersion = dict["CudaVersion"] as! String
                }
                if dict.keys.contains("ExtendParam") {
                    self.extendParam = dict["ExtendParam"] as! [String: String]
                }
                if dict.keys.contains("GpuDriverVersion") {
                    self.gpuDriverVersion = dict["GpuDriverVersion"] as! String
                }
                if dict.keys.contains("GpuPerWorker") {
                    self.gpuPerWorker = dict["GpuPerWorker"] as! Int32
                }
                if dict.keys.contains("MemoryPerWorker") {
                    self.memoryPerWorker = dict["MemoryPerWorker"] as! Int32
                }
                if dict.keys.contains("NCCLVersion") {
                    self.NCCLVersion = dict["NCCLVersion"] as! String
                }
                if dict.keys.contains("PyTorchVersion") {
                    self.pyTorchVersion = dict["PyTorchVersion"] as! String
                }
                if dict.keys.contains("ResourceNodes") {
                    var tmp : [ListExperimentsResponseBody.Data.EnvParams.ResourceNodes] = []
                    for v in dict["ResourceNodes"] as! [Any] {
                        var model = ListExperimentsResponseBody.Data.EnvParams.ResourceNodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceNodes = tmp
                }
                if dict.keys.contains("ShareMemory") {
                    self.shareMemory = dict["ShareMemory"] as! Int32
                }
                if dict.keys.contains("WorkerNum") {
                    self.workerNum = dict["WorkerNum"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorFlag") {
                        self.errorFlag = dict["ErrorFlag"] as! Bool
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ExperimentId") {
                        self.experimentId = dict["ExperimentId"] as! Int64
                    }
                    if dict.keys.contains("GpuName") {
                        self.gpuName = dict["GpuName"] as! String
                    }
                    if dict.keys.contains("GpuNum") {
                        self.gpuNum = dict["GpuNum"] as! Int32
                    }
                    if dict.keys.contains("Hostname") {
                        self.hostname = dict["Hostname"] as! String
                    }
                    if dict.keys.contains("PodName") {
                        self.podName = dict["PodName"] as! String
                    }
                    if dict.keys.contains("SamplesPerSecond") {
                        self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                    }
                    if dict.keys.contains("Tflops") {
                        self.tflops = dict["Tflops"] as! Double
                    }
                    if dict.keys.contains("WarningFlag") {
                        self.warningFlag = dict["WarningFlag"] as! Bool
                    }
                    if dict.keys.contains("WarningMsg") {
                        self.warningMsg = dict["WarningMsg"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorFlag") {
                        self.errorFlag = dict["ErrorFlag"] as! Bool
                    }
                    if dict.keys.contains("ErrorMsg") {
                        self.errorMsg = dict["ErrorMsg"] as! String
                    }
                    if dict.keys.contains("ExperimentId") {
                        self.experimentId = dict["ExperimentId"] as! Int64
                    }
                    if dict.keys.contains("GpuName") {
                        self.gpuName = dict["GpuName"] as! String
                    }
                    if dict.keys.contains("GpuNum") {
                        self.gpuNum = dict["GpuNum"] as! Int32
                    }
                    if dict.keys.contains("Hostname") {
                        self.hostname = dict["Hostname"] as! String
                    }
                    if dict.keys.contains("PodName") {
                        self.podName = dict["PodName"] as! String
                    }
                    if dict.keys.contains("SamplesPerSecond") {
                        self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                    }
                    if dict.keys.contains("Tflops") {
                        self.tflops = dict["Tflops"] as! Double
                    }
                    if dict.keys.contains("WarningFlag") {
                        self.warningFlag = dict["WarningFlag"] as! Bool
                    }
                    if dict.keys.contains("WarningMsg") {
                        self.warningMsg = dict["WarningMsg"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Double
                }
                if dict.keys.contains("ErrorWorker") {
                    var tmp : [ListExperimentsResponseBody.Data.Results.ErrorWorker] = []
                    for v in dict["ErrorWorker"] as! [Any] {
                        var model = ListExperimentsResponseBody.Data.Results.ErrorWorker()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.errorWorker = tmp
                }
                if dict.keys.contains("ExperimentId") {
                    self.experimentId = dict["ExperimentId"] as! Int64
                }
                if dict.keys.contains("Mfu") {
                    self.mfu = dict["Mfu"] as! Double
                }
                if dict.keys.contains("SamplesPerSecond") {
                    self.samplesPerSecond = dict["SamplesPerSecond"] as! Double
                }
                if dict.keys.contains("SecondsPerIteration") {
                    self.secondsPerIteration = dict["SecondsPerIteration"] as! Double
                }
                if dict.keys.contains("WarningWorker") {
                    var tmp : [ListExperimentsResponseBody.Data.Results.WarningWorker] = []
                    for v in dict["WarningWorker"] as! [Any] {
                        var model = ListExperimentsResponseBody.Data.Results.WarningWorker()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("EnvParams") {
                var model = ListExperimentsResponseBody.Data.EnvParams()
                model.fromMap(dict["EnvParams"] as! [String: Any])
                self.envParams = model
            }
            if dict.keys.contains("ExperimentId") {
                self.experimentId = dict["ExperimentId"] as! Int64
            }
            if dict.keys.contains("ExperimentName") {
                self.experimentName = dict["ExperimentName"] as! String
            }
            if dict.keys.contains("ExperimentType") {
                self.experimentType = dict["ExperimentType"] as! String
            }
            if dict.keys.contains("GetParams") {
                self.getParams = dict["GetParams"] as! [String: String]
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("Results") {
                var model = ListExperimentsResponseBody.Data.Results()
                model.fromMap(dict["Results"] as! [String: Any])
                self.results = model
            }
            if dict.keys.contains("SetParams") {
                self.setParams = dict["SetParams"] as! [String: String]
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("WorkloadName") {
                self.workloadName = dict["WorkloadName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListExperimentsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListExperimentsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultValue") {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("ParamDesc") {
                    self.paramDesc = dict["ParamDesc"] as! String
                }
                if dict.keys.contains("ParamName") {
                    self.paramName = dict["ParamName"] as! String
                }
                if dict.keys.contains("ParamRegex") {
                    self.paramRegex = dict["ParamRegex"] as! String
                }
                if dict.keys.contains("ParamType") {
                    self.paramType = dict["ParamType"] as! String
                }
                if dict.keys.contains("ParamValue") {
                    self.paramValue = dict["ParamValue"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FrameWork") {
                    self.frameWork = dict["FrameWork"] as! String
                }
                if dict.keys.contains("Os") {
                    self.os = dict["Os"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("SoftwareStack") {
                    self.softwareStack = dict["SoftwareStack"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultCpuPerWorker") {
                self.defaultCpuPerWorker = dict["DefaultCpuPerWorker"] as! Int32
            }
            if dict.keys.contains("DefaultGpuPerWorker") {
                self.defaultGpuPerWorker = dict["DefaultGpuPerWorker"] as! Int32
            }
            if dict.keys.contains("DefaultMemoryPerWorker") {
                self.defaultMemoryPerWorker = dict["DefaultMemoryPerWorker"] as! Int32
            }
            if dict.keys.contains("DefaultShareMemory") {
                self.defaultShareMemory = dict["DefaultShareMemory"] as! Int32
            }
            if dict.keys.contains("Family") {
                self.family = dict["Family"] as! String
            }
            if dict.keys.contains("JobKind") {
                self.jobKind = dict["JobKind"] as! String
            }
            if dict.keys.contains("ParamSettings") {
                var tmp : [ListWorkloadsResponseBody.Data.ParamSettings] = []
                for v in dict["ParamSettings"] as! [Any] {
                    var model = ListWorkloadsResponseBody.Data.ParamSettings()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramSettings = tmp
            }
            if dict.keys.contains("Scene") {
                self.scene = dict["Scene"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("StaticConfig") {
                var model = ListWorkloadsResponseBody.Data.StaticConfig()
                model.fromMap(dict["StaticConfig"] as! [String: Any])
                self.staticConfig = model
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! Int64
            }
            if dict.keys.contains("WorkloadDescription") {
                self.workloadDescription = dict["WorkloadDescription"] as! String
            }
            if dict.keys.contains("WorkloadId") {
                self.workloadId = dict["WorkloadId"] as! Int64
            }
            if dict.keys.contains("WorkloadName") {
                self.workloadName = dict["WorkloadName"] as! String
            }
            if dict.keys.contains("WorkloadType") {
                self.workloadType = dict["WorkloadType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListWorkloadsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListWorkloadsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListWorkloadsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopExperimentRequest : Tea.TeaModel {
    public var experimentId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExperimentId") {
            self.experimentId = dict["ExperimentId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("UserAccessParam") {
            var model = ValidateResourceRequest.UserAccessParam()
            model.fromMap(dict["UserAccessParam"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("UserAccessParam") {
            self.userAccessParamShrink = dict["UserAccessParam"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ValidateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
