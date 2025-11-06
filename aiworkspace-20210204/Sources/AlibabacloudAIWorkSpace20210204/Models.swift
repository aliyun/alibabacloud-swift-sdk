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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CodeBranch"] as? String {
            self.codeBranch = value
        }
        if let value = dict["CodeCommit"] as? String {
            self.codeCommit = value
        }
        if let value = dict["CodeRepo"] as? String {
            self.codeRepo = value
        }
        if let value = dict["CodeRepoAccessToken"] as? String {
            self.codeRepoAccessToken = value
        }
        if let value = dict["CodeRepoUserName"] as? String {
            self.codeRepoUserName = value
        }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class Collection : Tea.TeaModel {
    public var collectionName: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var ownerId: String?

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
        if self.collectionName != nil {
            map["CollectionName"] = self.collectionName!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CollectionName"] as? String {
            self.collectionName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class Connection : Tea.TeaModel {
    public class Models : Tea.TeaModel {
        public var displayName: String?

        public var model: String?

        public var modelType: String?

        public var toolCall: Bool?

        public override init() {
            super.init()
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
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.toolCall != nil {
                map["ToolCall"] = self.toolCall!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["ToolCall"] as? Bool {
                self.toolCall = value
            }
        }
    }
    public class ResourceMeta : Tea.TeaModel {
        public var extra: String?

        public var instanceId: String?

        public var instanceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
        }
    }
    public var accessibility: String?

    public var configs: [String: String]?

    public var connectionId: String?

    public var connectionName: String?

    public var connectionType: String?

    public var creator: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var models: [Connection.Models]?

    public var resourceMeta: Connection.ResourceMeta?

    public var secrets: [String: String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.connectionId != nil {
            map["ConnectionId"] = self.connectionId!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionType != nil {
            map["ConnectionType"] = self.connectionType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
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
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["Models"] = tmp
        }
        if self.resourceMeta != nil {
            map["ResourceMeta"] = self.resourceMeta?.toMap()
        }
        if self.secrets != nil {
            map["Secrets"] = self.secrets!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Configs"] as? [String: String] {
            self.configs = value
        }
        if let value = dict["ConnectionId"] as? String {
            self.connectionId = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionType"] as? String {
            self.connectionType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Models"] as? [Any?] {
            var tmp : [Connection.Models] = []
            for v in value {
                if v != nil {
                    var model = Connection.Models()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["ResourceMeta"] as? [String: Any?] {
            var model = Connection.ResourceMeta()
            model.fromMap(value)
            self.resourceMeta = model
        }
        if let value = dict["Secrets"] as? [String: String] {
            self.secrets = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class Dataset : Tea.TeaModel {
    public class SharingConfig : Tea.TeaModel {
        public var sharedTo: [DatasetShareRelationship]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sharedTo != nil {
                var tmp : [Any] = []
                for k in self.sharedTo! {
                    tmp.append(k.toMap())
                }
                map["SharedTo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SharedTo"] as? [Any?] {
                var tmp : [DatasetShareRelationship] = []
                for v in value {
                    if v != nil {
                        var model = DatasetShareRelationship()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sharedTo = tmp
            }
        }
    }
    public var accessibility: String?

    public var dataSourceType: String?

    public var dataType: String?

    public var datasetId: String?

    public var description_: String?

    public var edition: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var importInfo: String?

    public var isShared: Bool?

    public var labels: [Label]?

    public var latestVersion: DatasetVersion?

    public var mountAccess: String?

    public var mountAccessReadWriteRoleIdList: [String]?

    public var name: String?

    public var options: String?

    public var ownerId: String?

    public var property: String?

    public var providerType: String?

    public var sharedFrom: DatasetShareRelationship?

    public var sharingConfig: Dataset.SharingConfig?

    public var sourceDatasetId: String?

    public var sourceDatasetVersion: String?

    public var sourceId: String?

    public var sourceType: String?

    public var tagTemplateType: String?

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
        try self.latestVersion?.validate()
        try self.sharedFrom?.validate()
        try self.sharingConfig?.validate()
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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.importInfo != nil {
            map["ImportInfo"] = self.importInfo!
        }
        if self.isShared != nil {
            map["IsShared"] = self.isShared!
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
        if self.mountAccess != nil {
            map["MountAccess"] = self.mountAccess!
        }
        if self.mountAccessReadWriteRoleIdList != nil {
            map["MountAccessReadWriteRoleIdList"] = self.mountAccessReadWriteRoleIdList!
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
        if self.sharedFrom != nil {
            map["SharedFrom"] = self.sharedFrom?.toMap()
        }
        if self.sharingConfig != nil {
            map["SharingConfig"] = self.sharingConfig?.toMap()
        }
        if self.sourceDatasetId != nil {
            map["SourceDatasetId"] = self.sourceDatasetId!
        }
        if self.sourceDatasetVersion != nil {
            map["SourceDatasetVersion"] = self.sourceDatasetVersion!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.tagTemplateType != nil {
            map["TagTemplateType"] = self.tagTemplateType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ImportInfo"] as? String {
            self.importInfo = value
        }
        if let value = dict["IsShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? [String: Any?] {
            var model = DatasetVersion()
            model.fromMap(value)
            self.latestVersion = model
        }
        if let value = dict["MountAccess"] as? String {
            self.mountAccess = value
        }
        if let value = dict["MountAccessReadWriteRoleIdList"] as? [String] {
            self.mountAccessReadWriteRoleIdList = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Property"] as? String {
            self.property = value
        }
        if let value = dict["ProviderType"] as? String {
            self.providerType = value
        }
        if let value = dict["SharedFrom"] as? [String: Any?] {
            var model = DatasetShareRelationship()
            model.fromMap(value)
            self.sharedFrom = model
        }
        if let value = dict["SharingConfig"] as? [String: Any?] {
            var model = Dataset.SharingConfig()
            model.fromMap(value)
            self.sharingConfig = model
        }
        if let value = dict["SourceDatasetId"] as? String {
            self.sourceDatasetId = value
        }
        if let value = dict["SourceDatasetVersion"] as? String {
            self.sourceDatasetVersion = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TagTemplateType"] as? String {
            self.tagTemplateType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DatasetFileMeta : Tea.TeaModel {
    public var contentType: String?

    public var dataSize: Int64?

    public var datasetFileMetaId: String?

    public var downloadUrl: String?

    public var fileCreateTime: String?

    public var fileFingerPrint: String?

    public var fileName: String?

    public var fileType: String?

    public var fileUpdateTime: String?

    public var metaAttributes: String?

    public var score: Double?

    public var semanticIndexJobId: String?

    public var semanticIndexUpdateTime: String?

    public var tags: String?

    public var thumbnailUrl: String?

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
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.datasetFileMetaId != nil {
            map["DatasetFileMetaId"] = self.datasetFileMetaId!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.fileCreateTime != nil {
            map["FileCreateTime"] = self.fileCreateTime!
        }
        if self.fileFingerPrint != nil {
            map["FileFingerPrint"] = self.fileFingerPrint!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileUpdateTime != nil {
            map["FileUpdateTime"] = self.fileUpdateTime!
        }
        if self.metaAttributes != nil {
            map["MetaAttributes"] = self.metaAttributes!
        }
        if self.score != nil {
            map["Score"] = self.score!
        }
        if self.semanticIndexJobId != nil {
            map["SemanticIndexJobId"] = self.semanticIndexJobId!
        }
        if self.semanticIndexUpdateTime != nil {
            map["SemanticIndexUpdateTime"] = self.semanticIndexUpdateTime!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.thumbnailUrl != nil {
            map["ThumbnailUrl"] = self.thumbnailUrl!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DatasetFileMetaId"] as? String {
            self.datasetFileMetaId = value
        }
        if let value = dict["DownloadUrl"] as? String {
            self.downloadUrl = value
        }
        if let value = dict["FileCreateTime"] as? String {
            self.fileCreateTime = value
        }
        if let value = dict["FileFingerPrint"] as? String {
            self.fileFingerPrint = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileUpdateTime"] as? String {
            self.fileUpdateTime = value
        }
        if let value = dict["MetaAttributes"] as? String {
            self.metaAttributes = value
        }
        if let value = dict["Score"] as? Double {
            self.score = value
        }
        if let value = dict["SemanticIndexJobId"] as? String {
            self.semanticIndexJobId = value
        }
        if let value = dict["SemanticIndexUpdateTime"] as? String {
            self.semanticIndexUpdateTime = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["ThumbnailUrl"] as? String {
            self.thumbnailUrl = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class DatasetFileMetaConentUpdate : Tea.TeaModel {
    public var comment: String?

    public var contentType: String?

    public var dataSize: Int64?

    public var datasetFileMetaId: String?

    public var fileCreateTime: String?

    public var fileFingerPrint: String?

    public var fileName: String?

    public var fileType: String?

    public var fileUpdateTime: String?

    public var metaAttributes: String?

    public var semanticIndexJobId: String?

    public var semanticIndexUpdateTime: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.datasetFileMetaId != nil {
            map["DatasetFileMetaId"] = self.datasetFileMetaId!
        }
        if self.fileCreateTime != nil {
            map["FileCreateTime"] = self.fileCreateTime!
        }
        if self.fileFingerPrint != nil {
            map["FileFingerPrint"] = self.fileFingerPrint!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileUpdateTime != nil {
            map["FileUpdateTime"] = self.fileUpdateTime!
        }
        if self.metaAttributes != nil {
            map["MetaAttributes"] = self.metaAttributes!
        }
        if self.semanticIndexJobId != nil {
            map["SemanticIndexJobId"] = self.semanticIndexJobId!
        }
        if self.semanticIndexUpdateTime != nil {
            map["SemanticIndexUpdateTime"] = self.semanticIndexUpdateTime!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DatasetFileMetaId"] as? String {
            self.datasetFileMetaId = value
        }
        if let value = dict["FileCreateTime"] as? String {
            self.fileCreateTime = value
        }
        if let value = dict["FileFingerPrint"] as? String {
            self.fileFingerPrint = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileUpdateTime"] as? String {
            self.fileUpdateTime = value
        }
        if let value = dict["MetaAttributes"] as? String {
            self.metaAttributes = value
        }
        if let value = dict["SemanticIndexJobId"] as? String {
            self.semanticIndexJobId = value
        }
        if let value = dict["SemanticIndexUpdateTime"] as? String {
            self.semanticIndexUpdateTime = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class DatasetFileMetaContentCreate : Tea.TeaModel {
    public var comment: String?

    public var contentType: String?

    public var dataSize: Int64?

    public var fileCreateTime: String?

    public var fileFingerPrint: String?

    public var fileName: String?

    public var fileType: String?

    public var fileUpdateTime: String?

    public var metaAttributes: String?

    public var tags: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.fileCreateTime != nil {
            map["FileCreateTime"] = self.fileCreateTime!
        }
        if self.fileFingerPrint != nil {
            map["FileFingerPrint"] = self.fileFingerPrint!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileUpdateTime != nil {
            map["FileUpdateTime"] = self.fileUpdateTime!
        }
        if self.metaAttributes != nil {
            map["MetaAttributes"] = self.metaAttributes!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["FileCreateTime"] as? String {
            self.fileCreateTime = value
        }
        if let value = dict["FileFingerPrint"] as? String {
            self.fileFingerPrint = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileUpdateTime"] as? String {
            self.fileUpdateTime = value
        }
        if let value = dict["MetaAttributes"] as? String {
            self.metaAttributes = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class DatasetFileMetaContentGet : Tea.TeaModel {
    public var comment: String?

    public var contentType: String?

    public var dataSize: Int64?

    public var datasetFileMetaId: String?

    public var fileCreateTime: String?

    public var fileDir: String?

    public var fileFingerPrint: String?

    public var fileName: String?

    public var fileType: String?

    public var fileUpdateTime: String?

    public var metaAttributes: String?

    public var semanticIndexJobId: String?

    public var semanticIndexUpdateTime: String?

    public var tagUpdateTime: String?

    public var tags: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.datasetFileMetaId != nil {
            map["DatasetFileMetaId"] = self.datasetFileMetaId!
        }
        if self.fileCreateTime != nil {
            map["FileCreateTime"] = self.fileCreateTime!
        }
        if self.fileDir != nil {
            map["FileDir"] = self.fileDir!
        }
        if self.fileFingerPrint != nil {
            map["FileFingerPrint"] = self.fileFingerPrint!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.fileUpdateTime != nil {
            map["FileUpdateTime"] = self.fileUpdateTime!
        }
        if self.metaAttributes != nil {
            map["MetaAttributes"] = self.metaAttributes!
        }
        if self.semanticIndexJobId != nil {
            map["SemanticIndexJobId"] = self.semanticIndexJobId!
        }
        if self.semanticIndexUpdateTime != nil {
            map["SemanticIndexUpdateTime"] = self.semanticIndexUpdateTime!
        }
        if self.tagUpdateTime != nil {
            map["TagUpdateTime"] = self.tagUpdateTime!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comment"] as? String {
            self.comment = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DatasetFileMetaId"] as? String {
            self.datasetFileMetaId = value
        }
        if let value = dict["FileCreateTime"] as? String {
            self.fileCreateTime = value
        }
        if let value = dict["FileDir"] as? String {
            self.fileDir = value
        }
        if let value = dict["FileFingerPrint"] as? String {
            self.fileFingerPrint = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["FileUpdateTime"] as? String {
            self.fileUpdateTime = value
        }
        if let value = dict["MetaAttributes"] as? String {
            self.metaAttributes = value
        }
        if let value = dict["SemanticIndexJobId"] as? String {
            self.semanticIndexJobId = value
        }
        if let value = dict["SemanticIndexUpdateTime"] as? String {
            self.semanticIndexUpdateTime = value
        }
        if let value = dict["TagUpdateTime"] as? String {
            self.tagUpdateTime = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class DatasetFileMetaResponse : Tea.TeaModel {
    public var datasetFileMetaId: String?

    public var result: String?

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
        if self.datasetFileMetaId != nil {
            map["DatasetFileMetaId"] = self.datasetFileMetaId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMetaId"] as? String {
            self.datasetFileMetaId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class DatasetFileMetasStat : Tea.TeaModel {
    public var count: Int32?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
    }
}

public class DatasetJob : Tea.TeaModel {
    public var completedFileCount: Int64?

    public var createTime: String?

    public var datasetJobId: String?

    public var datasetVersion: String?

    public var description_: String?

    public var failedFileCount: Int64?

    public var finishTime: String?

    public var jobAction: String?

    public var jobMode: String?

    public var jobSpec: String?

    public var logs: [String]?

    public var status: String?

    public var totalFileCount: Int64?

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
        if self.completedFileCount != nil {
            map["CompletedFileCount"] = self.completedFileCount!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.datasetJobId != nil {
            map["DatasetJobId"] = self.datasetJobId!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.failedFileCount != nil {
            map["FailedFileCount"] = self.failedFileCount!
        }
        if self.finishTime != nil {
            map["FinishTime"] = self.finishTime!
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.jobMode != nil {
            map["JobMode"] = self.jobMode!
        }
        if self.jobSpec != nil {
            map["JobSpec"] = self.jobSpec!
        }
        if self.logs != nil {
            map["Logs"] = self.logs!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalFileCount != nil {
            map["TotalFileCount"] = self.totalFileCount!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompletedFileCount"] as? Int64 {
            self.completedFileCount = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetJobId"] as? String {
            self.datasetJobId = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FailedFileCount"] as? Int64 {
            self.failedFileCount = value
        }
        if let value = dict["FinishTime"] as? String {
            self.finishTime = value
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["JobMode"] as? String {
            self.jobMode = value
        }
        if let value = dict["JobSpec"] as? String {
            self.jobSpec = value
        }
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalFileCount"] as? Int64 {
            self.totalFileCount = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DatasetJobConfig : Tea.TeaModel {
    public var config: String?

    public var configType: String?

    public var createTime: String?

    public var datasetJobConfigId: String?

    public var datasetVersion: String?

    public var modifyTime: String?

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
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.datasetJobConfigId != nil {
            map["DatasetJobConfigId"] = self.datasetJobConfigId!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetJobConfigId"] as? String {
            self.datasetJobConfigId = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

public class DatasetShareRelationship : Tea.TeaModel {
    public var allowedMountAccessLevels: [String]?

    public var expiresAt: String?

    public var isSecureMode: Bool?

    public var sharedAt: String?

    public var sourceTenantId: String?

    public var sourceWorkspaceId: String?

    public var status: String?

    public var tenantId: String?

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
        if self.allowedMountAccessLevels != nil {
            map["AllowedMountAccessLevels"] = self.allowedMountAccessLevels!
        }
        if self.expiresAt != nil {
            map["ExpiresAt"] = self.expiresAt!
        }
        if self.isSecureMode != nil {
            map["IsSecureMode"] = self.isSecureMode!
        }
        if self.sharedAt != nil {
            map["SharedAt"] = self.sharedAt!
        }
        if self.sourceTenantId != nil {
            map["SourceTenantId"] = self.sourceTenantId!
        }
        if self.sourceWorkspaceId != nil {
            map["SourceWorkspaceId"] = self.sourceWorkspaceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedMountAccessLevels"] as? [String] {
            self.allowedMountAccessLevels = value
        }
        if let value = dict["ExpiresAt"] as? String {
            self.expiresAt = value
        }
        if let value = dict["IsSecureMode"] as? Bool {
            self.isSecureMode = value
        }
        if let value = dict["SharedAt"] as? String {
            self.sharedAt = value
        }
        if let value = dict["SourceTenantId"] as? String {
            self.sourceTenantId = value
        }
        if let value = dict["SourceWorkspaceId"] as? String {
            self.sourceWorkspaceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DatasetVersion : Tea.TeaModel {
    public var dataCount: Int64?

    public var dataSize: Int64?

    public var dataSourceType: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var importInfo: String?

    public var labels: [Label]?

    public var mountAccess: String?

    public var options: String?

    public var property: String?

    public var sourceId: String?

    public var sourceType: String?

    public var uri: String?

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
        if self.dataCount != nil {
            map["DataCount"] = self.dataCount!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
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
        if self.importInfo != nil {
            map["ImportInfo"] = self.importInfo!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.mountAccess != nil {
            map["MountAccess"] = self.mountAccess!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.property != nil {
            map["Property"] = self.property!
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
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCount"] as? Int64 {
            self.dataCount = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ImportInfo"] as? String {
            self.importInfo = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["MountAccess"] as? String {
            self.mountAccess = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Property"] as? String {
            self.property = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class Experiment : Tea.TeaModel {
    public var accessibility: String?

    public var artifactUri: String?

    public var experimentId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [ExperimentLabel]?

    public var latestRun: Run?

    public var name: String?

    public var ownerId: String?

    public var requestId: String?

    public var tensorboardLogUri: String?

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
        try self.latestRun?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.artifactUri != nil {
            map["ArtifactUri"] = self.artifactUri!
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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestRun != nil {
            map["LatestRun"] = self.latestRun?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tensorboardLogUri != nil {
            map["TensorboardLogUri"] = self.tensorboardLogUri!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ArtifactUri"] as? String {
            self.artifactUri = value
        }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [ExperimentLabel] = []
            for v in value {
                if v != nil {
                    var model = ExperimentLabel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestRun"] as? [String: Any?] {
            var model = Run()
            model.fromMap(value)
            self.latestRun = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TensorboardLogUri"] as? String {
            self.tensorboardLogUri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ExperimentLabel : Tea.TeaModel {
    public var experimentId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

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
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
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
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
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

public class LabelInfo : Tea.TeaModel {
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

public class LineageEntity : Tea.TeaModel {
    public var attributes: [String: Any]?

    public var entityType: String?

    public var name: String?

    public var qualifiedName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.qualifiedName != nil {
            map["QualifiedName"] = self.qualifiedName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Attributes"] as? [String: Any] {
            self.attributes = value
        }
        if let value = dict["EntityType"] as? String {
            self.entityType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["QualifiedName"] as? String {
            self.qualifiedName = value
        }
    }
}

public class LineageRelation : Tea.TeaModel {
    public var destEntityQualifiedName: String?

    public var relationshipGuid: String?

    public var srcEntityQualifiedName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destEntityQualifiedName != nil {
            map["DestEntityQualifiedName"] = self.destEntityQualifiedName!
        }
        if self.relationshipGuid != nil {
            map["RelationshipGuid"] = self.relationshipGuid!
        }
        if self.srcEntityQualifiedName != nil {
            map["SrcEntityQualifiedName"] = self.srcEntityQualifiedName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestEntityQualifiedName"] as? String {
            self.destEntityQualifiedName = value
        }
        if let value = dict["RelationshipGuid"] as? String {
            self.relationshipGuid = value
        }
        if let value = dict["SrcEntityQualifiedName"] as? String {
            self.srcEntityQualifiedName = value
        }
    }
}

public class Model : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var extraInfo: [String: Any]?

    public var gmtCreateTime: String?

    public var gmtLatestVersionModifiedTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestVersion: ModelVersion?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelId: String?

    public var modelName: String?

    public var modelType: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var ownerId: String?

    public var parameterSize: Int64?

    public var provider: String?

    public var tags: [Label]?

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
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtLatestVersionModifiedTime != nil {
            map["GmtLatestVersionModifiedTime"] = self.gmtLatestVersionModifiedTime!
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
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
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
        if self.parameterSize != nil {
            map["ParameterSize"] = self.parameterSize!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtLatestVersionModifiedTime"] as? String {
            self.gmtLatestVersionModifiedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? [String: Any?] {
            var model = ModelVersion()
            model.fromMap(value)
            self.latestVersion = model
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
        if let value = dict["ModelType"] as? String {
            self.modelType = value
        }
        if let value = dict["OrderNumber"] as? Int64 {
            self.orderNumber = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ParameterSize"] as? Int64 {
            self.parameterSize = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ModelVersion : Tea.TeaModel {
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
    public var approvalStatus: String?

    public var compressionSpec: [String: Any]?

    public var distillationSpec: [String: Any]?

    public var evaluationSpec: [String: Any]?

    public var extraInfo: [String: Any]?

    public var formatType: String?

    public var frameworkType: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [ModelVersion.Labels]?

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
        if self.compressionSpec != nil {
            map["CompressionSpec"] = self.compressionSpec!
        }
        if self.distillationSpec != nil {
            map["DistillationSpec"] = self.distillationSpec!
        }
        if self.evaluationSpec != nil {
            map["EvaluationSpec"] = self.evaluationSpec!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["CompressionSpec"] as? [String: Any] {
            self.compressionSpec = value
        }
        if let value = dict["DistillationSpec"] as? [String: Any] {
            self.distillationSpec = value
        }
        if let value = dict["EvaluationSpec"] as? [String: Any] {
            self.evaluationSpec = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["FrameworkType"] as? String {
            self.frameworkType = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["InferenceSpec"] as? [String: Any] {
            self.inferenceSpec = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [ModelVersion.Labels] = []
            for v in value {
                if v != nil {
                    var model = ModelVersion.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Metrics"] as? [String: Any] {
            self.metrics = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TrainingSpec"] as? [String: Any] {
            self.trainingSpec = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class Prompt : Tea.TeaModel {
    public var accessibility: String?

    public var createTime: String?

    public var description_: String?

    public var frameworkContent: String?

    public var frameworkType: String?

    public var modifyTime: String?

    public var promptId: String?

    public var promptName: String?

    public override init() {
        super.init()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.frameworkContent != nil {
            map["FrameworkContent"] = self.frameworkContent!
        }
        if self.frameworkType != nil {
            map["FrameworkType"] = self.frameworkType!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.promptId != nil {
            map["PromptId"] = self.promptId!
        }
        if self.promptName != nil {
            map["PromptName"] = self.promptName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FrameworkContent"] as? String {
            self.frameworkContent = value
        }
        if let value = dict["FrameworkType"] as? String {
            self.frameworkType = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["PromptId"] as? String {
            self.promptId = value
        }
        if let value = dict["PromptName"] as? String {
            self.promptName = value
        }
    }
}

public class Relation : Tea.TeaModel {
    public var errMsg: String?

    public var lineageRelation: LineageRelation?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lineageRelation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errMsg != nil {
            map["ErrMsg"] = self.errMsg!
        }
        if self.lineageRelation != nil {
            map["LineageRelation"] = self.lineageRelation?.toMap()
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["LineageRelation"] as? [String: Any?] {
            var model = LineageRelation()
            model.fromMap(value)
            self.lineageRelation = model
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class Relationship : Tea.TeaModel {
    public var attributes: [String: Any]?

    public var dataChannel: String?

    public var relationshipGuid: String?

    public var relationshipType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.dataChannel != nil {
            map["DataChannel"] = self.dataChannel!
        }
        if self.relationshipGuid != nil {
            map["RelationshipGuid"] = self.relationshipGuid!
        }
        if self.relationshipType != nil {
            map["RelationshipType"] = self.relationshipType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Attributes"] as? [String: Any] {
            self.attributes = value
        }
        if let value = dict["DataChannel"] as? String {
            self.dataChannel = value
        }
        if let value = dict["RelationshipGuid"] as? String {
            self.relationshipGuid = value
        }
        if let value = dict["RelationshipType"] as? String {
            self.relationshipType = value
        }
    }
}

public class Run : Tea.TeaModel {
    public var accessibility: String?

    public var experimentId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [RunLabel]?

    public var metrics: [RunMetric]?

    public var name: String?

    public var ownerId: String?

    public var params: [RunParam]?

    public var requestId: String?

    public var runId: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
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
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [RunLabel] = []
            for v in value {
                if v != nil {
                    var model = RunLabel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [RunMetric] = []
            for v in value {
                if v != nil {
                    var model = RunMetric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Params"] as? [Any?] {
            var tmp : [RunParam] = []
            for v in value {
                if v != nil {
                    var model = RunParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RunId"] as? String {
            self.runId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class RunLabel : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var key: String?

    public var runId: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.value != nil {
            map["Value"] = self.value!
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
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["RunId"] as? String {
            self.runId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class RunMetric : Tea.TeaModel {
    public var key: String?

    public var step: Int64?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.step != nil {
            map["Step"] = self.step!
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
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Step"] as? Int64 {
            self.step = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
        if let value = dict["Value"] as? Double {
            self.value = value
        }
    }
}

public class RunParam : Tea.TeaModel {
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

public class Trial : Tea.TeaModel {
    public var accessibility: String?

    public var experimentId: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [[String: Any]]?

    public var name: String?

    public var ownerId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var trialId: String?

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
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.trialId != nil {
            map["TrialId"] = self.trialId!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [[String: Any]] {
            self.labels = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TrialId"] as? String {
            self.trialId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class TrialLabel : Tea.TeaModel {
    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var key: String?

    public var trialId: String?

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
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.trialId != nil {
            map["TrialId"] = self.trialId!
        }
        if self.value != nil {
            map["Value"] = self.value!
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
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["TrialId"] as? String {
            self.trialId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class AcceptDataworksEventRequest : Tea.TeaModel {
    public var data: [String: Any]?

    public var messageId: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
    }
}

public class AcceptDataworksEventResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AcceptDataworksEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptDataworksEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AcceptDataworksEventResponseBody()
            model.fromMap(value)
            self.body = model
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
    public var accessibility: String?

    public var description_: String?

    public var imageId: String?

    public var imageUri: String?

    public var labels: [AddImageRequest.Labels]?

    public var name: String?

    public var size: Int32?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageUri"] as? String {
            self.imageUri = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [AddImageRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = AddImageRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddImageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [AddImageLabelsRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = AddImageLabelsRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddImageLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddMemberRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
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
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
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

public class CreateCodeSourceRequest : Tea.TeaModel {
    public var accessibility: String?

    public var codeBranch: String?

    public var codeCommit: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CodeBranch"] as? String {
            self.codeBranch = value
        }
        if let value = dict["CodeCommit"] as? String {
            self.codeCommit = value
        }
        if let value = dict["CodeRepo"] as? String {
            self.codeRepo = value
        }
        if let value = dict["CodeRepoAccessToken"] as? String {
            self.codeRepoAccessToken = value
        }
        if let value = dict["CodeRepoUserName"] as? String {
            self.codeRepoUserName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCodeSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateConnectionRequest : Tea.TeaModel {
    public class Models : Tea.TeaModel {
        public var displayName: String?

        public var model: String?

        public var modelType: String?

        public var toolCall: Bool?

        public override init() {
            super.init()
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
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.toolCall != nil {
                map["ToolCall"] = self.toolCall!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["ToolCall"] as? Bool {
                self.toolCall = value
            }
        }
    }
    public class ResourceMeta : Tea.TeaModel {
        public var extra: String?

        public var instanceId: String?

        public var instanceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
        }
    }
    public var accessibility: String?

    public var configs: [String: String]?

    public var connectionName: String?

    public var connectionType: String?

    public var description_: String?

    public var models: [CreateConnectionRequest.Models]?

    public var resourceMeta: CreateConnectionRequest.ResourceMeta?

    public var secrets: [String: String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionType != nil {
            map["ConnectionType"] = self.connectionType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["Models"] = tmp
        }
        if self.resourceMeta != nil {
            map["ResourceMeta"] = self.resourceMeta?.toMap()
        }
        if self.secrets != nil {
            map["Secrets"] = self.secrets!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Configs"] as? [String: String] {
            self.configs = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionType"] as? String {
            self.connectionType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Models"] as? [Any?] {
            var tmp : [CreateConnectionRequest.Models] = []
            for v in value {
                if v != nil {
                    var model = CreateConnectionRequest.Models()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["ResourceMeta"] as? [String: Any?] {
            var model = CreateConnectionRequest.ResourceMeta()
            model.fromMap(value)
            self.resourceMeta = model
        }
        if let value = dict["Secrets"] as? [String: String] {
            self.secrets = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateConnectionResponseBody : Tea.TeaModel {
    public var connectionId: String?

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
        if self.connectionId != nil {
            map["ConnectionId"] = self.connectionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionId"] as? String {
            self.connectionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetRequest : Tea.TeaModel {
    public var accessibility: String?

    public var dataCount: Int64?

    public var dataSize: Int64?

    public var dataSourceType: String?

    public var dataType: String?

    public var description_: String?

    public var edition: String?

    public var importInfo: String?

    public var labels: [Label]?

    public var mountAccessReadWriteRoleIdList: [String]?

    public var name: String?

    public var options: String?

    public var property: String?

    public var provider: String?

    public var providerType: String?

    public var sourceDatasetId: String?

    public var sourceDatasetVersion: String?

    public var sourceId: String?

    public var sourceType: String?

    public var uri: String?

    public var userId: String?

    public var versionDescription: String?

    public var versionLabels: [Label]?

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
        if self.dataCount != nil {
            map["DataCount"] = self.dataCount!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.importInfo != nil {
            map["ImportInfo"] = self.importInfo!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.mountAccessReadWriteRoleIdList != nil {
            map["MountAccessReadWriteRoleIdList"] = self.mountAccessReadWriteRoleIdList!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.providerType != nil {
            map["ProviderType"] = self.providerType!
        }
        if self.sourceDatasetId != nil {
            map["SourceDatasetId"] = self.sourceDatasetId!
        }
        if self.sourceDatasetVersion != nil {
            map["SourceDatasetVersion"] = self.sourceDatasetVersion!
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
        if self.versionDescription != nil {
            map["VersionDescription"] = self.versionDescription!
        }
        if self.versionLabels != nil {
            var tmp : [Any] = []
            for k in self.versionLabels! {
                tmp.append(k.toMap())
            }
            map["VersionLabels"] = tmp
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["DataCount"] as? Int64 {
            self.dataCount = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["ImportInfo"] as? String {
            self.importInfo = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["MountAccessReadWriteRoleIdList"] as? [String] {
            self.mountAccessReadWriteRoleIdList = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Property"] as? String {
            self.property = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["ProviderType"] as? String {
            self.providerType = value
        }
        if let value = dict["SourceDatasetId"] as? String {
            self.sourceDatasetId = value
        }
        if let value = dict["SourceDatasetVersion"] as? String {
            self.sourceDatasetVersion = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["VersionLabels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versionLabels = tmp
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetFileMetasRequest : Tea.TeaModel {
    public var datasetFileMetas: [DatasetFileMetaContentCreate]?

    public var datasetVersion: String?

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
        if self.datasetFileMetas != nil {
            var tmp : [Any] = []
            for k in self.datasetFileMetas! {
                tmp.append(k.toMap())
            }
            map["DatasetFileMetas"] = tmp
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMetas"] as? [Any?] {
            var tmp : [DatasetFileMetaContentCreate] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetaContentCreate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetFileMetas = tmp
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateDatasetFileMetasResponseBody : Tea.TeaModel {
    public var failedDetails: [DatasetFileMetaResponse]?

    public var requestId: String?

    public var status: Bool?

    public var succeedDetails: [DatasetFileMetaResponse]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedDetails != nil {
            var tmp : [Any] = []
            for k in self.failedDetails! {
                tmp.append(k.toMap())
            }
            map["FailedDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.succeedDetails != nil {
            var tmp : [Any] = []
            for k in self.succeedDetails! {
                tmp.append(k.toMap())
            }
            map["SucceedDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedDetails"] as? [Any?] {
            var tmp : [DatasetFileMetaResponse] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetaResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
        if let value = dict["SucceedDetails"] as? [Any?] {
            var tmp : [DatasetFileMetaResponse] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetaResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.succeedDetails = tmp
        }
    }
}

public class CreateDatasetFileMetasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetFileMetasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetFileMetasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetJobRequest : Tea.TeaModel {
    public var datasetVersion: String?

    public var description_: String?

    public var jobAction: String?

    public var jobMode: String?

    public var jobSpec: String?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.jobMode != nil {
            map["JobMode"] = self.jobMode!
        }
        if self.jobSpec != nil {
            map["JobSpec"] = self.jobSpec!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["JobMode"] as? String {
            self.jobMode = value
        }
        if let value = dict["JobSpec"] as? String {
            self.jobSpec = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateDatasetJobResponseBody : Tea.TeaModel {
    public var datasetJobId: String?

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
        if self.datasetJobId != nil {
            map["DatasetJobId"] = self.datasetJobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetJobId"] as? String {
            self.datasetJobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDatasetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetJobConfigRequest : Tea.TeaModel {
    public var config: String?

    public var configType: String?

    public var datasetVersion: String?

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
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateDatasetJobConfigResponseBody : Tea.TeaModel {
    public var datasetJobConfigId: String?

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
        if self.datasetJobConfigId != nil {
            map["DatasetJobConfigId"] = self.datasetJobConfigId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetJobConfigId"] as? String {
            self.datasetJobConfigId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDatasetJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetJobConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetJobConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetVersionRequest : Tea.TeaModel {
    public var dataCount: Int64?

    public var dataSize: Int64?

    public var dataSourceType: String?

    public var description_: String?

    public var importInfo: String?

    public var labels: [Label]?

    public var options: String?

    public var property: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.dataCount != nil {
            map["DataCount"] = self.dataCount!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.importInfo != nil {
            map["ImportInfo"] = self.importInfo!
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
        if self.property != nil {
            map["Property"] = self.property!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCount"] as? Int64 {
            self.dataCount = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImportInfo"] as? String {
            self.importInfo = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Property"] as? String {
            self.property = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class CreateDatasetVersionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class CreateDatasetVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetVersionLabelsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
    }
}

public class CreateDatasetVersionLabelsResponseBody : Tea.TeaModel {
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

public class CreateDatasetVersionLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetVersionLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetVersionLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExperimentRequest : Tea.TeaModel {
    public var accessibility: String?

    public var artifactUri: String?

    public var labels: [LabelInfo]?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.artifactUri != nil {
            map["ArtifactUri"] = self.artifactUri!
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ArtifactUri"] as? String {
            self.artifactUri = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [LabelInfo] = []
            for v in value {
                if v != nil {
                    var model = LabelInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageBuildRequest : Tea.TeaModel {
    public class BuildConfig : Tea.TeaModel {
        public var buildType: String?

        public var dockerfile: String?

        public var registryAuths: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildType != nil {
                map["BuildType"] = self.buildType!
            }
            if self.dockerfile != nil {
                map["Dockerfile"] = self.dockerfile!
            }
            if self.registryAuths != nil {
                map["RegistryAuths"] = self.registryAuths!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildType"] as? String {
                self.buildType = value
            }
            if let value = dict["Dockerfile"] as? String {
                self.dockerfile = value
            }
            if let value = dict["RegistryAuths"] as? [String: Any] {
                self.registryAuths = value
            }
        }
    }
    public class Image : Tea.TeaModel {
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
        public var description_: String?

        public var labels: [CreateImageBuildRequest.Image.Labels]?

        public var name: String?

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
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [CreateImageBuildRequest.Image.Labels] = []
                for v in value {
                    if v != nil {
                        var model = CreateImageBuildRequest.Image.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public class Resource : Tea.TeaModel {
        public class ResourceConfig : Tea.TeaModel {
            public var CPU: String?

            public var memory: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? String {
                    self.CPU = value
                }
                if let value = dict["Memory"] as? String {
                    self.memory = value
                }
            }
        }
        public var ecsSpec: String?

        public var resourceConfig: CreateImageBuildRequest.Resource.ResourceConfig?

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
            try self.resourceConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ecsSpec != nil {
                map["EcsSpec"] = self.ecsSpec!
            }
            if self.resourceConfig != nil {
                map["ResourceConfig"] = self.resourceConfig?.toMap()
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
            if let value = dict["EcsSpec"] as? String {
                self.ecsSpec = value
            }
            if let value = dict["ResourceConfig"] as? [String: Any?] {
                var model = CreateImageBuildRequest.Resource.ResourceConfig()
                model.fromMap(value)
                self.resourceConfig = model
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public class TargetRegistry : Tea.TeaModel {
        public var instanceId: String?

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
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class UserVpc : Tea.TeaModel {
        public var defaultRoute: String?

        public var extendedCidrs: [String]?

        public var securityGroupId: String?

        public var switchId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultRoute != nil {
                map["DefaultRoute"] = self.defaultRoute!
            }
            if self.extendedCidrs != nil {
                map["ExtendedCidrs"] = self.extendedCidrs!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.switchId != nil {
                map["SwitchId"] = self.switchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultRoute"] as? String {
                self.defaultRoute = value
            }
            if let value = dict["ExtendedCidrs"] as? [String] {
                self.extendedCidrs = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SwitchId"] as? String {
                self.switchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var clientToken: String?

    public var accessibility: String?

    public var buildConfig: CreateImageBuildRequest.BuildConfig?

    public var image: CreateImageBuildRequest.Image?

    public var imageBuildJobName: String?

    public var overwriteImageTag: Bool?

    public var regionId: String?

    public var resource: CreateImageBuildRequest.Resource?

    public var targetRegistry: CreateImageBuildRequest.TargetRegistry?

    public var userVpc: CreateImageBuildRequest.UserVpc?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.buildConfig?.validate()
        try self.image?.validate()
        try self.resource?.validate()
        try self.targetRegistry?.validate()
        try self.userVpc?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.buildConfig != nil {
            map["BuildConfig"] = self.buildConfig?.toMap()
        }
        if self.image != nil {
            map["Image"] = self.image?.toMap()
        }
        if self.imageBuildJobName != nil {
            map["ImageBuildJobName"] = self.imageBuildJobName!
        }
        if self.overwriteImageTag != nil {
            map["OverwriteImageTag"] = self.overwriteImageTag!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource?.toMap()
        }
        if self.targetRegistry != nil {
            map["TargetRegistry"] = self.targetRegistry?.toMap()
        }
        if self.userVpc != nil {
            map["UserVpc"] = self.userVpc?.toMap()
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["BuildConfig"] as? [String: Any?] {
            var model = CreateImageBuildRequest.BuildConfig()
            model.fromMap(value)
            self.buildConfig = model
        }
        if let value = dict["Image"] as? [String: Any?] {
            var model = CreateImageBuildRequest.Image()
            model.fromMap(value)
            self.image = model
        }
        if let value = dict["ImageBuildJobName"] as? String {
            self.imageBuildJobName = value
        }
        if let value = dict["OverwriteImageTag"] as? Bool {
            self.overwriteImageTag = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Resource"] as? [String: Any?] {
            var model = CreateImageBuildRequest.Resource()
            model.fromMap(value)
            self.resource = model
        }
        if let value = dict["TargetRegistry"] as? [String: Any?] {
            var model = CreateImageBuildRequest.TargetRegistry()
            model.fromMap(value)
            self.targetRegistry = model
        }
        if let value = dict["UserVpc"] as? [String: Any?] {
            var model = CreateImageBuildRequest.UserVpc()
            model.fromMap(value)
            self.userVpc = model
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateImageBuildResponseBody : Tea.TeaModel {
    public var imageBuildId: String?

    public var imageBuildJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageBuildId != nil {
            map["ImageBuildId"] = self.imageBuildId!
        }
        if self.imageBuildJobId != nil {
            map["ImageBuildJobId"] = self.imageBuildJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageBuildId"] as? String {
            self.imageBuildId = value
        }
        if let value = dict["ImageBuildJobId"] as? String {
            self.imageBuildJobId = value
        }
    }
}

public class CreateImageBuildResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageBuildResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageBuildResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Roles"] as? [String] {
                self.roles = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [CreateMemberRequest.Members] = []
            for v in value {
                if v != nil {
                    var model = CreateMemberRequest.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["MemberId"] as? String {
                self.memberId = value
            }
            if let value = dict["Roles"] as? [String] {
                self.roles = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [CreateMemberResponseBody.Members] = []
            for v in value {
                if v != nil {
                    var model = CreateMemberResponseBody.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelRequest : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var extraInfo: [String: Any]?

    public var labels: [Label]?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelName: String?

    public var modelType: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var parameterSize: Int64?

    public var tag: [Label]?

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
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["ModelDescription"] as? String {
            self.modelDescription = value
        }
        if let value = dict["ModelDoc"] as? String {
            self.modelDoc = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
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
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModelId"] as? String {
            self.modelId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateModelVersionRequest : Tea.TeaModel {
    public var approvalStatus: String?

    public var compressionSpec: [String: Any]?

    public var distillationSpec: [String: Any]?

    public var evaluationSpec: [String: Any]?

    public var extraInfo: [String: Any]?

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
        if self.compressionSpec != nil {
            map["CompressionSpec"] = self.compressionSpec!
        }
        if self.distillationSpec != nil {
            map["DistillationSpec"] = self.distillationSpec!
        }
        if self.evaluationSpec != nil {
            map["EvaluationSpec"] = self.evaluationSpec!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["CompressionSpec"] as? [String: Any] {
            self.compressionSpec = value
        }
        if let value = dict["DistillationSpec"] as? [String: Any] {
            self.distillationSpec = value
        }
        if let value = dict["EvaluationSpec"] as? [String: Any] {
            self.evaluationSpec = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["FrameworkType"] as? String {
            self.frameworkType = value
        }
        if let value = dict["InferenceSpec"] as? [String: Any] {
            self.inferenceSpec = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Metrics"] as? [String: Any] {
            self.metrics = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TrainingSpec"] as? [String: Any] {
            self.trainingSpec = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateModelVersionLabelsResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Duration"] as? Int64 {
                self.duration = value
            }
            if let value = dict["InstanceProperties"] as? [Any?] {
                var tmp : [CreateProductOrdersRequest.Products.InstanceProperties] = []
                for v in value {
                    if v != nil {
                        var model = CreateProductOrdersRequest.Products.InstanceProperties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceProperties = tmp
            }
            if let value = dict["OrderType"] as? String {
                self.orderType = value
            }
            if let value = dict["PricingCycle"] as? String {
                self.pricingCycle = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Products"] as? [Any?] {
            var tmp : [CreateProductOrdersRequest.Products] = []
            for v in value {
                if v != nil {
                    var model = CreateProductOrdersRequest.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
    }
}

public class CreateProductOrdersResponseBody : Tea.TeaModel {
    public var buyProductRequestId: String?

    public var message: String?

    public var orderId: String?

    public var productIds: [String]?

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
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuyProductRequestId"] as? String {
            self.buyProductRequestId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["ProductIds"] as? [String] {
            self.productIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateProductOrdersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRunRequest : Tea.TeaModel {
    public var experimentId: String?

    public var labels: [Label]?

    public var name: String?

    public var params: [RunParam]?

    public var sourceId: String?

    public var sourceType: String?

    public override init() {
        super.init()
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
        if self.params != nil {
            var tmp : [Any] = []
            for k in self.params! {
                tmp.append(k.toMap())
            }
            map["Params"] = tmp
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Params"] as? [Any?] {
            var tmp : [RunParam] = []
            for v in value {
                if v != nil {
                    var model = RunParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
    }
}

public class CreateRunResponseBody : Tea.TeaModel {
    public var runId: String?

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
        if self.runId != nil {
            map["RunId"] = self.runId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RunId"] as? String {
            self.runId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var envTypes: [String]?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EnvTypes"] as? [String] {
            self.envTypes = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnvType"] as? String {
                self.envType = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [CreateWorkspaceResourceRequest.Resources.Labels] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkspaceResourceRequest.Resources.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["Quotas"] as? [Any?] {
                var tmp : [CreateWorkspaceResourceRequest.Resources.Quotas] = []
                for v in value {
                    if v != nil {
                        var model = CreateWorkspaceResourceRequest.Resources.Quotas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.quotas = tmp
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Spec"] as? [String: Any] {
                self.spec = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [CreateWorkspaceResourceRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkspaceResourceRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [CreateWorkspaceResourceResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkspaceResourceResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWorkspaceResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCodeSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConfigRequest : Tea.TeaModel {
    public var categoryName: String?

    public var labels: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
    }
}

public class DeleteConfigResponseBody : Tea.TeaModel {
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

public class DeleteConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteConnectionResponseBody : Tea.TeaModel {
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

public class DeleteConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteConnectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatasetFileMetasRequest : Tea.TeaModel {
    public var datasetFileMetaIds: String?

    public var datasetVersion: String?

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
        if self.datasetFileMetaIds != nil {
            map["DatasetFileMetaIds"] = self.datasetFileMetaIds!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMetaIds"] as? String {
            self.datasetFileMetaIds = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteDatasetFileMetasResponseBody : Tea.TeaModel {
    public var failedDetails: [DatasetFileMetaResponse]?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedDetails != nil {
            var tmp : [Any] = []
            for k in self.failedDetails! {
                tmp.append(k.toMap())
            }
            map["FailedDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedDetails"] as? [Any?] {
            var tmp : [DatasetFileMetaResponse] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetaResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class DeleteDatasetFileMetasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetFileMetasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetFileMetasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatasetJobResponseBody : Tea.TeaModel {
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

public class DeleteDatasetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatasetJobConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteDatasetJobConfigResponseBody : Tea.TeaModel {
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

public class DeleteDatasetJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetJobConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetJobConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelKeys"] as? String {
            self.labelKeys = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatasetVersionResponseBody : Tea.TeaModel {
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

public class DeleteDatasetVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDatasetVersionLabelsRequest : Tea.TeaModel {
    public var keys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? String {
            self.keys = value
        }
    }
}

public class DeleteDatasetVersionLabelsResponseBody : Tea.TeaModel {
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

public class DeleteDatasetVersionLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetVersionLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetVersionLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class DeleteExperimentLabelResponseBody : Tea.TeaModel {
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

public class DeleteExperimentLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExperimentLabelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteExperimentLabelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberIds"] as? String {
            self.memberIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMembersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelKeys"] as? String {
            self.labelKeys = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelKeys"] as? String {
            self.labelKeys = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteModelVersionLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRunResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRunLabelResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteRunLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRunLabelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteRunLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserConfigRequest : Tea.TeaModel {
    public var configKey: String?

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
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["Scope"] as? String {
            self.scope = value
        }
    }
}

public class DeleteUserConfigResponseBody : Tea.TeaModel {
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

public class DeleteUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWorkspaceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceIds"] as? String {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DeleteWorkspaceResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceIds: [String]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWorkspaceResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["CodeBranch"] as? String {
            self.codeBranch = value
        }
        if let value = dict["CodeCommit"] as? String {
            self.codeCommit = value
        }
        if let value = dict["CodeRepo"] as? String {
            self.codeRepo = value
        }
        if let value = dict["CodeRepoAccessToken"] as? String {
            self.codeRepoAccessToken = value
        }
        if let value = dict["CodeRepoUserName"] as? String {
            self.codeRepoUserName = value
        }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifyTime"] as? String {
            self.gmtModifyTime = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCodeSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConfigRequest : Tea.TeaModel {
    public var categoryName: String?

    public var configKey: String?

    public var verbose: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["Verbose"] as? String {
            self.verbose = value
        }
    }
}

public class GetConfigResponseBody : Tea.TeaModel {
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
    public var categoryName: String?

    public var configKey: String?

    public var configValue: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var labels: [GetConfigResponseBody.Labels]?

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
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [GetConfigResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = GetConfigResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConnectionRequest : Tea.TeaModel {
    public var encryptOption: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptOption != nil {
            map["EncryptOption"] = self.encryptOption!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptOption"] as? String {
            self.encryptOption = value
        }
    }
}

public class GetConnectionResponseBody : Tea.TeaModel {
    public class Models : Tea.TeaModel {
        public var displayName: String?

        public var model: String?

        public var modelType: String?

        public var toolCall: Bool?

        public override init() {
            super.init()
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
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.toolCall != nil {
                map["ToolCall"] = self.toolCall!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["ToolCall"] as? Bool {
                self.toolCall = value
            }
        }
    }
    public class ResourceMeta : Tea.TeaModel {
        public var extra: String?

        public var instanceId: String?

        public var instanceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
        }
    }
    public var accessibility: String?

    public var configs: [String: String]?

    public var connectionId: String?

    public var connectionName: String?

    public var connectionType: String?

    public var creator: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var models: [GetConnectionResponseBody.Models]?

    public var requestId: String?

    public var resourceMeta: GetConnectionResponseBody.ResourceMeta?

    public var secrets: [String: String]?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.connectionId != nil {
            map["ConnectionId"] = self.connectionId!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionType != nil {
            map["ConnectionType"] = self.connectionType!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
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
        if self.resourceMeta != nil {
            map["ResourceMeta"] = self.resourceMeta?.toMap()
        }
        if self.secrets != nil {
            map["Secrets"] = self.secrets!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Configs"] as? [String: String] {
            self.configs = value
        }
        if let value = dict["ConnectionId"] as? String {
            self.connectionId = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionType"] as? String {
            self.connectionType = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Models"] as? [Any?] {
            var tmp : [GetConnectionResponseBody.Models] = []
            for v in value {
                if v != nil {
                    var model = GetConnectionResponseBody.Models()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceMeta"] as? [String: Any?] {
            var model = GetConnectionResponseBody.ResourceMeta()
            model.fromMap(value)
            self.resourceMeta = model
        }
        if let value = dict["Secrets"] as? [String: String] {
            self.secrets = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetResponseBody : Tea.TeaModel {
    public class SharingConfig : Tea.TeaModel {
        public var sharedTo: [DatasetShareRelationship]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sharedTo != nil {
                var tmp : [Any] = []
                for k in self.sharedTo! {
                    tmp.append(k.toMap())
                }
                map["SharedTo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SharedTo"] as? [Any?] {
                var tmp : [DatasetShareRelationship] = []
                for v in value {
                    if v != nil {
                        var model = DatasetShareRelationship()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sharedTo = tmp
            }
        }
    }
    public var accessibility: String?

    public var dataSourceType: String?

    public var dataType: String?

    public var datasetId: String?

    public var description_: String?

    public var edition: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var importInfo: String?

    public var isShared: Bool?

    public var labels: [Label]?

    public var latestVersion: DatasetVersion?

    public var mountAccess: String?

    public var mountAccessReadWriteRoleIdList: [String]?

    public var name: String?

    public var options: String?

    public var ownerId: String?

    public var property: String?

    public var provider: String?

    public var providerType: String?

    public var requestId: String?

    public var sharedFrom: DatasetShareRelationship?

    public var sharingConfig: GetDatasetResponseBody.SharingConfig?

    public var sourceDatasetId: String?

    public var sourceDatasetVersion: String?

    public var sourceId: String?

    public var sourceType: String?

    public var tagTemplateType: String?

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
        try self.latestVersion?.validate()
        try self.sharedFrom?.validate()
        try self.sharingConfig?.validate()
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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtModifiedTime != nil {
            map["GmtModifiedTime"] = self.gmtModifiedTime!
        }
        if self.importInfo != nil {
            map["ImportInfo"] = self.importInfo!
        }
        if self.isShared != nil {
            map["IsShared"] = self.isShared!
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
        if self.mountAccess != nil {
            map["MountAccess"] = self.mountAccess!
        }
        if self.mountAccessReadWriteRoleIdList != nil {
            map["MountAccessReadWriteRoleIdList"] = self.mountAccessReadWriteRoleIdList!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.providerType != nil {
            map["ProviderType"] = self.providerType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sharedFrom != nil {
            map["SharedFrom"] = self.sharedFrom?.toMap()
        }
        if self.sharingConfig != nil {
            map["SharingConfig"] = self.sharingConfig?.toMap()
        }
        if self.sourceDatasetId != nil {
            map["SourceDatasetId"] = self.sourceDatasetId!
        }
        if self.sourceDatasetVersion != nil {
            map["SourceDatasetVersion"] = self.sourceDatasetVersion!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.tagTemplateType != nil {
            map["TagTemplateType"] = self.tagTemplateType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DataType"] as? String {
            self.dataType = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ImportInfo"] as? String {
            self.importInfo = value
        }
        if let value = dict["IsShared"] as? Bool {
            self.isShared = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? [String: Any?] {
            var model = DatasetVersion()
            model.fromMap(value)
            self.latestVersion = model
        }
        if let value = dict["MountAccess"] as? String {
            self.mountAccess = value
        }
        if let value = dict["MountAccessReadWriteRoleIdList"] as? [String] {
            self.mountAccessReadWriteRoleIdList = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Property"] as? String {
            self.property = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["ProviderType"] as? String {
            self.providerType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SharedFrom"] as? [String: Any?] {
            var model = DatasetShareRelationship()
            model.fromMap(value)
            self.sharedFrom = model
        }
        if let value = dict["SharingConfig"] as? [String: Any?] {
            var model = GetDatasetResponseBody.SharingConfig()
            model.fromMap(value)
            self.sharingConfig = model
        }
        if let value = dict["SourceDatasetId"] as? String {
            self.sourceDatasetId = value
        }
        if let value = dict["SourceDatasetVersion"] as? String {
            self.sourceDatasetVersion = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TagTemplateType"] as? String {
            self.tagTemplateType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetFileMetaRequest : Tea.TeaModel {
    public var datasetVersion: String?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDatasetFileMetaResponseBody : Tea.TeaModel {
    public var datasetFileMeta: DatasetFileMetaContentGet?

    public var datasetId: String?

    public var datasetVersion: String?

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
        try self.datasetFileMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetFileMeta != nil {
            map["DatasetFileMeta"] = self.datasetFileMeta?.toMap()
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMeta"] as? [String: Any?] {
            var model = DatasetFileMetaContentGet()
            model.fromMap(value)
            self.datasetFileMeta = model
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDatasetFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetFileMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetFileMetasStatisticsRequest : Tea.TeaModel {
    public var aggregateBy: String?

    public var datasetVersion: String?

    public var maxResults: Int32?

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
        if self.aggregateBy != nil {
            map["AggregateBy"] = self.aggregateBy!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AggregateBy"] as? String {
            self.aggregateBy = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDatasetFileMetasStatisticsResponseBody : Tea.TeaModel {
    public var datasetFileMetasStats: [DatasetFileMetasStat]?

    public var totalCount: Int32?

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
        if self.datasetFileMetasStats != nil {
            var tmp : [Any] = []
            for k in self.datasetFileMetasStats! {
                tmp.append(k.toMap())
            }
            map["DatasetFileMetasStats"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMetasStats"] as? [Any?] {
            var tmp : [DatasetFileMetasStat] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetasStat()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetFileMetasStats = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDatasetFileMetasStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetFileMetasStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetFileMetasStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetJobRequest : Tea.TeaModel {
    public var datasetVersion: String?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDatasetJobResponseBody : Tea.TeaModel {
    public var completedFileCount: Int64?

    public var createTime: String?

    public var description_: String?

    public var failedFileCount: Int64?

    public var finishTime: String?

    public var jobAction: String?

    public var jobMode: String?

    public var jobSpec: String?

    public var logs: [String]?

    public var requestId: String?

    public var status: String?

    public var totalFileCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.completedFileCount != nil {
            map["CompletedFileCount"] = self.completedFileCount!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.failedFileCount != nil {
            map["FailedFileCount"] = self.failedFileCount!
        }
        if self.finishTime != nil {
            map["FinishTime"] = self.finishTime!
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
        }
        if self.jobMode != nil {
            map["JobMode"] = self.jobMode!
        }
        if self.jobSpec != nil {
            map["JobSpec"] = self.jobSpec!
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
        if self.totalFileCount != nil {
            map["TotalFileCount"] = self.totalFileCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompletedFileCount"] as? Int64 {
            self.completedFileCount = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FailedFileCount"] as? Int64 {
            self.failedFileCount = value
        }
        if let value = dict["FinishTime"] as? String {
            self.finishTime = value
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
        }
        if let value = dict["JobMode"] as? String {
            self.jobMode = value
        }
        if let value = dict["JobSpec"] as? String {
            self.jobSpec = value
        }
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalFileCount"] as? Int64 {
            self.totalFileCount = value
        }
    }
}

public class GetDatasetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetJobConfigRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDatasetJobConfigResponseBody : Tea.TeaModel {
    public var config: String?

    public var configType: String?

    public var createTime: String?

    public var datasetId: String?

    public var modifyTime: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class GetDatasetJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetJobConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDatasetVersionResponseBody : Tea.TeaModel {
    public var dataCount: Int64?

    public var dataSize: Int64?

    public var dataSourceType: String?

    public var datasetId: String?

    public var description_: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var importInfo: String?

    public var labels: [Label]?

    public var mountAccess: String?

    public var options: String?

    public var property: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceType: String?

    public var uri: String?

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
        if self.dataCount != nil {
            map["DataCount"] = self.dataCount!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
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
        if self.importInfo != nil {
            map["ImportInfo"] = self.importInfo!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.mountAccess != nil {
            map["MountAccess"] = self.mountAccess!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.property != nil {
            map["Property"] = self.property!
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
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCount"] as? Int64 {
            self.dataCount = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ImportInfo"] as? String {
            self.importInfo = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["MountAccess"] as? String {
            self.mountAccess = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["Property"] as? String {
            self.property = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
        }
    }
}

public class GetDatasetVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserKp"] as? String {
                self.userKp = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Conditions"] as? [Any?] {
            var tmp : [GetDefaultWorkspaceResponseBody.Conditions] = []
            for v in value {
                if v != nil {
                    var model = GetDefaultWorkspaceResponseBody.Conditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditions = tmp
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EnvTypes"] as? [String] {
            self.envTypes = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Owner"] as? [String: Any?] {
            var model = GetDefaultWorkspaceResponseBody.Owner()
            model.fromMap(value)
            self.owner = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDefaultWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetExperimentRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class GetExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Experiment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Experiment()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
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

    public var sourceId: String?

    public var sourceType: String?

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
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
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
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["ImageUri"] as? String {
            self.imageUri = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [GetImageResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = GetImageResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ParentUserId"] as? String {
            self.parentUserId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetImageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberId"] as? String {
            self.memberId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetMemberResponseBody : Tea.TeaModel {
    public var accountType: String?

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
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["MemberId"] as? String {
            self.memberId = value
        }
        if let value = dict["MemberName"] as? String {
            self.memberName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Roles"] as? [String] {
            self.roles = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelResponseBody : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var extraInfo: [String: Any]?

    public var gmtCreateTime: String?

    public var gmtLatestVersionModifiedTime: String?

    public var gmtModifiedTime: String?

    public var labels: [Label]?

    public var latestVersion: ModelVersion?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelId: String?

    public var modelName: String?

    public var modelType: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var ownerId: String?

    public var parameterSize: Int64?

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
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.gmtLatestVersionModifiedTime != nil {
            map["GmtLatestVersionModifiedTime"] = self.gmtLatestVersionModifiedTime!
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
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
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
        if self.parameterSize != nil {
            map["ParameterSize"] = self.parameterSize!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtLatestVersionModifiedTime"] as? String {
            self.gmtLatestVersionModifiedTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? [String: Any?] {
            var model = ModelVersion()
            model.fromMap(value)
            self.latestVersion = model
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
        if let value = dict["ModelType"] as? String {
            self.modelType = value
        }
        if let value = dict["OrderNumber"] as? Int64 {
            self.orderNumber = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ParameterSize"] as? Int64 {
            self.parameterSize = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetModelVersionResponseBody : Tea.TeaModel {
    public var approvalStatus: String?

    public var compressionSpec: [String: Any]?

    public var distillationSpec: [String: Any]?

    public var evaluationSpec: [String: Any]?

    public var extraInfo: [String: Any]?

    public var formatType: String?

    public var frameworkType: String?

    public var gmtCreateTime: String?

    public var gmtModifiedTime: String?

    public var inferenceSpec: [String: Any]?

    public var labels: [Label]?

    public var metrics: [String: Any]?

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
        if self.compressionSpec != nil {
            map["CompressionSpec"] = self.compressionSpec!
        }
        if self.distillationSpec != nil {
            map["DistillationSpec"] = self.distillationSpec!
        }
        if self.evaluationSpec != nil {
            map["EvaluationSpec"] = self.evaluationSpec!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["CompressionSpec"] as? [String: Any] {
            self.compressionSpec = value
        }
        if let value = dict["DistillationSpec"] as? [String: Any] {
            self.distillationSpec = value
        }
        if let value = dict["EvaluationSpec"] as? [String: Any] {
            self.evaluationSpec = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["FrameworkType"] as? String {
            self.frameworkType = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["InferenceSpec"] as? [String: Any] {
            self.inferenceSpec = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Metrics"] as? [String: Any] {
            self.metrics = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TrainingSpec"] as? [String: Any] {
            self.trainingSpec = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetModelVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPermissionRequest : Tea.TeaModel {
    public var accessibility: String?

    public var creator: String?

    public var labels: [String: Any]?

    public var option: String?

    public var resource: String?

    public override init() {
        super.init()
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
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Labels"] as? [String: Any] {
            self.labels = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["Resource"] as? String {
            self.resource = value
        }
    }
}

public class GetPermissionShrinkRequest : Tea.TeaModel {
    public var accessibility: String?

    public var creator: String?

    public var labelsShrink: String?

    public var option: String?

    public var resource: String?

    public override init() {
        super.init()
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
        if self.labelsShrink != nil {
            map["Labels"] = self.labelsShrink!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Labels"] as? String {
            self.labelsShrink = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["Resource"] as? String {
            self.resource = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Accessibility"] as? String {
                self.accessibility = value
            }
            if let value = dict["EntityAccessType"] as? String {
                self.entityAccessType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PermissionCode"] as? String {
            self.permissionCode = value
        }
        if let value = dict["PermissionRules"] as? [Any?] {
            var tmp : [GetPermissionResponseBody.PermissionRules] = []
            for v in value {
                if v != nil {
                    var model = GetPermissionResponseBody.PermissionRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissionRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRunRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class GetRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Run?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Run()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserKp"] as? String {
                self.userKp = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminNames"] as? [String] {
            self.adminNames = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["EnvTypes"] as? [String] {
            self.envTypes = value
        }
        if let value = dict["ExtraInfos"] as? [String: Any] {
            self.extraInfos = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["GmtModifiedTime"] as? String {
            self.gmtModifiedTime = value
        }
        if let value = dict["IsDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["Owner"] as? [String: Any?] {
            var model = GetWorkspaceResponseBody.Owner()
            model.fromMap(value)
            self.owner = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWorkspaceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
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
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeSources"] as? [Any?] {
            var tmp : [CodeSourceItem] = []
            for v in value {
                if v != nil {
                    var model = CodeSourceItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.codeSources = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCodeSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConfigsRequest : Tea.TeaModel {
    public var categoryName: String?

    public var configKeys: String?

    public var labels: String?

    public var verbose: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.configKeys != nil {
            map["ConfigKeys"] = self.configKeys!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["ConfigKeys"] as? String {
            self.configKeys = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Verbose"] as? String {
            self.verbose = value
        }
    }
}

public class ListConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
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
        public var configKey: String?

        public var configValue: String?

        public var gmtCreateTime: String?

        public var gmtModifiedTime: String?

        public var labels: [ListConfigsResponseBody.Configs.Labels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configKey != nil {
                map["ConfigKey"] = self.configKey!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigKey"] as? String {
                self.configKey = value
            }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListConfigsResponseBody.Configs.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListConfigsResponseBody.Configs.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
        }
    }
    public var configs: [ListConfigsResponseBody.Configs]?

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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
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
        if let value = dict["Configs"] as? [Any?] {
            var tmp : [ListConfigsResponseBody.Configs] = []
            for v in value {
                if v != nil {
                    var model = ListConfigsResponseBody.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConnectionsRequest : Tea.TeaModel {
    public var connectionIds: [String]?

    public var connectionName: String?

    public var connectionTypes: [String]?

    public var creator: String?

    public var encryptOption: String?

    public var maxResults: Int32?

    public var model: String?

    public var modelTypes: [String]?

    public var nextToken: String?

    public var order: String?

    public var sortBy: String?

    public var toolCall: Bool?

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
        if self.connectionIds != nil {
            map["ConnectionIds"] = self.connectionIds!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionTypes != nil {
            map["ConnectionTypes"] = self.connectionTypes!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.encryptOption != nil {
            map["EncryptOption"] = self.encryptOption!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.modelTypes != nil {
            map["ModelTypes"] = self.modelTypes!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.toolCall != nil {
            map["ToolCall"] = self.toolCall!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionIds"] as? [String] {
            self.connectionIds = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionTypes"] as? [String] {
            self.connectionTypes = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["EncryptOption"] as? String {
            self.encryptOption = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["ModelTypes"] as? [String] {
            self.modelTypes = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["ToolCall"] as? Bool {
            self.toolCall = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListConnectionsShrinkRequest : Tea.TeaModel {
    public var connectionIdsShrink: String?

    public var connectionName: String?

    public var connectionTypesShrink: String?

    public var creator: String?

    public var encryptOption: String?

    public var maxResults: Int32?

    public var model: String?

    public var modelTypesShrink: String?

    public var nextToken: String?

    public var order: String?

    public var sortBy: String?

    public var toolCall: Bool?

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
        if self.connectionIdsShrink != nil {
            map["ConnectionIds"] = self.connectionIdsShrink!
        }
        if self.connectionName != nil {
            map["ConnectionName"] = self.connectionName!
        }
        if self.connectionTypesShrink != nil {
            map["ConnectionTypes"] = self.connectionTypesShrink!
        }
        if self.creator != nil {
            map["Creator"] = self.creator!
        }
        if self.encryptOption != nil {
            map["EncryptOption"] = self.encryptOption!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.modelTypesShrink != nil {
            map["ModelTypes"] = self.modelTypesShrink!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.toolCall != nil {
            map["ToolCall"] = self.toolCall!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionIds"] as? String {
            self.connectionIdsShrink = value
        }
        if let value = dict["ConnectionName"] as? String {
            self.connectionName = value
        }
        if let value = dict["ConnectionTypes"] as? String {
            self.connectionTypesShrink = value
        }
        if let value = dict["Creator"] as? String {
            self.creator = value
        }
        if let value = dict["EncryptOption"] as? String {
            self.encryptOption = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["ModelTypes"] as? String {
            self.modelTypesShrink = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["ToolCall"] as? Bool {
            self.toolCall = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListConnectionsResponseBody : Tea.TeaModel {
    public var connections: [Connection]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.connections != nil {
            var tmp : [Any] = []
            for k in self.connections! {
                tmp.append(k.toMap())
            }
            map["Connections"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Connections"] as? [Any?] {
            var tmp : [Connection] = []
            for v in value {
                if v != nil {
                    var model = Connection()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.connections = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListConnectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConnectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListConnectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasetFileMetasRequest : Tea.TeaModel {
    public var datasetVersion: String?

    public var endFileUpdateTime: String?

    public var endTagUpdateTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var pageSize: Int32?

    public var queryContentTypeIncludeAny: [String]?

    public var queryExpression: String?

    public var queryFileDir: String?

    public var queryFileName: String?

    public var queryFileTypeIncludeAny: [String]?

    public var queryImage: String?

    public var queryTagsExclude: [String]?

    public var queryTagsIncludeAll: [String]?

    public var queryTagsIncludeAny: [String]?

    public var queryText: String?

    public var queryType: String?

    public var scoreThreshold: Double?

    public var sortBy: String?

    public var startFileUpdateTime: String?

    public var startTagUpdateTime: String?

    public var thumbnailMode: String?

    public var topK: Int32?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.endFileUpdateTime != nil {
            map["EndFileUpdateTime"] = self.endFileUpdateTime!
        }
        if self.endTagUpdateTime != nil {
            map["EndTagUpdateTime"] = self.endTagUpdateTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryContentTypeIncludeAny != nil {
            map["QueryContentTypeIncludeAny"] = self.queryContentTypeIncludeAny!
        }
        if self.queryExpression != nil {
            map["QueryExpression"] = self.queryExpression!
        }
        if self.queryFileDir != nil {
            map["QueryFileDir"] = self.queryFileDir!
        }
        if self.queryFileName != nil {
            map["QueryFileName"] = self.queryFileName!
        }
        if self.queryFileTypeIncludeAny != nil {
            map["QueryFileTypeIncludeAny"] = self.queryFileTypeIncludeAny!
        }
        if self.queryImage != nil {
            map["QueryImage"] = self.queryImage!
        }
        if self.queryTagsExclude != nil {
            map["QueryTagsExclude"] = self.queryTagsExclude!
        }
        if self.queryTagsIncludeAll != nil {
            map["QueryTagsIncludeAll"] = self.queryTagsIncludeAll!
        }
        if self.queryTagsIncludeAny != nil {
            map["QueryTagsIncludeAny"] = self.queryTagsIncludeAny!
        }
        if self.queryText != nil {
            map["QueryText"] = self.queryText!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startFileUpdateTime != nil {
            map["StartFileUpdateTime"] = self.startFileUpdateTime!
        }
        if self.startTagUpdateTime != nil {
            map["StartTagUpdateTime"] = self.startTagUpdateTime!
        }
        if self.thumbnailMode != nil {
            map["ThumbnailMode"] = self.thumbnailMode!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["EndFileUpdateTime"] as? String {
            self.endFileUpdateTime = value
        }
        if let value = dict["EndTagUpdateTime"] as? String {
            self.endTagUpdateTime = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryContentTypeIncludeAny"] as? [String] {
            self.queryContentTypeIncludeAny = value
        }
        if let value = dict["QueryExpression"] as? String {
            self.queryExpression = value
        }
        if let value = dict["QueryFileDir"] as? String {
            self.queryFileDir = value
        }
        if let value = dict["QueryFileName"] as? String {
            self.queryFileName = value
        }
        if let value = dict["QueryFileTypeIncludeAny"] as? [String] {
            self.queryFileTypeIncludeAny = value
        }
        if let value = dict["QueryImage"] as? String {
            self.queryImage = value
        }
        if let value = dict["QueryTagsExclude"] as? [String] {
            self.queryTagsExclude = value
        }
        if let value = dict["QueryTagsIncludeAll"] as? [String] {
            self.queryTagsIncludeAll = value
        }
        if let value = dict["QueryTagsIncludeAny"] as? [String] {
            self.queryTagsIncludeAny = value
        }
        if let value = dict["QueryText"] as? String {
            self.queryText = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ScoreThreshold"] as? Double {
            self.scoreThreshold = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartFileUpdateTime"] as? String {
            self.startFileUpdateTime = value
        }
        if let value = dict["StartTagUpdateTime"] as? String {
            self.startTagUpdateTime = value
        }
        if let value = dict["ThumbnailMode"] as? String {
            self.thumbnailMode = value
        }
        if let value = dict["TopK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListDatasetFileMetasShrinkRequest : Tea.TeaModel {
    public var datasetVersion: String?

    public var endFileUpdateTime: String?

    public var endTagUpdateTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var pageSize: Int32?

    public var queryContentTypeIncludeAnyShrink: String?

    public var queryExpression: String?

    public var queryFileDir: String?

    public var queryFileName: String?

    public var queryFileTypeIncludeAnyShrink: String?

    public var queryImage: String?

    public var queryTagsExcludeShrink: String?

    public var queryTagsIncludeAllShrink: String?

    public var queryTagsIncludeAnyShrink: String?

    public var queryText: String?

    public var queryType: String?

    public var scoreThreshold: Double?

    public var sortBy: String?

    public var startFileUpdateTime: String?

    public var startTagUpdateTime: String?

    public var thumbnailMode: String?

    public var topK: Int32?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.endFileUpdateTime != nil {
            map["EndFileUpdateTime"] = self.endFileUpdateTime!
        }
        if self.endTagUpdateTime != nil {
            map["EndTagUpdateTime"] = self.endTagUpdateTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryContentTypeIncludeAnyShrink != nil {
            map["QueryContentTypeIncludeAny"] = self.queryContentTypeIncludeAnyShrink!
        }
        if self.queryExpression != nil {
            map["QueryExpression"] = self.queryExpression!
        }
        if self.queryFileDir != nil {
            map["QueryFileDir"] = self.queryFileDir!
        }
        if self.queryFileName != nil {
            map["QueryFileName"] = self.queryFileName!
        }
        if self.queryFileTypeIncludeAnyShrink != nil {
            map["QueryFileTypeIncludeAny"] = self.queryFileTypeIncludeAnyShrink!
        }
        if self.queryImage != nil {
            map["QueryImage"] = self.queryImage!
        }
        if self.queryTagsExcludeShrink != nil {
            map["QueryTagsExclude"] = self.queryTagsExcludeShrink!
        }
        if self.queryTagsIncludeAllShrink != nil {
            map["QueryTagsIncludeAll"] = self.queryTagsIncludeAllShrink!
        }
        if self.queryTagsIncludeAnyShrink != nil {
            map["QueryTagsIncludeAny"] = self.queryTagsIncludeAnyShrink!
        }
        if self.queryText != nil {
            map["QueryText"] = self.queryText!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.startFileUpdateTime != nil {
            map["StartFileUpdateTime"] = self.startFileUpdateTime!
        }
        if self.startTagUpdateTime != nil {
            map["StartTagUpdateTime"] = self.startTagUpdateTime!
        }
        if self.thumbnailMode != nil {
            map["ThumbnailMode"] = self.thumbnailMode!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["EndFileUpdateTime"] as? String {
            self.endFileUpdateTime = value
        }
        if let value = dict["EndTagUpdateTime"] as? String {
            self.endTagUpdateTime = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryContentTypeIncludeAny"] as? String {
            self.queryContentTypeIncludeAnyShrink = value
        }
        if let value = dict["QueryExpression"] as? String {
            self.queryExpression = value
        }
        if let value = dict["QueryFileDir"] as? String {
            self.queryFileDir = value
        }
        if let value = dict["QueryFileName"] as? String {
            self.queryFileName = value
        }
        if let value = dict["QueryFileTypeIncludeAny"] as? String {
            self.queryFileTypeIncludeAnyShrink = value
        }
        if let value = dict["QueryImage"] as? String {
            self.queryImage = value
        }
        if let value = dict["QueryTagsExclude"] as? String {
            self.queryTagsExcludeShrink = value
        }
        if let value = dict["QueryTagsIncludeAll"] as? String {
            self.queryTagsIncludeAllShrink = value
        }
        if let value = dict["QueryTagsIncludeAny"] as? String {
            self.queryTagsIncludeAnyShrink = value
        }
        if let value = dict["QueryText"] as? String {
            self.queryText = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ScoreThreshold"] as? Double {
            self.scoreThreshold = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["StartFileUpdateTime"] as? String {
            self.startFileUpdateTime = value
        }
        if let value = dict["StartTagUpdateTime"] as? String {
            self.startTagUpdateTime = value
        }
        if let value = dict["ThumbnailMode"] as? String {
            self.thumbnailMode = value
        }
        if let value = dict["TopK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListDatasetFileMetasResponseBody : Tea.TeaModel {
    public var datasetFileMetas: [DatasetFileMeta]?

    public var datasetId: String?

    public var datasetVersion: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageSize: Int32?

    public var totalCount: Int32?

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
        if self.datasetFileMetas != nil {
            var tmp : [Any] = []
            for k in self.datasetFileMetas! {
                tmp.append(k.toMap())
            }
            map["DatasetFileMetas"] = tmp
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMetas"] as? [Any?] {
            var tmp : [DatasetFileMeta] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMeta()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetFileMetas = tmp
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListDatasetFileMetasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetFileMetasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasetFileMetasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasetJobConfigsRequest : Tea.TeaModel {
    public var configType: String?

    public var datasetVersion: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListDatasetJobConfigsResponseBody : Tea.TeaModel {
    public var datasetJobConfigs: [DatasetJobConfig]?

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
        if self.datasetJobConfigs != nil {
            var tmp : [Any] = []
            for k in self.datasetJobConfigs! {
                tmp.append(k.toMap())
            }
            map["DatasetJobConfigs"] = tmp
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
        if let value = dict["DatasetJobConfigs"] as? [Any?] {
            var tmp : [DatasetJobConfig] = []
            for v in value {
                if v != nil {
                    var model = DatasetJobConfig()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetJobConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDatasetJobConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetJobConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasetJobConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasetJobsRequest : Tea.TeaModel {
    public var datasetVersion: String?

    public var jobAction: String?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.jobAction != nil {
            map["JobAction"] = self.jobAction!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["JobAction"] as? String {
            self.jobAction = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListDatasetJobsResponseBody : Tea.TeaModel {
    public var datasetJobs: [DatasetJob]?

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
        if self.datasetJobs != nil {
            var tmp : [Any] = []
            for k in self.datasetJobs! {
                tmp.append(k.toMap())
            }
            map["DatasetJobs"] = tmp
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
        if let value = dict["DatasetJobs"] as? [Any?] {
            var tmp : [DatasetJob] = []
            for v in value {
                if v != nil {
                    var model = DatasetJob()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetJobs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDatasetJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasetJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasetVersionsRequest : Tea.TeaModel {
    public var labelKeys: String?

    public var labelValues: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var properties: String?

    public var sortBy: String?

    public var sourceId: String?

    public var sourceTypes: String?

    public override init() {
        super.init()
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
        if self.labelValues != nil {
            map["LabelValues"] = self.labelValues!
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
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceTypes != nil {
            map["SourceTypes"] = self.sourceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelKeys"] as? String {
            self.labelKeys = value
        }
        if let value = dict["LabelValues"] as? String {
            self.labelValues = value
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
        if let value = dict["Properties"] as? String {
            self.properties = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceTypes"] as? String {
            self.sourceTypes = value
        }
    }
}

public class ListDatasetVersionsResponseBody : Tea.TeaModel {
    public var datasetVersions: [DatasetVersion]?

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
        if self.datasetVersions != nil {
            var tmp : [Any] = []
            for k in self.datasetVersions! {
                tmp.append(k.toMap())
            }
            map["DatasetVersions"] = tmp
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
        if let value = dict["DatasetVersions"] as? [Any?] {
            var tmp : [DatasetVersion] = []
            for v in value {
                if v != nil {
                    var model = DatasetVersion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetVersions = tmp
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

public class ListDatasetVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasetVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDatasetsRequest : Tea.TeaModel {
    public var accessibility: String?

    public var dataSourceTypes: String?

    public var dataTypes: String?

    public var edition: String?

    public var label: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var properties: String?

    public var provider: String?

    public var shareScope: String?

    public var sortBy: String?

    public var sourceDatasetId: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.dataSourceTypes != nil {
            map["DataSourceTypes"] = self.dataSourceTypes!
        }
        if self.dataTypes != nil {
            map["DataTypes"] = self.dataTypes!
        }
        if self.edition != nil {
            map["Edition"] = self.edition!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.shareScope != nil {
            map["ShareScope"] = self.shareScope!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.sourceDatasetId != nil {
            map["SourceDatasetId"] = self.sourceDatasetId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["DataSourceTypes"] as? String {
            self.dataSourceTypes = value
        }
        if let value = dict["DataTypes"] as? String {
            self.dataTypes = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["Properties"] as? String {
            self.properties = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["ShareScope"] as? String {
            self.shareScope = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceDatasetId"] as? String {
            self.sourceDatasetId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceTypes"] as? String {
            self.sourceTypes = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Datasets"] as? [Any?] {
            var tmp : [Dataset] = []
            for v in value {
                if v != nil {
                    var model = Dataset()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExperimentRequest : Tea.TeaModel {
    public class Options : Tea.TeaModel {
        public var matchNameExactly: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.matchNameExactly != nil {
                map["match_name_exactly"] = self.matchNameExactly!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["match_name_exactly"] as? String {
                self.matchNameExactly = value
            }
        }
    }
    public var labels: String?

    public var maxResults: Int64?

    public var name: String?

    public var options: ListExperimentRequest.Options?

    public var order: String?

    public var orderBy: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pageToken: Int64?

    public var sortBy: String?

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
        try self.options?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.options != nil {
            map["Options"] = self.options?.toMap()
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pageToken != nil {
            map["PageToken"] = self.pageToken!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Options"] as? [String: Any?] {
            var model = ListExperimentRequest.Options()
            model.fromMap(value)
            self.options = model
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PageToken"] as? Int64 {
            self.pageToken = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListExperimentShrinkRequest : Tea.TeaModel {
    public var labels: String?

    public var maxResults: Int64?

    public var name: String?

    public var optionsShrink: String?

    public var order: String?

    public var orderBy: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pageToken: Int64?

    public var sortBy: String?

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
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.optionsShrink != nil {
            map["Options"] = self.optionsShrink!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pageToken != nil {
            map["PageToken"] = self.pageToken!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Options"] as? String {
            self.optionsShrink = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PageToken"] as? Int64 {
            self.pageToken = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListExperimentResponseBody : Tea.TeaModel {
    public var experiments: [Experiment]?

    public var nextPageToken: Int64?

    public var totalCount: Int64?

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
        if self.experiments != nil {
            var tmp : [Any] = []
            for k in self.experiments! {
                tmp.append(k.toMap())
            }
            map["Experiments"] = tmp
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Experiments"] as? [Any?] {
            var tmp : [Experiment] = []
            for v in value {
                if v != nil {
                    var model = Experiment()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.experiments = tmp
        }
        if let value = dict["NextPageToken"] as? Int64 {
            self.nextPageToken = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListExperimentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExperimentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFeaturesRequest : Tea.TeaModel {
    public var names: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.names != nil {
            map["Names"] = self.names!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Names"] as? String {
            self.names = value
        }
    }
}

public class ListFeaturesResponseBody : Tea.TeaModel {
    public var features: [String]?

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
            map["Features"] = self.features!
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
        if let value = dict["Features"] as? [String] {
            self.features = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFeaturesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["LabelFilter"] as? String {
            self.labelFilter = value
        }
        if let value = dict["LabelKeys"] as? String {
            self.labelKeys = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [ListImageLabelsResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = ListImageLabelsResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImageLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var accessibility: String?

    public var imageUri: String?

    public var labels: String?

    public var name: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var sortBy: String?

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
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
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
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["ImageUri"] as? String {
            self.imageUri = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

        public var sourceId: String?

        public var sourceType: String?

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
            if self.sourceId != nil {
                map["SourceId"] = self.sourceId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
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
            if let value = dict["Accessibility"] as? String {
                self.accessibility = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageUri"] as? String {
                self.imageUri = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListImagesResponseBody.Images.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListImagesResponseBody.Images.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentUserId"] as? String {
                self.parentUserId = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["SourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListImagesResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImagesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberName"] as? String {
            self.memberName = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Roles"] as? String {
            self.roles = value
        }
    }
}

public class ListMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var accountName: String?

        public var accountType: String?

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
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["AccountType"] as? String {
                self.accountType = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["MemberId"] as? String {
                self.memberId = value
            }
            if let value = dict["MemberName"] as? String {
                self.memberName = value
            }
            if let value = dict["Roles"] as? [String] {
                self.roles = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [ListMembersResponseBody.Members] = []
            for v in value {
                if v != nil {
                    var model = ListMembersResponseBody.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMembersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["FormatType"] as? String {
            self.formatType = value
        }
        if let value = dict["FrameworkType"] as? String {
            self.frameworkType = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
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
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["VersionName"] as? String {
            self.versionName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Versions"] as? [Any?] {
            var tmp : [ModelVersion] = []
            for v in value {
                if v != nil {
                    var model = ModelVersion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListModelsRequest : Tea.TeaModel {
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

    public var conditions: [ListModelsRequest.Conditions]?

    public var domain: String?

    public var label: String?

    public var modelName: String?

    public var modelType: String?

    public var order: String?

    public var origin: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public var query: String?

    public var sortBy: String?

    public var tag: [ListModelsRequest.Tag]?

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
        if self.collections != nil {
            map["Collections"] = self.collections!
        }
        if self.conditions != nil {
            var tmp : [Any] = []
            for k in self.conditions! {
                tmp.append(k.toMap())
            }
            map["Conditions"] = tmp
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.query != nil {
            map["Query"] = self.query!
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
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collections"] as? String {
            self.collections = value
        }
        if let value = dict["Conditions"] as? [Any?] {
            var tmp : [ListModelsRequest.Conditions] = []
            for v in value {
                if v != nil {
                    var model = ListModelsRequest.Conditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditions = tmp
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
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
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListModelsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListModelsRequest.Tag()
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
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListModelsShrinkRequest : Tea.TeaModel {
    public var collections: String?

    public var conditionsShrink: String?

    public var domain: String?

    public var label: String?

    public var modelName: String?

    public var modelType: String?

    public var order: String?

    public var origin: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var provider: String?

    public var query: String?

    public var sortBy: String?

    public var tagShrink: String?

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
        if self.collections != nil {
            map["Collections"] = self.collections!
        }
        if self.conditionsShrink != nil {
            map["Conditions"] = self.conditionsShrink!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.modelName != nil {
            map["ModelName"] = self.modelName!
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
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Collections"] as? String {
            self.collections = value
        }
        if let value = dict["Conditions"] as? String {
            self.conditionsShrink = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
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
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["Task"] as? String {
            self.task = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Models"] as? [Any?] {
            var tmp : [Model] = []
            for v in value {
                if v != nil {
                    var model = Model()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListModelsResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Accessibility"] as? String {
                    self.accessibility = value
                }
                if let value = dict["EntityAccessType"] as? String {
                    self.entityAccessType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PermissionCode"] as? String {
                self.permissionCode = value
            }
            if let value = dict["PermissionRules"] as? [Any?] {
                var tmp : [ListPermissionsResponseBody.Permissions.PermissionRules] = []
                for v in value {
                    if v != nil {
                        var model = ListPermissionsResponseBody.Permissions.PermissionRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Permissions"] as? [Any?] {
            var tmp : [ListPermissionsResponseBody.Permissions] = []
            for v in value {
                if v != nil {
                    var model = ListPermissionsResponseBody.Permissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPermissionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCodes"] as? String {
            self.productCodes = value
        }
        if let value = dict["ServiceCodes"] as? String {
            self.serviceCodes = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var hasPermissionToPurchase: Bool?

        public var isPurchased: Bool?

        public var productCode: String?

        public var productId: String?

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
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.purchaseUrl != nil {
                map["PurchaseUrl"] = self.purchaseUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasPermissionToPurchase"] as? Bool {
                self.hasPermissionToPurchase = value
            }
            if let value = dict["IsPurchased"] as? Bool {
                self.isPurchased = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["PurchaseUrl"] as? String {
                self.purchaseUrl = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsOpen"] as? Bool {
                self.isOpen = value
            }
            if let value = dict["OpenUrl"] as? String {
                self.openUrl = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Products"] as? [Any?] {
            var tmp : [ListProductsResponseBody.Products] = []
            for v in value {
                if v != nil {
                    var model = ListProductsResponseBody.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Services"] as? [Any?] {
            var tmp : [ListProductsResponseBody.Services] = []
            for v in value {
                if v != nil {
                    var model = ListProductsResponseBody.Services()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProductsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaType"] as? String {
                self.quotaType = value
            }
            if let value = dict["Specs"] as? [Any?] {
                var tmp : [ListQuotasResponseBody.Quotas.Specs] = []
                for v in value {
                    if v != nil {
                        var model = ListQuotasResponseBody.Quotas.Specs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Quotas"] as? [Any?] {
            var tmp : [ListQuotasResponseBody.Quotas] = []
            for v in value {
                if v != nil {
                    var model = ListQuotasResponseBody.Quotas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQuotasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductTypes"] as? String {
            self.productTypes = value
        }
        if let value = dict["QuotaIds"] as? String {
            self.quotaIds = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceTypes"] as? String {
            self.resourceTypes = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["VerboseFields"] as? String {
            self.verboseFields = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Algorithm"] as? String {
                    self.algorithm = value
                }
                if let value = dict["Enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["Key"] as? String {
                    self.key = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OwnerId"] as? String {
                    self.ownerId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CardType"] as? String {
                    self.cardType = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ProductCode"] as? String {
                    self.productCode = value
                }
                if let value = dict["QuotaType"] as? String {
                    self.quotaType = value
                }
                if let value = dict["Specs"] as? [Any?] {
                    var tmp : [ListResourcesResponseBody.Resources.Quotas.Specs] = []
                    for v in value {
                        if v != nil {
                            var model = ListResourcesResponseBody.Resources.Quotas.Specs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Encryption"] as? [String: Any?] {
                var model = ListResourcesResponseBody.Resources.Encryption()
                model.fromMap(value)
                self.encryption = model
            }
            if let value = dict["EnvType"] as? String {
                self.envType = value
            }
            if let value = dict["Executor"] as? [String: Any?] {
                var model = ListResourcesResponseBody.Resources.Executor()
                model.fromMap(value)
                self.executor = model
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [ListResourcesResponseBody.Resources.Labels] = []
                for v in value {
                    if v != nil {
                        var model = ListResourcesResponseBody.Resources.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["Quotas"] as? [Any?] {
                var tmp : [ListResourcesResponseBody.Resources.Quotas] = []
                for v in value {
                    if v != nil {
                        var model = ListResourcesResponseBody.Resources.Quotas()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.quotas = tmp
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Spec"] as? [String: Any] {
                self.spec = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [ListResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = ListResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRunMetricsRequest : Tea.TeaModel {
    public var key: String?

    public var maxResults: Int64?

    public var pageToken: Int64?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.pageToken != nil {
            map["PageToken"] = self.pageToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["PageToken"] as? Int64 {
            self.pageToken = value
        }
    }
}

public class ListRunMetricsResponseBody : Tea.TeaModel {
    public var metrics: [RunMetric]?

    public var nextPageToken: Int64?

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
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [RunMetric] = []
            for v in value {
                if v != nil {
                    var model = RunMetric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["NextPageToken"] as? Int64 {
            self.nextPageToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRunMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRunMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRunMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRunsRequest : Tea.TeaModel {
    public var experimentId: String?

    public var gmtCreateTime: String?

    public var labels: String?

    public var maxResults: Int64?

    public var name: String?

    public var order: String?

    public var orderBy: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var pageToken: Int64?

    public var sortBy: String?

    public var sourceId: String?

    public var sourceType: String?

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
        if self.experimentId != nil {
            map["ExperimentId"] = self.experimentId!
        }
        if self.gmtCreateTime != nil {
            map["GmtCreateTime"] = self.gmtCreateTime!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pageToken != nil {
            map["PageToken"] = self.pageToken!
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
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExperimentId"] as? String {
            self.experimentId = value
        }
        if let value = dict["GmtCreateTime"] as? String {
            self.gmtCreateTime = value
        }
        if let value = dict["Labels"] as? String {
            self.labels = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PageToken"] as? Int64 {
            self.pageToken = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListRunsResponseBody : Tea.TeaModel {
    public var nextPageToken: Int64?

    public var runs: [Run]?

    public var totalCount: Int64?

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
        if self.nextPageToken != nil {
            map["NextPageToken"] = self.nextPageToken!
        }
        if self.runs != nil {
            var tmp : [Any] = []
            for k in self.runs! {
                tmp.append(k.toMap())
            }
            map["Runs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextPageToken"] as? Int64 {
            self.nextPageToken = value
        }
        if let value = dict["Runs"] as? [Any?] {
            var tmp : [Run] = []
            for v in value {
                if v != nil {
                    var model = Run()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.runs = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRunsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRunsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRunsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserConfigsRequest : Tea.TeaModel {
    public var categoryNames: String?

    public var configKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryNames != nil {
            map["CategoryNames"] = self.categoryNames!
        }
        if self.configKeys != nil {
            map["ConfigKeys"] = self.configKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryNames"] as? String {
            self.categoryNames = value
        }
        if let value = dict["ConfigKeys"] as? String {
            self.configKeys = value
        }
    }
}

public class ListUserConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var categoryName: String?

        public var configKey: String?

        public var configValue: String?

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
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.configKey != nil {
                map["ConfigKey"] = self.configKey!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["ConfigKey"] as? String {
                self.configKey = value
            }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
        }
    }
    public var configs: [ListUserConfigsResponseBody.Configs]?

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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
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
        if let value = dict["Configs"] as? [Any?] {
            var tmp : [ListUserConfigsResponseBody.Configs] = []
            for v in value {
                if v != nil {
                    var model = ListUserConfigsResponseBody.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListUserConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspaceUsersRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [ListWorkspaceUsersResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspaceUsersResponseBody.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkspaceUsersResponseBody()
            model.fromMap(value)
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

    public var resourceGroupId: String?

    public var sortBy: String?

    public var status: String?

    public var userId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fields"] as? String {
            self.fields = value
        }
        if let value = dict["ModuleList"] as? String {
            self.moduleList = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["Verbose"] as? Bool {
            self.verbose = value
        }
        if let value = dict["WorkspaceIds"] as? String {
            self.workspaceIds = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
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
            if self.resourceGroupId != nil {
                map["resourceGroupId"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminNames"] as? [String] {
                self.adminNames = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EnvTypes"] as? [String] {
                self.envTypes = value
            }
            if let value = dict["ExtraInfos"] as? [String: Any] {
                self.extraInfos = value
            }
            if let value = dict["GmtCreateTime"] as? String {
                self.gmtCreateTime = value
            }
            if let value = dict["GmtModifiedTime"] as? String {
                self.gmtModifiedTime = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
            if let value = dict["resourceGroupId"] as? String {
                self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceLimits"] as? [String: Any] {
            self.resourceLimits = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Workspaces"] as? [Any?] {
            var tmp : [ListWorkspacesResponseBody.Workspaces] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspacesResponseBody.Workspaces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWorkspacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LogRunMetricsRequest : Tea.TeaModel {
    public var metrics: [RunMetric]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [RunMetric] = []
            for v in value {
                if v != nil {
                    var model = RunMetric()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
    }
}

public class LogRunMetricsResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class LogRunMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LogRunMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LogRunMetricsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishCodeSourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishDatasetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublishImageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveImageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveImageLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveMemberRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetExperimentLabelsRequest : Tea.TeaModel {
    public var labels: [LabelInfo]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [LabelInfo] = []
            for v in value {
                if v != nil {
                    var model = LabelInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
    }
}

public class SetExperimentLabelsResponseBody : Tea.TeaModel {
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

public class SetExperimentLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetExperimentLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetExperimentLabelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetUserConfigsRequest : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var categoryName: String?

        public var configKey: String?

        public var configValue: String?

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
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.configKey != nil {
                map["ConfigKey"] = self.configKey!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["ConfigKey"] as? String {
                self.configKey = value
            }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["Scope"] as? String {
                self.scope = value
            }
        }
    }
    public var configs: [SetUserConfigsRequest.Configs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Configs"] as? [Any?] {
            var tmp : [SetUserConfigsRequest.Configs] = []
            for v in value {
                if v != nil {
                    var model = SetUserConfigsRequest.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
    }
}

public class SetUserConfigsResponseBody : Tea.TeaModel {
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

public class SetUserConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetUserConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopDatasetJobRequest : Tea.TeaModel {
    public var datasetVersion: String?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class StopDatasetJobResponseBody : Tea.TeaModel {
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

public class StopDatasetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDatasetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopDatasetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCodeSourceRequest : Tea.TeaModel {
    public var codeBranch: String?

    public var codeCommit: String?

    public var codeRepo: String?

    public var codeRepoAccessToken: String?

    public var codeRepoUserName: String?

    public var description_: String?

    public var displayName: String?

    public var mountPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.mountPath != nil {
            map["MountPath"] = self.mountPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeBranch"] as? String {
            self.codeBranch = value
        }
        if let value = dict["CodeCommit"] as? String {
            self.codeCommit = value
        }
        if let value = dict["CodeRepo"] as? String {
            self.codeRepo = value
        }
        if let value = dict["CodeRepoAccessToken"] as? String {
            self.codeRepoAccessToken = value
        }
        if let value = dict["CodeRepoUserName"] as? String {
            self.codeRepoUserName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["MountPath"] as? String {
            self.mountPath = value
        }
    }
}

public class UpdateCodeSourceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeSourceId"] as? String {
            self.codeSourceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateCodeSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCodeSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateCodeSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConfigRequest : Tea.TeaModel {
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
    public var categoryName: String?

    public var configKey: String?

    public var configValue: String?

    public var labels: [UpdateConfigRequest.Labels]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.configKey != nil {
            map["ConfigKey"] = self.configKey!
        }
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["ConfigKey"] as? String {
            self.configKey = value
        }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [UpdateConfigRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = UpdateConfigRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
    }
}

public class UpdateConfigResponseBody : Tea.TeaModel {
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

public class UpdateConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConfigsRequest : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
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
        public var categoryName: String?

        public var configKey: String?

        public var configValue: String?

        public var labels: [UpdateConfigsRequest.Configs.Labels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.configKey != nil {
                map["ConfigKey"] = self.configKey!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["Labels"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["ConfigKey"] as? String {
                self.configKey = value
            }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["Labels"] as? [Any?] {
                var tmp : [UpdateConfigsRequest.Configs.Labels] = []
                for v in value {
                    if v != nil {
                        var model = UpdateConfigsRequest.Configs.Labels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.labels = tmp
            }
        }
    }
    public var configs: [UpdateConfigsRequest.Configs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Configs"] as? [Any?] {
            var tmp : [UpdateConfigsRequest.Configs] = []
            for v in value {
                if v != nil {
                    var model = UpdateConfigsRequest.Configs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configs = tmp
        }
    }
}

public class UpdateConfigsResponseBody : Tea.TeaModel {
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

public class UpdateConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConnectionRequest : Tea.TeaModel {
    public class Models : Tea.TeaModel {
        public var displayName: String?

        public var model: String?

        public var modelType: String?

        public var toolCall: Bool?

        public override init() {
            super.init()
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
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.toolCall != nil {
                map["ToolCall"] = self.toolCall!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["ModelType"] as? String {
                self.modelType = value
            }
            if let value = dict["ToolCall"] as? Bool {
                self.toolCall = value
            }
        }
    }
    public var configs: [String: String]?

    public var description_: String?

    public var models: [UpdateConnectionRequest.Models]?

    public var secrets: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configs != nil {
            map["Configs"] = self.configs!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["Models"] = tmp
        }
        if self.secrets != nil {
            map["Secrets"] = self.secrets!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Configs"] as? [String: String] {
            self.configs = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Models"] as? [Any?] {
            var tmp : [UpdateConnectionRequest.Models] = []
            for v in value {
                if v != nil {
                    var model = UpdateConnectionRequest.Models()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.models = tmp
        }
        if let value = dict["Secrets"] as? [String: String] {
            self.secrets = value
        }
    }
}

public class UpdateConnectionResponseBody : Tea.TeaModel {
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

public class UpdateConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatasetRequest : Tea.TeaModel {
    public class SharingConfig : Tea.TeaModel {
        public var sharedTo: [DatasetShareRelationship]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sharedTo != nil {
                var tmp : [Any] = []
                for k in self.sharedTo! {
                    tmp.append(k.toMap())
                }
                map["SharedTo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SharedTo"] as? [Any?] {
                var tmp : [DatasetShareRelationship] = []
                for v in value {
                    if v != nil {
                        var model = DatasetShareRelationship()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sharedTo = tmp
            }
        }
    }
    public var description_: String?

    public var edition: String?

    public var mountAccessReadWriteRoleIdList: [String]?

    public var name: String?

    public var options: String?

    public var sharingConfig: UpdateDatasetRequest.SharingConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sharingConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.mountAccessReadWriteRoleIdList != nil {
            map["MountAccessReadWriteRoleIdList"] = self.mountAccessReadWriteRoleIdList!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.sharingConfig != nil {
            map["SharingConfig"] = self.sharingConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Edition"] as? String {
            self.edition = value
        }
        if let value = dict["MountAccessReadWriteRoleIdList"] as? [String] {
            self.mountAccessReadWriteRoleIdList = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["SharingConfig"] as? [String: Any?] {
            var model = UpdateDatasetRequest.SharingConfig()
            model.fromMap(value)
            self.sharingConfig = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatasetFileMetasRequest : Tea.TeaModel {
    public var datasetFileMetas: [DatasetFileMetaConentUpdate]?

    public var datasetVersion: String?

    public var tagJobId: String?

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
        if self.datasetFileMetas != nil {
            var tmp : [Any] = []
            for k in self.datasetFileMetas! {
                tmp.append(k.toMap())
            }
            map["DatasetFileMetas"] = tmp
        }
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.tagJobId != nil {
            map["TagJobId"] = self.tagJobId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetFileMetas"] as? [Any?] {
            var tmp : [DatasetFileMetaConentUpdate] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetaConentUpdate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasetFileMetas = tmp
        }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["TagJobId"] as? String {
            self.tagJobId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateDatasetFileMetasResponseBody : Tea.TeaModel {
    public var failedDetails: [DatasetFileMetaResponse]?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedDetails != nil {
            var tmp : [Any] = []
            for k in self.failedDetails! {
                tmp.append(k.toMap())
            }
            map["FailedDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedDetails"] as? [Any?] {
            var tmp : [DatasetFileMetaResponse] = []
            for v in value {
                if v != nil {
                    var model = DatasetFileMetaResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failedDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class UpdateDatasetFileMetasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetFileMetasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatasetFileMetasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatasetJobRequest : Tea.TeaModel {
    public var datasetVersion: String?

    public var description_: String?

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
        if self.datasetVersion != nil {
            map["DatasetVersion"] = self.datasetVersion!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetVersion"] as? String {
            self.datasetVersion = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateDatasetJobResponseBody : Tea.TeaModel {
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

public class UpdateDatasetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatasetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatasetJobConfigRequest : Tea.TeaModel {
    public var config: String?

    public var configType: String?

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
        if self.configType != nil {
            map["ConfigType"] = self.configType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["ConfigType"] as? String {
            self.configType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateDatasetJobConfigResponseBody : Tea.TeaModel {
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

public class UpdateDatasetJobConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetJobConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatasetJobConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDatasetVersionRequest : Tea.TeaModel {
    public var dataCount: Int64?

    public var dataSize: Int64?

    public var description_: String?

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
        if self.dataCount != nil {
            map["DataCount"] = self.dataCount!
        }
        if self.dataSize != nil {
            map["DataSize"] = self.dataSize!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCount"] as? Int64 {
            self.dataCount = value
        }
        if let value = dict["DataSize"] as? Int64 {
            self.dataSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
    }
}

public class UpdateDatasetVersionResponseBody : Tea.TeaModel {
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

public class UpdateDatasetVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatasetVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDefaultWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateExperimentRequest : Tea.TeaModel {
    public var accessibility: String?

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
        if self.accessibility != nil {
            map["Accessibility"] = self.accessibility!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateExperimentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelRequest : Tea.TeaModel {
    public var accessibility: String?

    public var domain: String?

    public var extraInfo: [String: Any]?

    public var modelDescription: String?

    public var modelDoc: String?

    public var modelName: String?

    public var modelType: String?

    public var orderNumber: Int64?

    public var origin: String?

    public var parameterSize: Int64?

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
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
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
        if self.task != nil {
            map["Task"] = self.task!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accessibility"] as? String {
            self.accessibility = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["ModelDescription"] as? String {
            self.modelDescription = value
        }
        if let value = dict["ModelDoc"] as? String {
            self.modelDoc = value
        }
        if let value = dict["ModelName"] as? String {
            self.modelName = value
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
        if let value = dict["Task"] as? String {
            self.task = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateModelVersionRequest : Tea.TeaModel {
    public var approvalStatus: String?

    public var compressionSpec: [String: Any]?

    public var distillationSpec: [String: Any]?

    public var evaluationSpec: [String: Any]?

    public var extraInfo: [String: Any]?

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
        if self.compressionSpec != nil {
            map["CompressionSpec"] = self.compressionSpec!
        }
        if self.distillationSpec != nil {
            map["DistillationSpec"] = self.distillationSpec!
        }
        if self.evaluationSpec != nil {
            map["EvaluationSpec"] = self.evaluationSpec!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApprovalStatus"] as? String {
            self.approvalStatus = value
        }
        if let value = dict["CompressionSpec"] as? [String: Any] {
            self.compressionSpec = value
        }
        if let value = dict["DistillationSpec"] as? [String: Any] {
            self.distillationSpec = value
        }
        if let value = dict["EvaluationSpec"] as? [String: Any] {
            self.evaluationSpec = value
        }
        if let value = dict["ExtraInfo"] as? [String: Any] {
            self.extraInfo = value
        }
        if let value = dict["InferenceSpec"] as? [String: Any] {
            self.inferenceSpec = value
        }
        if let value = dict["Metrics"] as? [String: Any] {
            self.metrics = value
        }
        if let value = dict["Options"] as? String {
            self.options = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TrainingSpec"] as? [String: Any] {
            self.trainingSpec = value
        }
        if let value = dict["VersionDescription"] as? String {
            self.versionDescription = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateModelVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRunRequest : Tea.TeaModel {
    public var labels: [Label]?

    public var name: String?

    public var params: [RunParam]?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.params != nil {
            var tmp : [Any] = []
            for k in self.params! {
                tmp.append(k.toMap())
            }
            map["Params"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Params"] as? [Any?] {
            var tmp : [RunParam] = []
            for v in value {
                if v != nil {
                    var model = RunParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
    }
}

public class UpdateRunResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateRunResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWorkspaceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IsDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [UpdateWorkspaceResourceRequest.Labels] = []
            for v in value {
                if v != nil {
                    var model = UpdateWorkspaceResourceRequest.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Spec"] as? [String: Any] {
            self.spec = value
        }
    }
}

public class UpdateWorkspaceResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceIds: [String]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateWorkspaceResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
