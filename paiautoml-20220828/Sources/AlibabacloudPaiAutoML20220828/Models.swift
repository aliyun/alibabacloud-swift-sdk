import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AutofeExperimentConfiguration : Tea.TeaModel {
    public class OdpsConfig : Tea.TeaModel {
        public var odpsAccessId: String?

        public var odpsAccessKey: String?

        public var odpsEndpoint: String?

        public var odpsProjectName: String?

        public var odpsRegionId: String?

        public var odpsRoleArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.odpsAccessId != nil {
                map["odps_access_id"] = self.odpsAccessId!
            }
            if self.odpsAccessKey != nil {
                map["odps_access_key"] = self.odpsAccessKey!
            }
            if self.odpsEndpoint != nil {
                map["odps_endpoint"] = self.odpsEndpoint!
            }
            if self.odpsProjectName != nil {
                map["odps_project_name"] = self.odpsProjectName!
            }
            if self.odpsRegionId != nil {
                map["odps_region_id"] = self.odpsRegionId!
            }
            if self.odpsRoleArn != nil {
                map["odps_role_arn"] = self.odpsRoleArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("odps_access_id") && dict["odps_access_id"] != nil {
                self.odpsAccessId = dict["odps_access_id"] as! String
            }
            if dict.keys.contains("odps_access_key") && dict["odps_access_key"] != nil {
                self.odpsAccessKey = dict["odps_access_key"] as! String
            }
            if dict.keys.contains("odps_endpoint") && dict["odps_endpoint"] != nil {
                self.odpsEndpoint = dict["odps_endpoint"] as! String
            }
            if dict.keys.contains("odps_project_name") && dict["odps_project_name"] != nil {
                self.odpsProjectName = dict["odps_project_name"] as! String
            }
            if dict.keys.contains("odps_region_id") && dict["odps_region_id"] != nil {
                self.odpsRegionId = dict["odps_region_id"] as! String
            }
            if dict.keys.contains("odps_role_arn") && dict["odps_role_arn"] != nil {
                self.odpsRoleArn = dict["odps_role_arn"] as! String
            }
        }
    }
    public class OssConfig : Tea.TeaModel {
        public var ossAccessId: String?

        public var ossAccessKey: String?

        public var ossBucket: String?

        public var ossEndpoint: String?

        public var ossRoleArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossAccessId != nil {
                map["oss_access_id"] = self.ossAccessId!
            }
            if self.ossAccessKey != nil {
                map["oss_access_key"] = self.ossAccessKey!
            }
            if self.ossBucket != nil {
                map["oss_bucket"] = self.ossBucket!
            }
            if self.ossEndpoint != nil {
                map["oss_endpoint"] = self.ossEndpoint!
            }
            if self.ossRoleArn != nil {
                map["oss_role_arn"] = self.ossRoleArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("oss_access_id") && dict["oss_access_id"] != nil {
                self.ossAccessId = dict["oss_access_id"] as! String
            }
            if dict.keys.contains("oss_access_key") && dict["oss_access_key"] != nil {
                self.ossAccessKey = dict["oss_access_key"] as! String
            }
            if dict.keys.contains("oss_bucket") && dict["oss_bucket"] != nil {
                self.ossBucket = dict["oss_bucket"] as! String
            }
            if dict.keys.contains("oss_endpoint") && dict["oss_endpoint"] != nil {
                self.ossEndpoint = dict["oss_endpoint"] as! String
            }
            if dict.keys.contains("oss_role_arn") && dict["oss_role_arn"] != nil {
                self.ossRoleArn = dict["oss_role_arn"] as! String
            }
        }
    }
    public class YmlConfig : Tea.TeaModel {
        public var action: String?

        public var aggregateOnly: String?

        public var analyzeExpId: String?

        public var cpu: String?

        public var dataPartition: String?

        public var dataSource: String?

        public var dataType: String?

        public var debugMode: String?

        public var excludeColumns: String?

        public var featureSelection: String?

        public var filterThresh: String?

        public var ivThresh: String?

        public var label: String?

        public var memory: String?

        public var outputConfigOssDir: String?

        public var pipelineExpId: String?

        public var reuseResults: String?

        public var sampleRatio: String?

        public var sampleSize: String?

        public var selectionExpId: String?

        public var skipSelect: String?

        public var workers: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["action"] = self.action!
            }
            if self.aggregateOnly != nil {
                map["aggregate_only"] = self.aggregateOnly!
            }
            if self.analyzeExpId != nil {
                map["analyze_exp_id"] = self.analyzeExpId!
            }
            if self.cpu != nil {
                map["cpu"] = self.cpu!
            }
            if self.dataPartition != nil {
                map["data_partition"] = self.dataPartition!
            }
            if self.dataSource != nil {
                map["data_source"] = self.dataSource!
            }
            if self.dataType != nil {
                map["data_type"] = self.dataType!
            }
            if self.debugMode != nil {
                map["debug_mode"] = self.debugMode!
            }
            if self.excludeColumns != nil {
                map["exclude_columns"] = self.excludeColumns!
            }
            if self.featureSelection != nil {
                map["feature_selection"] = self.featureSelection!
            }
            if self.filterThresh != nil {
                map["filter_thresh"] = self.filterThresh!
            }
            if self.ivThresh != nil {
                map["iv_thresh"] = self.ivThresh!
            }
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.memory != nil {
                map["memory"] = self.memory!
            }
            if self.outputConfigOssDir != nil {
                map["output_config_oss_dir"] = self.outputConfigOssDir!
            }
            if self.pipelineExpId != nil {
                map["pipeline_exp_id"] = self.pipelineExpId!
            }
            if self.reuseResults != nil {
                map["reuse_results"] = self.reuseResults!
            }
            if self.sampleRatio != nil {
                map["sample_ratio"] = self.sampleRatio!
            }
            if self.sampleSize != nil {
                map["sample_size"] = self.sampleSize!
            }
            if self.selectionExpId != nil {
                map["selection_exp_id"] = self.selectionExpId!
            }
            if self.skipSelect != nil {
                map["skip_select"] = self.skipSelect!
            }
            if self.workers != nil {
                map["workers"] = self.workers!
            }
            if self.workspaceName != nil {
                map["workspace_name"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("action") && dict["action"] != nil {
                self.action = dict["action"] as! String
            }
            if dict.keys.contains("aggregate_only") && dict["aggregate_only"] != nil {
                self.aggregateOnly = dict["aggregate_only"] as! String
            }
            if dict.keys.contains("analyze_exp_id") && dict["analyze_exp_id"] != nil {
                self.analyzeExpId = dict["analyze_exp_id"] as! String
            }
            if dict.keys.contains("cpu") && dict["cpu"] != nil {
                self.cpu = dict["cpu"] as! String
            }
            if dict.keys.contains("data_partition") && dict["data_partition"] != nil {
                self.dataPartition = dict["data_partition"] as! String
            }
            if dict.keys.contains("data_source") && dict["data_source"] != nil {
                self.dataSource = dict["data_source"] as! String
            }
            if dict.keys.contains("data_type") && dict["data_type"] != nil {
                self.dataType = dict["data_type"] as! String
            }
            if dict.keys.contains("debug_mode") && dict["debug_mode"] != nil {
                self.debugMode = dict["debug_mode"] as! String
            }
            if dict.keys.contains("exclude_columns") && dict["exclude_columns"] != nil {
                self.excludeColumns = dict["exclude_columns"] as! String
            }
            if dict.keys.contains("feature_selection") && dict["feature_selection"] != nil {
                self.featureSelection = dict["feature_selection"] as! String
            }
            if dict.keys.contains("filter_thresh") && dict["filter_thresh"] != nil {
                self.filterThresh = dict["filter_thresh"] as! String
            }
            if dict.keys.contains("iv_thresh") && dict["iv_thresh"] != nil {
                self.ivThresh = dict["iv_thresh"] as! String
            }
            if dict.keys.contains("label") && dict["label"] != nil {
                self.label = dict["label"] as! String
            }
            if dict.keys.contains("memory") && dict["memory"] != nil {
                self.memory = dict["memory"] as! String
            }
            if dict.keys.contains("output_config_oss_dir") && dict["output_config_oss_dir"] != nil {
                self.outputConfigOssDir = dict["output_config_oss_dir"] as! String
            }
            if dict.keys.contains("pipeline_exp_id") && dict["pipeline_exp_id"] != nil {
                self.pipelineExpId = dict["pipeline_exp_id"] as! String
            }
            if dict.keys.contains("reuse_results") && dict["reuse_results"] != nil {
                self.reuseResults = dict["reuse_results"] as! String
            }
            if dict.keys.contains("sample_ratio") && dict["sample_ratio"] != nil {
                self.sampleRatio = dict["sample_ratio"] as! String
            }
            if dict.keys.contains("sample_size") && dict["sample_size"] != nil {
                self.sampleSize = dict["sample_size"] as! String
            }
            if dict.keys.contains("selection_exp_id") && dict["selection_exp_id"] != nil {
                self.selectionExpId = dict["selection_exp_id"] as! String
            }
            if dict.keys.contains("skip_select") && dict["skip_select"] != nil {
                self.skipSelect = dict["skip_select"] as! String
            }
            if dict.keys.contains("workers") && dict["workers"] != nil {
                self.workers = dict["workers"] as! String
            }
            if dict.keys.contains("workspace_name") && dict["workspace_name"] != nil {
                self.workspaceName = dict["workspace_name"] as! String
            }
        }
    }
    public var odpsConfig: AutofeExperimentConfiguration.OdpsConfig?

    public var ossConfig: AutofeExperimentConfiguration.OssConfig?

    public var ymlConfig: AutofeExperimentConfiguration.YmlConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.odpsConfig?.validate()
        try self.ossConfig?.validate()
        try self.ymlConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.odpsConfig != nil {
            map["odps_config"] = self.odpsConfig?.toMap()
        }
        if self.ossConfig != nil {
            map["oss_config"] = self.ossConfig?.toMap()
        }
        if self.ymlConfig != nil {
            map["yml_config"] = self.ymlConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("odps_config") && dict["odps_config"] != nil {
            var model = AutofeExperimentConfiguration.OdpsConfig()
            model.fromMap(dict["odps_config"] as! [String: Any])
            self.odpsConfig = model
        }
        if dict.keys.contains("oss_config") && dict["oss_config"] != nil {
            var model = AutofeExperimentConfiguration.OssConfig()
            model.fromMap(dict["oss_config"] as! [String: Any])
            self.ossConfig = model
        }
        if dict.keys.contains("yml_config") && dict["yml_config"] != nil {
            var model = AutofeExperimentConfiguration.YmlConfig()
            model.fromMap(dict["yml_config"] as! [String: Any])
            self.ymlConfig = model
        }
    }
}

