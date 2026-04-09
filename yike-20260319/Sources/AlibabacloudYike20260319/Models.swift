import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
