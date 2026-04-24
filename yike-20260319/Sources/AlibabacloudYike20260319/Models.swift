import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddYikeUserCreditRequest : Tea.TeaModel {
    public var credit: Int32?

    public var yikeUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credit != nil {
            map["Credit"] = self.credit!
        }
        if self.yikeUserId != nil {
            map["YikeUserId"] = self.yikeUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Credit"] as? Int32 {
            self.credit = value
        }
        if let value = dict["YikeUserId"] as? String {
            self.yikeUserId = value
        }
    }
}

public class AddYikeUserCreditResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class AddYikeUserCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddYikeUserCreditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddYikeUserCreditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetYikeAIAppJobRequest : Tea.TeaModel {
    public var jobIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobIds"] as? String {
            self.jobIds = value
        }
    }
}

public class BatchGetYikeAIAppJobResponseBody : Tea.TeaModel {
    public class JobList : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class AudioResult : Tea.TeaModel {
                public var mediaId: String?

                public var outputUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mediaId != nil {
                        map["MediaId"] = self.mediaId!
                    }
                    if self.outputUrl != nil {
                        map["OutputUrl"] = self.outputUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MediaId"] as? String {
                        self.mediaId = value
                    }
                    if let value = dict["OutputUrl"] as? String {
                        self.outputUrl = value
                    }
                }
            }
            public class ImageResult : Tea.TeaModel {
                public var mediaId: String?

                public var outputUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mediaId != nil {
                        map["MediaId"] = self.mediaId!
                    }
                    if self.outputUrl != nil {
                        map["OutputUrl"] = self.outputUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MediaId"] as? String {
                        self.mediaId = value
                    }
                    if let value = dict["OutputUrl"] as? String {
                        self.outputUrl = value
                    }
                }
            }
            public class VideoResult : Tea.TeaModel {
                public var mediaId: String?

                public var outputUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mediaId != nil {
                        map["MediaId"] = self.mediaId!
                    }
                    if self.outputUrl != nil {
                        map["OutputUrl"] = self.outputUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MediaId"] as? String {
                        self.mediaId = value
                    }
                    if let value = dict["OutputUrl"] as? String {
                        self.outputUrl = value
                    }
                }
            }
            public var audioResult: [BatchGetYikeAIAppJobResponseBody.JobList.Result.AudioResult]?

            public var imageResult: [BatchGetYikeAIAppJobResponseBody.JobList.Result.ImageResult]?

            public var videoResult: [BatchGetYikeAIAppJobResponseBody.JobList.Result.VideoResult]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioResult != nil {
                    var tmp : [Any] = []
                    for k in self.audioResult! {
                        tmp.append(k.toMap())
                    }
                    map["AudioResult"] = tmp
                }
                if self.imageResult != nil {
                    var tmp : [Any] = []
                    for k in self.imageResult! {
                        tmp.append(k.toMap())
                    }
                    map["ImageResult"] = tmp
                }
                if self.videoResult != nil {
                    var tmp : [Any] = []
                    for k in self.videoResult! {
                        tmp.append(k.toMap())
                    }
                    map["VideoResult"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioResult"] as? [Any?] {
                    var tmp : [BatchGetYikeAIAppJobResponseBody.JobList.Result.AudioResult] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetYikeAIAppJobResponseBody.JobList.Result.AudioResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.audioResult = tmp
                }
                if let value = dict["ImageResult"] as? [Any?] {
                    var tmp : [BatchGetYikeAIAppJobResponseBody.JobList.Result.ImageResult] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetYikeAIAppJobResponseBody.JobList.Result.ImageResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.imageResult = tmp
                }
                if let value = dict["VideoResult"] as? [Any?] {
                    var tmp : [BatchGetYikeAIAppJobResponseBody.JobList.Result.VideoResult] = []
                    for v in value {
                        if v != nil {
                            var model = BatchGetYikeAIAppJobResponseBody.JobList.Result.VideoResult()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.videoResult = tmp
                }
            }
        }
        public var appId: String?

        public var appInputConfig: String?

        public var executionFinishTime: String?

        public var executionStartTime: String?

        public var folderId: String?

        public var jobId: String?

        public var productionId: String?

        public var result: BatchGetYikeAIAppJobResponseBody.JobList.Result?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appInputConfig != nil {
                map["AppInputConfig"] = self.appInputConfig!
            }
            if self.executionFinishTime != nil {
                map["ExecutionFinishTime"] = self.executionFinishTime!
            }
            if self.executionStartTime != nil {
                map["ExecutionStartTime"] = self.executionStartTime!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.productionId != nil {
                map["ProductionId"] = self.productionId!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppInputConfig"] as? String {
                self.appInputConfig = value
            }
            if let value = dict["ExecutionFinishTime"] as? String {
                self.executionFinishTime = value
            }
            if let value = dict["ExecutionStartTime"] as? String {
                self.executionStartTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["ProductionId"] as? String {
                self.productionId = value
            }
            if let value = dict["Result"] as? [String: Any?] {
                var model = BatchGetYikeAIAppJobResponseBody.JobList.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var jobList: [BatchGetYikeAIAppJobResponseBody.JobList]?

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
        if self.jobList != nil {
            var tmp : [Any] = []
            for k in self.jobList! {
                tmp.append(k.toMap())
            }
            map["JobList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobList"] as? [Any?] {
            var tmp : [BatchGetYikeAIAppJobResponseBody.JobList] = []
            for v in value {
                if v != nil {
                    var model = BatchGetYikeAIAppJobResponseBody.JobList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchGetYikeAIAppJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetYikeAIAppJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetYikeAIAppJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetYikeAssetMediaInfosRequest : Tea.TeaModel {
    public var mediaIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mediaIds != nil {
            map["MediaIds"] = self.mediaIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaIds"] as? String {
            self.mediaIds = value
        }
    }
}

public class BatchGetYikeAssetMediaInfosResponseBody : Tea.TeaModel {
    public class MediaInfos : Tea.TeaModel {
        public class BizData : Tea.TeaModel {
            public var auditBlockedLabel: String?

            public var auditStatus: String?

            public var creationJobId: String?

            public var folderId: String?

            public var isFavorite: String?

            public var isLogicalDeleted: String?

            public var mediaAssetSubType: String?

            public var mediaAssetType: String?

            public var productionId: String?

            public var sourceId: String?

            public var sourceName: String?

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
                if self.auditBlockedLabel != nil {
                    map["AuditBlockedLabel"] = self.auditBlockedLabel!
                }
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.creationJobId != nil {
                    map["CreationJobId"] = self.creationJobId!
                }
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.isFavorite != nil {
                    map["IsFavorite"] = self.isFavorite!
                }
                if self.isLogicalDeleted != nil {
                    map["IsLogicalDeleted"] = self.isLogicalDeleted!
                }
                if self.mediaAssetSubType != nil {
                    map["MediaAssetSubType"] = self.mediaAssetSubType!
                }
                if self.mediaAssetType != nil {
                    map["MediaAssetType"] = self.mediaAssetType!
                }
                if self.productionId != nil {
                    map["ProductionId"] = self.productionId!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["SourceName"] = self.sourceName!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuditBlockedLabel"] as? String {
                    self.auditBlockedLabel = value
                }
                if let value = dict["AuditStatus"] as? String {
                    self.auditStatus = value
                }
                if let value = dict["CreationJobId"] as? String {
                    self.creationJobId = value
                }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["IsFavorite"] as? String {
                    self.isFavorite = value
                }
                if let value = dict["IsLogicalDeleted"] as? String {
                    self.isLogicalDeleted = value
                }
                if let value = dict["MediaAssetSubType"] as? String {
                    self.mediaAssetSubType = value
                }
                if let value = dict["MediaAssetType"] as? String {
                    self.mediaAssetType = value
                }
                if let value = dict["ProductionId"] as? String {
                    self.productionId = value
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["SourceName"] as? String {
                    self.sourceName = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
            }
        }
        public class FileInfoList : Tea.TeaModel {
            public class FileBasicInfo : Tea.TeaModel {
                public var bitrate: String?

                public var duration: String?

                public var fileName: String?

                public var fileSize: String?

                public var fileStatus: String?

                public var fileType: String?

                public var fileUrl: String?

                public var formatName: String?

                public var height: String?

                public var region: String?

                public var width: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileStatus != nil {
                        map["FileStatus"] = self.fileStatus!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.formatName != nil {
                        map["FormatName"] = self.formatName!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? String {
                        self.fileSize = value
                    }
                    if let value = dict["FileStatus"] as? String {
                        self.fileStatus = value
                    }
                    if let value = dict["FileType"] as? String {
                        self.fileType = value
                    }
                    if let value = dict["FileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["FormatName"] as? String {
                        self.formatName = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public var fileBasicInfo: BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.FileInfoList.FileBasicInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fileBasicInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileBasicInfo != nil {
                    map["FileBasicInfo"] = self.fileBasicInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FileBasicInfo"] as? [String: Any?] {
                    var model = BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.FileInfoList.FileBasicInfo()
                    model.fromMap(value)
                    self.fileBasicInfo = model
                }
            }
        }
        public class MediaBasicInfo : Tea.TeaModel {
            public var biz: String?

            public var businessType: String?

            public var category: String?

            public var coverURL: String?

            public var createTime: String?

            public var deletedTime: String?

            public var description_: String?

            public var inputURL: String?

            public var mediaId: String?

            public var mediaTags: String?

            public var mediaType: String?

            public var modifiedTime: String?

            public var snapshots: String?

            public var source: String?

            public var spriteImages: String?

            public var status: String?

            public var title: String?

            public var transcodeStatus: String?

            public var userData: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.biz != nil {
                    map["Biz"] = self.biz!
                }
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.coverURL != nil {
                    map["CoverURL"] = self.coverURL!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deletedTime != nil {
                    map["DeletedTime"] = self.deletedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.inputURL != nil {
                    map["InputURL"] = self.inputURL!
                }
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.mediaTags != nil {
                    map["MediaTags"] = self.mediaTags!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.snapshots != nil {
                    map["Snapshots"] = self.snapshots!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.spriteImages != nil {
                    map["SpriteImages"] = self.spriteImages!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.transcodeStatus != nil {
                    map["TranscodeStatus"] = self.transcodeStatus!
                }
                if self.userData != nil {
                    map["UserData"] = self.userData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Biz"] as? String {
                    self.biz = value
                }
                if let value = dict["BusinessType"] as? String {
                    self.businessType = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CoverURL"] as? String {
                    self.coverURL = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DeletedTime"] as? String {
                    self.deletedTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["InputURL"] as? String {
                    self.inputURL = value
                }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["MediaTags"] as? String {
                    self.mediaTags = value
                }
                if let value = dict["MediaType"] as? String {
                    self.mediaType = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["Snapshots"] as? String {
                    self.snapshots = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SpriteImages"] as? String {
                    self.spriteImages = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["TranscodeStatus"] as? String {
                    self.transcodeStatus = value
                }
                if let value = dict["UserData"] as? String {
                    self.userData = value
                }
            }
        }
        public var bizData: BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.BizData?

        public var fileInfoList: [BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.FileInfoList]?

        public var mediaBasicInfo: BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.MediaBasicInfo?

        public var mediaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bizData?.validate()
            try self.mediaBasicInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizData != nil {
                map["BizData"] = self.bizData?.toMap()
            }
            if self.fileInfoList != nil {
                var tmp : [Any] = []
                for k in self.fileInfoList! {
                    tmp.append(k.toMap())
                }
                map["FileInfoList"] = tmp
            }
            if self.mediaBasicInfo != nil {
                map["MediaBasicInfo"] = self.mediaBasicInfo?.toMap()
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizData"] as? [String: Any?] {
                var model = BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.BizData()
                model.fromMap(value)
                self.bizData = model
            }
            if let value = dict["FileInfoList"] as? [Any?] {
                var tmp : [BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.FileInfoList] = []
                for v in value {
                    if v != nil {
                        var model = BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.FileInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileInfoList = tmp
            }
            if let value = dict["MediaBasicInfo"] as? [String: Any?] {
                var model = BatchGetYikeAssetMediaInfosResponseBody.MediaInfos.MediaBasicInfo()
                model.fromMap(value)
                self.mediaBasicInfo = model
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
        }
    }
    public var ignoredList: [String]?

    public var mediaInfos: [BatchGetYikeAssetMediaInfosResponseBody.MediaInfos]?

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
        if self.ignoredList != nil {
            map["IgnoredList"] = self.ignoredList!
        }
        if self.mediaInfos != nil {
            var tmp : [Any] = []
            for k in self.mediaInfos! {
                tmp.append(k.toMap())
            }
            map["MediaInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IgnoredList"] as? [String] {
            self.ignoredList = value
        }
        if let value = dict["MediaInfos"] as? [Any?] {
            var tmp : [BatchGetYikeAssetMediaInfosResponseBody.MediaInfos] = []
            for v in value {
                if v != nil {
                    var model = BatchGetYikeAssetMediaInfosResponseBody.MediaInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mediaInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchGetYikeAssetMediaInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetYikeAssetMediaInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetYikeAssetMediaInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateYikeAssetUploadRequest : Tea.TeaModel {
    public var fileExt: String?

    public var fileType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileExt != nil {
            map["FileExt"] = self.fileExt!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileExt"] as? String {
            self.fileExt = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
    }
}

public class CreateYikeAssetUploadResponseBody : Tea.TeaModel {
    public var fileURL: String?

    public var requestId: String?

    public var uploadAddress: String?

    public var uploadAuth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileURL != nil {
            map["FileURL"] = self.fileURL!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uploadAddress != nil {
            map["UploadAddress"] = self.uploadAddress!
        }
        if self.uploadAuth != nil {
            map["UploadAuth"] = self.uploadAuth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileURL"] as? String {
            self.fileURL = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UploadAddress"] as? String {
            self.uploadAddress = value
        }
        if let value = dict["UploadAuth"] as? String {
            self.uploadAuth = value
        }
    }
}

public class CreateYikeAssetUploadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateYikeAssetUploadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateYikeAssetUploadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateYikeProductionRequest : Tea.TeaModel {
    public var title: String?

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
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateYikeProductionResponseBody : Tea.TeaModel {
    public var productionId: String?

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
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateYikeProductionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateYikeProductionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateYikeProductionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateYikeUserRequest : Tea.TeaModel {
    public var nickname: String?

    public var password: String?

    public var productionIds: String?

    public var userNamePrefix: String?

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
        if self.nickname != nil {
            map["Nickname"] = self.nickname!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.productionIds != nil {
            map["ProductionIds"] = self.productionIds!
        }
        if self.userNamePrefix != nil {
            map["UserNamePrefix"] = self.userNamePrefix!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Nickname"] as? String {
            self.nickname = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProductionIds"] as? String {
            self.productionIds = value
        }
        if let value = dict["UserNamePrefix"] as? String {
            self.userNamePrefix = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateYikeUserResponseBody : Tea.TeaModel {
    public class UserInfo : Tea.TeaModel {
        public var nickname: String?

        public var userId: String?

        public var userName: String?

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
            if self.nickname != nil {
                map["Nickname"] = self.nickname!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nickname"] as? String {
                self.nickname = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var userInfo: CreateYikeUserResponseBody.UserInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserInfo"] as? [String: Any?] {
            var model = CreateYikeUserResponseBody.UserInfo()
            model.fromMap(value)
            self.userInfo = model
        }
    }
}

public class CreateYikeUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateYikeUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateYikeUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateYikeWorkspaceRequest : Tea.TeaModel {
    public var title: String?

    public var userCountLimit: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userCountLimit != nil {
            map["UserCountLimit"] = self.userCountLimit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserCountLimit"] as? Int64 {
            self.userCountLimit = value
        }
    }
}

public class CreateYikeWorkspaceResponseBody : Tea.TeaModel {
    public var productionId: String?

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
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
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
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateYikeWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateYikeWorkspaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateYikeWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteYikeAssetMediaInfosRequest : Tea.TeaModel {
    public var logicDelete: Bool?

    public var mediaIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logicDelete != nil {
            map["LogicDelete"] = self.logicDelete!
        }
        if self.mediaIds != nil {
            map["MediaIds"] = self.mediaIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogicDelete"] as? Bool {
            self.logicDelete = value
        }
        if let value = dict["MediaIds"] as? String {
            self.mediaIds = value
        }
    }
}

public class DeleteYikeAssetMediaInfosResponseBody : Tea.TeaModel {
    public var ignoredList: [String]?

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
        if self.ignoredList != nil {
            map["IgnoredList"] = self.ignoredList!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IgnoredList"] as? [String] {
            self.ignoredList = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteYikeAssetMediaInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteYikeAssetMediaInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteYikeAssetMediaInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeAIAppJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetYikeAIAppJobResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AudioResult : Tea.TeaModel {
            public var mediaId: String?

            public var outputUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.outputUrl != nil {
                    map["OutputUrl"] = self.outputUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["OutputUrl"] as? String {
                    self.outputUrl = value
                }
            }
        }
        public class ImageResult : Tea.TeaModel {
            public var mediaId: String?

            public var outputUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.outputUrl != nil {
                    map["OutputUrl"] = self.outputUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["OutputUrl"] as? String {
                    self.outputUrl = value
                }
            }
        }
        public class VideoResult : Tea.TeaModel {
            public var mediaId: String?

            public var outputUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.outputUrl != nil {
                    map["OutputUrl"] = self.outputUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["OutputUrl"] as? String {
                    self.outputUrl = value
                }
            }
        }
        public var audioResult: [GetYikeAIAppJobResponseBody.Result.AudioResult]?

        public var imageResult: [GetYikeAIAppJobResponseBody.Result.ImageResult]?

        public var videoResult: [GetYikeAIAppJobResponseBody.Result.VideoResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioResult != nil {
                var tmp : [Any] = []
                for k in self.audioResult! {
                    tmp.append(k.toMap())
                }
                map["AudioResult"] = tmp
            }
            if self.imageResult != nil {
                var tmp : [Any] = []
                for k in self.imageResult! {
                    tmp.append(k.toMap())
                }
                map["ImageResult"] = tmp
            }
            if self.videoResult != nil {
                var tmp : [Any] = []
                for k in self.videoResult! {
                    tmp.append(k.toMap())
                }
                map["VideoResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AudioResult"] as? [Any?] {
                var tmp : [GetYikeAIAppJobResponseBody.Result.AudioResult] = []
                for v in value {
                    if v != nil {
                        var model = GetYikeAIAppJobResponseBody.Result.AudioResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.audioResult = tmp
            }
            if let value = dict["ImageResult"] as? [Any?] {
                var tmp : [GetYikeAIAppJobResponseBody.Result.ImageResult] = []
                for v in value {
                    if v != nil {
                        var model = GetYikeAIAppJobResponseBody.Result.ImageResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.imageResult = tmp
            }
            if let value = dict["VideoResult"] as? [Any?] {
                var tmp : [GetYikeAIAppJobResponseBody.Result.VideoResult] = []
                for v in value {
                    if v != nil {
                        var model = GetYikeAIAppJobResponseBody.Result.VideoResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.videoResult = tmp
            }
        }
    }
    public var appId: String?

    public var appParams: String?

    public var executionFinishTime: String?

    public var executionStartTime: String?

    public var folderId: String?

    public var jobId: String?

    public var productionId: String?

    public var requestId: String?

    public var result: GetYikeAIAppJobResponseBody.Result?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appParams != nil {
            map["AppParams"] = self.appParams!
        }
        if self.executionFinishTime != nil {
            map["ExecutionFinishTime"] = self.executionFinishTime!
        }
        if self.executionStartTime != nil {
            map["ExecutionStartTime"] = self.executionStartTime!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppParams"] as? String {
            self.appParams = value
        }
        if let value = dict["ExecutionFinishTime"] as? String {
            self.executionFinishTime = value
        }
        if let value = dict["ExecutionStartTime"] as? String {
            self.executionStartTime = value
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetYikeAIAppJobResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetYikeAIAppJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeAIAppJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeAIAppJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeAssetMediaInfoRequest : Tea.TeaModel {
    public var mediaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
    }
}

public class GetYikeAssetMediaInfoResponseBody : Tea.TeaModel {
    public class MediaInfo : Tea.TeaModel {
        public class BizData : Tea.TeaModel {
            public var auditBlockedLabel: String?

            public var auditStatus: String?

            public var creationJobId: String?

            public var folderId: String?

            public var isFavorite: String?

            public var isLogicalDeleted: String?

            public var mediaAssetSubType: String?

            public var mediaAssetType: String?

            public var productionId: String?

            public var prompt: String?

            public var sourceId: String?

            public var sourceName: String?

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
                if self.auditBlockedLabel != nil {
                    map["AuditBlockedLabel"] = self.auditBlockedLabel!
                }
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.creationJobId != nil {
                    map["CreationJobId"] = self.creationJobId!
                }
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.isFavorite != nil {
                    map["IsFavorite"] = self.isFavorite!
                }
                if self.isLogicalDeleted != nil {
                    map["IsLogicalDeleted"] = self.isLogicalDeleted!
                }
                if self.mediaAssetSubType != nil {
                    map["MediaAssetSubType"] = self.mediaAssetSubType!
                }
                if self.mediaAssetType != nil {
                    map["MediaAssetType"] = self.mediaAssetType!
                }
                if self.productionId != nil {
                    map["ProductionId"] = self.productionId!
                }
                if self.prompt != nil {
                    map["Prompt"] = self.prompt!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.sourceName != nil {
                    map["SourceName"] = self.sourceName!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuditBlockedLabel"] as? String {
                    self.auditBlockedLabel = value
                }
                if let value = dict["AuditStatus"] as? String {
                    self.auditStatus = value
                }
                if let value = dict["CreationJobId"] as? String {
                    self.creationJobId = value
                }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["IsFavorite"] as? String {
                    self.isFavorite = value
                }
                if let value = dict["IsLogicalDeleted"] as? String {
                    self.isLogicalDeleted = value
                }
                if let value = dict["MediaAssetSubType"] as? String {
                    self.mediaAssetSubType = value
                }
                if let value = dict["MediaAssetType"] as? String {
                    self.mediaAssetType = value
                }
                if let value = dict["ProductionId"] as? String {
                    self.productionId = value
                }
                if let value = dict["Prompt"] as? String {
                    self.prompt = value
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["SourceName"] as? String {
                    self.sourceName = value
                }
                if let value = dict["SourceType"] as? String {
                    self.sourceType = value
                }
            }
        }
        public class FileInfoList : Tea.TeaModel {
            public class AudioStreamInfoList : Tea.TeaModel {
                public var bitrate: String?

                public var channelLayout: String?

                public var channels: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var fps: String?

                public var index: String?

                public var lang: String?

                public var numFrames: String?

                public var profile: String?

                public var sampleFmt: String?

                public var sampleRate: String?

                public var startTime: String?

                public var timebase: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.channelLayout != nil {
                        map["ChannelLayout"] = self.channelLayout!
                    }
                    if self.channels != nil {
                        map["Channels"] = self.channels!
                    }
                    if self.codecLongName != nil {
                        map["CodecLongName"] = self.codecLongName!
                    }
                    if self.codecName != nil {
                        map["CodecName"] = self.codecName!
                    }
                    if self.codecTag != nil {
                        map["CodecTag"] = self.codecTag!
                    }
                    if self.codecTagString != nil {
                        map["CodecTagString"] = self.codecTagString!
                    }
                    if self.codecTimeBase != nil {
                        map["CodecTimeBase"] = self.codecTimeBase!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fps != nil {
                        map["Fps"] = self.fps!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.numFrames != nil {
                        map["NumFrames"] = self.numFrames!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.sampleFmt != nil {
                        map["SampleFmt"] = self.sampleFmt!
                    }
                    if self.sampleRate != nil {
                        map["SampleRate"] = self.sampleRate!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["ChannelLayout"] as? String {
                        self.channelLayout = value
                    }
                    if let value = dict["Channels"] as? String {
                        self.channels = value
                    }
                    if let value = dict["CodecLongName"] as? String {
                        self.codecLongName = value
                    }
                    if let value = dict["CodecName"] as? String {
                        self.codecName = value
                    }
                    if let value = dict["CodecTag"] as? String {
                        self.codecTag = value
                    }
                    if let value = dict["CodecTagString"] as? String {
                        self.codecTagString = value
                    }
                    if let value = dict["CodecTimeBase"] as? String {
                        self.codecTimeBase = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Fps"] as? String {
                        self.fps = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["NumFrames"] as? String {
                        self.numFrames = value
                    }
                    if let value = dict["Profile"] as? String {
                        self.profile = value
                    }
                    if let value = dict["SampleFmt"] as? String {
                        self.sampleFmt = value
                    }
                    if let value = dict["SampleRate"] as? String {
                        self.sampleRate = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                }
            }
            public class FileBasicInfo : Tea.TeaModel {
                public var bitrate: String?

                public var createTime: String?

                public var duration: String?

                public var fileName: String?

                public var fileSize: String?

                public var fileStatus: String?

                public var fileType: String?

                public var fileUrl: String?

                public var formatName: String?

                public var height: String?

                public var modifiedTime: String?

                public var region: String?

                public var width: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.fileSize != nil {
                        map["FileSize"] = self.fileSize!
                    }
                    if self.fileStatus != nil {
                        map["FileStatus"] = self.fileStatus!
                    }
                    if self.fileType != nil {
                        map["FileType"] = self.fileType!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.formatName != nil {
                        map["FormatName"] = self.formatName!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["FileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["FileSize"] as? String {
                        self.fileSize = value
                    }
                    if let value = dict["FileStatus"] as? String {
                        self.fileStatus = value
                    }
                    if let value = dict["FileType"] as? String {
                        self.fileType = value
                    }
                    if let value = dict["FileUrl"] as? String {
                        self.fileUrl = value
                    }
                    if let value = dict["FormatName"] as? String {
                        self.formatName = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["ModifiedTime"] as? String {
                        self.modifiedTime = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public class SubtitleStreamInfoList : Tea.TeaModel {
                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var index: String?

                public var lang: String?

                public var startTime: String?

                public var timebase: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.codecLongName != nil {
                        map["CodecLongName"] = self.codecLongName!
                    }
                    if self.codecName != nil {
                        map["CodecName"] = self.codecName!
                    }
                    if self.codecTag != nil {
                        map["CodecTag"] = self.codecTag!
                    }
                    if self.codecTagString != nil {
                        map["CodecTagString"] = self.codecTagString!
                    }
                    if self.codecTimeBase != nil {
                        map["CodecTimeBase"] = self.codecTimeBase!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CodecLongName"] as? String {
                        self.codecLongName = value
                    }
                    if let value = dict["CodecName"] as? String {
                        self.codecName = value
                    }
                    if let value = dict["CodecTag"] as? String {
                        self.codecTag = value
                    }
                    if let value = dict["CodecTagString"] as? String {
                        self.codecTagString = value
                    }
                    if let value = dict["CodecTimeBase"] as? String {
                        self.codecTimeBase = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                }
            }
            public class VideoStreamInfoList : Tea.TeaModel {
                public var avgFPS: String?

                public var bitrate: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var dar: String?

                public var duration: String?

                public var fps: String?

                public var hasBFrames: String?

                public var height: String?

                public var index: String?

                public var lang: String?

                public var level: String?

                public var numFrames: String?

                public var pixFmt: String?

                public var profile: String?

                public var rotate: String?

                public var sar: String?

                public var startTime: String?

                public var timebase: String?

                public var width: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avgFPS != nil {
                        map["AvgFPS"] = self.avgFPS!
                    }
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.codecLongName != nil {
                        map["CodecLongName"] = self.codecLongName!
                    }
                    if self.codecName != nil {
                        map["CodecName"] = self.codecName!
                    }
                    if self.codecTag != nil {
                        map["CodecTag"] = self.codecTag!
                    }
                    if self.codecTagString != nil {
                        map["CodecTagString"] = self.codecTagString!
                    }
                    if self.codecTimeBase != nil {
                        map["CodecTimeBase"] = self.codecTimeBase!
                    }
                    if self.dar != nil {
                        map["Dar"] = self.dar!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.fps != nil {
                        map["Fps"] = self.fps!
                    }
                    if self.hasBFrames != nil {
                        map["HasBFrames"] = self.hasBFrames!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.lang != nil {
                        map["Lang"] = self.lang!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.numFrames != nil {
                        map["NumFrames"] = self.numFrames!
                    }
                    if self.pixFmt != nil {
                        map["PixFmt"] = self.pixFmt!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.rotate != nil {
                        map["Rotate"] = self.rotate!
                    }
                    if self.sar != nil {
                        map["Sar"] = self.sar!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timebase != nil {
                        map["Timebase"] = self.timebase!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvgFPS"] as? String {
                        self.avgFPS = value
                    }
                    if let value = dict["Bitrate"] as? String {
                        self.bitrate = value
                    }
                    if let value = dict["CodecLongName"] as? String {
                        self.codecLongName = value
                    }
                    if let value = dict["CodecName"] as? String {
                        self.codecName = value
                    }
                    if let value = dict["CodecTag"] as? String {
                        self.codecTag = value
                    }
                    if let value = dict["CodecTagString"] as? String {
                        self.codecTagString = value
                    }
                    if let value = dict["CodecTimeBase"] as? String {
                        self.codecTimeBase = value
                    }
                    if let value = dict["Dar"] as? String {
                        self.dar = value
                    }
                    if let value = dict["Duration"] as? String {
                        self.duration = value
                    }
                    if let value = dict["Fps"] as? String {
                        self.fps = value
                    }
                    if let value = dict["HasBFrames"] as? String {
                        self.hasBFrames = value
                    }
                    if let value = dict["Height"] as? String {
                        self.height = value
                    }
                    if let value = dict["Index"] as? String {
                        self.index = value
                    }
                    if let value = dict["Lang"] as? String {
                        self.lang = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                    if let value = dict["NumFrames"] as? String {
                        self.numFrames = value
                    }
                    if let value = dict["PixFmt"] as? String {
                        self.pixFmt = value
                    }
                    if let value = dict["Profile"] as? String {
                        self.profile = value
                    }
                    if let value = dict["Rotate"] as? String {
                        self.rotate = value
                    }
                    if let value = dict["Sar"] as? String {
                        self.sar = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Timebase"] as? String {
                        self.timebase = value
                    }
                    if let value = dict["Width"] as? String {
                        self.width = value
                    }
                }
            }
            public var audioStreamInfoList: [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.AudioStreamInfoList]?

            public var fileBasicInfo: GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.FileBasicInfo?

            public var subtitleStreamInfoList: [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.SubtitleStreamInfoList]?

            public var videoStreamInfoList: [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.VideoStreamInfoList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.fileBasicInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.audioStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["AudioStreamInfoList"] = tmp
                }
                if self.fileBasicInfo != nil {
                    map["FileBasicInfo"] = self.fileBasicInfo?.toMap()
                }
                if self.subtitleStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.subtitleStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["SubtitleStreamInfoList"] = tmp
                }
                if self.videoStreamInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.videoStreamInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["VideoStreamInfoList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AudioStreamInfoList"] as? [Any?] {
                    var tmp : [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.AudioStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.AudioStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.audioStreamInfoList = tmp
                }
                if let value = dict["FileBasicInfo"] as? [String: Any?] {
                    var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.FileBasicInfo()
                    model.fromMap(value)
                    self.fileBasicInfo = model
                }
                if let value = dict["SubtitleStreamInfoList"] as? [Any?] {
                    var tmp : [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.SubtitleStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.SubtitleStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subtitleStreamInfoList = tmp
                }
                if let value = dict["VideoStreamInfoList"] as? [Any?] {
                    var tmp : [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.VideoStreamInfoList] = []
                    for v in value {
                        if v != nil {
                            var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList.VideoStreamInfoList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.videoStreamInfoList = tmp
                }
            }
        }
        public class MediaBasicInfo : Tea.TeaModel {
            public var biz: String?

            public var businessType: String?

            public var cateId: Int64?

            public var cateName: String?

            public var category: String?

            public var coverURL: String?

            public var createTime: String?

            public var deletedTime: String?

            public var description_: String?

            public var inputURL: String?

            public var mediaId: String?

            public var mediaTags: String?

            public var mediaType: String?

            public var modifiedTime: String?

            public var referenceId: String?

            public var snapshots: String?

            public var source: String?

            public var spriteImages: String?

            public var status: String?

            public var thumbURL240P: String?

            public var thumbURLWebp: String?

            public var title: String?

            public var uploadSource: String?

            public var userData: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.biz != nil {
                    map["Biz"] = self.biz!
                }
                if self.businessType != nil {
                    map["BusinessType"] = self.businessType!
                }
                if self.cateId != nil {
                    map["CateId"] = self.cateId!
                }
                if self.cateName != nil {
                    map["CateName"] = self.cateName!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.coverURL != nil {
                    map["CoverURL"] = self.coverURL!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deletedTime != nil {
                    map["DeletedTime"] = self.deletedTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.inputURL != nil {
                    map["InputURL"] = self.inputURL!
                }
                if self.mediaId != nil {
                    map["MediaId"] = self.mediaId!
                }
                if self.mediaTags != nil {
                    map["MediaTags"] = self.mediaTags!
                }
                if self.mediaType != nil {
                    map["MediaType"] = self.mediaType!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.referenceId != nil {
                    map["ReferenceId"] = self.referenceId!
                }
                if self.snapshots != nil {
                    map["Snapshots"] = self.snapshots!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.spriteImages != nil {
                    map["SpriteImages"] = self.spriteImages!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.thumbURL240P != nil {
                    map["ThumbURL240P"] = self.thumbURL240P!
                }
                if self.thumbURLWebp != nil {
                    map["ThumbURLWebp"] = self.thumbURLWebp!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.uploadSource != nil {
                    map["UploadSource"] = self.uploadSource!
                }
                if self.userData != nil {
                    map["UserData"] = self.userData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Biz"] as? String {
                    self.biz = value
                }
                if let value = dict["BusinessType"] as? String {
                    self.businessType = value
                }
                if let value = dict["CateId"] as? Int64 {
                    self.cateId = value
                }
                if let value = dict["CateName"] as? String {
                    self.cateName = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CoverURL"] as? String {
                    self.coverURL = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DeletedTime"] as? String {
                    self.deletedTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["InputURL"] as? String {
                    self.inputURL = value
                }
                if let value = dict["MediaId"] as? String {
                    self.mediaId = value
                }
                if let value = dict["MediaTags"] as? String {
                    self.mediaTags = value
                }
                if let value = dict["MediaType"] as? String {
                    self.mediaType = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["ReferenceId"] as? String {
                    self.referenceId = value
                }
                if let value = dict["Snapshots"] as? String {
                    self.snapshots = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["SpriteImages"] as? String {
                    self.spriteImages = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["ThumbURL240P"] as? String {
                    self.thumbURL240P = value
                }
                if let value = dict["ThumbURLWebp"] as? String {
                    self.thumbURLWebp = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["UploadSource"] as? String {
                    self.uploadSource = value
                }
                if let value = dict["UserData"] as? String {
                    self.userData = value
                }
            }
        }
        public var bizData: GetYikeAssetMediaInfoResponseBody.MediaInfo.BizData?

        public var fileInfoList: [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList]?

        public var mediaBasicInfo: GetYikeAssetMediaInfoResponseBody.MediaInfo.MediaBasicInfo?

        public var mediaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bizData?.validate()
            try self.mediaBasicInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizData != nil {
                map["BizData"] = self.bizData?.toMap()
            }
            if self.fileInfoList != nil {
                var tmp : [Any] = []
                for k in self.fileInfoList! {
                    tmp.append(k.toMap())
                }
                map["FileInfoList"] = tmp
            }
            if self.mediaBasicInfo != nil {
                map["MediaBasicInfo"] = self.mediaBasicInfo?.toMap()
            }
            if self.mediaId != nil {
                map["MediaId"] = self.mediaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizData"] as? [String: Any?] {
                var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.BizData()
                model.fromMap(value)
                self.bizData = model
            }
            if let value = dict["FileInfoList"] as? [Any?] {
                var tmp : [GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList] = []
                for v in value {
                    if v != nil {
                        var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.FileInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.fileInfoList = tmp
            }
            if let value = dict["MediaBasicInfo"] as? [String: Any?] {
                var model = GetYikeAssetMediaInfoResponseBody.MediaInfo.MediaBasicInfo()
                model.fromMap(value)
                self.mediaBasicInfo = model
            }
            if let value = dict["MediaId"] as? String {
                self.mediaId = value
            }
        }
    }
    public var mediaInfo: GetYikeAssetMediaInfoResponseBody.MediaInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mediaInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mediaInfo != nil {
            map["MediaInfo"] = self.mediaInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaInfo"] as? [String: Any?] {
            var model = GetYikeAssetMediaInfoResponseBody.MediaInfo()
            model.fromMap(value)
            self.mediaInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetYikeAssetMediaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeAssetMediaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeAssetMediaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeStoryboardJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetYikeStoryboardJobResponseBody : Tea.TeaModel {
    public class JobParams : Tea.TeaModel {
        public var aspectRatio: String?

        public var fileURL: String?

        public var modelParams: String?

        public var narrationVoiceId: String?

        public var resolution: String?

        public var shotPromptMode: String?

        public var shotSplitMode: String?

        public var sourceType: String?

        public var styleId: String?

        public var title: String?

        public var videoModel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aspectRatio != nil {
                map["AspectRatio"] = self.aspectRatio!
            }
            if self.fileURL != nil {
                map["FileURL"] = self.fileURL!
            }
            if self.modelParams != nil {
                map["ModelParams"] = self.modelParams!
            }
            if self.narrationVoiceId != nil {
                map["NarrationVoiceId"] = self.narrationVoiceId!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.shotPromptMode != nil {
                map["ShotPromptMode"] = self.shotPromptMode!
            }
            if self.shotSplitMode != nil {
                map["ShotSplitMode"] = self.shotSplitMode!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.styleId != nil {
                map["StyleId"] = self.styleId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.videoModel != nil {
                map["VideoModel"] = self.videoModel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AspectRatio"] as? String {
                self.aspectRatio = value
            }
            if let value = dict["FileURL"] as? String {
                self.fileURL = value
            }
            if let value = dict["ModelParams"] as? String {
                self.modelParams = value
            }
            if let value = dict["NarrationVoiceId"] as? String {
                self.narrationVoiceId = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["ShotPromptMode"] as? String {
                self.shotPromptMode = value
            }
            if let value = dict["ShotSplitMode"] as? String {
                self.shotSplitMode = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["StyleId"] as? String {
                self.styleId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["VideoModel"] as? String {
                self.videoModel = value
            }
        }
    }
    public class JobResult : Tea.TeaModel {
        public var exceptionStoryboardIds: String?

        public var failureShotList: String?

        public var outputUrl: String?

        public var storyboardInfoList: String?

        public var successStoryboardIds: String?

        public var successStoryboardList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exceptionStoryboardIds != nil {
                map["ExceptionStoryboardIds"] = self.exceptionStoryboardIds!
            }
            if self.failureShotList != nil {
                map["FailureShotList"] = self.failureShotList!
            }
            if self.outputUrl != nil {
                map["OutputUrl"] = self.outputUrl!
            }
            if self.storyboardInfoList != nil {
                map["StoryboardInfoList"] = self.storyboardInfoList!
            }
            if self.successStoryboardIds != nil {
                map["SuccessStoryboardIds"] = self.successStoryboardIds!
            }
            if self.successStoryboardList != nil {
                map["SuccessStoryboardList"] = self.successStoryboardList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExceptionStoryboardIds"] as? String {
                self.exceptionStoryboardIds = value
            }
            if let value = dict["FailureShotList"] as? String {
                self.failureShotList = value
            }
            if let value = dict["OutputUrl"] as? String {
                self.outputUrl = value
            }
            if let value = dict["StoryboardInfoList"] as? String {
                self.storyboardInfoList = value
            }
            if let value = dict["SuccessStoryboardIds"] as? String {
                self.successStoryboardIds = value
            }
            if let value = dict["SuccessStoryboardList"] as? String {
                self.successStoryboardList = value
            }
        }
    }
    public var jobId: String?

    public var jobParams: GetYikeStoryboardJobResponseBody.JobParams?

    public var jobResult: GetYikeStoryboardJobResponseBody.JobResult?

    public var jobStatus: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobParams?.validate()
        try self.jobResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobParams != nil {
            map["JobParams"] = self.jobParams?.toMap()
        }
        if self.jobResult != nil {
            map["JobResult"] = self.jobResult?.toMap()
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["JobParams"] as? [String: Any?] {
            var model = GetYikeStoryboardJobResponseBody.JobParams()
            model.fromMap(value)
            self.jobParams = model
        }
        if let value = dict["JobResult"] as? [String: Any?] {
            var model = GetYikeStoryboardJobResponseBody.JobResult()
            model.fromMap(value)
            self.jobResult = model
        }
        if let value = dict["JobStatus"] as? String {
            self.jobStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetYikeStoryboardJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeStoryboardJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeStoryboardJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeUserRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class GetYikeUserResponseBody : Tea.TeaModel {
    public class UserInfo : Tea.TeaModel {
        public var nickname: String?

        public var userName: String?

        public var workspaceId: String?

        public var yikeUserId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nickname != nil {
                map["Nickname"] = self.nickname!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.yikeUserId != nil {
                map["YikeUserId"] = self.yikeUserId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nickname"] as? String {
                self.nickname = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["YikeUserId"] as? String {
                self.yikeUserId = value
            }
        }
    }
    public var requestId: String?

    public var userInfo: GetYikeUserResponseBody.UserInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserInfo"] as? [String: Any?] {
            var model = GetYikeUserResponseBody.UserInfo()
            model.fromMap(value)
            self.userInfo = model
        }
    }
}

public class GetYikeUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetYikeUserCreditRequest : Tea.TeaModel {
    public var yikeUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.yikeUserId != nil {
            map["YikeUserId"] = self.yikeUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["YikeUserId"] as? String {
            self.yikeUserId = value
        }
    }
}

public class GetYikeUserCreditResponseBody : Tea.TeaModel {
    public var creditTotal: String?

    public var creditUsage: String?

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
        if self.creditTotal != nil {
            map["CreditTotal"] = self.creditTotal!
        }
        if self.creditUsage != nil {
            map["CreditUsage"] = self.creditUsage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreditTotal"] as? String {
            self.creditTotal = value
        }
        if let value = dict["CreditUsage"] as? String {
            self.creditUsage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetYikeUserCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetYikeUserCreditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetYikeUserCreditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListYikeAssetFoldersRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var productionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
    }
}

public class ListYikeAssetFoldersResponseBody : Tea.TeaModel {
    public class FolderList : Tea.TeaModel {
        public var createTime: String?

        public var folderId: String?

        public var folderName: String?

        public var isDefault: Bool?

        public var productionId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.folderName != nil {
                map["FolderName"] = self.folderName!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.productionId != nil {
                map["ProductionId"] = self.productionId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["FolderName"] as? String {
                self.folderName = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["ProductionId"] as? String {
                self.productionId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var folderList: [ListYikeAssetFoldersResponseBody.FolderList]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderList != nil {
            var tmp : [Any] = []
            for k in self.folderList! {
                tmp.append(k.toMap())
            }
            map["FolderList"] = tmp
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderList"] as? [Any?] {
            var tmp : [ListYikeAssetFoldersResponseBody.FolderList] = []
            for v in value {
                if v != nil {
                    var model = ListYikeAssetFoldersResponseBody.FolderList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.folderList = tmp
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
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListYikeAssetFoldersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListYikeAssetFoldersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListYikeAssetFoldersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListYikeProductionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListYikeProductionsResponseBody : Tea.TeaModel {
    public class ProductionList : Tea.TeaModel {
        public var auth: String?

        public var coverUrl: String?

        public var createTime: String?

        public var createUserName: String?

        public var description_: String?

        public var productionId: String?

        public var title: String?

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
            if self.auth != nil {
                map["Auth"] = self.auth!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.productionId != nil {
                map["ProductionId"] = self.productionId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Auth"] as? String {
                self.auth = value
            }
            if let value = dict["CoverUrl"] as? String {
                self.coverUrl = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ProductionId"] as? String {
                self.productionId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var productionList: [ListYikeProductionsResponseBody.ProductionList]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productionList != nil {
            var tmp : [Any] = []
            for k in self.productionList! {
                tmp.append(k.toMap())
            }
            map["ProductionList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductionList"] as? [Any?] {
            var tmp : [ListYikeProductionsResponseBody.ProductionList] = []
            for v in value {
                if v != nil {
                    var model = ListYikeProductionsResponseBody.ProductionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.productionList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListYikeProductionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListYikeProductionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListYikeProductionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PrecheckYikeAIAppJobRequest : Tea.TeaModel {
    public var appId: String?

    public var appParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appParams != nil {
            map["AppParams"] = self.appParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppParams"] as? String {
            self.appParams = value
        }
    }
}

public class PrecheckYikeAIAppJobResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var errorCode: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
        }
    }
    public var requestId: String?

    public var result: [PrecheckYikeAIAppJobResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [PrecheckYikeAIAppJobResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = PrecheckYikeAIAppJobResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class PrecheckYikeAIAppJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PrecheckYikeAIAppJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PrecheckYikeAIAppJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterYikeAssetMediaInfoRequest : Tea.TeaModel {
    public var folderId: String?

    public var inputURL: String?

    public var mediaType: String?

    public var productionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.inputURL != nil {
            map["InputURL"] = self.inputURL!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["InputURL"] as? String {
            self.inputURL = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
    }
}

public class RegisterYikeAssetMediaInfoResponseBody : Tea.TeaModel {
    public var mediaId: String?

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
        if self.mediaId != nil {
            map["MediaId"] = self.mediaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MediaId"] as? String {
            self.mediaId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RegisterYikeAssetMediaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterYikeAssetMediaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RegisterYikeAssetMediaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResumeYikeStoryboardJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class ResumeYikeStoryboardJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResumeYikeStoryboardJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeYikeStoryboardJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResumeYikeStoryboardJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetYikeCallbackConfigRequest : Tea.TeaModel {
    public var callbackConfig: String?

    public var callbackUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackConfig != nil {
            map["CallbackConfig"] = self.callbackConfig!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackConfig"] as? String {
            self.callbackConfig = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
    }
}

public class SetYikeCallbackConfigResponseBody : Tea.TeaModel {
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

public class SetYikeCallbackConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetYikeCallbackConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetYikeCallbackConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetYikeUserRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public var yikeUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.yikeUserId != nil {
            map["YikeUserId"] = self.yikeUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["YikeUserId"] as? String {
            self.yikeUserId = value
        }
    }
}

public class SetYikeUserRoleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class SetYikeUserRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetYikeUserRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetYikeUserRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubYikeUserCreditRequest : Tea.TeaModel {
    public var credit: Int32?

    public var yikeUserId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credit != nil {
            map["Credit"] = self.credit!
        }
        if self.yikeUserId != nil {
            map["YikeUserId"] = self.yikeUserId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Credit"] as? Int32 {
            self.credit = value
        }
        if let value = dict["YikeUserId"] as? String {
            self.yikeUserId = value
        }
    }
}

public class SubYikeUserCreditResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class SubYikeUserCreditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubYikeUserCreditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubYikeUserCreditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitYikeAIAppJobRequest : Tea.TeaModel {
    public var appId: String?

    public var appParams: String?

    public var folderId: String?

    public var productionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appParams != nil {
            map["AppParams"] = self.appParams!
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.productionId != nil {
            map["ProductionId"] = self.productionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppParams"] as? String {
            self.appParams = value
        }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["ProductionId"] as? String {
            self.productionId = value
        }
    }
}

public class SubmitYikeAIAppJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitYikeAIAppJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitYikeAIAppJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitYikeAIAppJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitYikeStoryboardJobRequest : Tea.TeaModel {
    public var aspectRatio: String?

    public var execMode: String?

    public var fileURL: String?

    public var modelParams: String?

    public var narrationVoiceId: String?

    public var resolution: String?

    public var shotPromptMode: String?

    public var shotSplitMode: String?

    public var skipFailureShot: Bool?

    public var sourceType: String?

    public var styleId: String?

    public var title: String?

    public var userData: String?

    public var videoModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aspectRatio != nil {
            map["AspectRatio"] = self.aspectRatio!
        }
        if self.execMode != nil {
            map["ExecMode"] = self.execMode!
        }
        if self.fileURL != nil {
            map["FileURL"] = self.fileURL!
        }
        if self.modelParams != nil {
            map["ModelParams"] = self.modelParams!
        }
        if self.narrationVoiceId != nil {
            map["NarrationVoiceId"] = self.narrationVoiceId!
        }
        if self.resolution != nil {
            map["Resolution"] = self.resolution!
        }
        if self.shotPromptMode != nil {
            map["ShotPromptMode"] = self.shotPromptMode!
        }
        if self.shotSplitMode != nil {
            map["ShotSplitMode"] = self.shotSplitMode!
        }
        if self.skipFailureShot != nil {
            map["SkipFailureShot"] = self.skipFailureShot!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.styleId != nil {
            map["StyleId"] = self.styleId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.videoModel != nil {
            map["VideoModel"] = self.videoModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatio"] as? String {
            self.aspectRatio = value
        }
        if let value = dict["ExecMode"] as? String {
            self.execMode = value
        }
        if let value = dict["FileURL"] as? String {
            self.fileURL = value
        }
        if let value = dict["ModelParams"] as? String {
            self.modelParams = value
        }
        if let value = dict["NarrationVoiceId"] as? String {
            self.narrationVoiceId = value
        }
        if let value = dict["Resolution"] as? String {
            self.resolution = value
        }
        if let value = dict["ShotPromptMode"] as? String {
            self.shotPromptMode = value
        }
        if let value = dict["ShotSplitMode"] as? String {
            self.shotSplitMode = value
        }
        if let value = dict["SkipFailureShot"] as? Bool {
            self.skipFailureShot = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["StyleId"] as? String {
            self.styleId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["VideoModel"] as? String {
            self.videoModel = value
        }
    }
}

public class SubmitYikeStoryboardJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitYikeStoryboardJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitYikeStoryboardJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitYikeStoryboardJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