public class HpoExperimentConfig : Tea.TeaModel {
    public class DlcConfig : Tea.TeaModel {
        public var accessId: String?

        public var accessKey: String?

        public var endpoint: String?

        public var protocol_: String?

        public var region: String?

        public override init() {
            super.init()
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
                map["access_id"] = self.accessId!
            }
            if self.accessKey != nil {
                map["access_key"] = self.accessKey!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.protocol_ != nil {
                map["protocol"] = self.protocol_!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("access_id") && dict["access_id"] != nil {
                self.accessId = dict["access_id"] as! String
            }
            if dict.keys.contains("access_key") && dict["access_key"] != nil {
                self.accessKey = dict["access_key"] as! String
            }
            if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("protocol") && dict["protocol"] != nil {
                self.protocol_ = dict["protocol"] as! String
            }
            if dict.keys.contains("region") && dict["region"] != nil {
                self.region = dict["region"] as! String
            }
        }
    }
    public class K8sConfig : Tea.TeaModel {
        public var nniContainerCpuLimit: String?

        public var nniContainerMemoryLimit: String?

        public var nniContainerRequestedCpu: String?

        public var nniContainerRequestedMemory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nniContainerCpuLimit != nil {
                map["nni_container_cpu_limit"] = self.nniContainerCpuLimit!
            }
            if self.nniContainerMemoryLimit != nil {
                map["nni_container_memory_limit"] = self.nniContainerMemoryLimit!
            }
            if self.nniContainerRequestedCpu != nil {
                map["nni_container_requested_cpu"] = self.nniContainerRequestedCpu!
            }
            if self.nniContainerRequestedMemory != nil {
                map["nni_container_requested_memory"] = self.nniContainerRequestedMemory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("nni_container_cpu_limit") && dict["nni_container_cpu_limit"] != nil {
                self.nniContainerCpuLimit = dict["nni_container_cpu_limit"] as! String
            }
            if dict.keys.contains("nni_container_memory_limit") && dict["nni_container_memory_limit"] != nil {
                self.nniContainerMemoryLimit = dict["nni_container_memory_limit"] as! String
            }
            if dict.keys.contains("nni_container_requested_cpu") && dict["nni_container_requested_cpu"] != nil {
                self.nniContainerRequestedCpu = dict["nni_container_requested_cpu"] as! String
            }
            if dict.keys.contains("nni_container_requested_memory") && dict["nni_container_requested_memory"] != nil {
                self.nniContainerRequestedMemory = dict["nni_container_requested_memory"] as! String
            }
        }
    }
    public class MetricConfig : Tea.TeaModel {
        public var finalMode: String?

