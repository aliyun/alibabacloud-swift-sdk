import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAsyncTranslateRequest : Tea.TeaModel {
    public var apiType: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiType") {
            self.apiType = dict["ApiType"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class CreateAsyncTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobId: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: CreateAsyncTranslateResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateAsyncTranslateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAsyncTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAsyncTranslateResponseBody?

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
            var model = CreateAsyncTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDocTranslateTaskRequest : Tea.TeaModel {
    public var callbackUrl: String?

    public var clientToken: String?

    public var fileUrl: String?

    public var scene: String?

    public var sourceLanguage: String?

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
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class CreateDocTranslateTaskAdvanceRequest : Tea.TeaModel {
    public var callbackUrl: String?

    public var clientToken: String?

    public var fileUrlObject: InputStream?

    public var scene: String?

    public var sourceLanguage: String?

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
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("FileUrl") {
            self.fileUrlObject = dict["FileUrl"] as! InputStream
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class CreateDocTranslateTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateDocTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDocTranslateTaskResponseBody?

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
            var model = CreateDocTranslateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageTranslateTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var extra: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

    public var urlList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.urlList != nil {
            map["UrlList"] = self.urlList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Extra") {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
        if dict.keys.contains("UrlList") {
            self.urlList = dict["UrlList"] as! String
        }
    }
}

public class CreateImageTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: CreateImageTranslateTaskResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = CreateImageTranslateTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateImageTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageTranslateTaskResponseBody?

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
            var model = CreateImageTranslateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAsyncTranslateRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class GetAsyncTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detectedLanguage: String?

        public var status: String?

        public var translatedText: String?

        public var wordCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.translatedText != nil {
                map["TranslatedText"] = self.translatedText!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectedLanguage") {
                self.detectedLanguage = dict["DetectedLanguage"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TranslatedText") {
                self.translatedText = dict["TranslatedText"] as! String
            }
            if dict.keys.contains("WordCount") {
                self.wordCount = dict["WordCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetAsyncTranslateResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetAsyncTranslateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAsyncTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncTranslateResponseBody?

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
            var model = GetAsyncTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBatchTranslateRequest : Tea.TeaModel {
    public var apiType: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiType") {
            self.apiType = dict["ApiType"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class GetBatchTranslateResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var translatedList: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.translatedList != nil {
            map["TranslatedList"] = self.translatedList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TranslatedList") {
            self.translatedList = dict["TranslatedList"] as! [[String: Any]]
        }
    }
}

public class GetBatchTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBatchTranslateResponseBody?

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
            var model = GetBatchTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBatchTranslateByVPCRequest : Tea.TeaModel {
    public var apiType: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.apiType != nil {
            map["ApiType"] = self.apiType!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiType") {
            self.apiType = dict["ApiType"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class GetBatchTranslateByVPCResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var translatedList: [[String: Any]]?

    public override init() {
        super.init()
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
        if self.translatedList != nil {
            map["TranslatedList"] = self.translatedList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TranslatedList") {
            self.translatedList = dict["TranslatedList"] as! [[String: Any]]
        }
    }
}

public class GetBatchTranslateByVPCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBatchTranslateByVPCResponseBody?

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
            var model = GetBatchTranslateByVPCResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDetectLanguageRequest : Tea.TeaModel {
    public var sourceText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
    }
}

public class GetDetectLanguageResponseBody : Tea.TeaModel {
    public var detectedLanguage: String?

    public var languageProbabilities: String?

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
        if self.detectedLanguage != nil {
            map["DetectedLanguage"] = self.detectedLanguage!
        }
        if self.languageProbabilities != nil {
            map["LanguageProbabilities"] = self.languageProbabilities!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DetectedLanguage") {
            self.detectedLanguage = dict["DetectedLanguage"] as! String
        }
        if dict.keys.contains("LanguageProbabilities") {
            self.languageProbabilities = dict["LanguageProbabilities"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDetectLanguageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetectLanguageResponseBody?

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
            var model = GetDetectLanguageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDetectLanguageVpcRequest : Tea.TeaModel {
    public var sourceText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
    }
}

public class GetDetectLanguageVpcResponseBody : Tea.TeaModel {
    public var detectedLanguage: String?

    public var languageProbabilities: String?

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
        if self.detectedLanguage != nil {
            map["DetectedLanguage"] = self.detectedLanguage!
        }
        if self.languageProbabilities != nil {
            map["LanguageProbabilities"] = self.languageProbabilities!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DetectedLanguage") {
            self.detectedLanguage = dict["DetectedLanguage"] as! String
        }
        if dict.keys.contains("LanguageProbabilities") {
            self.languageProbabilities = dict["LanguageProbabilities"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDetectLanguageVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetectLanguageVpcResponseBody?

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
            var model = GetDetectLanguageVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocTranslateTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetDocTranslateTaskResponseBody : Tea.TeaModel {
    public var pageCount: Int32?

    public var requestId: String?

    public var status: String?

    public var taskId: String?

    public var translateErrorCode: String?

    public var translateErrorMessage: String?

    public var translateFileUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.translateErrorCode != nil {
            map["TranslateErrorCode"] = self.translateErrorCode!
        }
        if self.translateErrorMessage != nil {
            map["TranslateErrorMessage"] = self.translateErrorMessage!
        }
        if self.translateFileUrl != nil {
            map["TranslateFileUrl"] = self.translateFileUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TranslateErrorCode") {
            self.translateErrorCode = dict["TranslateErrorCode"] as! String
        }
        if dict.keys.contains("TranslateErrorMessage") {
            self.translateErrorMessage = dict["TranslateErrorMessage"] as! String
        }
        if dict.keys.contains("TranslateFileUrl") {
            self.translateFileUrl = dict["TranslateFileUrl"] as! String
        }
    }
}

public class GetDocTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocTranslateTaskResponseBody?

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
            var model = GetDocTranslateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageDiagnoseRequest : Tea.TeaModel {
    public var extra: String?

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
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Extra") {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetImageDiagnoseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var language: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.language != nil {
                map["Language"] = self.language!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetImageDiagnoseResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetImageDiagnoseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetImageDiagnoseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageDiagnoseResponseBody?

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
            var model = GetImageDiagnoseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageTranslateRequest : Tea.TeaModel {
    public var extra: String?

    public var sourceLanguage: String?

    public var targetLanguage: String?

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
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Extra") {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetImageTranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orc: String?

        public var pictureEditor: String?

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
            if self.orc != nil {
                map["Orc"] = self.orc!
            }
            if self.pictureEditor != nil {
                map["PictureEditor"] = self.pictureEditor!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Orc") {
                self.orc = dict["Orc"] as! String
            }
            if dict.keys.contains("PictureEditor") {
                self.pictureEditor = dict["PictureEditor"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetImageTranslateResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetImageTranslateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetImageTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageTranslateResponseBody?

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
            var model = GetImageTranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageTranslateTaskRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetImageTranslateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageData != nil {
                map["ImageData"] = self.imageData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageData") {
                self.imageData = dict["ImageData"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetImageTranslateTaskResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetImageTranslateTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetImageTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageTranslateTaskResponseBody?

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
            var model = GetImageTranslateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTitleDiagnoseRequest : Tea.TeaModel {
    public var categoryId: String?

    public var extra: String?

    public var language: String?

    public var platform: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("Extra") {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class GetTitleDiagnoseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allUppercaseWords: String?

        public var containCoreClasses: String?

        public var disableWords: String?

        public var duplicateWords: String?

        public var languageQualityScore: String?

        public var noFirstUppercaseList: String?

        public var overLengthLimit: String?

        public var totalScore: String?

        public var wordCount: String?

        public var wordSpelledCorrectError: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allUppercaseWords != nil {
                map["AllUppercaseWords"] = self.allUppercaseWords!
            }
            if self.containCoreClasses != nil {
                map["ContainCoreClasses"] = self.containCoreClasses!
            }
            if self.disableWords != nil {
                map["DisableWords"] = self.disableWords!
            }
            if self.duplicateWords != nil {
                map["DuplicateWords"] = self.duplicateWords!
            }
            if self.languageQualityScore != nil {
                map["LanguageQualityScore"] = self.languageQualityScore!
            }
            if self.noFirstUppercaseList != nil {
                map["NoFirstUppercaseList"] = self.noFirstUppercaseList!
            }
            if self.overLengthLimit != nil {
                map["OverLengthLimit"] = self.overLengthLimit!
            }
            if self.totalScore != nil {
                map["TotalScore"] = self.totalScore!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            if self.wordSpelledCorrectError != nil {
                map["WordSpelledCorrectError"] = self.wordSpelledCorrectError!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllUppercaseWords") {
                self.allUppercaseWords = dict["AllUppercaseWords"] as! String
            }
            if dict.keys.contains("ContainCoreClasses") {
                self.containCoreClasses = dict["ContainCoreClasses"] as! String
            }
            if dict.keys.contains("DisableWords") {
                self.disableWords = dict["DisableWords"] as! String
            }
            if dict.keys.contains("DuplicateWords") {
                self.duplicateWords = dict["DuplicateWords"] as! String
            }
            if dict.keys.contains("LanguageQualityScore") {
                self.languageQualityScore = dict["LanguageQualityScore"] as! String
            }
            if dict.keys.contains("NoFirstUppercaseList") {
                self.noFirstUppercaseList = dict["NoFirstUppercaseList"] as! String
            }
            if dict.keys.contains("OverLengthLimit") {
                self.overLengthLimit = dict["OverLengthLimit"] as! String
            }
            if dict.keys.contains("TotalScore") {
                self.totalScore = dict["TotalScore"] as! String
            }
            if dict.keys.contains("WordCount") {
                self.wordCount = dict["WordCount"] as! String
            }
            if dict.keys.contains("WordSpelledCorrectError") {
                self.wordSpelledCorrectError = dict["WordSpelledCorrectError"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetTitleDiagnoseResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetTitleDiagnoseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTitleDiagnoseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTitleDiagnoseResponseBody?

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
            var model = GetTitleDiagnoseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTitleGenerateRequest : Tea.TeaModel {
    public var attributes: String?

    public var categoryId: String?

    public var extra: String?

    public var hotWords: String?

    public var language: String?

    public var platform: String?

    public var title: String?

    public override init() {
        super.init()
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
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.hotWords != nil {
            map["HotWords"] = self.hotWords!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Attributes") {
            self.attributes = dict["Attributes"] as! String
        }
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("Extra") {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("HotWords") {
            self.hotWords = dict["HotWords"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class GetTitleGenerateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var titles: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.titles != nil {
                map["Titles"] = self.titles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Titles") {
                self.titles = dict["Titles"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetTitleGenerateResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetTitleGenerateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTitleGenerateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTitleGenerateResponseBody?

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
            var model = GetTitleGenerateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTitleIntelligenceRequest : Tea.TeaModel {
    public var catLevelThreeId: Int64?

    public var catLevelTwoId: Int64?

    public var extra: String?

    public var keywords: String?

    public var platform: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.catLevelThreeId != nil {
            map["CatLevelThreeId"] = self.catLevelThreeId!
        }
        if self.catLevelTwoId != nil {
            map["CatLevelTwoId"] = self.catLevelTwoId!
        }
        if self.extra != nil {
            map["Extra"] = self.extra!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CatLevelThreeId") {
            self.catLevelThreeId = dict["CatLevelThreeId"] as! Int64
        }
        if dict.keys.contains("CatLevelTwoId") {
            self.catLevelTwoId = dict["CatLevelTwoId"] as! Int64
        }
        if dict.keys.contains("Extra") {
            self.extra = dict["Extra"] as! String
        }
        if dict.keys.contains("Keywords") {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("Platform") {
            self.platform = dict["Platform"] as! String
        }
    }
}

public class GetTitleIntelligenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var titles: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.titles != nil {
                map["Titles"] = self.titles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Titles") {
                self.titles = dict["Titles"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetTitleIntelligenceResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetTitleIntelligenceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTitleIntelligenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTitleIntelligenceResponseBody?

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
            var model = GetTitleIntelligenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTranslateImageBatchResultRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTranslateImageBatchResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var code: Int32?

            public var finalImageUrl: String?

            public var inPaintingUrl: String?

            public var message: String?

            public var sourceImageUrl: String?

            public var success: Bool?

            public var templateJson: String?

            public override init() {
                super.init()
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
                if self.finalImageUrl != nil {
                    map["FinalImageUrl"] = self.finalImageUrl!
                }
                if self.inPaintingUrl != nil {
                    map["InPaintingUrl"] = self.inPaintingUrl!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.sourceImageUrl != nil {
                    map["SourceImageUrl"] = self.sourceImageUrl!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                if self.templateJson != nil {
                    map["TemplateJson"] = self.templateJson!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("FinalImageUrl") {
                    self.finalImageUrl = dict["FinalImageUrl"] as! String
                }
                if dict.keys.contains("InPaintingUrl") {
                    self.inPaintingUrl = dict["InPaintingUrl"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("SourceImageUrl") {
                    self.sourceImageUrl = dict["SourceImageUrl"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
                if dict.keys.contains("TemplateJson") {
                    self.templateJson = dict["TemplateJson"] as! String
                }
            }
        }
        public var result: [GetTranslateImageBatchResultResponseBody.Data.Result]?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                var tmp : [GetTranslateImageBatchResultResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = GetTranslateImageBatchResultResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetTranslateImageBatchResultResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = GetTranslateImageBatchResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTranslateImageBatchResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTranslateImageBatchResultResponseBody?

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
            var model = GetTranslateImageBatchResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTranslateReportRequest : Tea.TeaModel {
    public var apiName: String?

    public var beginTime: String?

    public var endTime: String?

    public var group: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
    }
}

public class GetTranslateReportResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTranslateReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTranslateReportResponseBody?

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
            var model = GetTranslateReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenAlimtServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class OpenAlimtServiceResponseBody : Tea.TeaModel {
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenAlimtServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenAlimtServiceResponseBody?

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
            var model = OpenAlimtServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateRequest : Tea.TeaModel {
    public var context: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.context != nil {
            map["Context"] = self.context!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Context") {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detectedLanguage: String?

        public var translated: String?

        public var wordCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectedLanguage") {
                self.detectedLanguage = dict["DetectedLanguage"] as! String
            }
            if dict.keys.contains("Translated") {
                self.translated = dict["Translated"] as! String
            }
            if dict.keys.contains("WordCount") {
                self.wordCount = dict["WordCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TranslateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateResponseBody?

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
            var model = TranslateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateCertificateRequest : Tea.TeaModel {
    public var certificateType: String?

    public var imageUrl: String?

    public var resultType: String?

    public var sourceLanguage: String?

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
        if self.certificateType != nil {
            map["CertificateType"] = self.certificateType!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateType") {
            self.certificateType = dict["CertificateType"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("ResultType") {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateCertificateAdvanceRequest : Tea.TeaModel {
    public var certificateType: String?

    public var imageUrlObject: InputStream?

    public var resultType: String?

    public var sourceLanguage: String?

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
        if self.certificateType != nil {
            map["CertificateType"] = self.certificateType!
        }
        if self.imageUrlObject != nil {
            map["ImageUrl"] = self.imageUrlObject!
        }
        if self.resultType != nil {
            map["ResultType"] = self.resultType!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateType") {
            self.certificateType = dict["CertificateType"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrlObject = dict["ImageUrl"] as! InputStream
        }
        if dict.keys.contains("ResultType") {
            self.resultType = dict["ResultType"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateCertificateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TranslatedValues : Tea.TeaModel {
            public var key: String?

            public var keyTranslation: String?

            public var value: String?

            public var valueTranslation: String?

            public override init() {
                super.init()
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
                if self.keyTranslation != nil {
                    map["KeyTranslation"] = self.keyTranslation!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueTranslation != nil {
                    map["ValueTranslation"] = self.valueTranslation!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("KeyTranslation") {
                    self.keyTranslation = dict["KeyTranslation"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueTranslation") {
                    self.valueTranslation = dict["ValueTranslation"] as! String
                }
            }
        }
        public var translatedValues: [TranslateCertificateResponseBody.Data.TranslatedValues]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translatedValues != nil {
                var tmp : [Any] = []
                for k in self.translatedValues! {
                    tmp.append(k.toMap())
                }
                map["TranslatedValues"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TranslatedValues") {
                var tmp : [TranslateCertificateResponseBody.Data.TranslatedValues] = []
                for v in dict["TranslatedValues"] as! [Any] {
                    var model = TranslateCertificateResponseBody.Data.TranslatedValues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.translatedValues = tmp
            }
        }
    }
    public var data: TranslateCertificateResponseBody.Data?

    public var requestId: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = TranslateCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateCertificateResponseBody?

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
            var model = TranslateCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateECommerceRequest : Tea.TeaModel {
    public var context: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.context != nil {
            map["Context"] = self.context!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Context") {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateECommerceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detectedLanguage: String?

        public var translated: String?

        public var wordCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectedLanguage") {
                self.detectedLanguage = dict["DetectedLanguage"] as! String
            }
            if dict.keys.contains("Translated") {
                self.translated = dict["Translated"] as! String
            }
            if dict.keys.contains("WordCount") {
                self.wordCount = dict["WordCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateECommerceResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TranslateECommerceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateECommerceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateECommerceResponseBody?

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
            var model = TranslateECommerceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateGeneralRequest : Tea.TeaModel {
    public var context: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.context != nil {
            map["Context"] = self.context!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Context") {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateGeneralResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detectedLanguage: String?

        public var translated: String?

        public var wordCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectedLanguage") {
                self.detectedLanguage = dict["DetectedLanguage"] as! String
            }
            if dict.keys.contains("Translated") {
                self.translated = dict["Translated"] as! String
            }
            if dict.keys.contains("WordCount") {
                self.wordCount = dict["WordCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateGeneralResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TranslateGeneralResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateGeneralResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateGeneralResponseBody?

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
            var model = TranslateGeneralResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateGeneralVpcRequest : Tea.TeaModel {
    public var context: String?

    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.context != nil {
            map["Context"] = self.context!
        }
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Context") {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateGeneralVpcResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detectedLanguage: String?

        public var translated: String?

        public var wordCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectedLanguage != nil {
                map["DetectedLanguage"] = self.detectedLanguage!
            }
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            if self.wordCount != nil {
                map["WordCount"] = self.wordCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectedLanguage") {
                self.detectedLanguage = dict["DetectedLanguage"] as! String
            }
            if dict.keys.contains("Translated") {
                self.translated = dict["Translated"] as! String
            }
            if dict.keys.contains("WordCount") {
                self.wordCount = dict["WordCount"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateGeneralVpcResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TranslateGeneralVpcResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateGeneralVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateGeneralVpcResponseBody?

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
            var model = TranslateGeneralVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateImageRequest : Tea.TeaModel {
    public var ext: String?

    public var field: String?

    public var imageBase64: String?

    public var imageUrl: String?

    public var sourceLanguage: String?

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
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.imageBase64 != nil {
            map["ImageBase64"] = self.imageBase64!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ext") {
            self.ext = dict["Ext"] as! String
        }
        if dict.keys.contains("Field") {
            self.field = dict["Field"] as! String
        }
        if dict.keys.contains("ImageBase64") {
            self.imageBase64 = dict["ImageBase64"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var finalImageUrl: String?

        public var inPaintingUrl: String?

        public var templateJson: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finalImageUrl != nil {
                map["FinalImageUrl"] = self.finalImageUrl!
            }
            if self.inPaintingUrl != nil {
                map["InPaintingUrl"] = self.inPaintingUrl!
            }
            if self.templateJson != nil {
                map["TemplateJson"] = self.templateJson!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinalImageUrl") {
                self.finalImageUrl = dict["FinalImageUrl"] as! String
            }
            if dict.keys.contains("InPaintingUrl") {
                self.inPaintingUrl = dict["InPaintingUrl"] as! String
            }
            if dict.keys.contains("TemplateJson") {
                self.templateJson = dict["TemplateJson"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateImageResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TranslateImageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateImageResponseBody?

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
            var model = TranslateImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateImageBatchRequest : Tea.TeaModel {
    public var customTaskId: String?

    public var ext: String?

    public var field: String?

    public var imageUrls: String?

    public var sourceLanguage: String?

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
        if self.customTaskId != nil {
            map["CustomTaskId"] = self.customTaskId!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomTaskId") {
            self.customTaskId = dict["CustomTaskId"] as! String
        }
        if dict.keys.contains("Ext") {
            self.ext = dict["Ext"] as! String
        }
        if dict.keys.contains("Field") {
            self.field = dict["Field"] as! String
        }
        if dict.keys.contains("ImageUrls") {
            self.imageUrls = dict["ImageUrls"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateImageBatchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateImageBatchResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = TranslateImageBatchResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateImageBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateImageBatchResponseBody?

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
            var model = TranslateImageBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateSearchRequest : Tea.TeaModel {
    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

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
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FormatType") {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateSearchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var translated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Translated") {
                self.translated = dict["Translated"] as! String
            }
        }
    }
    public var code: String?

    public var data: TranslateSearchResponseBody.Data?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = TranslateSearchResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TranslateSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateSearchResponseBody?

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
            var model = TranslateSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
