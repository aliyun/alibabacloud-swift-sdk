import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDocParserJobRequest : Tea.TeaModel {
    public var agentName: String?

    public var asrLanguage: String?

    public var audioClipOutput: Bool?

    public var audioWindowSeconds: Int32?

    public var chunkSummary: Bool?

    public var fileFormat: String?

    public var fileName: String?

    public var fileUrl: String?

    public var frameOutput: Bool?

    public var globalSummary: Bool?

    public var imageMode: String?

    public var imageUnderstanding: String?

    public var mediaChunkIntervalSeconds: Int32?

    public var mediaChunkStrategy: String?

    public var mediaFramesPerMinute: Double?

    public var mediaMaxFrameBudget: Int32?

    public var mediaMinFrameBudget: Int32?

    public var ossFileUrl: String?

    public var outputFormat: String?

    public var parseScene: String?

    public var regionId: String?

    public var responseMode: String?

    public var resultType: String?

    public var tableFormat: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.asrLanguage != nil {
            map["AsrLanguage"] = self.asrLanguage!
        }
        if self.audioClipOutput != nil {
            map["AudioClipOutput"] = self.audioClipOutput!
        }
        if self.audioWindowSeconds != nil {
            map["AudioWindowSeconds"] = self.audioWindowSeconds!
        }
        if self.chunkSummary != nil {
            map["ChunkSummary"] = self.chunkSummary!
        }
        if self.fileFormat != nil {
            map["FileFormat"] = self.fileFormat!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.frameOutput != nil {
            map["FrameOutput"] = self.frameOutput!
        }
        if self.globalSummary != nil {
            map["GlobalSummary"] = self.globalSummary!
        }
        if self.imageMode != nil {
            map["ImageMode"] = self.imageMode!
        }
        if self.imageUnderstanding != nil {
            map["ImageUnderstanding"] = self.imageUnderstanding!
        }
        if self.mediaChunkIntervalSeconds != nil {
            map["MediaChunkIntervalSeconds"] = self.mediaChunkIntervalSeconds!
        }
        if self.mediaChunkStrategy != nil {
            map["MediaChunkStrategy"] = self.mediaChunkStrategy!
        }
        if self.mediaFramesPerMinute != nil {
            map["MediaFramesPerMinute"] = self.mediaFramesPerMinute!
        }
        if self.mediaMaxFrameBudget != nil {
            map["MediaMaxFrameBudget"] = self.mediaMaxFrameBudget!
        }
        if self.mediaMinFrameBudget != nil {
            map["MediaMinFrameBudget"] = self.mediaMinFrameBudget!
        }
        if self.ossFileUrl != nil {
            map["OssFileUrl"] = self.ossFileUrl!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.parseScene != nil {
            map["ParseScene"] = self.parseScene!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.responseMode != nil {
            map["ResponseMode"] = self.responseMode!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.tableFormat != nil {
            map["TableFormat"] = self.tableFormat!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["AsrLanguage"] as? String {
            self.asrLanguage = value
        }
        if let value = dict["AudioClipOutput"] as? Bool {
            self.audioClipOutput = value
        }
        if let value = dict["AudioWindowSeconds"] as? Int32 {
            self.audioWindowSeconds = value
        }
        if let value = dict["ChunkSummary"] as? Bool {
            self.chunkSummary = value
        }
        if let value = dict["FileFormat"] as? String {
            self.fileFormat = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["FrameOutput"] as? Bool {
            self.frameOutput = value
        }
        if let value = dict["GlobalSummary"] as? Bool {
            self.globalSummary = value
        }
        if let value = dict["ImageMode"] as? String {
            self.imageMode = value
        }
        if let value = dict["ImageUnderstanding"] as? String {
            self.imageUnderstanding = value
        }
        if let value = dict["MediaChunkIntervalSeconds"] as? Int32 {
            self.mediaChunkIntervalSeconds = value
        }
        if let value = dict["MediaChunkStrategy"] as? String {
            self.mediaChunkStrategy = value
        }
        if let value = dict["MediaFramesPerMinute"] as? Double {
            self.mediaFramesPerMinute = value
        }
        if let value = dict["MediaMaxFrameBudget"] as? Int32 {
            self.mediaMaxFrameBudget = value
        }
        if let value = dict["MediaMinFrameBudget"] as? Int32 {
            self.mediaMinFrameBudget = value
        }
        if let value = dict["OssFileUrl"] as? String {
            self.ossFileUrl = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["ParseScene"] as? String {
            self.parseScene = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResponseMode"] as? String {
            self.responseMode = value
        }
        if let value = dict["ResultType"] as? String {
            self.resultType = value
        }
        if let value = dict["TableFormat"] as? String {
            self.tableFormat = value
        }
    }
}

public class CreateDocParserJobAdvanceRequest : Tea.TeaModel {
    public var agentName: String?

    public var asrLanguage: String?

    public var audioClipOutput: Bool?

    public var audioWindowSeconds: Int32?

    public var chunkSummary: Bool?

    public var fileFormat: String?

    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var frameOutput: Bool?

    public var globalSummary: Bool?

    public var imageMode: String?

    public var imageUnderstanding: String?

    public var mediaChunkIntervalSeconds: Int32?

    public var mediaChunkStrategy: String?

    public var mediaFramesPerMinute: Double?

    public var mediaMaxFrameBudget: Int32?

    public var mediaMinFrameBudget: Int32?

    public var ossFileUrl: String?

    public var outputFormat: String?

    public var parseScene: String?

    public var regionId: String?

    public var responseMode: String?

    public var resultType: String?

    public var tableFormat: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.asrLanguage != nil {
            map["AsrLanguage"] = self.asrLanguage!
        }
        if self.audioClipOutput != nil {
            map["AudioClipOutput"] = self.audioClipOutput!
        }
        if self.audioWindowSeconds != nil {
            map["AudioWindowSeconds"] = self.audioWindowSeconds!
        }
        if self.chunkSummary != nil {
            map["ChunkSummary"] = self.chunkSummary!
        }
        if self.fileFormat != nil {
            map["FileFormat"] = self.fileFormat!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.frameOutput != nil {
            map["FrameOutput"] = self.frameOutput!
        }
        if self.globalSummary != nil {
            map["GlobalSummary"] = self.globalSummary!
        }
        if self.imageMode != nil {
            map["ImageMode"] = self.imageMode!
        }
        if self.imageUnderstanding != nil {
            map["ImageUnderstanding"] = self.imageUnderstanding!
        }
        if self.mediaChunkIntervalSeconds != nil {
            map["MediaChunkIntervalSeconds"] = self.mediaChunkIntervalSeconds!
        }
        if self.mediaChunkStrategy != nil {
            map["MediaChunkStrategy"] = self.mediaChunkStrategy!
        }
        if self.mediaFramesPerMinute != nil {
            map["MediaFramesPerMinute"] = self.mediaFramesPerMinute!
        }
        if self.mediaMaxFrameBudget != nil {
            map["MediaMaxFrameBudget"] = self.mediaMaxFrameBudget!
        }
        if self.mediaMinFrameBudget != nil {
            map["MediaMinFrameBudget"] = self.mediaMinFrameBudget!
        }
        if self.ossFileUrl != nil {
            map["OssFileUrl"] = self.ossFileUrl!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.parseScene != nil {
            map["ParseScene"] = self.parseScene!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.responseMode != nil {
            map["ResponseMode"] = self.responseMode!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.tableFormat != nil {
            map["TableFormat"] = self.tableFormat!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["AsrLanguage"] as? String {
            self.asrLanguage = value
        }
        if let value = dict["AudioClipOutput"] as? Bool {
            self.audioClipOutput = value
        }
        if let value = dict["AudioWindowSeconds"] as? Int32 {
            self.audioWindowSeconds = value
        }
        if let value = dict["ChunkSummary"] as? Bool {
            self.chunkSummary = value
        }
        if let value = dict["FileFormat"] as? String {
            self.fileFormat = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["FrameOutput"] as? Bool {
            self.frameOutput = value
        }
        if let value = dict["GlobalSummary"] as? Bool {
            self.globalSummary = value
        }
        if let value = dict["ImageMode"] as? String {
            self.imageMode = value
        }
        if let value = dict["ImageUnderstanding"] as? String {
            self.imageUnderstanding = value
        }
        if let value = dict["MediaChunkIntervalSeconds"] as? Int32 {
            self.mediaChunkIntervalSeconds = value
        }
        if let value = dict["MediaChunkStrategy"] as? String {
            self.mediaChunkStrategy = value
        }
        if let value = dict["MediaFramesPerMinute"] as? Double {
            self.mediaFramesPerMinute = value
        }
        if let value = dict["MediaMaxFrameBudget"] as? Int32 {
            self.mediaMaxFrameBudget = value
        }
        if let value = dict["MediaMinFrameBudget"] as? Int32 {
            self.mediaMinFrameBudget = value
        }
        if let value = dict["OssFileUrl"] as? String {
            self.ossFileUrl = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["ParseScene"] as? String {
            self.parseScene = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResponseMode"] as? String {
            self.responseMode = value
        }
        if let value = dict["ResultType"] as? String {
            self.resultType = value
        }
        if let value = dict["TableFormat"] as? String {
            self.tableFormat = value
        }
    }
}

public class CreateDocParserJobResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: Int32?

    public var jobId: String?

    public var requestId: String?

    public var result: String?

    public var resultType: String?

    public var resultUrl: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.resultUrl != nil {
            map["ResultUrl"] = self.resultUrl!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["ResultType"] as? String {
            self.resultType = value
        }
        if let value = dict["ResultUrl"] as? String {
            self.resultUrl = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDocParserJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDocParserJobResponseBody?

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
            var model = CreateDocParserJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDocParserJobResultRequest : Tea.TeaModel {
    public var agentName: String?

    public var jobId: String?

    public var regionId: String?

    public var resultType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResultType"] as? String {
            self.resultType = value
        }
    }
}

public class DescribeDocParserJobResultResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var result: String?

    public var resultType: String?

    public var resultUrl: String?

    public var success: Bool?

    public override init() {
        super.init()
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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.resultUrl != nil {
            map["ResultUrl"] = self.resultUrl!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["ResultType"] as? String {
            self.resultType = value
        }
        if let value = dict["ResultUrl"] as? String {
            self.resultUrl = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDocParserJobResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDocParserJobResultResponseBody?

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
            var model = DescribeDocParserJobResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDocParserJobStatusRequest : Tea.TeaModel {
    public var agentName: String?

    public var jobId: String?

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
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDocParserJobStatusResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

    public var failureMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public override init() {
        super.init()
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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.failureMessage != nil {
            map["FailureMessage"] = self.failureMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["FailureMessage"] as? String {
            self.failureMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDocParserJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDocParserJobStatusResponseBody?

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
            var model = DescribeDocParserJobStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class WebFetchRequest : Tea.TeaModel {
    public var agentName: String?

    public var outputFormat: String?

    public var regionId: String?

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
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class WebFetchResponseBody : Tea.TeaModel {
    public var content: String?

    public var contentFormat: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

    public var title: String?

    public var url: String?

    public var urlType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentFormat != nil {
            map["ContentFormat"] = self.contentFormat!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.urlType != nil {
            map["UrlType"] = self.urlType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentFormat"] as? String {
            self.contentFormat = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
        if let value = dict["UrlType"] as? String {
            self.urlType = value
        }
    }
}

public class WebFetchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WebFetchResponseBody?

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
            var model = WebFetchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class WebSearchRequest : Tea.TeaModel {
    public var agentName: String?

    public var maxResults: Int32?

    public var query: String?

    public var regionId: String?

    public var urlScopeDomains: String?

    public var urlScopeMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.urlScopeDomains != nil {
            map["UrlScopeDomains"] = self.urlScopeDomains!
        }
        if self.urlScopeMode != nil {
            map["UrlScopeMode"] = self.urlScopeMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UrlScopeDomains"] as? String {
            self.urlScopeDomains = value
        }
        if let value = dict["UrlScopeMode"] as? String {
            self.urlScopeMode = value
        }
    }
}

public class WebSearchResponseBody : Tea.TeaModel {
    public class SearchResult : Tea.TeaModel {
        public var snippet: String?

        public var title: String?

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
            if self.snippet != nil {
                map["Snippet"] = self.snippet!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Snippet"] as? String {
                self.snippet = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var httpStatusCode: Int32?

    public var query: String?

    public var requestId: String?

    public var searchResult: [WebSearchResponseBody.SearchResult]?

    public var success: Bool?

    public var totalResults: Int32?

    public override init() {
        super.init()
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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchResult != nil {
            var tmp : [Any] = []
            for k in self.searchResult! {
                tmp.append(k.toMap())
            }
            map["SearchResult"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalResults != nil {
            map["TotalResults"] = self.totalResults!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SearchResult"] as? [Any?] {
            var tmp : [WebSearchResponseBody.SearchResult] = []
            for v in value {
                if v != nil {
                    var model = WebSearchResponseBody.SearchResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.searchResult = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalResults"] as? Int32 {
            self.totalResults = value
        }
    }
}

public class WebSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WebSearchResponseBody?

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
            var model = WebSearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
