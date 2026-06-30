import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelTranslationTaskRequest : Tea.TeaModel {
    public var APIKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CancelTranslationTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: CancelTranslationTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CancelTranslationTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelTranslationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelTranslationTaskResponseBody?

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
            var model = CancelTranslationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOriginalFileUrlRequest : Tea.TeaModel {
    public var APIKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetOriginalFileUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downloadUrl: String?

        public var expireTime: Int64?

        public var fileName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
        }
    }
    public var code: String?

    public var data: GetOriginalFileUrlResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetOriginalFileUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOriginalFileUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOriginalFileUrlResponseBody?

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
            var model = GetOriginalFileUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTranslatedFileUrlRequest : Tea.TeaModel {
    public var APIKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetTranslatedFileUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downloadUrl: String?

        public var expireTime: Int64?

        public var fileName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
        }
    }
    public var code: String?

    public var data: GetTranslatedFileUrlResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTranslatedFileUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTranslatedFileUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTranslatedFileUrlResponseBody?

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
            var model = GetTranslatedFileUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTranslationTaskRequest : Tea.TeaModel {
    public var APIKey: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetTranslationTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var securityLevel: String?

            public var sourceLanguage: String?

            public var style: String?

            public var targetLanguage: String?

            public var template: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                if self.sourceLanguage != nil {
                    map["SourceLanguage"] = self.sourceLanguage!
                }
                if self.style != nil {
                    map["Style"] = self.style!
                }
                if self.targetLanguage != nil {
                    map["TargetLanguage"] = self.targetLanguage!
                }
                if self.template != nil {
                    map["Template"] = self.template!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SecurityLevel"] as? String {
                    self.securityLevel = value
                }
                if let value = dict["SourceLanguage"] as? String {
                    self.sourceLanguage = value
                }
                if let value = dict["Style"] as? String {
                    self.style = value
                }
                if let value = dict["TargetLanguage"] as? String {
                    self.targetLanguage = value
                }
                if let value = dict["Template"] as? String {
                    self.template = value
                }
            }
        }
        public class ExtractedTerms : Tea.TeaModel {
            public var sourceTerm: String?

            public var targetTerm: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sourceTerm != nil {
                    map["SourceTerm"] = self.sourceTerm!
                }
                if self.targetTerm != nil {
                    map["TargetTerm"] = self.targetTerm!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SourceTerm"] as? String {
                    self.sourceTerm = value
                }
                if let value = dict["TargetTerm"] as? String {
                    self.targetTerm = value
                }
            }
        }
        public var baseTaskId: String?

        public var config: GetTranslationTaskResponseBody.Data.Config?

        public var costCredits: Double?

        public var costTime: Int64?

        public var errorMessage: String?

        public var estimatedCostCredits: Double?

        public var estimatedTime: Int64?

        public var extractedTerms: [GetTranslationTaskResponseBody.Data.ExtractedTerms]?

        public var fileFormat: String?

        public var fileName: String?

        public var finishedAt: String?

        public var fonts: [String: [String]]?

        public var orgId: String?

        public var originalFileName: String?

        public var pageCount: Int64?

        public var progress: Int32?

        public var status: String?

        public var taskId: String?

        public var taskType: String?

        public var wordCount: Int64?

        public var workSpaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baseTaskId != nil {
                map["BaseTaskId"] = self.baseTaskId!
            }
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.costCredits != nil {
                map["CostCredits"] = self.costCredits!
            }
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.estimatedCostCredits != nil {
                map["EstimatedCostCredits"] = self.estimatedCostCredits!
            }
            if self.estimatedTime != nil {
                map["EstimatedTime"] = self.estimatedTime!
            }
            if self.extractedTerms != nil {
                var tmp : [Any] = []
                for k in self.extractedTerms! {
                    tmp.append(k.toMap())
                }
                map["ExtractedTerms"] = tmp
            }
            if self.fileFormat != nil {
                map["FileFormat"] = self.fileFormat!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.finishedAt != nil {
                map["FinishedAt"] = self.finishedAt!
            }
            if self.fonts != nil {
                map["Fonts"] = self.fonts!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.originalFileName != nil {
                map["OriginalFileName"] = self.originalFileName!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            if self.workSpaceId != nil {
                map["WorkSpaceId"] = self.workSpaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BaseTaskId"] as? String {
                self.baseTaskId = value
            }
            if let value = dict["Config"] as? [String: Any?] {
                var model = GetTranslationTaskResponseBody.Data.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["CostCredits"] as? Double {
                self.costCredits = value
            }
            if let value = dict["CostTime"] as? Int64 {
                self.costTime = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["EstimatedCostCredits"] as? Double {
                self.estimatedCostCredits = value
            }
            if let value = dict["EstimatedTime"] as? Int64 {
                self.estimatedTime = value
            }
            if let value = dict["ExtractedTerms"] as? [Any?] {
                var tmp : [GetTranslationTaskResponseBody.Data.ExtractedTerms] = []
                for v in value {
                    if v != nil {
                        var model = GetTranslationTaskResponseBody.Data.ExtractedTerms()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.extractedTerms = tmp
            }
            if let value = dict["FileFormat"] as? String {
                self.fileFormat = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FinishedAt"] as? String {
                self.finishedAt = value
            }
            if let value = dict["Fonts"] as? [String: [String]] {
                self.fonts = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OriginalFileName"] as? String {
                self.originalFileName = value
            }
            if let value = dict["PageCount"] as? Int64 {
                self.pageCount = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["WordCount"] as? Int64 {
                self.wordCount = value
            }
            if let value = dict["WorkSpaceId"] as? String {
                self.workSpaceId = value
            }
        }
    }
    public var code: String?

    public var data: GetTranslationTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTranslationTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTranslationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTranslationTaskResponseBody?

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
            var model = GetTranslationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTranslationTasksRequest : Tea.TeaModel {
    public var APIKey: String?

    public var endTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var originalFileName: String?

    public var sourceLanguage: String?

    public var startTime: String?

    public var status: String?

    public var targetLanguage: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.originalFileName != nil {
            map["OriginalFileName"] = self.originalFileName!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OriginalFileName"] as? String {
            self.originalFileName = value
        }
        if let value = dict["SourceLanguage"] as? String {
            self.sourceLanguage = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TargetLanguage"] as? String {
            self.targetLanguage = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListTranslationTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var completeTime: String?

            public var costCredits: Double?

            public var costTime: Int64?

            public var creator: String?

            public var creatorName: String?

            public var errorMessage: String?

            public var fileFormat: String?

            public var fileName: String?

            public var gmtCreate: String?

            public var orgId: String?

            public var originalFileName: String?

            public var pageCount: Int64?

            public var progress: Int32?

            public var sourceLanguage: String?

            public var startTime: String?

            public var status: String?

            public var targetLanguage: String?

            public var taskId: String?

            public var taskType: String?

            public var template: String?

            public var wordCount: Int64?

            public var workSpaceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completeTime != nil {
                    map["CompleteTime"] = self.completeTime!
                }
                if self.costCredits != nil {
                    map["CostCredits"] = self.costCredits!
                }
                if self.costTime != nil {
                    map["CostTime"] = self.costTime!
                }
                if self.creator != nil {
                    map["Creator"] = self.creator!
                }
                if self.creatorName != nil {
                    map["CreatorName"] = self.creatorName!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.fileFormat != nil {
                    map["FileFormat"] = self.fileFormat!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.orgId != nil {
                    map["OrgId"] = self.orgId!
                }
                if self.originalFileName != nil {
                    map["OriginalFileName"] = self.originalFileName!
                }
                if self.pageCount != nil {
                    map["PageCount"] = self.pageCount!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.sourceLanguage != nil {
                    map["SourceLanguage"] = self.sourceLanguage!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.targetLanguage != nil {
                    map["TargetLanguage"] = self.targetLanguage!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.template != nil {
                    map["Template"] = self.template!
                }
                if self.wordCount != nil {
                    map["WordCount"] = self.wordCount!
                }
                if self.workSpaceId != nil {
                    map["WorkSpaceId"] = self.workSpaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CompleteTime"] as? String {
                    self.completeTime = value
                }
                if let value = dict["CostCredits"] as? Double {
                    self.costCredits = value
                }
                if let value = dict["CostTime"] as? Int64 {
                    self.costTime = value
                }
                if let value = dict["Creator"] as? String {
                    self.creator = value
                }
                if let value = dict["CreatorName"] as? String {
                    self.creatorName = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["FileFormat"] as? String {
                    self.fileFormat = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["OrgId"] as? String {
                    self.orgId = value
                }
                if let value = dict["OriginalFileName"] as? String {
                    self.originalFileName = value
                }
                if let value = dict["PageCount"] as? Int64 {
                    self.pageCount = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["SourceLanguage"] as? String {
                    self.sourceLanguage = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TargetLanguage"] as? String {
                    self.targetLanguage = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
                if let value = dict["Template"] as? String {
                    self.template = value
                }
                if let value = dict["WordCount"] as? Int64 {
                    self.wordCount = value
                }
                if let value = dict["WorkSpaceId"] as? String {
                    self.workSpaceId = value
                }
            }
        }
        public var list: [ListTranslationTasksResponseBody.Data.List]?

        public var maxResults: Int32?

        public var nextToken: String?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListTranslationTasksResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListTranslationTasksResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: ListTranslationTasksResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListTranslationTasksResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListTranslationTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTranslationTasksResponseBody?

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
            var model = ListTranslationTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitTranslationTaskRequest : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var font: String?

        public var sourceLanguage: String?

        public var style: String?

        public var targetLanguage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.sourceLanguage != nil {
                map["SourceLanguage"] = self.sourceLanguage!
            }
            if self.style != nil {
                map["Style"] = self.style!
            }
            if self.targetLanguage != nil {
                map["TargetLanguage"] = self.targetLanguage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Font"] as? String {
                self.font = value
            }
            if let value = dict["SourceLanguage"] as? String {
                self.sourceLanguage = value
            }
            if let value = dict["Style"] as? String {
                self.style = value
            }
            if let value = dict["TargetLanguage"] as? String {
                self.targetLanguage = value
            }
        }
    }
    public class CustomTerms : Tea.TeaModel {
        public var sourceTerm: String?

        public var targetTerm: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceTerm != nil {
                map["SourceTerm"] = self.sourceTerm!
            }
            if self.targetTerm != nil {
                map["TargetTerm"] = self.targetTerm!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SourceTerm"] as? String {
                self.sourceTerm = value
            }
            if let value = dict["TargetTerm"] as? String {
                self.targetTerm = value
            }
        }
    }
    public var APIKey: String?

    public var baseTaskId: String?

    public var config: SubmitTranslationTaskRequest.Config?

    public var customTerms: [SubmitTranslationTaskRequest.CustomTerms]?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.baseTaskId != nil {
            map["BaseTaskId"] = self.baseTaskId!
        }
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.customTerms != nil {
            var tmp : [Any] = []
            for k in self.customTerms! {
                tmp.append(k.toMap())
            }
            map["CustomTerms"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["BaseTaskId"] as? String {
            self.baseTaskId = value
        }
        if let value = dict["Config"] as? [String: Any?] {
            var model = SubmitTranslationTaskRequest.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["CustomTerms"] as? [Any?] {
            var tmp : [SubmitTranslationTaskRequest.CustomTerms] = []
            for v in value {
                if v != nil {
                    var model = SubmitTranslationTaskRequest.CustomTerms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customTerms = tmp
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class SubmitTranslationTaskShrinkRequest : Tea.TeaModel {
    public var APIKey: String?

    public var baseTaskId: String?

    public var configShrink: String?

    public var customTermsShrink: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.baseTaskId != nil {
            map["BaseTaskId"] = self.baseTaskId!
        }
        if self.configShrink != nil {
            map["Config"] = self.configShrink!
        }
        if self.customTermsShrink != nil {
            map["CustomTerms"] = self.customTermsShrink!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["BaseTaskId"] as? String {
            self.baseTaskId = value
        }
        if let value = dict["Config"] as? String {
            self.configShrink = value
        }
        if let value = dict["CustomTerms"] as? String {
            self.customTermsShrink = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class SubmitTranslationTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: SubmitTranslationTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitTranslationTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitTranslationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTranslationTaskResponseBody?

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
            var model = SubmitTranslationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadTranslationFileRequest : Tea.TeaModel {
    public var APIKey: String?

    public var file: String?

    public var fileName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.file != nil {
            map["File"] = self.file!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["File"] as? String {
            self.file = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
    }
}

public class UploadTranslationFileAdvanceRequest : Tea.TeaModel {
    public var APIKey: String?

    public var fileObject: InputStream?

    public var fileName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.fileObject != nil {
            map["File"] = self.fileObject!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["File"] as? InputStream {
            self.fileObject = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
    }
}

public class UploadTranslationFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var creditBreakdown: String?

        public var creditsAvailable: Bool?

        public var detectedLang: String?

        public var estimatedCostCredits: Double?

        public var estimatedTime: Int64?

        public var fonts: [String: [String]]?

        public var pageCount: Int64?

        public var sensitiveDetected: Bool?

        public var sensitiveTags: [String]?

        public var taskId: String?

        public var wordCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creditBreakdown != nil {
                map["CreditBreakdown"] = self.creditBreakdown!
            }
            if self.creditsAvailable != nil {
                map["CreditsAvailable"] = self.creditsAvailable!
            }
            if self.detectedLang != nil {
                map["DetectedLang"] = self.detectedLang!
            }
            if self.estimatedCostCredits != nil {
                map["EstimatedCostCredits"] = self.estimatedCostCredits!
            }
            if self.estimatedTime != nil {
                map["EstimatedTime"] = self.estimatedTime!
            }
            if self.fonts != nil {
                map["Fonts"] = self.fonts!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.sensitiveDetected != nil {
                map["SensitiveDetected"] = self.sensitiveDetected!
            }
            if self.sensitiveTags != nil {
                map["SensitiveTags"] = self.sensitiveTags!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreditBreakdown"] as? String {
                self.creditBreakdown = value
            }
            if let value = dict["CreditsAvailable"] as? Bool {
                self.creditsAvailable = value
            }
            if let value = dict["DetectedLang"] as? String {
                self.detectedLang = value
            }
            if let value = dict["EstimatedCostCredits"] as? Double {
                self.estimatedCostCredits = value
            }
            if let value = dict["EstimatedTime"] as? Int64 {
                self.estimatedTime = value
            }
            if let value = dict["Fonts"] as? [String: [String]] {
                self.fonts = value
            }
            if let value = dict["PageCount"] as? Int64 {
                self.pageCount = value
            }
            if let value = dict["SensitiveDetected"] as? Bool {
                self.sensitiveDetected = value
            }
            if let value = dict["SensitiveTags"] as? [String] {
                self.sensitiveTags = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["WordCount"] as? Int64 {
                self.wordCount = value
            }
        }
    }
    public var code: String?

    public var data: UploadTranslationFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UploadTranslationFileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UploadTranslationFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadTranslationFileResponseBody?

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
            var model = UploadTranslationFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