        public var metricDict: [String: Any]?

        public var metricSource: [String]?

        public var metricType: String?

        public var sourceListFinalMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finalMode != nil {
                map["final_mode"] = self.finalMode!
            }
            if self.metricDict != nil {
                map["metric_dict"] = self.metricDict!
            }
            if self.metricSource != nil {
                map["metric_source"] = self.metricSource!
            }
            if self.metricType != nil {
                map["metric_type"] = self.metricType!
            }
            if self.sourceListFinalMode != nil {
                map["source_list_final_mode"] = self.sourceListFinalMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("final_mode") && dict["final_mode"] != nil {
                self.finalMode = dict["final_mode"] as! String
            }
            if dict.keys.contains("metric_dict") && dict["metric_dict"] != nil {
                self.metricDict = dict["metric_dict"] as! [String: Any]
            }
            if dict.keys.contains("metric_source") && dict["metric_source"] != nil {
                self.metricSource = dict["metric_source"] as! [String]
            }
            if dict.keys.contains("metric_type") && dict["metric_type"] != nil {
                self.metricType = dict["metric_type"] as! String
            }
            if dict.keys.contains("source_list_final_mode") && dict["source_list_final_mode"] != nil {
                self.sourceListFinalMode = dict["source_list_final_mode"] as! String
            }
        }
    }
    public class MonitorConfig : Tea.TeaModel {
        public var atMobiles: String?

        public var atUserIds: String?

        public var isAtAll: String?

        public var keyword: String?

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
            if self.atMobiles != nil {
                map["at_mobiles"] = self.atMobiles!
            }
            if self.atUserIds != nil {
                map["at_user_ids"] = self.atUserIds!
            }
            if self.isAtAll != nil {
                map["is_at_all"] = self.isAtAll!
            }
            if self.keyword != nil {
                map["keyword"] = self.keyword!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("at_mobiles") && dict["at_mobiles"] != nil {
                self.atMobiles = dict["at_mobiles"] as! String
            }
            if dict.keys.contains("at_user_ids") && dict["at_user_ids"] != nil {
                self.atUserIds = dict["at_user_ids"] as! String
            }
            if dict.keys.contains("is_at_all") && dict["is_at_all"] != nil {
                self.isAtAll = dict["is_at_all"] as! String
            }
            if dict.keys.contains("keyword") && dict["keyword"] != nil {
                self.keyword = dict["keyword"] as! String
            }
            if dict.keys.contains("url") && dict["url"] != nil {
                self.url = dict["url"] as! String
            }
        }
    }
    public class OdpsConfig : Tea.TeaModel {
        public var accessId: String?

        public var accessKey: String?

        public var endPoint: String?

        public var logViewHost: String?

        public var projectName: String?

        public var region: String?

        public var roleArn: String?

        public override init() {
            super.init()
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
                map["access_id"] = self.accessId!
            }
            if self.accessKey != nil {
                map["access_key"] = self.accessKey!
            }
            if self.endPoint != nil {
                map["end_point"] = self.endPoint!
            }
            if self.logViewHost != nil {
                map["log_view_host"] = self.logViewHost!
            }
            if self.projectName != nil {
                map["project_name"] = self.projectName!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.roleArn != nil {
                map["role_arn"] = self.roleArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("access_id") && dict["access_id"] != nil {
                self.accessId = dict["access_id"] as! String
            }
            if dict.keys.contains("access_key") && dict["access_key"] != nil {
                self.accessKey = dict["access_key"] as! String
            }
            if dict.keys.contains("end_point") && dict["end_point"] != nil {
                self.endPoint = dict["end_point"] as! String
            }
            if dict.keys.contains("log_view_host") && dict["log_view_host"] != nil {
                self.logViewHost = dict["log_view_host"] as! String
            }
            if dict.keys.contains("project_name") && dict["project_name"] != nil {
                self.projectName = dict["project_name"] as! String
            }
            if dict.keys.contains("region") && dict["region"] != nil {
                self.region = dict["region"] as! String
            }
            if dict.keys.contains("role_arn") && dict["role_arn"] != nil {
                self.roleArn = dict["role_arn"] as! String
            }
        }
    }
    public class OssConfig : Tea.TeaModel {
        public var accessKeyID: String?

        public var accessKeySecret: String?

        public var endpoint: String?

        public var roleArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyID != nil {
                map["accessKeyID"] = self.accessKeyID!
            }
            if self.accessKeySecret != nil {
                map["accessKeySecret"] = self.accessKeySecret!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.roleArn != nil {
                map["role_arn"] = self.roleArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accessKeyID") && dict["accessKeyID"] != nil {
                self.accessKeyID = dict["accessKeyID"] as! String
            }
            if dict.keys.contains("accessKeySecret") && dict["accessKeySecret"] != nil {
                self.accessKeySecret = dict["accessKeySecret"] as! String
            }
            if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("role_arn") && dict["role_arn"] != nil {
                self.roleArn = dict["role_arn"] as! String
            }
        }
    }
    public class OutputConfig : Tea.TeaModel {
        public var modelPath: String?

