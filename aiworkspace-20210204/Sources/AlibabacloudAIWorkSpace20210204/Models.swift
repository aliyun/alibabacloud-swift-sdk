import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CodeSourceItem : Tea.TeaModel {
    public var accessibility: String?

    public var codeBranch: String?

    public var codeCommit: String?

    public var codeRepo: String?

    public var codeRepoAccessToken: String?

    public var codeRepoUserName: String?

    public var codeSourceId: String?

    public var description_: String?

    public var displayName: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var mountPath: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.codeBranch != nil {
            map["CodeBranch"] = self.codeBranch!
        }
        if self.codeCommit != nil {
            map["CodeCommit"] = self.codeCommit!
        }
        if self.codeRepo != nil {
            map["CodeRepo"] = self.codeRepo!
        }
        if self.codeRepoAccessToken != nil {
            map["CodeRepoAccessToken"] = self.codeRepoAccessToken!
        }
        if self.codeRepoUserName != nil {
            map["CodeRepoUserName"] = self.codeRepoUserName!
        }
        if self.codeSourceId != nil {
            map["CodeSourceId"] = self.codeSourceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("CodeBranch") && dict["CodeBranch"] != nil {
            self.codeBranch = dict["CodeBranch"] as! String
        }
        if dict.keys.contains("CodeCommit") && dict["CodeCommit"] != nil {
            self.codeCommit = dict["CodeCommit"] as! String
        }
        if dict.keys.contains("CodeRepo") && dict["CodeRepo"] != nil {
            self.codeRepo = dict["CodeRepo"] as! String
        }
        if dict.keys.contains("CodeRepoAccessToken") && dict["CodeRepoAccessToken"] != nil {
            self.codeRepoAccessToken = dict["CodeRepoAccessToken"] as! String
        }
        if dict.keys.contains("CodeRepoUserName") && dict["CodeRepoUserName"] != nil {
            self.codeRepoUserName = dict["CodeRepoUserName"] as! String
        }
        if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class Dataset : Tea.TeaModel {
    public var accessibility: String?

    public var dataSourceType: String?

    public var dataType: String?

    public var datasetId: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var name: String?

    public var options: String?

    public var ownerId: String?

    public var property: String?

    public var providerType: String?

    public var sourceId: String?

    public var sourceType: String?

    public var uri: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.property != nil {
            map["Property"] = self.property!
        }
        if self.providerType != nil {
            map["ProviderType"] = self.providerType!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("DataSourceType") && dict["DataSourceType"] != nil {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
            self.datasetId = dict["DatasetId"] as! String
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
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Property") && dict["Property"] != nil {
            self.property = dict["Property"] as! String
        }
        if dict.keys.contains("ProviderType") && dict["ProviderType"] != nil {
            self.providerType = dict["ProviderType"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class DatasetLabel : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class Label : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class Model : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestVersion: ModelVersion?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelId: String?

    public var modelName: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var ownerId: String?

    public var provider: String?

    public var sourceId: String?

    public var sourceType: String?

    public var task: String?

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
        try self.latestVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion?.toMap()
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
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("LatestVersion") && dict["LatestVersion"] != nil {
            var model = ModelVersion()
            model.fromMap(dict["LatestVersion"] as! [String: Any])
            self.latestVersion = model
        }
        if dict.keys.contains("ModelDescription") && dict["ModelDescription"] != nil {
            self.modelDescription = dict["ModelDescription"] as! String
        }
        if dict.keys.contains("ModelDoc") && dict["ModelDoc"] != nil {
            self.modelDoc = dict["ModelDoc"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("OrderNumber") && dict["OrderNumber"] != nil {
            self.orderNumber = dict["OrderNumber"] as! Int64
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Task") && dict["Task"] != nil {
            self.task = dict["Task"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ModelVersion : Tea.TeaModel {
    public var approvalStatus: String?

    public var formatType: String?

    public var frameworkType: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var metrics: [String: Any]?

    public var options: String?

    public var ownerId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var trainingSpec: [String: Any]?

    public var uri: String?

    public var userId: String?

    public var versionDescription: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["ApprovalStatus"] = self.approvalStatus!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.frameworkType != nil {
            map["FrameworkType"] = self.frameworkType!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.trainingSpec != nil {
            map["TrainingSpec"] = self.trainingSpec!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalStatus") && dict["ApprovalStatus"] != nil {
            self.approvalStatus = dict["ApprovalStatus"] as! String
        }
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("FrameworkType") && dict["FrameworkType"] != nil {
            self.frameworkType = dict["FrameworkType"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("InferenceSpec") && dict["InferenceSpec"] != nil {
            self.inferenceSpec = dict["InferenceSpec"] as! [String: Any]
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            self.metrics = dict["Metrics"] as! [String: Any]
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TrainingSpec") && dict["TrainingSpec"] != nil {
            self.trainingSpec = dict["TrainingSpec"] as! [String: Any]
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("VersionDescription") && dict["VersionDescription"] != nil {
            self.versionDescription = dict["VersionDescription"] as! String
        }
        if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class ServiceTemplate : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var orderNumber: Int64?

    public var ownerId: String?

    public var provider: String?

    public var serviceTemplateDescription: String?

    public var serviceTemplateDoc: String?

    public var serviceTemplateId: String?

    public var serviceTemplateName: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.serviceTemplateDescription != nil {
            map["ServiceTemplateDescription"] = self.serviceTemplateDescription!
        }
        if self.serviceTemplateDoc != nil {
            map["ServiceTemplateDoc"] = self.serviceTemplateDoc!
        }
        if self.serviceTemplateId != nil {
            map["ServiceTemplateId"] = self.serviceTemplateId!
        }
        if self.serviceTemplateName != nil {
            map["ServiceTemplateName"] = self.serviceTemplateName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("InferenceSpec") && dict["InferenceSpec"] != nil {
            self.inferenceSpec = dict["InferenceSpec"] as! [String: Any]
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("OrderNumber") && dict["OrderNumber"] != nil {
            self.orderNumber = dict["OrderNumber"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("ServiceTemplateDescription") && dict["ServiceTemplateDescription"] != nil {
            self.serviceTemplateDescription = dict["ServiceTemplateDescription"] as! String
        }
        if dict.keys.contains("ServiceTemplateDoc") && dict["ServiceTemplateDoc"] != nil {
            self.serviceTemplateDoc = dict["ServiceTemplateDoc"] as! String
        }
        if dict.keys.contains("ServiceTemplateId") && dict["ServiceTemplateId"] != nil {
            self.serviceTemplateId = dict["ServiceTemplateId"] as! String
        }
        if dict.keys.contains("ServiceTemplateName") && dict["ServiceTemplateName"] != nil {
            self.serviceTemplateName = dict["ServiceTemplateName"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class AddImageRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accessibility: String?

    public var description_: String?

    public var imageId: String?

    public var imageUri: String?

    public var labels: [AddImageRequest.Labels]?

    public var name: String?

    public var size: Int32?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.size != nil {
            map["Size"] = self.size!
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
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageUri") && dict["ImageUri"] != nil {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [AddImageRequest.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = AddImageRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class AddImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddImageLabelsRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var labels: [AddImageLabelsRequest.Labels]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [AddImageLabelsRequest.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = AddImageLabelsRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
    }
}

public class AddImageLabelsResponseBody : Tea.TeaModel {
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

public class AddImageLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddImageLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddMemberRoleResponseBody : Tea.TeaModel {
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

public class AddMemberRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMemberRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddMemberRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCodeSourceRequest : Tea.TeaModel {
    public var accessibility: String?

    public var codeBranch: String?

    public var codeRepo: String?

    public var codeRepoAccessToken: String?

    public var codeRepoUserName: String?

    public var description_: String?

    public var displayName: String?

    public var mountPath: String?

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
        if self.codeBranch != nil {
            map["CodeBranch"] = self.codeBranch!
        }
        if self.codeRepo != nil {
            map["CodeRepo"] = self.codeRepo!
        }
        if self.codeRepoAccessToken != nil {
            map["CodeRepoAccessToken"] = self.codeRepoAccessToken!
        }
        if self.codeRepoUserName != nil {
            map["CodeRepoUserName"] = self.codeRepoUserName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
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
        if dict.keys.contains("CodeBranch") && dict["CodeBranch"] != nil {
            self.codeBranch = dict["CodeBranch"] as! String
        }
        if dict.keys.contains("CodeRepo") && dict["CodeRepo"] != nil {
            self.codeRepo = dict["CodeRepo"] as! String
        }
        if dict.keys.contains("CodeRepoAccessToken") && dict["CodeRepoAccessToken"] != nil {
            self.codeRepoAccessToken = dict["CodeRepoAccessToken"] as! String
        }
        if dict.keys.contains("CodeRepoUserName") && dict["CodeRepoUserName"] != nil {
            self.codeRepoUserName = dict["CodeRepoUserName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateCodeSourceResponseBody : Tea.TeaModel {
    public var codeSourceId: String?

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
        if self.codeSourceId != nil {
            map["CodeSourceId"] = self.codeSourceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCodeSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCodeSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCodeSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDatasetRequest : Tea.TeaModel {
    public var accessibility: String?

    public var dataSourceType: String?

    public var dataType: String?

    public var description_: String?

    public var labels: [Label]?

    public var name: String?

    public var options: String?

    public var property: String?

    public var providerType: String?

    public var sourceId: String?

    public var sourceType: String?

    public var uri: String?

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
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.property != nil {
            map["Property"] = self.property!
        }
        if self.providerType != nil {
            map["ProviderType"] = self.providerType!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
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
        if dict.keys.contains("DataSourceType") && dict["DataSourceType"] != nil {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("Property") && dict["Property"] != nil {
            self.property = dict["Property"] as! String
        }
        if dict.keys.contains("ProviderType") && dict["ProviderType"] != nil {
            self.providerType = dict["ProviderType"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateDatasetResponseBody : Tea.TeaModel {
    public var datasetId: String?

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
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
            self.datasetId = dict["DatasetId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDatasetLabelsRequest : Tea.TeaModel {
    public var labels: [Label]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
    }
}

public class CreateDatasetLabelsResponseBody : Tea.TeaModel {
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

public class CreateDatasetLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDatasetLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemberRequest : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var roles: [String]?

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
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var members: [CreateMemberRequest.Members]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [CreateMemberRequest.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = CreateMemberRequest.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
    }
}

public class CreateMemberResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var displayName: String?

        public var memberId: String?

        public var roles: [String]?

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
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var members: [CreateMemberResponseBody.Members]?

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
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [CreateMemberResponseBody.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = CreateMemberResponseBody.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelRequest : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var labels: [Label]?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelName: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var sourceId: String?

    public var sourceType: String?

    public var task: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.modelDescription != nil {
            map["ModelDescription"] = self.modelDescription!
        }
        if self.modelDoc != nil {
            map["ModelDoc"] = self.modelDoc!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.task != nil {
            map["Task"] = self.task!
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
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("ModelDescription") && dict["ModelDescription"] != nil {
            self.modelDescription = dict["ModelDescription"] as! String
        }
        if dict.keys.contains("ModelDoc") && dict["ModelDoc"] != nil {
            self.modelDoc = dict["ModelDoc"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("OrderNumber") && dict["OrderNumber"] != nil {
            self.orderNumber = dict["OrderNumber"] as! Int64
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Task") && dict["Task"] != nil {
            self.task = dict["Task"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateModelResponseBody : Tea.TeaModel {
    public var modelId: String?

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
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelLabelsRequest : Tea.TeaModel {
    public var labels: [Label]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
    }
}

public class CreateModelLabelsResponseBody : Tea.TeaModel {
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

public class CreateModelLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelVersionRequest : Tea.TeaModel {
    public var approvalStatus: String?

    public var formatType: String?

    public var frameworkType: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var metrics: [String: Any]?

    public var options: String?

    public var sourceId: String?

    public var sourceType: String?

    public var trainingSpec: [String: Any]?

    public var uri: String?

    public var versionDescription: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["ApprovalStatus"] = self.approvalStatus!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.frameworkType != nil {
            map["FrameworkType"] = self.frameworkType!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.trainingSpec != nil {
            map["TrainingSpec"] = self.trainingSpec!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalStatus") && dict["ApprovalStatus"] != nil {
            self.approvalStatus = dict["ApprovalStatus"] as! String
        }
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("FrameworkType") && dict["FrameworkType"] != nil {
            self.frameworkType = dict["FrameworkType"] as! String
        }
        if dict.keys.contains("InferenceSpec") && dict["InferenceSpec"] != nil {
            self.inferenceSpec = dict["InferenceSpec"] as! [String: Any]
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            self.metrics = dict["Metrics"] as! [String: Any]
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TrainingSpec") && dict["TrainingSpec"] != nil {
            self.trainingSpec = dict["TrainingSpec"] as! [String: Any]
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("VersionDescription") && dict["VersionDescription"] != nil {
            self.versionDescription = dict["VersionDescription"] as! String
        }
        if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateModelVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var versionName: String?

    public override init() {
        super.init()
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
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateModelVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateModelVersionLabelsRequest : Tea.TeaModel {
    public var labels: [Label]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
    }
}

public class CreateModelVersionLabelsResponseBody : Tea.TeaModel {
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

public class CreateModelVersionLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateModelVersionLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateModelVersionLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductOrdersRequest : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public class InstanceProperties : Tea.TeaModel {
            public var code: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
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
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var chargeType: String?

        public var duration: Int64?

        public var instanceProperties: [CreateProductOrdersRequest.Products.InstanceProperties]?

        public var orderType: String?

        public var pricingCycle: String?

        public var productCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.instanceProperties != nil {
                var tmp : [Any] = []
                for k in self.instanceProperties! {
                    tmp.append(k.toMap())
                }
                map["InstanceProperties"] = tmp
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.pricingCycle != nil {
                map["PricingCycle"] = self.pricingCycle!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("InstanceProperties") && dict["InstanceProperties"] != nil {
                var tmp : [CreateProductOrdersRequest.Products.InstanceProperties] = []
                for v in dict["InstanceProperties"] as! [Any] {
                    var model = CreateProductOrdersRequest.Products.InstanceProperties()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceProperties = tmp
            }
            if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
                self.orderType = dict["OrderType"] as! String
            }
            if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
                self.pricingCycle = dict["PricingCycle"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
        }
    }
    public var autoPay: Bool?

    public var products: [CreateProductOrdersRequest.Products]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["Products"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Products") && dict["Products"] != nil {
            var tmp : [CreateProductOrdersRequest.Products] = []
            for v in dict["Products"] as! [Any] {
                var model = CreateProductOrdersRequest.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
    }
}

public class CreateProductOrdersResponseBody : Tea.TeaModel {
    public var buyProductRequestId: String?

    public var message: String?

    public var orderId: String?

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
        if self.buyProductRequestId != nil {
            map["BuyProductRequestId"] = self.buyProductRequestId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BuyProductRequestId") && dict["BuyProductRequestId"] != nil {
            self.buyProductRequestId = dict["BuyProductRequestId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProductOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductOrdersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateProductOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var envTypes: [String]?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.envTypes != nil {
            map["EnvTypes"] = self.envTypes!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EnvTypes") && dict["EnvTypes"] != nil {
            self.envTypes = dict["EnvTypes"] as! [String]
        }
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkspaceResourceRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class Labels : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Quotas : Tea.TeaModel {
            public var id: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
            }
        }
        public var envType: String?

        public var groupName: String?

        public var isDefault: Bool?

        public var labels: [CreateWorkspaceResourceRequest.Resources.Labels]?

        public var name: String?

        public var productType: String?

        public var quotas: [CreateWorkspaceResourceRequest.Resources.Quotas]?

        public var resourceType: String?

        public var spec: [String: Any]?

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
            if self.envType != nil {
                map["EnvType"] = self.envType!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.quotas != nil {
                var tmp : [Any] = []
                for k in self.quotas! {
                    tmp.append(k.toMap())
                }
                map["Quotas"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
                self.envType = dict["EnvType"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                var tmp : [CreateWorkspaceResourceRequest.Resources.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = CreateWorkspaceResourceRequest.Resources.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("Quotas") && dict["Quotas"] != nil {
                var tmp : [CreateWorkspaceResourceRequest.Resources.Quotas] = []
                for v in dict["Quotas"] as! [Any] {
                    var model = CreateWorkspaceResourceRequest.Resources.Quotas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.quotas = tmp
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                self.spec = dict["Spec"] as! [String: Any]
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var option: String?

    public var resources: [CreateWorkspaceResourceRequest.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.option != nil {
            map["Option"] = self.option!
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
        if dict.keys.contains("Option") && dict["Option"] != nil {
            self.option = dict["Option"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [CreateWorkspaceResourceRequest.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = CreateWorkspaceResourceRequest.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class CreateWorkspaceResourceResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var requestId: String?

    public var resources: [CreateWorkspaceResourceResponseBody.Resources]?

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
            var tmp : [CreateWorkspaceResourceResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = CreateWorkspaceResourceResponseBody.Resources()
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

public class CreateWorkspaceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWorkspaceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCodeSourceResponseBody : Tea.TeaModel {
    public var codeSourceId: String?

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
        if self.codeSourceId != nil {
            map["CodeSourceId"] = self.codeSourceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteCodeSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCodeSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCodeSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatasetResponseBody : Tea.TeaModel {
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

public class DeleteDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatasetLabelsRequest : Tea.TeaModel {
    public var labelKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelKeys != nil {
            map["LabelKeys"] = self.labelKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelKeys") && dict["LabelKeys"] != nil {
            self.labelKeys = dict["LabelKeys"] as! String
        }
    }
}

public class DeleteDatasetLabelsResponseBody : Tea.TeaModel {
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

public class DeleteDatasetLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDatasetLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMembersRequest : Tea.TeaModel {
    public var memberIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberIds != nil {
            map["MemberIds"] = self.memberIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberIds") && dict["MemberIds"] != nil {
            self.memberIds = dict["MemberIds"] as! String
        }
    }
}

public class DeleteMembersResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelResponseBody : Tea.TeaModel {
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

public class DeleteModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelLabelsRequest : Tea.TeaModel {
    public var labelKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelKeys != nil {
            map["LabelKeys"] = self.labelKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelKeys") && dict["LabelKeys"] != nil {
            self.labelKeys = dict["LabelKeys"] as! String
        }
    }
}

public class DeleteModelLabelsResponseBody : Tea.TeaModel {
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

public class DeleteModelLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModelLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelVersionResponseBody : Tea.TeaModel {
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

public class DeleteModelVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModelVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteModelVersionLabelsRequest : Tea.TeaModel {
    public var labelKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelKeys != nil {
            map["LabelKeys"] = self.labelKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LabelKeys") && dict["LabelKeys"] != nil {
            self.labelKeys = dict["LabelKeys"] as! String
        }
    }
}

public class DeleteModelVersionLabelsResponseBody : Tea.TeaModel {
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

public class DeleteModelVersionLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteModelVersionLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteModelVersionLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkspaceResponseBody : Tea.TeaModel {
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

public class DeleteWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkspaceResourceRequest : Tea.TeaModel {
    public var groupName: String?

    public var labels: String?

    public var option: String?

    public var productType: String?

    public var resourceIds: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Option") && dict["Option"] != nil {
            self.option = dict["Option"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceIds") && dict["ResourceIds"] != nil {
            self.resourceIds = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class DeleteWorkspaceResourceResponseBody : Tea.TeaModel {
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

public class DeleteWorkspaceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkspaceResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWorkspaceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCodeSourceResponseBody : Tea.TeaModel {
    public var accessibility: String?

    public var codeBranch: String?

    public var codeCommit: String?

    public var codeRepo: String?

    public var codeRepoAccessToken: String?

    public var codeRepoUserName: String?

    public var codeSourceId: String?

    public var description_: String?

    public var displayName: String?

    public var gmtCreateTime: String?

    public var gmtModifyTime: String?

    public var mountPath: String?

    public var requestId: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.codeBranch != nil {
            map["CodeBranch"] = self.codeBranch!
        }
        if self.codeCommit != nil {
            map["CodeCommit"] = self.codeCommit!
        }
        if self.codeRepo != nil {
            map["CodeRepo"] = self.codeRepo!
        }
        if self.codeRepoAccessToken != nil {
            map["CodeRepoAccessToken"] = self.codeRepoAccessToken!
        }
        if self.codeRepoUserName != nil {
            map["CodeRepoUserName"] = self.codeRepoUserName!
        }
        if self.codeSourceId != nil {
            map["CodeSourceId"] = self.codeSourceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifyTime != nil {
            map["GmtModifyTime"] = self.gmtModifyTime!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("CodeBranch") && dict["CodeBranch"] != nil {
            self.codeBranch = dict["CodeBranch"] as! String
        }
        if dict.keys.contains("CodeCommit") && dict["CodeCommit"] != nil {
            self.codeCommit = dict["CodeCommit"] as! String
        }
        if dict.keys.contains("CodeRepo") && dict["CodeRepo"] != nil {
            self.codeRepo = dict["CodeRepo"] as! String
        }
        if dict.keys.contains("CodeRepoAccessToken") && dict["CodeRepoAccessToken"] != nil {
            self.codeRepoAccessToken = dict["CodeRepoAccessToken"] as! String
        }
        if dict.keys.contains("CodeRepoUserName") && dict["CodeRepoUserName"] != nil {
            self.codeRepoUserName = dict["CodeRepoUserName"] as! String
        }
        if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifyTime") && dict["GmtModifyTime"] != nil {
            self.gmtModifyTime = dict["GmtModifyTime"] as! String
        }
        if dict.keys.contains("MountPath") && dict["MountPath"] != nil {
            self.mountPath = dict["MountPath"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetCodeSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCodeSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetCodeSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatasetResponseBody : Tea.TeaModel {
    public var accessibility: String?

    public var dataSourceType: String?

    public var dataType: String?

    public var datasetId: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var name: String?

    public var options: String?

    public var ownerId: String?

    public var property: String?

    public var providerType: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var uri: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.property != nil {
            map["Property"] = self.property!
        }
        if self.providerType != nil {
            map["ProviderType"] = self.providerType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("DataSourceType") && dict["DataSourceType"] != nil {
            self.dataSourceType = dict["DataSourceType"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
            self.datasetId = dict["DatasetId"] as! String
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
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Property") && dict["Property"] != nil {
            self.property = dict["Property"] as! String
        }
        if dict.keys.contains("ProviderType") && dict["ProviderType"] != nil {
            self.providerType = dict["ProviderType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDefaultWorkspaceRequest : Tea.TeaModel {
    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
    }
}

public class GetDefaultWorkspaceResponseBody : Tea.TeaModel {
    public class Conditions : Tea.TeaModel {
        public var code: Int64?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class Owner : Tea.TeaModel {
        public var userId: String?

        public var userKp: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userKp != nil {
                map["UserKp"] = self.userKp!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserKp") && dict["UserKp"] != nil {
                self.userKp = dict["UserKp"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var conditions: [GetDefaultWorkspaceResponseBody.Conditions]?

    public var creator: String?

    public var description_: String?

    public var displayName: String?

    public var envTypes: [String]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var owner: GetDefaultWorkspaceResponseBody.Owner?

    public var requestId: String?

    public var status: String?

    public var workspaceId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.owner?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["Conditions"] = tmp
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.envTypes != nil {
            map["EnvTypes"] = self.envTypes!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.owner != nil {
            map["Owner"] = self.owner?.toMap()
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
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
            var tmp : [GetDefaultWorkspaceResponseBody.Conditions] = []
            for v in dict["Conditions"] as! [Any] {
                var model = GetDefaultWorkspaceResponseBody.Conditions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditions = tmp
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EnvTypes") && dict["EnvTypes"] != nil {
            self.envTypes = dict["EnvTypes"] as! [String]
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            var model = GetDefaultWorkspaceResponseBody.Owner()
            model.fromMap(dict["Owner"] as! [String: Any])
            self.owner = model
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
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
    }
}

public class GetDefaultWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDefaultWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDefaultWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageRequest : Tea.TeaModel {
    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
    }
}

public class GetImageResponseBody : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accessibility: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var imageUri: String?

    public var labels: [GetImageResponseBody.Labels]?

    public var name: String?

    public var parentUserId: String?

    public var requestId: String?

    public var size: Int32?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
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
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("ImageUri") && dict["ImageUri"] != nil {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [GetImageResponseBody.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = GetImageResponseBody.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
            self.parentUserId = dict["ParentUserId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMemberRequest : Tea.TeaModel {
    public var memberId: String?

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
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetMemberResponseBody : Tea.TeaModel {
    public var displayName: String?

    public var gmtCreateTime: String?

    public var memberId: String?

    public var memberName: String?

    public var requestId: String?

    public var roles: [String]?

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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.memberId != nil {
            map["MemberId"] = self.memberId!
        }
        if self.memberName != nil {
            map["MemberName"] = self.memberName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roles != nil {
            map["Roles"] = self.roles!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
            self.memberId = dict["MemberId"] as! String
        }
        if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
            self.memberName = dict["MemberName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Roles") && dict["Roles"] != nil {
            self.roles = dict["Roles"] as! [String]
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelResponseBody : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestVersion: ModelVersion?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelId: String?

    public var modelName: String?

    public var origin: String?

    public var ownerId: String?

    public var provider: String?

    public var requestId: String?

    public var task: String?

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
        try self.latestVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion?.toMap()
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
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("LatestVersion") && dict["LatestVersion"] != nil {
            var model = ModelVersion()
            model.fromMap(dict["LatestVersion"] as! [String: Any])
            self.latestVersion = model
        }
        if dict.keys.contains("ModelDescription") && dict["ModelDescription"] != nil {
            self.modelDescription = dict["ModelDescription"] as! String
        }
        if dict.keys.contains("ModelDoc") && dict["ModelDoc"] != nil {
            self.modelDoc = dict["ModelDoc"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Task") && dict["Task"] != nil {
            self.task = dict["Task"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class GetModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetModelVersionResponseBody : Tea.TeaModel {
    public var approvalStatus: String?

    public var formatType: String?

    public var frameworkType: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var options: String?

    public var ownerId: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var trainingSpec: [String: Any]?

    public var uri: String?

    public var userId: String?

    public var versionDescription: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["ApprovalStatus"] = self.approvalStatus!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.frameworkType != nil {
            map["FrameworkType"] = self.frameworkType!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.trainingSpec != nil {
            map["TrainingSpec"] = self.trainingSpec!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalStatus") && dict["ApprovalStatus"] != nil {
            self.approvalStatus = dict["ApprovalStatus"] as! String
        }
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("FrameworkType") && dict["FrameworkType"] != nil {
            self.frameworkType = dict["FrameworkType"] as! String
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("InferenceSpec") && dict["InferenceSpec"] != nil {
            self.inferenceSpec = dict["InferenceSpec"] as! [String: Any]
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TrainingSpec") && dict["TrainingSpec"] != nil {
            self.trainingSpec = dict["TrainingSpec"] as! [String: Any]
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("VersionDescription") && dict["VersionDescription"] != nil {
            self.versionDescription = dict["VersionDescription"] as! String
        }
        if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class GetModelVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetModelVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetModelVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPermissionRequest : Tea.TeaModel {
    public var accessibility: String?

    public var creator: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
    }
}

public class GetPermissionResponseBody : Tea.TeaModel {
    public class PermissionRules : Tea.TeaModel {
        public var accessibility: String?

        public var entityAccessType: String?

        public override init() {
            super.init()
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
            if self.entityAccessType != nil {
                map["EntityAccessType"] = self.entityAccessType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
                self.accessibility = dict["Accessibility"] as! String
            }
            if dict.keys.contains("EntityAccessType") && dict["EntityAccessType"] != nil {
                self.entityAccessType = dict["EntityAccessType"] as! String
            }
        }
    }
    public var permissionCode: String?

    public var permissionRules: [GetPermissionResponseBody.PermissionRules]?

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
        if self.permissionCode != nil {
            map["PermissionCode"] = self.permissionCode!
        }
        if self.permissionRules != nil {
            var tmp : [Any] = []
            for k in self.permissionRules! {
                tmp.append(k.toMap())
            }
            map["PermissionRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PermissionCode") && dict["PermissionCode"] != nil {
            self.permissionCode = dict["PermissionCode"] as! String
        }
        if dict.keys.contains("PermissionRules") && dict["PermissionRules"] != nil {
            var tmp : [GetPermissionResponseBody.PermissionRules] = []
            for v in dict["PermissionRules"] as! [Any] {
                var model = GetPermissionResponseBody.PermissionRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissionRules = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceTemplateResponseBody : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var ownerId: String?

    public var provider: String?

    public var requestId: String?

    public var serviceTemplateDescription: String?

    public var serviceTemplateDoc: String?

    public var serviceTemplateId: String?

    public var serviceTemplateName: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceTemplateDescription != nil {
            map["ServiceTemplateDescription"] = self.serviceTemplateDescription!
        }
        if self.serviceTemplateDoc != nil {
            map["ServiceTemplateDoc"] = self.serviceTemplateDoc!
        }
        if self.serviceTemplateId != nil {
            map["ServiceTemplateId"] = self.serviceTemplateId!
        }
        if self.serviceTemplateName != nil {
            map["ServiceTemplateName"] = self.serviceTemplateName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("InferenceSpec") && dict["InferenceSpec"] != nil {
            self.inferenceSpec = dict["InferenceSpec"] as! [String: Any]
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [Label] = []
            for v in dict["Labels"] as! [Any] {
                var model = Label()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceTemplateDescription") && dict["ServiceTemplateDescription"] != nil {
            self.serviceTemplateDescription = dict["ServiceTemplateDescription"] as! String
        }
        if dict.keys.contains("ServiceTemplateDoc") && dict["ServiceTemplateDoc"] != nil {
            self.serviceTemplateDoc = dict["ServiceTemplateDoc"] as! String
        }
        if dict.keys.contains("ServiceTemplateId") && dict["ServiceTemplateId"] != nil {
            self.serviceTemplateId = dict["ServiceTemplateId"] as! String
        }
        if dict.keys.contains("ServiceTemplateName") && dict["ServiceTemplateName"] != nil {
            self.serviceTemplateName = dict["ServiceTemplateName"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetServiceTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetServiceTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkspaceRequest : Tea.TeaModel {
    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
    }
}

public class GetWorkspaceResponseBody : Tea.TeaModel {
    public class Owner : Tea.TeaModel {
        public var displayName: String?

        public var userId: String?

        public var userKp: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userKp != nil {
                map["UserKp"] = self.userKp!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserKp") && dict["UserKp"] != nil {
                self.userKp = dict["UserKp"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var adminNames: [String]?

    public var creator: String?

    public var description_: String?

    public var displayName: String?

    public var envTypes: [String]?

    public var extraInfos: [String: Any]?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var isDefault: Bool?

    public var owner: GetWorkspaceResponseBody.Owner?

    public var requestId: String?

    public var status: String?

    public var workspaceId: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.owner?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminNames != nil {
            map["AdminNames"] = self.adminNames!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.envTypes != nil {
            map["EnvTypes"] = self.envTypes!
        }
        if self.extraInfos != nil {
            map["ExtraInfos"] = self.extraInfos!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.isDefault != nil {
            map["IsDefault"] = self.isDefault!
        }
        if self.owner != nil {
            map["Owner"] = self.owner?.toMap()
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
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdminNames") && dict["AdminNames"] != nil {
            self.adminNames = dict["AdminNames"] as! [String]
        }
        if dict.keys.contains("Creator") && dict["Creator"] != nil {
            self.creator = dict["Creator"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("EnvTypes") && dict["EnvTypes"] != nil {
            self.envTypes = dict["EnvTypes"] as! [String]
        }
        if dict.keys.contains("ExtraInfos") && dict["ExtraInfos"] != nil {
            self.extraInfos = dict["ExtraInfos"] as! [String: Any]
        }
        if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
            self.gmtCreateTime = dict["GmtCreateTime"] as! String
        }
        if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
            self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
        }
        if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
            self.isDefault = dict["IsDefault"] as! Bool
        }
        if dict.keys.contains("Owner") && dict["Owner"] != nil {
            var model = GetWorkspaceResponseBody.Owner()
            model.fromMap(dict["Owner"] as! [String: Any])
            self.owner = model
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
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
    }
}

public class GetWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCodeSourcesRequest : Tea.TeaModel {
    public var displayName: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
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
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
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
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListCodeSourcesResponseBody : Tea.TeaModel {
    public var codeSources: [CodeSourceItem]?

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
        if self.codeSources != nil {
            var tmp : [Any] = []
            for k in self.codeSources! {
                tmp.append(k.toMap())
            }
            map["CodeSources"] = tmp
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
        if dict.keys.contains("CodeSources") && dict["CodeSources"] != nil {
            var tmp : [CodeSourceItem] = []
            for v in dict["CodeSources"] as! [Any] {
                var model = CodeSourceItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.codeSources = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListCodeSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCodeSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListCodeSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatasetsRequest : Tea.TeaModel {
    public var dataSourceTypes: String?

    public var dataTypes: String?

    public var label: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var properties: String?

    public var sourceId: String?

    public var sourceTypes: String?

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
        if self.dataSourceTypes != nil {
            map["DataSourceTypes"] = self.dataSourceTypes!
        }
        if self.dataTypes != nil {
            map["DataTypes"] = self.dataTypes!
        }
        if self.label != nil {
            map["Label"] = self.label!
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
        if self.properties != nil {
            map["Properties"] = self.properties!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceTypes != nil {
            map["SourceTypes"] = self.sourceTypes!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceTypes") && dict["DataSourceTypes"] != nil {
            self.dataSourceTypes = dict["DataSourceTypes"] as! String
        }
        if dict.keys.contains("DataTypes") && dict["DataTypes"] != nil {
            self.dataTypes = dict["DataTypes"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
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
        if dict.keys.contains("Properties") && dict["Properties"] != nil {
            self.properties = dict["Properties"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceTypes") && dict["SourceTypes"] != nil {
            self.sourceTypes = dict["SourceTypes"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListDatasetsResponseBody : Tea.TeaModel {
    public var datasets: [Dataset]?

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
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["Datasets"] = tmp
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
        if dict.keys.contains("Datasets") && dict["Datasets"] != nil {
            var tmp : [Dataset] = []
            for v in dict["Datasets"] as! [Any] {
                var model = Dataset()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datasets = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListDatasetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDatasetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImageLabelsRequest : Tea.TeaModel {
    public var imageId: String?

    public var labelFilter: String?

    public var labelKeys: String?

    public var region: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.labelFilter != nil {
            map["LabelFilter"] = self.labelFilter!
        }
        if self.labelKeys != nil {
            map["LabelKeys"] = self.labelKeys!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("LabelFilter") && dict["LabelFilter"] != nil {
            self.labelFilter = dict["LabelFilter"] as! String
        }
        if dict.keys.contains("LabelKeys") && dict["LabelKeys"] != nil {
            self.labelKeys = dict["LabelKeys"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListImageLabelsResponseBody : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var labels: [ListImageLabelsResponseBody.Labels]?

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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
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
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [ListImageLabelsResponseBody.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = ListImageLabelsResponseBody.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListImageLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImageLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListImageLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var accessibility: String?

    public var labels: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentUserId: String?

    public var query: String?

    public var sortBy: String?

    public var userId: String?

    public var verbose: Bool?

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
        if self.labels != nil {
            map["Labels"] = self.labels!
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
        if self.parentUserId != nil {
            map["ParentUserId"] = self.parentUserId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
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
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            self.labels = dict["Labels"] as! String
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
        if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
            self.parentUserId = dict["ParentUserId"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class Labels : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var accessibility: String?

        public var description_: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var imageId: String?

        public var imageUri: String?

        public var labels: [ListImagesResponseBody.Images.Labels]?

        public var name: String?

        public var parentUserId: String?

        public var size: Int32?

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
            if self.accessibility != nil {
                map["Accessibility"] = self.accessibility!
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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageUri != nil {
                map["ImageUri"] = self.imageUri!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentUserId != nil {
                map["ParentUserId"] = self.parentUserId!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
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
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageUri") && dict["ImageUri"] != nil {
                self.imageUri = dict["ImageUri"] as! String
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                var tmp : [ListImagesResponseBody.Images.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = ListImagesResponseBody.Images.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentUserId") && dict["ParentUserId"] != nil {
                self.parentUserId = dict["ParentUserId"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var images: [ListImagesResponseBody.Images]?

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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
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
        if dict.keys.contains("Images") && dict["Images"] != nil {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = ListImagesResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMembersRequest : Tea.TeaModel {
    public var memberName: String?

    public var pageNumber: Int64?

    public var pageSize: Int32?

    public var roles: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberName != nil {
            map["MemberName"] = self.memberName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roles != nil {
            map["Roles"] = self.roles!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
            self.memberName = dict["MemberName"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Roles") && dict["Roles"] != nil {
            self.roles = dict["Roles"] as! String
        }
    }
}

public class ListMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var displayName: String?

        public var gmtCreateTime: String?

        public var memberId: String?

        public var memberName: String?

        public var roles: [String]?

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
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("MemberName") && dict["MemberName"] != nil {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("Roles") && dict["Roles"] != nil {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var members: [ListMembersResponseBody.Members]?

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
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
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
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [ListMembersResponseBody.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = ListMembersResponseBody.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelVersionsRequest : Tea.TeaModel {
    public var approvalStatus: String?

    public var formatType: String?

    public var frameworkType: String?

    public var label: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: String?

    public var sourceId: String?

    public var sourceType: String?

    public var versionName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["ApprovalStatus"] = self.approvalStatus!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.frameworkType != nil {
            map["FrameworkType"] = self.frameworkType!
        }
        if self.label != nil {
            map["Label"] = self.label!
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
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalStatus") && dict["ApprovalStatus"] != nil {
            self.approvalStatus = dict["ApprovalStatus"] as! String
        }
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("FrameworkType") && dict["FrameworkType"] != nil {
            self.frameworkType = dict["FrameworkType"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
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
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("VersionName") && dict["VersionName"] != nil {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class ListModelVersionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int64?

    public var versions: [ModelVersion]?

    public override init() {
        super.init()
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
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["Versions"] = tmp
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
        if dict.keys.contains("Versions") && dict["Versions"] != nil {
            var tmp : [ModelVersion] = []
            for v in dict["Versions"] as! [Any] {
                var model = ModelVersion()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.versions = tmp
        }
    }
}

public class ListModelVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModelVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
    public var domain: String?

    public var label: String?

    public var modelName: String?

    public var order: String?

    public var origin: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public var query: String?

    public var sortBy: String?

    public var souceType: String?

    public var sourceId: String?

    public var task: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.souceType != nil {
            map["SouceType"] = self.souceType!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("SouceType") && dict["SouceType"] != nil {
            self.souceType = dict["SouceType"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("Task") && dict["Task"] != nil {
            self.task = dict["Task"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListModelsResponseBody : Tea.TeaModel {
    public var models: [Model]?

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
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["Models"] = tmp
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
        if dict.keys.contains("Models") && dict["Models"] != nil {
            var tmp : [Model] = []
            for v in dict["Models"] as! [Any] {
                var model = Model()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.models = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPermissionsResponseBody : Tea.TeaModel {
    public class Permissions : Tea.TeaModel {
        public class PermissionRules : Tea.TeaModel {
            public var accessibility: String?

            public var entityAccessType: String?

            public override init() {
                super.init()
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
                if self.entityAccessType != nil {
                    map["EntityAccessType"] = self.entityAccessType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
                    self.accessibility = dict["Accessibility"] as! String
                }
                if dict.keys.contains("EntityAccessType") && dict["EntityAccessType"] != nil {
                    self.entityAccessType = dict["EntityAccessType"] as! String
                }
            }
        }
        public var permissionCode: String?

        public var permissionRules: [ListPermissionsResponseBody.Permissions.PermissionRules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.permissionCode != nil {
                map["PermissionCode"] = self.permissionCode!
            }
            if self.permissionRules != nil {
                var tmp : [Any] = []
                for k in self.permissionRules! {
                    tmp.append(k.toMap())
                }
                map["PermissionRules"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PermissionCode") && dict["PermissionCode"] != nil {
                self.permissionCode = dict["PermissionCode"] as! String
            }
            if dict.keys.contains("PermissionRules") && dict["PermissionRules"] != nil {
                var tmp : [ListPermissionsResponseBody.Permissions.PermissionRules] = []
                for v in dict["PermissionRules"] as! [Any] {
                    var model = ListPermissionsResponseBody.Permissions.PermissionRules()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.permissionRules = tmp
            }
        }
    }
    public var permissions: [ListPermissionsResponseBody.Permissions]?

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
        if self.permissions != nil {
            var tmp : [Any] = []
            for k in self.permissions! {
                tmp.append(k.toMap())
            }
            map["Permissions"] = tmp
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
        if dict.keys.contains("Permissions") && dict["Permissions"] != nil {
            var tmp : [ListPermissionsResponseBody.Permissions] = []
            for v in dict["Permissions"] as! [Any] {
                var model = ListPermissionsResponseBody.Permissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissions = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPermissionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPermissionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var productCodes: String?

    public var serviceCodes: String?

    public var verbose: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCodes != nil {
            map["ProductCodes"] = self.productCodes!
        }
        if self.serviceCodes != nil {
            map["ServiceCodes"] = self.serviceCodes!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductCodes") && dict["ProductCodes"] != nil {
            self.productCodes = dict["ProductCodes"] as! String
        }
        if dict.keys.contains("ServiceCodes") && dict["ServiceCodes"] != nil {
            self.serviceCodes = dict["ServiceCodes"] as! String
        }
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var hasPermissionToPurchase: Bool?

        public var isPurchased: Bool?

        public var productCode: String?

        public var productInstanceId: String?

        public var purchaseUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasPermissionToPurchase != nil {
                map["HasPermissionToPurchase"] = self.hasPermissionToPurchase!
            }
            if self.isPurchased != nil {
                map["IsPurchased"] = self.isPurchased!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productInstanceId != nil {
                map["ProductInstanceId"] = self.productInstanceId!
            }
            if self.purchaseUrl != nil {
                map["PurchaseUrl"] = self.purchaseUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasPermissionToPurchase") && dict["HasPermissionToPurchase"] != nil {
                self.hasPermissionToPurchase = dict["HasPermissionToPurchase"] as! Bool
            }
            if dict.keys.contains("IsPurchased") && dict["IsPurchased"] != nil {
                self.isPurchased = dict["IsPurchased"] as! Bool
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductInstanceId") && dict["ProductInstanceId"] != nil {
                self.productInstanceId = dict["ProductInstanceId"] as! String
            }
            if dict.keys.contains("PurchaseUrl") && dict["PurchaseUrl"] != nil {
                self.purchaseUrl = dict["PurchaseUrl"] as! String
            }
        }
    }
    public class Services : Tea.TeaModel {
        public var isOpen: Bool?

        public var openUrl: String?

        public var serviceCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isOpen != nil {
                map["IsOpen"] = self.isOpen!
            }
            if self.openUrl != nil {
                map["OpenUrl"] = self.openUrl!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsOpen") && dict["IsOpen"] != nil {
                self.isOpen = dict["IsOpen"] as! Bool
            }
            if dict.keys.contains("OpenUrl") && dict["OpenUrl"] != nil {
                self.openUrl = dict["OpenUrl"] as! String
            }
            if dict.keys.contains("ServiceCode") && dict["ServiceCode"] != nil {
                self.serviceCode = dict["ServiceCode"] as! String
            }
        }
    }
    public var products: [ListProductsResponseBody.Products]?

    public var requestId: String?

    public var services: [ListProductsResponseBody.Services]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["Products"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Products") && dict["Products"] != nil {
            var tmp : [ListProductsResponseBody.Products] = []
            for v in dict["Products"] as! [Any] {
                var model = ListProductsResponseBody.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") && dict["Services"] != nil {
            var tmp : [ListProductsResponseBody.Services] = []
            for v in dict["Services"] as! [Any] {
                var model = ListProductsResponseBody.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQuotasRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class ListQuotasResponseBody : Tea.TeaModel {
    public class Quotas : Tea.TeaModel {
        public class Specs : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var displayName: String?

        public var id: String?

        public var mode: String?

        public var name: String?

        public var productCode: String?

        public var quotaType: String?

        public var specs: [ListQuotasResponseBody.Quotas.Specs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaType != nil {
                map["QuotaType"] = self.quotaType!
            }
            if self.specs != nil {
                var tmp : [Any] = []
                for k in self.specs! {
                    tmp.append(k.toMap())
                }
                map["Specs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Mode") && dict["Mode"] != nil {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaType") && dict["QuotaType"] != nil {
                self.quotaType = dict["QuotaType"] as! String
            }
            if dict.keys.contains("Specs") && dict["Specs"] != nil {
                var tmp : [ListQuotasResponseBody.Quotas.Specs] = []
                for v in dict["Specs"] as! [Any] {
                    var model = ListQuotasResponseBody.Quotas.Specs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.specs = tmp
            }
        }
    }
    public var quotas: [ListQuotasResponseBody.Quotas]?

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
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
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
        if dict.keys.contains("Quotas") && dict["Quotas"] != nil {
            var tmp : [ListQuotasResponseBody.Quotas] = []
            for v in dict["Quotas"] as! [Any] {
                var model = ListQuotasResponseBody.Quotas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.quotas = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListQuotasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var groupName: String?

    public var labels: String?

    public var option: String?

    public var pageNumber: Int64?

    public var pageSize: Int32?

    public var productTypes: String?

    public var quotaIds: String?

    public var resourceName: String?

    public var resourceTypes: String?

    public var verbose: Bool?

    public var verboseFields: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productTypes != nil {
            map["ProductTypes"] = self.productTypes!
        }
        if self.quotaIds != nil {
            map["QuotaIds"] = self.quotaIds!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.verboseFields != nil {
            map["VerboseFields"] = self.verboseFields!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            self.labels = dict["Labels"] as! String
        }
        if dict.keys.contains("Option") && dict["Option"] != nil {
            self.option = dict["Option"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductTypes") && dict["ProductTypes"] != nil {
            self.productTypes = dict["ProductTypes"] as! String
        }
        if dict.keys.contains("QuotaIds") && dict["QuotaIds"] != nil {
            self.quotaIds = dict["QuotaIds"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceTypes") && dict["ResourceTypes"] != nil {
            self.resourceTypes = dict["ResourceTypes"] as! String
        }
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
        if dict.keys.contains("VerboseFields") && dict["VerboseFields"] != nil {
            self.verboseFields = dict["VerboseFields"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class Encryption : Tea.TeaModel {
            public var algorithm: String?

            public var enabled: Bool?

            public var key: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.algorithm != nil {
                    map["Algorithm"] = self.algorithm!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
                    self.algorithm = dict["Algorithm"] as! String
                }
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
            }
        }
        public class Executor : Tea.TeaModel {
            public var ownerId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! String
                }
            }
        }
        public class Labels : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public class Quotas : Tea.TeaModel {
            public class Specs : Tea.TeaModel {
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var cardType: String?

            public var displayName: String?

            public var id: String?

            public var mode: String?

            public var name: String?

            public var productCode: String?

            public var quotaType: String?

            public var specs: [ListResourcesResponseBody.Resources.Quotas.Specs]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardType != nil {
                    map["CardType"] = self.cardType!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.quotaType != nil {
                    map["QuotaType"] = self.quotaType!
                }
                if self.specs != nil {
                    var tmp : [Any] = []
                    for k in self.specs! {
                        tmp.append(k.toMap())
                    }
                    map["Specs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CardType") && dict["CardType"] != nil {
                    self.cardType = dict["CardType"] as! String
                }
                if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("QuotaType") && dict["QuotaType"] != nil {
                    self.quotaType = dict["QuotaType"] as! String
                }
                if dict.keys.contains("Specs") && dict["Specs"] != nil {
                    var tmp : [ListResourcesResponseBody.Resources.Quotas.Specs] = []
                    for v in dict["Specs"] as! [Any] {
                        var model = ListResourcesResponseBody.Resources.Quotas.Specs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.specs = tmp
                }
            }
        }
        public var encryption: ListResourcesResponseBody.Resources.Encryption?

        public var envType: String?

        public var executor: ListResourcesResponseBody.Resources.Executor?

        public var gmtCreateTime: String?

        public var groupName: String?

        public var id: String?

        public var isDefault: Bool?

        public var labels: [ListResourcesResponseBody.Resources.Labels]?

        public var name: String?

        public var productType: String?

        public var quotas: [ListResourcesResponseBody.Resources.Quotas]?

        public var resourceType: String?

        public var spec: [String: Any]?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.encryption?.validate()
            try self.executor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.encryption != nil {
                map["Encryption"] = self.encryption?.toMap()
            }
            if self.envType != nil {
                map["EnvType"] = self.envType!
            }
            if self.executor != nil {
                map["Executor"] = self.executor?.toMap()
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.quotas != nil {
                var tmp : [Any] = []
                for k in self.quotas! {
                    tmp.append(k.toMap())
                }
                map["Quotas"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Encryption") && dict["Encryption"] != nil {
                var model = ListResourcesResponseBody.Resources.Encryption()
                model.fromMap(dict["Encryption"] as! [String: Any])
                self.encryption = model
            }
            if dict.keys.contains("EnvType") && dict["EnvType"] != nil {
                self.envType = dict["EnvType"] as! String
            }
            if dict.keys.contains("Executor") && dict["Executor"] != nil {
                var model = ListResourcesResponseBody.Resources.Executor()
                model.fromMap(dict["Executor"] as! [String: Any])
                self.executor = model
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Labels") && dict["Labels"] != nil {
                var tmp : [ListResourcesResponseBody.Resources.Labels] = []
                for v in dict["Labels"] as! [Any] {
                    var model = ListResourcesResponseBody.Resources.Labels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("Quotas") && dict["Quotas"] != nil {
                var tmp : [ListResourcesResponseBody.Resources.Quotas] = []
                for v in dict["Quotas"] as! [Any] {
                    var model = ListResourcesResponseBody.Resources.Quotas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.quotas = tmp
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                self.spec = dict["Spec"] as! [String: Any]
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var resources: [ListResourcesResponseBody.Resources]?

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
            var tmp : [ListResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = ListResourcesResponseBody.Resources()
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

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServiceTemplatesRequest : Tea.TeaModel {
    public var label: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public var query: String?

    public var serviceTemplateName: String?

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
        if self.label != nil {
            map["Label"] = self.label!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.serviceTemplateName != nil {
            map["ServiceTemplateName"] = self.serviceTemplateName!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
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
        if dict.keys.contains("Provider") && dict["Provider"] != nil {
            self.provider = dict["Provider"] as! String
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("ServiceTemplateName") && dict["ServiceTemplateName"] != nil {
            self.serviceTemplateName = dict["ServiceTemplateName"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListServiceTemplatesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceTemplates: [ServiceTemplate]?

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
        if self.serviceTemplates != nil {
            var tmp : [Any] = []
            for k in self.serviceTemplates! {
                tmp.append(k.toMap())
            }
            map["ServiceTemplates"] = tmp
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
        if dict.keys.contains("ServiceTemplates") && dict["ServiceTemplates"] != nil {
            var tmp : [ServiceTemplate] = []
            for v in dict["ServiceTemplates"] as! [Any] {
                var model = ServiceTemplate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceTemplates = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListServiceTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListServiceTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkspaceUsersRequest : Tea.TeaModel {
    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ListWorkspaceUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var users: [ListWorkspaceUsersResponseBody.Users]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
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
            var tmp : [ListWorkspaceUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListWorkspaceUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class ListWorkspaceUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspaceUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWorkspaceUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkspacesRequest : Tea.TeaModel {
    public var fields: String?

    public var moduleList: String?

    public var option: String?

    public var order: String?

    public var pageNumber: Int64?

    public var pageSize: Int32?

    public var sortBy: String?

    public var status: String?

    public var verbose: Bool?

    public var workspaceIds: String?

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
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.moduleList != nil {
            map["ModuleList"] = self.moduleList!
        }
        if self.option != nil {
            map["Option"] = self.option!
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
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceIds != nil {
            map["WorkspaceIds"] = self.workspaceIds!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
            self.fields = dict["Fields"] as! String
        }
        if dict.keys.contains("ModuleList") && dict["ModuleList"] != nil {
            self.moduleList = dict["ModuleList"] as! String
        }
        if dict.keys.contains("Option") && dict["Option"] != nil {
            self.option = dict["Option"] as! String
        }
        if dict.keys.contains("Order") && dict["Order"] != nil {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
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
        if dict.keys.contains("Verbose") && dict["Verbose"] != nil {
            self.verbose = dict["Verbose"] as! Bool
        }
        if dict.keys.contains("WorkspaceIds") && dict["WorkspaceIds"] != nil {
            self.workspaceIds = dict["WorkspaceIds"] as! String
        }
        if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
            self.workspaceName = dict["WorkspaceName"] as! String
        }
    }
}

public class ListWorkspacesResponseBody : Tea.TeaModel {
    public class Workspaces : Tea.TeaModel {
        public var adminNames: [String]?

        public var creator: String?

        public var description_: String?

        public var envTypes: [String]?

        public var extraInfos: [String: Any]?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var isDefault: Bool?

        public var status: String?

        public var workspaceId: String?

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
            if self.adminNames != nil {
                map["AdminNames"] = self.adminNames!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.envTypes != nil {
                map["EnvTypes"] = self.envTypes!
            }
            if self.extraInfos != nil {
                map["ExtraInfos"] = self.extraInfos!
            }
            if self.gmtCreateTime != nil {
                map["GmtCreateTime"] = self.gmtCreateTime!
            }
            if self.gmtModifiedTime != nil {
                map["GmtModifiedTime"] = self.gmtModifiedTime!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdminNames") && dict["AdminNames"] != nil {
                self.adminNames = dict["AdminNames"] as! [String]
            }
            if dict.keys.contains("Creator") && dict["Creator"] != nil {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EnvTypes") && dict["EnvTypes"] != nil {
                self.envTypes = dict["EnvTypes"] as! [String]
            }
            if dict.keys.contains("ExtraInfos") && dict["ExtraInfos"] != nil {
                self.extraInfos = dict["ExtraInfos"] as! [String: Any]
            }
            if dict.keys.contains("GmtCreateTime") && dict["GmtCreateTime"] != nil {
                self.gmtCreateTime = dict["GmtCreateTime"] as! String
            }
            if dict.keys.contains("GmtModifiedTime") && dict["GmtModifiedTime"] != nil {
                self.gmtModifiedTime = dict["GmtModifiedTime"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
                self.workspaceName = dict["WorkspaceName"] as! String
            }
        }
    }
    public var requestId: String?

    public var resourceLimits: [String: Any]?

    public var totalCount: Int64?

    public var workspaces: [ListWorkspacesResponseBody.Workspaces]?

    public override init() {
        super.init()
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
        if self.resourceLimits != nil {
            map["ResourceLimits"] = self.resourceLimits!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workspaces != nil {
            var tmp : [Any] = []
            for k in self.workspaces! {
                tmp.append(k.toMap())
            }
            map["Workspaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceLimits") && dict["ResourceLimits"] != nil {
            self.resourceLimits = dict["ResourceLimits"] as! [String: Any]
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Workspaces") && dict["Workspaces"] != nil {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in dict["Workspaces"] as! [Any] {
                var model = ListWorkspacesResponseBody.Workspaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workspaces = tmp
        }
    }
}

public class ListWorkspacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListWorkspacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishCodeSourceResponseBody : Tea.TeaModel {
    public var codeSourceId: String?

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
        if self.codeSourceId != nil {
            map["CodeSourceId"] = self.codeSourceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeSourceId") && dict["CodeSourceId"] != nil {
            self.codeSourceId = dict["CodeSourceId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PublishCodeSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishCodeSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishCodeSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishDatasetResponseBody : Tea.TeaModel {
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

public class PublishDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublishImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PublishImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = PublishImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveImageResponseBody : Tea.TeaModel {
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

public class RemoveImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveImageLabelsResponseBody : Tea.TeaModel {
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

public class RemoveImageLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveImageLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveImageLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveMemberRoleResponseBody : Tea.TeaModel {
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

public class RemoveMemberRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveMemberRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveMemberRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDatasetRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var options: String?

    public override init() {
        super.init()
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
        if self.options != nil {
            map["Options"] = self.options!
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
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
    }
}

public class UpdateDatasetResponseBody : Tea.TeaModel {
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

public class UpdateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDefaultWorkspaceRequest : Tea.TeaModel {
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class UpdateDefaultWorkspaceResponseBody : Tea.TeaModel {
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

public class UpdateDefaultWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDefaultWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDefaultWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModelRequest : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelName: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var sourceId: String?

    public var sourceType: String?

    public var task: String?

    public override init() {
        super.init()
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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.modelDescription != nil {
            map["ModelDescription"] = self.modelDescription!
        }
        if self.modelDoc != nil {
            map["ModelDoc"] = self.modelDoc!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
        }
        if self.orderNumber != nil {
            map["OrderNumber"] = self.orderNumber!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accessibility") && dict["Accessibility"] != nil {
            self.accessibility = dict["Accessibility"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("ModelDescription") && dict["ModelDescription"] != nil {
            self.modelDescription = dict["ModelDescription"] as! String
        }
        if dict.keys.contains("ModelDoc") && dict["ModelDoc"] != nil {
            self.modelDoc = dict["ModelDoc"] as! String
        }
        if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
            self.modelName = dict["ModelName"] as! String
        }
        if dict.keys.contains("OrderNumber") && dict["OrderNumber"] != nil {
            self.orderNumber = dict["OrderNumber"] as! Int64
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Task") && dict["Task"] != nil {
            self.task = dict["Task"] as! String
        }
    }
}

public class UpdateModelResponseBody : Tea.TeaModel {
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

public class UpdateModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateModelVersionRequest : Tea.TeaModel {
    public var approvalStatus: String?

    public var inferenceSpec: [String: Any]?

    public var metrics: [String: Any]?

    public var options: String?

    public var sourceId: String?

    public var sourceType: String?

    public var trainingSpec: [String: Any]?

    public var versionDescription: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.approvalStatus != nil {
            map["ApprovalStatus"] = self.approvalStatus!
        }
        if self.inferenceSpec != nil {
            map["InferenceSpec"] = self.inferenceSpec!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.trainingSpec != nil {
            map["TrainingSpec"] = self.trainingSpec!
        }
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApprovalStatus") && dict["ApprovalStatus"] != nil {
            self.approvalStatus = dict["ApprovalStatus"] as! String
        }
        if dict.keys.contains("InferenceSpec") && dict["InferenceSpec"] != nil {
            self.inferenceSpec = dict["InferenceSpec"] as! [String: Any]
        }
        if dict.keys.contains("Metrics") && dict["Metrics"] != nil {
            self.metrics = dict["Metrics"] as! [String: Any]
        }
        if dict.keys.contains("Options") && dict["Options"] != nil {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TrainingSpec") && dict["TrainingSpec"] != nil {
            self.trainingSpec = dict["TrainingSpec"] as! [String: Any]
        }
        if dict.keys.contains("VersionDescription") && dict["VersionDescription"] != nil {
            self.versionDescription = dict["VersionDescription"] as! String
        }
    }
}

public class UpdateModelVersionResponseBody : Tea.TeaModel {
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

public class UpdateModelVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateModelVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateModelVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
    }
}

public class UpdateWorkspaceResponseBody : Tea.TeaModel {
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

public class UpdateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkspaceResourceRequest : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var groupName: String?

    public var isDefault: Bool?

    public var labels: [UpdateWorkspaceResourceRequest.Labels]?

    public var productType: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var spec: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.isDefault != nil {
            map["IsDefault"] = self.isDefault!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.spec != nil {
            map["Spec"] = self.spec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
            self.isDefault = dict["IsDefault"] as! Bool
        }
        if dict.keys.contains("Labels") && dict["Labels"] != nil {
            var tmp : [UpdateWorkspaceResourceRequest.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = UpdateWorkspaceResourceRequest.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("ResourceIds") && dict["ResourceIds"] != nil {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Spec") && dict["Spec"] != nil {
            self.spec = dict["Spec"] as! [String: Any]
        }
    }
}

public class UpdateWorkspaceResourceResponseBody : Tea.TeaModel {
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

public class UpdateWorkspaceResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateWorkspaceResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