        public var summaryPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelPath != nil {
                map["model_path"] = self.modelPath!
            }
            if self.summaryPath != nil {
                map["summary_path"] = self.summaryPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("model_path") && dict["model_path"] != nil {
                self.modelPath = dict["model_path"] as! String
            }
            if dict.keys.contains("summary_path") && dict["summary_path"] != nil {
                self.summaryPath = dict["summary_path"] as! String
            }
        }
    }
    public class PaiflowConfig : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var regionId: String?

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
            if self.accessKeyId != nil {
                map["access_key_id"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["access_key_secret"] = self.accessKeySecret!
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.workspaceId != nil {
                map["workspace_id"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("access_key_id") && dict["access_key_id"] != nil {
                self.accessKeyId = dict["access_key_id"] as! String
            }
            if dict.keys.contains("access_key_secret") && dict["access_key_secret"] != nil {
                self.accessKeySecret = dict["access_key_secret"] as! String
            }
            if dict.keys.contains("region_id") && dict["region_id"] != nil {
                self.regionId = dict["region_id"] as! String
            }
            if dict.keys.contains("workspace_id") && dict["workspace_id"] != nil {
                self.workspaceId = dict["workspace_id"] as! String
            }
        }
    }
    public class ParamsConfig : Tea.TeaModel {
        public var paramsSrcDstFilepath: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.paramsSrcDstFilepath != nil {
                map["params_src_dst_filepath"] = self.paramsSrcDstFilepath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("params_src_dst_filepath") && dict["params_src_dst_filepath"] != nil {
                self.paramsSrcDstFilepath = dict["params_src_dst_filepath"] as! [String]
            }
        }
    }
    public class PlatformConfig : Tea.TeaModel {
        public var cmd: [String]?

        public var name: String?

        public var resume: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmd != nil {
                map["cmd"] = self.cmd!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resume != nil {
                map["resume"] = self.resume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cmd") && dict["cmd"] != nil {
                self.cmd = dict["cmd"] as! [String]
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("resume") && dict["resume"] != nil {
                self.resume = dict["resume"] as! String
            }
        }
    }
    public class ScheduleConfig : Tea.TeaModel {
        public var day: String?

        public var endTime: String?

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
            if self.day != nil {
                map["day"] = self.day!
            }
            if self.endTime != nil {
                map["end_time"] = self.endTime!
            }
            if self.startTime != nil {
                map["start_time"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("day") && dict["day"] != nil {
                self.day = dict["day"] as! String
            }
            if dict.keys.contains("end_time") && dict["end_time"] != nil {
                self.endTime = dict["end_time"] as! String
            }
            if dict.keys.contains("start_time") && dict["start_time"] != nil {
                self.startTime = dict["start_time"] as! String
            }
        }
    }
    public class TsConfig : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var endpoint: String?

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
            if self.accessKeyId != nil {
                map["access_key_id"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["access_key_secret"] = self.accessKeySecret!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("access_key_id") && dict["access_key_id"] != nil {
                self.accessKeyId = dict["access_key_id"] as! String
            }
            if dict.keys.contains("access_key_secret") && dict["access_key_secret"] != nil {
                self.accessKeySecret = dict["access_key_secret"] as! String
            }
            if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
                self.endpoint = dict["endpoint"] as! String
            }
            if dict.keys.contains("region_id") && dict["region_id"] != nil {
                self.regionId = dict["region_id"] as! String
            }
        }
    }
    public class YmlConfig : Tea.TeaModel {
        public class Assessor : Tea.TeaModel {
            public class ClassArgs : Tea.TeaModel {
                public var earlystop: Bool?

                public var movingAvg: String?

                public var optimizeMode: String?

                public var proportion: Double?

                public var startStep: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.earlystop != nil {
                        map["earlystop"] = self.earlystop!
                    }
                    if self.movingAvg != nil {
                        map["moving_avg"] = self.movingAvg!
                    }
                    if self.optimizeMode != nil {
                        map["optimize_mode"] = self.optimizeMode!
                    }
                    if self.proportion != nil {
                        map["proportion"] = self.proportion!
                    }
                    if self.startStep != nil {
                        map["start_step"] = self.startStep!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("earlystop") && dict["earlystop"] != nil {
                        self.earlystop = dict["earlystop"] as! Bool
                    }
                    if dict.keys.contains("moving_avg") && dict["moving_avg"] != nil {
                        self.movingAvg = dict["moving_avg"] as! String
                    }
                    if dict.keys.contains("optimize_mode") && dict["optimize_mode"] != nil {
                        self.optimizeMode = dict["optimize_mode"] as! String
                    }
                    if dict.keys.contains("proportion") && dict["proportion"] != nil {
                        self.proportion = dict["proportion"] as! Double
                    }
                    if dict.keys.contains("start_step") && dict["start_step"] != nil {
                        self.startStep = dict["start_step"] as! Int32
                    }
                }
            }
            public var classArgs: HpoExperimentConfig.YmlConfig.Assessor.ClassArgs?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.classArgs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classArgs != nil {
                    map["class_args"] = self.classArgs?.toMap()
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("class_args") && dict["class_args"] != nil {
                    var model = HpoExperimentConfig.YmlConfig.Assessor.ClassArgs()
                    model.fromMap(dict["class_args"] as! [String: Any])
                    self.classArgs = model
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class Tuner : Tea.TeaModel {
            public var classArgs: [String: Any]?

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
                if self.classArgs != nil {
                    map["class_args"] = self.classArgs!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("class_args") && dict["class_args"] != nil {
                    self.classArgs = dict["class_args"] as! [String: Any]
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var assessor: HpoExperimentConfig.YmlConfig.Assessor?

        public var debug: Bool?

        public var experimentName: String?

        public var logLevel: String?

        public var maxTrialNumber: Int32?

        public var trialConcurrency: Int32?

        public var tuner: HpoExperimentConfig.YmlConfig.Tuner?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.assessor?.validate()
            try self.tuner?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assessor != nil {
                map["assessor"] = self.assessor?.toMap()
            }
            if self.debug != nil {
                map["debug"] = self.debug!
            }
            if self.experimentName != nil {
                map["experiment_name"] = self.experimentName!
            }
            if self.logLevel != nil {
                map["log_level"] = self.logLevel!
            }
            if self.maxTrialNumber != nil {
                map["max_trial_number"] = self.maxTrialNumber!
            }
            if self.trialConcurrency != nil {
                map["trial_concurrency"] = self.trialConcurrency!
            }
            if self.tuner != nil {
                map["tuner"] = self.tuner?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("assessor") && dict["assessor"] != nil {
                var model = HpoExperimentConfig.YmlConfig.Assessor()
                model.fromMap(dict["assessor"] as! [String: Any])
                self.assessor = model
            }
            if dict.keys.contains("debug") && dict["debug"] != nil {
                self.debug = dict["debug"] as! Bool
            }
            if dict.keys.contains("experiment_name") && dict["experiment_name"] != nil {
                self.experimentName = dict["experiment_name"] as! String
            }
            if dict.keys.contains("log_level") && dict["log_level"] != nil {
                self.logLevel = dict["log_level"] as! String
            }
            if dict.keys.contains("max_trial_number") && dict["max_trial_number"] != nil {
                self.maxTrialNumber = dict["max_trial_number"] as! Int32
            }
            if dict.keys.contains("trial_concurrency") && dict["trial_concurrency"] != nil {
                self.trialConcurrency = dict["trial_concurrency"] as! Int32
            }
            if dict.keys.contains("tuner") && dict["tuner"] != nil {
                var model = HpoExperimentConfig.YmlConfig.Tuner()
                model.fromMap(dict["tuner"] as! [String: Any])
                self.tuner = model
            }
        }
    }
    public var dlcConfig: HpoExperimentConfig.DlcConfig?

    public var k8sConfig: HpoExperimentConfig.K8sConfig?

    public var metricConfig: HpoExperimentConfig.MetricConfig?

    public var monitorConfig: HpoExperimentConfig.MonitorConfig?

    public var odpsConfig: HpoExperimentConfig.OdpsConfig?

    public var ossConfig: HpoExperimentConfig.OssConfig?

    public var outputConfig: HpoExperimentConfig.OutputConfig?

    public var paiflowConfig: HpoExperimentConfig.PaiflowConfig?

    public var paramsConfig: HpoExperimentConfig.ParamsConfig?

    public var platformConfig: HpoExperimentConfig.PlatformConfig?

    public var scheduleConfig: HpoExperimentConfig.ScheduleConfig?

    public var searchSpace: [String: Any]?

    public var tsConfig: HpoExperimentConfig.TsConfig?

    public var ymlConfig: HpoExperimentConfig.YmlConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dlcConfig?.validate()
        try self.k8sConfig?.validate()
        try self.metricConfig?.validate()
        try self.monitorConfig?.validate()
        try self.odpsConfig?.validate()
        try self.ossConfig?.validate()
        try self.outputConfig?.validate()
        try self.paiflowConfig?.validate()
        try self.paramsConfig?.validate()
        try self.platformConfig?.validate()
        try self.scheduleConfig?.validate()
        try self.tsConfig?.validate()
        try self.ymlConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dlcConfig != nil {
            map["dlc_config"] = self.dlcConfig?.toMap()
        }
        if self.k8sConfig != nil {
            map["k8s_config"] = self.k8sConfig?.toMap()
        }
        if self.metricConfig != nil {
            map["metric_config"] = self.metricConfig?.toMap()
        }
        if self.monitorConfig != nil {
            map["monitor_config"] = self.monitorConfig?.toMap()
        }
        if self.odpsConfig != nil {
            map["odps_config"] = self.odpsConfig?.toMap()
        }
        if self.ossConfig != nil {
            map["oss_config"] = self.ossConfig?.toMap()
        }
        if self.outputConfig != nil {
            map["output_config"] = self.outputConfig?.toMap()
        }
        if self.paiflowConfig != nil {
            map["paiflow_config"] = self.paiflowConfig?.toMap()
        }
        if self.paramsConfig != nil {
            map["params_config"] = self.paramsConfig?.toMap()
        }
        if self.platformConfig != nil {
            map["platform_config"] = self.platformConfig?.toMap()
        }
        if self.scheduleConfig != nil {
            map["schedule_config"] = self.scheduleConfig?.toMap()
        }
        if self.searchSpace != nil {
            map["search_space"] = self.searchSpace!
        }
        if self.tsConfig != nil {
            map["ts_config"] = self.tsConfig?.toMap()
        }
        if self.ymlConfig != nil {
            map["yml_config"] = self.ymlConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("dlc_config") && dict["dlc_config"] != nil {
            var model = HpoExperimentConfig.DlcConfig()
            model.fromMap(dict["dlc_config"] as! [String: Any])
            self.dlcConfig = model
        }
        if dict.keys.contains("k8s_config") && dict["k8s_config"] != nil {
            var model = HpoExperimentConfig.K8sConfig()
            model.fromMap(dict["k8s_config"] as! [String: Any])
            self.k8sConfig = model
        }
        if dict.keys.contains("metric_config") && dict["metric_config"] != nil {
            var model = HpoExperimentConfig.MetricConfig()
            model.fromMap(dict["metric_config"] as! [String: Any])
            self.metricConfig = model
        }
        if dict.keys.contains("monitor_config") && dict["monitor_config"] != nil {
            var model = HpoExperimentConfig.MonitorConfig()
            model.fromMap(dict["monitor_config"] as! [String: Any])
            self.monitorConfig = model
        }
        if dict.keys.contains("odps_config") && dict["odps_config"] != nil {
            var model = HpoExperimentConfig.OdpsConfig()
            model.fromMap(dict["odps_config"] as! [String: Any])
            self.odpsConfig = model
        }
        if dict.keys.contains("oss_config") && dict["oss_config"] != nil {
            var model = HpoExperimentConfig.OssConfig()
            model.fromMap(dict["oss_config"] as! [String: Any])
            self.ossConfig = model
        }
        if dict.keys.contains("output_config") && dict["output_config"] != nil {
            var model = HpoExperimentConfig.OutputConfig()
            model.fromMap(dict["output_config"] as! [String: Any])
            self.outputConfig = model
        }
        if dict.keys.contains("paiflow_config") && dict["paiflow_config"] != nil {
            var model = HpoExperimentConfig.PaiflowConfig()
            model.fromMap(dict["paiflow_config"] as! [String: Any])
            self.paiflowConfig = model
        }
        if dict.keys.contains("params_config") && dict["params_config"] != nil {
            var model = HpoExperimentConfig.ParamsConfig()
            model.fromMap(dict["params_config"] as! [String: Any])
            self.paramsConfig = model
        }
        if dict.keys.contains("platform_config") && dict["platform_config"] != nil {
            var model = HpoExperimentConfig.PlatformConfig()
            model.fromMap(dict["platform_config"] as! [String: Any])
            self.platformConfig = model
        }
        if dict.keys.contains("schedule_config") && dict["schedule_config"] != nil {
            var model = HpoExperimentConfig.ScheduleConfig()
            model.fromMap(dict["schedule_config"] as! [String: Any])
            self.scheduleConfig = model
        }
        if dict.keys.contains("search_space") && dict["search_space"] != nil {
            self.searchSpace = dict["search_space"] as! [String: Any]
        }
        if dict.keys.contains("ts_config") && dict["ts_config"] != nil {
            var model = HpoExperimentConfig.TsConfig()
            model.fromMap(dict["ts_config"] as! [String: Any])
            self.tsConfig = model
        }
        if dict.keys.contains("yml_config") && dict["yml_config"] != nil {
            var model = HpoExperimentConfig.YmlConfig()
            model.fromMap(dict["yml_config"] as! [String: Any])
            self.ymlConfig = model
        }
    }
}

public class CreateHpoExperimentRequest : Tea.TeaModel {
    public var accessibility: String?

    public var description_: String?

    public var hpoExperimentConfiguration: HpoExperimentConfig?

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
        try self.hpoExperimentConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.hpoExperimentConfiguration != nil {
            map["HpoExperimentConfiguration"] = self.hpoExperimentConfiguration?.toMap()
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
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HpoExperimentConfiguration") && dict["HpoExperimentConfiguration"] != nil {
            var model = HpoExperimentConfig()
            model.fromMap(dict["HpoExperimentConfiguration"] as! [String: Any])
            self.hpoExperimentConfiguration = model
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateHpoExperimentResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: String]?

    public var experimentId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateHpoExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHpoExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateHpoExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHpoExperimentResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: Any]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteHpoExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHpoExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteHpoExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHpoExperimentResponseBody : Tea.TeaModel {
    public var accessibility: String?

    public var code: String?

    public var configIni: String?

    public var configYml: String?

    public var creator: String?

    public var deleted: Bool?

    public var description_: String?

    public var detail: [String: Any]?

    public var experimentId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var hpoExperimentConfiguration: [String: Any]?

    public var jobType: String?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var searchSpace: String?

    public var status: String?

    public var trialCount: Int32?

    public var trialStatus: [String: String]?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configIni != nil {
            map["ConfigIni"] = self.configIni!
        }
        if self.configYml != nil {
            map["ConfigYml"] = self.configYml!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.deleted != nil {
            map["Deleted"] = self.deleted!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.hpoExperimentConfiguration != nil {
            map["HpoExperimentConfiguration"] = self.hpoExperimentConfiguration!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchSpace != nil {
            map["SearchSpace"] = self.searchSpace!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.trialCount != nil {
            map["TrialCount"] = self.trialCount!
        }
        if self.trialStatus != nil {
            map["TrialStatus"] = self.trialStatus!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConfigIni") && dict["ConfigIni"] != nil {
            self.configIni = dict["ConfigIni"] as! String
        }
        if dict.keys.contains("ConfigYml") && dict["ConfigYml"] != nil {
            self.configYml = dict["ConfigYml"] as! String
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
            self.deleted = dict["Deleted"] as! Bool
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("HpoExperimentConfiguration") && dict["HpoExperimentConfiguration"] != nil {
            self.hpoExperimentConfiguration = dict["HpoExperimentConfiguration"] as! [String: Any]
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SearchSpace") && dict["SearchSpace"] != nil {
            self.searchSpace = dict["SearchSpace"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TrialCount") && dict["TrialCount"] != nil {
            self.trialCount = dict["TrialCount"] as! Int32
        }
        if dict.keys.contains("TrialStatus") && dict["TrialStatus"] != nil {
            self.trialStatus = dict["TrialStatus"] as! [String: String]
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetHpoExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHpoExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHpoExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHpoTrialResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: String]?

    public var experimentId: String?

    public var finalMetric: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var hyperparam: String?

    public var jobMeta: String?

    public var message: String?

    public var metric: String?

    public var metricName: String?

    public var model: String?

    public var parameterId: Int32?

    public var requestId: String?

    public var status: String?

    public var trialId: String?

    public var userComment: String?

    public var userScore: Int32?

    public override init() {
        super.init()
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
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.finalMetric != nil {
            map["FinalMetric"] = self.finalMetric!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.hyperparam != nil {
            map["Hyperparam"] = self.hyperparam!
        }
        if self.jobMeta != nil {
            map["JobMeta"] = self.jobMeta!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.metric != nil {
            map["Metric"] = self.metric!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.parameterId != nil {
            map["ParameterId"] = self.parameterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.trialId != nil {
            map["TrialId"] = self.trialId!
        }
        if self.userComment != nil {
            map["UserComment"] = self.userComment!
        }
        if self.userScore != nil {
            map["UserScore"] = self.userScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
            self.experimentId = dict["ExperimentId"] as! String
        }
        if dict.keys.contains("FinalMetric") && dict["FinalMetric"] != nil {
            self.finalMetric = dict["FinalMetric"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Hyperparam") && dict["Hyperparam"] != nil {
            self.hyperparam = dict["Hyperparam"] as! String
        }
        if dict.keys.contains("JobMeta") && dict["JobMeta"] != nil {
            self.jobMeta = dict["JobMeta"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Metric") && dict["Metric"] != nil {
            self.metric = dict["Metric"] as! String
        }
        if dict.keys.contains("MetricName") && dict["MetricName"] != nil {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("ParameterId") && dict["ParameterId"] != nil {
            self.parameterId = dict["ParameterId"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TrialId") && dict["TrialId"] != nil {
            self.trialId = dict["TrialId"] as! String
        }
        if dict.keys.contains("UserComment") && dict["UserComment"] != nil {
            self.userComment = dict["UserComment"] as! String
        }
        if dict.keys.contains("UserScore") && dict["UserScore"] != nil {
            self.userScore = dict["UserScore"] as! Int32
        }
    }
}

public class GetHpoTrialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHpoTrialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetHpoTrialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHpoExperimentLogsRequest : Tea.TeaModel {
    public var logName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logName != nil {
            map["LogName"] = self.logName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogName") && dict["LogName"] != nil {
            self.logName = dict["LogName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListHpoExperimentLogsResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: Any]?

    public var logs: [String]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHpoExperimentLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHpoExperimentLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHpoExperimentLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHpoExperimentsRequest : Tea.TeaModel {
    public var accessibility: String?

    public var creator: String?

    public var includeConfigData: String?

    public var maxCreateTime: String?

    public var minCreateTime: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.includeConfigData != nil {
            map["IncludeConfigData"] = self.includeConfigData!
        }
        if self.maxCreateTime != nil {
            map["MaxCreateTime"] = self.maxCreateTime!
        }
        if self.minCreateTime != nil {
            map["MinCreateTime"] = self.minCreateTime!
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
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("IncludeConfigData") && dict["IncludeConfigData"] != nil {
            self.includeConfigData = dict["IncludeConfigData"] as! String
        }
        if dict.keys.contains("MaxCreateTime") && dict["MaxCreateTime"] != nil {
            self.maxCreateTime = dict["MaxCreateTime"] as! String
        }
        if dict.keys.contains("MinCreateTime") && dict["MinCreateTime"] != nil {
            self.minCreateTime = dict["MinCreateTime"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListHpoExperimentsResponseBody : Tea.TeaModel {
    public class Experiments : Tea.TeaModel {
        public var accessibility: String?

        public var configIni: String?

        public var configYml: String?

        public var creator: String?

        public var deleted: Bool?

        public var description_: String?

        public var experimentId: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var jobType: String?

        public var name: String?

        public var searchSpace: String?

        public var status: String?

        public var trialCount: Int32?

        public var trialStatus: [String: String]?

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
            if self.accessibility != nil {
                map["Accessibility"] = self.accessibility!
            }
            if self.configIni != nil {
                map["ConfigIni"] = self.configIni!
            }
            if self.configYml != nil {
                map["ConfigYml"] = self.configYml!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.experimentId != nil {
                map["ExperimentId"] = self.experimentId!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.searchSpace != nil {
                map["SearchSpace"] = self.searchSpace!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trialCount != nil {
                map["TrialCount"] = self.trialCount!
            }
            if self.trialStatus != nil {
                map["TrialStatus"] = self.trialStatus!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
                self.accessibility = dict["Accessibility"] as! String
            }
            if dict.keys.contains("ConfigIni") && dict["ConfigIni"] != nil {
                self.configIni = dict["ConfigIni"] as! String
            }
            if dict.keys.contains("ConfigYml") && dict["ConfigYml"] != nil {
                self.configYml = dict["ConfigYml"] as! String
            }
            if dict.keys.contains("Creator") && dict["Creator"] != nil {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("JobType") && dict["JobType"] != nil {
                self.jobType = dict["JobType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SearchSpace") && dict["SearchSpace"] != nil {
                self.searchSpace = dict["SearchSpace"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TrialCount") && dict["TrialCount"] != nil {
                self.trialCount = dict["TrialCount"] as! Int32
            }
            if dict.keys.contains("TrialStatus") && dict["TrialStatus"] != nil {
                self.trialStatus = dict["TrialStatus"] as! [String: String]
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var code: String?

    public var detail: [String: String]?

    public var experiments: [ListHpoExperimentsResponseBody.Experiments]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.experiments != nil {
            var tmp : [Any] = []
            for k in self.experiments! {
                tmp.append(k.toMap())
            }
            map["Experiments"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("Experiments") && dict["Experiments"] != nil {
            var tmp : [ListHpoExperimentsResponseBody.Experiments] = []
            for v in dict["Experiments"] as! [Any] {
                var model = ListHpoExperimentsResponseBody.Experiments()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.experiments = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHpoExperimentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHpoExperimentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHpoExperimentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHpoTrialCommandsResponseBody : Tea.TeaModel {
    public class Commands : Tea.TeaModel {
        public var command: String?

        public var id: Int32?

        public var output: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Command") && dict["Command"] != nil {
                self.command = dict["Command"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("Output") && dict["Output"] != nil {
                self.output = dict["Output"] as! String
            }
        }
    }
    public var code: String?

    public var commands: [ListHpoTrialCommandsResponseBody.Commands]?

    public var detail: [String: String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.commands != nil {
            var tmp : [Any] = []
            for k in self.commands! {
                tmp.append(k.toMap())
            }
            map["Commands"] = tmp
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Commands") && dict["Commands"] != nil {
            var tmp : [ListHpoTrialCommandsResponseBody.Commands] = []
            for v in dict["Commands"] as! [Any] {
                var model = ListHpoTrialCommandsResponseBody.Commands()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.commands = tmp
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHpoTrialCommandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHpoTrialCommandsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHpoTrialCommandsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHpoTrialLogNamesResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: String]?

    public var logNames: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.logNames != nil {
            map["LogNames"] = self.logNames!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("LogNames") && dict["LogNames"] != nil {
            self.logNames = dict["LogNames"] as! [String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHpoTrialLogNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHpoTrialLogNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHpoTrialLogNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHpoTrialLogsRequest : Tea.TeaModel {
    public var logName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logName != nil {
            map["LogName"] = self.logName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogName") && dict["LogName"] != nil {
            self.logName = dict["LogName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListHpoTrialLogsResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: Any]?

    public var logs: [String]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Logs") && dict["Logs"] != nil {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListHpoTrialLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHpoTrialLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHpoTrialLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHpoTrialsRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
    }
}

public class ListHpoTrialsResponseBody : Tea.TeaModel {
    public class Trials : Tea.TeaModel {
        public var experimentId: String?

        public var finalMetric: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var hyperparam: String?

        public var jobMeta: String?

        public var metric: String?

        public var metricName: String?

        public var model: String?

        public var parameterId: Int32?

        public var status: String?

        public var trialId: String?

        public var userComment: String?

        public var userScore: Int32?

        public override init() {
            super.init()
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
            if self.finalMetric != nil {
                map["FinalMetric"] = self.finalMetric!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.hyperparam != nil {
                map["Hyperparam"] = self.hyperparam!
            }
            if self.jobMeta != nil {
                map["JobMeta"] = self.jobMeta!
            }
            if self.metric != nil {
                map["Metric"] = self.metric!
            }
            if self.metricName != nil {
                map["MetricName"] = self.metricName!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.parameterId != nil {
                map["ParameterId"] = self.parameterId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trialId != nil {
                map["TrialId"] = self.trialId!
            }
            if self.userComment != nil {
                map["UserComment"] = self.userComment!
            }
            if self.userScore != nil {
                map["UserScore"] = self.userScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExperimentId") && dict["ExperimentId"] != nil {
                self.experimentId = dict["ExperimentId"] as! String
            }
            if dict.keys.contains("FinalMetric") && dict["FinalMetric"] != nil {
                self.finalMetric = dict["FinalMetric"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("Hyperparam") && dict["Hyperparam"] != nil {
                self.hyperparam = dict["Hyperparam"] as! String
            }
            if dict.keys.contains("JobMeta") && dict["JobMeta"] != nil {
                self.jobMeta = dict["JobMeta"] as! String
            }
            if dict.keys.contains("Metric") && dict["Metric"] != nil {
                self.metric = dict["Metric"] as! String
            }
            if dict.keys.contains("MetricName") && dict["MetricName"] != nil {
                self.metricName = dict["MetricName"] as! String
            }
            if dict.keys.contains("Model") && dict["Model"] != nil {
                self.model = dict["Model"] as! String
            }
            if dict.keys.contains("ParameterId") && dict["ParameterId"] != nil {
                self.parameterId = dict["ParameterId"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TrialId") && dict["TrialId"] != nil {
                self.trialId = dict["TrialId"] as! String
            }
            if dict.keys.contains("UserComment") && dict["UserComment"] != nil {
                self.userComment = dict["UserComment"] as! String
            }
            if dict.keys.contains("UserScore") && dict["UserScore"] != nil {
                self.userScore = dict["UserScore"] as! Int32
            }
        }
    }
    public var code: String?

    public var detail: [String: String]?

    public var message: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var trials: [ListHpoTrialsResponseBody.Trials]?

    public override init() {
        super.init()
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
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trials != nil {
            var tmp : [Any] = []
            for k in self.trials! {
                tmp.append(k.toMap())
            }
            map["Trials"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Trials") && dict["Trials"] != nil {
            var tmp : [ListHpoTrialsResponseBody.Trials] = []
            for v in dict["Trials"] as! [Any] {
                var model = ListHpoTrialsResponseBody.Trials()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trials = tmp
        }
    }
}

public class ListHpoTrialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHpoTrialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListHpoTrialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartHpoTrialsRequest : Tea.TeaModel {
    public var trialHyperParameters: String?

    public var trialIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trialHyperParameters != nil {
            map["TrialHyperParameters"] = self.trialHyperParameters!
        }
        if self.trialIds != nil {
            map["TrialIds"] = self.trialIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrialHyperParameters") && dict["TrialHyperParameters"] != nil {
            self.trialHyperParameters = dict["TrialHyperParameters"] as! String
        }
        if dict.keys.contains("TrialIds") && dict["TrialIds"] != nil {
            self.trialIds = dict["TrialIds"] as! [String]
        }
    }
}

public class RestartHpoTrialsResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: String]?

    public var message: String?

    public var requestId: String?

    public var results: [String: Any]?

    public override init() {
        super.init()
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
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            self.results = dict["Results"] as! [String: Any]
        }
    }
}

public class RestartHpoTrialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartHpoTrialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RestartHpoTrialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopHpoExperimentResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: String]?

    public var expId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.expId != nil {
            map["ExpId"] = self.expId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("ExpId") && dict["ExpId"] != nil {
            self.expId = dict["ExpId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopHpoExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopHpoExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopHpoExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopHpoTrialsRequest : Tea.TeaModel {
    public var trialIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trialIds != nil {
            map["TrialIds"] = self.trialIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrialIds") && dict["TrialIds"] != nil {
            self.trialIds = dict["TrialIds"] as! [String]
        }
    }
}

public class StopHpoTrialsResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: String]?

    public var message: String?

    public var requestId: String?

    public var results: [String: Any]?

    public override init() {
        super.init()
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
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: String]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") && dict["Results"] != nil {
            self.results = dict["Results"] as! [String: Any]
        }
    }
}

public class StopHpoTrialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopHpoTrialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopHpoTrialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHpoExperimentRequest : Tea.TeaModel {
    public var accessibility: String?

    public var description_: String?

    public var hpoExperimentConfiguration: HpoExperimentConfig?

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
        try self.hpoExperimentConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.hpoExperimentConfiguration != nil {
            map["HpoExperimentConfiguration"] = self.hpoExperimentConfiguration?.toMap()
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
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HpoExperimentConfiguration") && dict["HpoExperimentConfiguration"] != nil {
            var model = HpoExperimentConfig()
            model.fromMap(dict["HpoExperimentConfiguration"] as! [String: Any])
            self.hpoExperimentConfiguration = model
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateHpoExperimentResponseBody : Tea.TeaModel {
    public var code: String?

    public var detail: [String: Any]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateHpoExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHpoExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateHpoExperimentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
