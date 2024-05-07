import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AsrRealtimeRequest : Tea.TeaModel {
    public var appId: String?

    public var customizationId: String?

    public var disfluency: Bool?

    public var enableIgnoreSentenceTimeout: Bool?

    public var enableIntermediateResult: Bool?

    public var enableInverseTextNormalization: Bool?

    public var enablePunctuationPrediction: Bool?

    public var enableSemanticSentenceDetection: Bool?

    public var enableWords: Bool?

    public var fileUrl: String?

    public var format: String?

    public var maxSentenceSilence: Int64?

    public var sampleRate: Int64?

    public var speechNoiseThreshold: Double?

    public var vocabularyId: String?

    public override init() {
        super.init()
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
        if self.customizationId != nil {
            map["CustomizationId"] = self.customizationId!
        }
        if self.disfluency != nil {
            map["Disfluency"] = self.disfluency!
        }
        if self.enableIgnoreSentenceTimeout != nil {
            map["EnableIgnoreSentenceTimeout"] = self.enableIgnoreSentenceTimeout!
        }
        if self.enableIntermediateResult != nil {
            map["EnableIntermediateResult"] = self.enableIntermediateResult!
        }
        if self.enableInverseTextNormalization != nil {
            map["EnableInverseTextNormalization"] = self.enableInverseTextNormalization!
        }
        if self.enablePunctuationPrediction != nil {
            map["EnablePunctuationPrediction"] = self.enablePunctuationPrediction!
        }
        if self.enableSemanticSentenceDetection != nil {
            map["EnableSemanticSentenceDetection"] = self.enableSemanticSentenceDetection!
        }
        if self.enableWords != nil {
            map["EnableWords"] = self.enableWords!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.format != nil {
            map["Format"] = self.format!
        }
        if self.maxSentenceSilence != nil {
            map["MaxSentenceSilence"] = self.maxSentenceSilence!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.speechNoiseThreshold != nil {
            map["SpeechNoiseThreshold"] = self.speechNoiseThreshold!
        }
        if self.vocabularyId != nil {
            map["VocabularyId"] = self.vocabularyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CustomizationId") && dict["CustomizationId"] != nil {
            self.customizationId = dict["CustomizationId"] as! String
        }
        if dict.keys.contains("Disfluency") && dict["Disfluency"] != nil {
            self.disfluency = dict["Disfluency"] as! Bool
        }
        if dict.keys.contains("EnableIgnoreSentenceTimeout") && dict["EnableIgnoreSentenceTimeout"] != nil {
            self.enableIgnoreSentenceTimeout = dict["EnableIgnoreSentenceTimeout"] as! Bool
        }
        if dict.keys.contains("EnableIntermediateResult") && dict["EnableIntermediateResult"] != nil {
            self.enableIntermediateResult = dict["EnableIntermediateResult"] as! Bool
        }
        if dict.keys.contains("EnableInverseTextNormalization") && dict["EnableInverseTextNormalization"] != nil {
            self.enableInverseTextNormalization = dict["EnableInverseTextNormalization"] as! Bool
        }
        if dict.keys.contains("EnablePunctuationPrediction") && dict["EnablePunctuationPrediction"] != nil {
            self.enablePunctuationPrediction = dict["EnablePunctuationPrediction"] as! Bool
        }
        if dict.keys.contains("EnableSemanticSentenceDetection") && dict["EnableSemanticSentenceDetection"] != nil {
            self.enableSemanticSentenceDetection = dict["EnableSemanticSentenceDetection"] as! Bool
        }
        if dict.keys.contains("EnableWords") && dict["EnableWords"] != nil {
            self.enableWords = dict["EnableWords"] as! Bool
        }
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.fileUrl = dict["FileUrl"] as! String
        }
        if dict.keys.contains("Format") && dict["Format"] != nil {
            self.format = dict["Format"] as! String
        }
        if dict.keys.contains("MaxSentenceSilence") && dict["MaxSentenceSilence"] != nil {
            self.maxSentenceSilence = dict["MaxSentenceSilence"] as! Int64
        }
        if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
            self.sampleRate = dict["SampleRate"] as! Int64
        }
        if dict.keys.contains("SpeechNoiseThreshold") && dict["SpeechNoiseThreshold"] != nil {
            self.speechNoiseThreshold = dict["SpeechNoiseThreshold"] as! Double
        }
        if dict.keys.contains("VocabularyId") && dict["VocabularyId"] != nil {
            self.vocabularyId = dict["VocabularyId"] as! String
        }
    }
}

public class AsrRealtimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var beginTime: Int64?

        public var code: Int32?

        public var confidence: Double?

        public var id: String?

        public var message: String?

        public var name: String?

        public var result: String?

        public var status: String?

        public var taskId: String?

        public var time: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.confidence != nil {
                map["Confidence"] = self.confidence!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int32
            }
            if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
                self.confidence = dict["Confidence"] as! Double
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
                self.time = dict["Time"] as! Int64
            }
        }
    }
    public var code: Int32?

    public var data: AsrRealtimeResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AsrRealtimeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AsrRealtimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsrRealtimeResponseBody?

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
            var model = AsrRealtimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AsrSentenceRequest : Tea.TeaModel {
    public class AsrRequest : Tea.TeaModel {
        public var appId: String?

        public var enableInverseTextNormalization: Bool?

        public var enablePunctuationPrediction: Bool?

        public var enableVoiceDetection: Bool?

        public var fileUrl: String?

        public var format: String?

        public var sampleRate: Int32?

        public override init() {
            super.init()
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
            if self.enableInverseTextNormalization != nil {
                map["EnableInverseTextNormalization"] = self.enableInverseTextNormalization!
            }
            if self.enablePunctuationPrediction != nil {
                map["EnablePunctuationPrediction"] = self.enablePunctuationPrediction!
            }
            if self.enableVoiceDetection != nil {
                map["EnableVoiceDetection"] = self.enableVoiceDetection!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("EnableInverseTextNormalization") && dict["EnableInverseTextNormalization"] != nil {
                self.enableInverseTextNormalization = dict["EnableInverseTextNormalization"] as! Bool
            }
            if dict.keys.contains("EnablePunctuationPrediction") && dict["EnablePunctuationPrediction"] != nil {
                self.enablePunctuationPrediction = dict["EnablePunctuationPrediction"] as! Bool
            }
            if dict.keys.contains("EnableVoiceDetection") && dict["EnableVoiceDetection"] != nil {
                self.enableVoiceDetection = dict["EnableVoiceDetection"] as! Bool
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
                self.sampleRate = dict["SampleRate"] as! Int32
            }
        }
    }
    public var asrRequest: AsrSentenceRequest.AsrRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.asrRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asrRequest != nil {
            map["AsrRequest"] = self.asrRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsrRequest") && dict["AsrRequest"] != nil {
            var model = AsrSentenceRequest.AsrRequest()
            model.fromMap(dict["AsrRequest"] as! [String: Any])
            self.asrRequest = model
        }
    }
}

public class AsrSentenceShrinkRequest : Tea.TeaModel {
    public var asrRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asrRequestShrink != nil {
            map["AsrRequest"] = self.asrRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsrRequest") && dict["AsrRequest"] != nil {
            self.asrRequestShrink = dict["AsrRequest"] as! String
        }
    }
}

public class AsrSentenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int32?

        public var id: String?

        public var message: String?

        public var name: String?

        public var result: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: AsrSentenceResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AsrSentenceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AsrSentenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsrSentenceResponseBody?

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
            var model = AsrSentenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AsrTaskRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var appId: String?

        public var asrTaskId: String?

        public var event: String?

        public var roomId: String?

        public var timestamp: Int64?

        public override init() {
            super.init()
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
            if self.asrTaskId != nil {
                map["AsrTaskId"] = self.asrTaskId!
            }
            if self.event != nil {
                map["Event"] = self.event!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AsrTaskId") && dict["AsrTaskId"] != nil {
                self.asrTaskId = dict["AsrTaskId"] as! String
            }
            if dict.keys.contains("Event") && dict["Event"] != nil {
                self.event = dict["Event"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var request: AsrTaskRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = AsrTaskRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class AsrTaskShrinkRequest : Tea.TeaModel {
    public var requestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestShrink != nil {
            map["Request"] = self.requestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            self.requestShrink = dict["Request"] as! String
        }
    }
}

public class AsrTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: AsrTaskResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = AsrTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AsrTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsrTaskResponseBody?

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
            var model = AsrTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AssociateRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var clientBaseParam: String?

    public var clientVersion: String?

    public var departmentId: String?

    public var roomId: String?

    public override init() {
        super.init()
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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class AssociateRoomResponseBody : Tea.TeaModel {
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: String?

    public var errors: [AssociateRoomResponseBody.Errors]?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [AssociateRoomResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = AssociateRoomResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AssociateRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateRoomResponseBody?

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
            var model = AssociateRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppRequest : Tea.TeaModel {
    public var clientToken: String?

    public var departmentId: String?

    public var name: String?

    public var packageName: String?

    public override init() {
        super.init()
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
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
            self.packageName = dict["PackageName"] as! String
        }
    }
}

public class CreateAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var creatorName: String?

        public var disabled: Bool?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.creatorName != nil {
                map["CreatorName"] = self.creatorName!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("CreatorName") && dict["CreatorName"] != nil {
                self.creatorName = dict["CreatorName"] as! String
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateAppResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppResponseBody?

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
            var model = CreateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDepartmentRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var label: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateDepartmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var description_: String?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDepartmentResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateDepartmentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDepartmentResponseBody?

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
            var model = CreateDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDetectProcessRequest : Tea.TeaModel {
    public var content: String?

    public var draft: String?

    public var name: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.draft != nil {
            map["Draft"] = self.draft!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Draft") && dict["Draft"] != nil {
            self.draft = dict["Draft"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CreateDetectProcessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var disabled: Bool?

        public var draft: String?

        public var id: String?

        public var md5: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.draft != nil {
                map["Draft"] = self.draft!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! Bool
            }
            if dict.keys.contains("Draft") && dict["Draft"] != nil {
                self.draft = dict["Draft"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Md5") && dict["Md5"] != nil {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDetectProcessResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateDetectProcessResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDetectProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDetectProcessResponseBody?

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
            var model = CreateDetectProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var content: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var id: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateRuleResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRuleResponseBody?

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
            var model = CreateRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSignatureRequest : Tea.TeaModel {
    public var appId: String?

    public var clientBaseParam: String?

    public var clientVersion: String?

    public var expireTime: Int64?

    public var uid: String?

    public override init() {
        super.init()
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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class CreateSignatureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireTime: String?

        public var rtcAppId: String?

        public var rtcBizName: String?

        public var rtcSign: String?

        public var rtcWorkspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.rtcAppId != nil {
                map["RtcAppId"] = self.rtcAppId!
            }
            if self.rtcBizName != nil {
                map["RtcBizName"] = self.rtcBizName!
            }
            if self.rtcSign != nil {
                map["RtcSign"] = self.rtcSign!
            }
            if self.rtcWorkspaceId != nil {
                map["RtcWorkspaceId"] = self.rtcWorkspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("RtcAppId") && dict["RtcAppId"] != nil {
                self.rtcAppId = dict["RtcAppId"] as! String
            }
            if dict.keys.contains("RtcBizName") && dict["RtcBizName"] != nil {
                self.rtcBizName = dict["RtcBizName"] as! String
            }
            if dict.keys.contains("RtcSign") && dict["RtcSign"] != nil {
                self.rtcSign = dict["RtcSign"] as! String
            }
            if dict.keys.contains("RtcWorkspaceId") && dict["RtcWorkspaceId"] != nil {
                self.rtcWorkspaceId = dict["RtcWorkspaceId"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateSignatureResponseBody.Data?

    public var errors: [CreateSignatureResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateSignatureResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [CreateSignatureResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = CreateSignatureResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateSignatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSignatureResponseBody?

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
            var model = CreateSignatureResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTaskGroupRequest : Tea.TeaModel {
    public class VideoInfo : Tea.TeaModel {
        public var ruleId: String?

        public var videoMetaUrl: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.videoMetaUrl != nil {
                map["VideoMetaUrl"] = self.videoMetaUrl!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("VideoMetaUrl") && dict["VideoMetaUrl"] != nil {
                self.videoMetaUrl = dict["VideoMetaUrl"] as! String
            }
            if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                self.videoUrl = dict["VideoUrl"] as! String
            }
        }
    }
    public var appId: String?

    public var clientToken: String?

    public var day: [Int32]?

    public var expireAt: String?

    public var groupName: String?

    public var ruleId: String?

    public var runnableTimeFrom: String?

    public var runnableTimeTo: String?

    public var triggerPeriod: String?

    public var videoInfo: [CreateTaskGroupRequest.VideoInfo]?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.day != nil {
            map["Day"] = self.day!
        }
        if self.expireAt != nil {
            map["ExpireAt"] = self.expireAt!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.runnableTimeFrom != nil {
            map["RunnableTimeFrom"] = self.runnableTimeFrom!
        }
        if self.runnableTimeTo != nil {
            map["RunnableTimeTo"] = self.runnableTimeTo!
        }
        if self.triggerPeriod != nil {
            map["TriggerPeriod"] = self.triggerPeriod!
        }
        if self.videoInfo != nil {
            var tmp : [Any] = []
            for k in self.videoInfo! {
                tmp.append(k.toMap())
            }
            map["VideoInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Day") && dict["Day"] != nil {
            self.day = dict["Day"] as! [Int32]
        }
        if dict.keys.contains("ExpireAt") && dict["ExpireAt"] != nil {
            self.expireAt = dict["ExpireAt"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RunnableTimeFrom") && dict["RunnableTimeFrom"] != nil {
            self.runnableTimeFrom = dict["RunnableTimeFrom"] as! String
        }
        if dict.keys.contains("RunnableTimeTo") && dict["RunnableTimeTo"] != nil {
            self.runnableTimeTo = dict["RunnableTimeTo"] as! String
        }
        if dict.keys.contains("TriggerPeriod") && dict["TriggerPeriod"] != nil {
            self.triggerPeriod = dict["TriggerPeriod"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            var tmp : [CreateTaskGroupRequest.VideoInfo] = []
            for v in dict["VideoInfo"] as! [Any] {
                var model = CreateTaskGroupRequest.VideoInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.videoInfo = tmp
        }
    }
}

public class CreateTaskGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completedTasks: Int32?

        public var createdAt: String?

        public var id: String?

        public var name: String?

        public var ruleId: String?

        public var ruleName: String?

        public var status: String?

        public var taskIds: [String]?

        public var totalTasks: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completedTasks != nil {
                map["CompletedTasks"] = self.completedTasks!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskIds != nil {
                map["TaskIds"] = self.taskIds!
            }
            if self.totalTasks != nil {
                map["TotalTasks"] = self.totalTasks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompletedTasks") && dict["CompletedTasks"] != nil {
                self.completedTasks = dict["CompletedTasks"] as! Int32
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskIds") && dict["TaskIds"] != nil {
                self.taskIds = dict["TaskIds"] as! [String]
            }
            if dict.keys.contains("TotalTasks") && dict["TotalTasks"] != nil {
                self.totalTasks = dict["TotalTasks"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: CreateTaskGroupResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTaskGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateTaskGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskGroupResponseBody?

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
            var model = CreateTaskGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTtsQuestionRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var answer: String?

        public var question: String?

        public var questionGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answer != nil {
                map["Answer"] = self.answer!
            }
            if self.question != nil {
                map["Question"] = self.question!
            }
            if self.questionGroupId != nil {
                map["QuestionGroupId"] = self.questionGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Answer") && dict["Answer"] != nil {
                self.answer = dict["Answer"] as! String
            }
            if dict.keys.contains("Question") && dict["Question"] != nil {
                self.question = dict["Question"] as! String
            }
            if dict.keys.contains("QuestionGroupId") && dict["QuestionGroupId"] != nil {
                self.questionGroupId = dict["QuestionGroupId"] as! String
            }
        }
    }
    public var request: CreateTtsQuestionRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = CreateTtsQuestionRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class CreateTtsQuestionShrinkRequest : Tea.TeaModel {
    public var requestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestShrink != nil {
            map["Request"] = self.requestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            self.requestShrink = dict["Request"] as! String
        }
    }
}

public class CreateTtsQuestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: Int32?

    public var data: CreateTtsQuestionResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTtsQuestionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTtsQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTtsQuestionResponseBody?

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
            var model = CreateTtsQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTtsQuestionGroupRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var format: String?

        public var pitchRate: Int32?

        public var sampleRate: Int32?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("PitchRate") && dict["PitchRate"] != nil {
                self.pitchRate = dict["PitchRate"] as! Int32
            }
            if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
                self.sampleRate = dict["SampleRate"] as! Int32
            }
            if dict.keys.contains("SpeechRate") && dict["SpeechRate"] != nil {
                self.speechRate = dict["SpeechRate"] as! Int32
            }
            if dict.keys.contains("Voice") && dict["Voice"] != nil {
                self.voice = dict["Voice"] as! String
            }
            if dict.keys.contains("Volume") && dict["Volume"] != nil {
                self.volume = dict["Volume"] as! Int32
            }
        }
    }
    public var request: CreateTtsQuestionGroupRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = CreateTtsQuestionGroupRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class CreateTtsQuestionGroupShrinkRequest : Tea.TeaModel {
    public var requestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestShrink != nil {
            map["Request"] = self.requestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            self.requestShrink = dict["Request"] as! String
        }
    }
}

public class CreateTtsQuestionGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: Int32?

    public var data: CreateTtsQuestionGroupResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateTtsQuestionGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTtsQuestionGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTtsQuestionGroupResponseBody?

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
            var model = CreateTtsQuestionGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserDepartmentsRequest : Tea.TeaModel {
    public var clientToken: String?

    public var departmentId: [String]?

    public var userId: [String]?

    public override init() {
        super.init()
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
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! [String]
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! [String]
        }
    }
}

public class CreateUserDepartmentsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUserDepartmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserDepartmentsResponseBody?

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
            var model = CreateUserDepartmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVideoMergeTaskRequest : Tea.TeaModel {
    public class VideoMergeRequest : Tea.TeaModel {
        public class LayoutStyles : Tea.TeaModel {
            public class VideoStyles : Tea.TeaModel {
                public var fileName: String?

                public var height: Int64?

                public var positionX: Int64?

                public var positionY: Int64?

                public var width: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.positionX != nil {
                        map["PositionX"] = self.positionX!
                    }
                    if self.positionY != nil {
                        map["PositionY"] = self.positionY!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FileName") && dict["FileName"] != nil {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("Height") && dict["Height"] != nil {
                        self.height = dict["Height"] as! Int64
                    }
                    if dict.keys.contains("PositionX") && dict["PositionX"] != nil {
                        self.positionX = dict["PositionX"] as! Int64
                    }
                    if dict.keys.contains("PositionY") && dict["PositionY"] != nil {
                        self.positionY = dict["PositionY"] as! Int64
                    }
                    if dict.keys.contains("Width") && dict["Width"] != nil {
                        self.width = dict["Width"] as! Int64
                    }
                }
            }
            public var height: Int64?

            public var inputNum: Int64?

            public var videoStyles: [CreateVideoMergeTaskRequest.VideoMergeRequest.LayoutStyles.VideoStyles]?

            public var width: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.inputNum != nil {
                    map["InputNum"] = self.inputNum!
                }
                if self.videoStyles != nil {
                    var tmp : [Any] = []
                    for k in self.videoStyles! {
                        tmp.append(k.toMap())
                    }
                    map["VideoStyles"] = tmp
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") && dict["Height"] != nil {
                    self.height = dict["Height"] as! Int64
                }
                if dict.keys.contains("InputNum") && dict["InputNum"] != nil {
                    self.inputNum = dict["InputNum"] as! Int64
                }
                if dict.keys.contains("VideoStyles") && dict["VideoStyles"] != nil {
                    var tmp : [CreateVideoMergeTaskRequest.VideoMergeRequest.LayoutStyles.VideoStyles] = []
                    for v in dict["VideoStyles"] as! [Any] {
                        var model = CreateVideoMergeTaskRequest.VideoMergeRequest.LayoutStyles.VideoStyles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.videoStyles = tmp
                }
                if dict.keys.contains("Width") && dict["Width"] != nil {
                    self.width = dict["Width"] as! Int64
                }
            }
        }
        public class VideoList : Tea.TeaModel {
            public var endTime: Int64?

            public var fileName: String?

            public var fileUrl: String?

            public var mergeBeginTime: Int64?

            public var mergeEndTime: Int64?

            public var primeVideo: Bool?

            public var startTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileUrl != nil {
                    map["FileUrl"] = self.fileUrl!
                }
                if self.mergeBeginTime != nil {
                    map["MergeBeginTime"] = self.mergeBeginTime!
                }
                if self.mergeEndTime != nil {
                    map["MergeEndTime"] = self.mergeEndTime!
                }
                if self.primeVideo != nil {
                    map["PrimeVideo"] = self.primeVideo!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("FileName") && dict["FileName"] != nil {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                    self.fileUrl = dict["FileUrl"] as! String
                }
                if dict.keys.contains("MergeBeginTime") && dict["MergeBeginTime"] != nil {
                    self.mergeBeginTime = dict["MergeBeginTime"] as! Int64
                }
                if dict.keys.contains("MergeEndTime") && dict["MergeEndTime"] != nil {
                    self.mergeEndTime = dict["MergeEndTime"] as! Int64
                }
                if dict.keys.contains("PrimeVideo") && dict["PrimeVideo"] != nil {
                    self.primeVideo = dict["PrimeVideo"] as! Bool
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! Int64
                }
            }
        }
        public class Watermark : Tea.TeaModel {
            public var fontColor: String?

            public var fontSize: Int64?

            public var positionX: Int64?

            public var positionY: Int64?

            public var text: String?

            public var timestamp: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.positionX != nil {
                    map["PositionX"] = self.positionX!
                }
                if self.positionY != nil {
                    map["PositionY"] = self.positionY!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FontColor") && dict["FontColor"] != nil {
                    self.fontColor = dict["FontColor"] as! String
                }
                if dict.keys.contains("FontSize") && dict["FontSize"] != nil {
                    self.fontSize = dict["FontSize"] as! Int64
                }
                if dict.keys.contains("PositionX") && dict["PositionX"] != nil {
                    self.positionX = dict["PositionX"] as! Int64
                }
                if dict.keys.contains("PositionY") && dict["PositionY"] != nil {
                    self.positionY = dict["PositionY"] as! Int64
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                    self.timestamp = dict["Timestamp"] as! Int64
                }
            }
        }
        public var callbackUrl: String?

        public var layoutStyles: [CreateVideoMergeTaskRequest.VideoMergeRequest.LayoutStyles]?

        public var videoList: [CreateVideoMergeTaskRequest.VideoMergeRequest.VideoList]?

        public var watermark: CreateVideoMergeTaskRequest.VideoMergeRequest.Watermark?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.watermark?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callbackUrl != nil {
                map["CallbackUrl"] = self.callbackUrl!
            }
            if self.layoutStyles != nil {
                var tmp : [Any] = []
                for k in self.layoutStyles! {
                    tmp.append(k.toMap())
                }
                map["LayoutStyles"] = tmp
            }
            if self.videoList != nil {
                var tmp : [Any] = []
                for k in self.videoList! {
                    tmp.append(k.toMap())
                }
                map["VideoList"] = tmp
            }
            if self.watermark != nil {
                map["Watermark"] = self.watermark?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
                self.callbackUrl = dict["CallbackUrl"] as! String
            }
            if dict.keys.contains("LayoutStyles") && dict["LayoutStyles"] != nil {
                var tmp : [CreateVideoMergeTaskRequest.VideoMergeRequest.LayoutStyles] = []
                for v in dict["LayoutStyles"] as! [Any] {
                    var model = CreateVideoMergeTaskRequest.VideoMergeRequest.LayoutStyles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.layoutStyles = tmp
            }
            if dict.keys.contains("VideoList") && dict["VideoList"] != nil {
                var tmp : [CreateVideoMergeTaskRequest.VideoMergeRequest.VideoList] = []
                for v in dict["VideoList"] as! [Any] {
                    var model = CreateVideoMergeTaskRequest.VideoMergeRequest.VideoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.videoList = tmp
            }
            if dict.keys.contains("Watermark") && dict["Watermark"] != nil {
                var model = CreateVideoMergeTaskRequest.VideoMergeRequest.Watermark()
                model.fromMap(dict["Watermark"] as! [String: Any])
                self.watermark = model
            }
        }
    }
    public var videoMergeRequest: CreateVideoMergeTaskRequest.VideoMergeRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.videoMergeRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoMergeRequest != nil {
            map["VideoMergeRequest"] = self.videoMergeRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VideoMergeRequest") && dict["VideoMergeRequest"] != nil {
            var model = CreateVideoMergeTaskRequest.VideoMergeRequest()
            model.fromMap(dict["VideoMergeRequest"] as! [String: Any])
            self.videoMergeRequest = model
        }
    }
}

public class CreateVideoMergeTaskShrinkRequest : Tea.TeaModel {
    public var videoMergeRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoMergeRequestShrink != nil {
            map["VideoMergeRequest"] = self.videoMergeRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VideoMergeRequest") && dict["VideoMergeRequest"] != nil {
            self.videoMergeRequestShrink = dict["VideoMergeRequest"] as! String
        }
    }
}

public class CreateVideoMergeTaskResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class CreateVideoMergeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoMergeTaskResponseBody?

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
            var model = CreateVideoMergeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWatermarkRequest : Tea.TeaModel {
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

public class CreateWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateWatermarkResponseBody.Data?

    public var errors: [CreateWatermarkResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateWatermarkResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [CreateWatermarkResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = CreateWatermarkResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWatermarkResponseBody?

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
            var model = CreateWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppRequest : Tea.TeaModel {
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

public class DeleteAppResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppResponseBody?

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
            var model = DeleteAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDepartmentRequest : Tea.TeaModel {
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

public class DeleteDepartmentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDepartmentResponseBody?

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
            var model = DeleteDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDetectProcessRequest : Tea.TeaModel {
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

public class DeleteDetectProcessResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDetectProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDetectProcessResponseBody?

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
            var model = DeleteDetectProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRuleRequest : Tea.TeaModel {
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

public class DeleteRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var id: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteRuleResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRuleResponseBody?

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
            var model = DeleteRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
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

public class DeleteUserResponseBody : Tea.TeaModel {
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: [String: Any]?

    public var errors: [DeleteUserResponseBody.Errors]?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [DeleteUserResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = DeleteUserResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserDepartmentsRequest : Tea.TeaModel {
    public var departmentId: [String]?

    public var userId: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! [String]
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! [String]
        }
    }
}

public class DeleteUserDepartmentsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUserDepartmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserDepartmentsResponseBody?

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
            var model = DeleteUserDepartmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWatermarkRequest : Tea.TeaModel {
    public var watermarkId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.watermarkId != nil {
            map["WatermarkId"] = self.watermarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WatermarkId") && dict["WatermarkId"] != nil {
            self.watermarkId = dict["WatermarkId"] as! String
        }
    }
}

public class DeleteWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteWatermarkResponseBody.Data?

    public var errors: [DeleteWatermarkResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DeleteWatermarkResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [DeleteWatermarkResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = DeleteWatermarkResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWatermarkResponseBody?

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
            var model = DeleteWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FaceCompareRequest : Tea.TeaModel {
    public class FaceRequest : Tea.TeaModel {
        public var appId: String?

        public var sourceImage: String?

        public var targetImage: String?

        public override init() {
            super.init()
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
            if self.sourceImage != nil {
                map["SourceImage"] = self.sourceImage!
            }
            if self.targetImage != nil {
                map["TargetImage"] = self.targetImage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("SourceImage") && dict["SourceImage"] != nil {
                self.sourceImage = dict["SourceImage"] as! String
            }
            if dict.keys.contains("TargetImage") && dict["TargetImage"] != nil {
                self.targetImage = dict["TargetImage"] as! String
            }
        }
    }
    public var faceRequest: FaceCompareRequest.FaceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.faceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceRequest != nil {
            map["FaceRequest"] = self.faceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceRequest") && dict["FaceRequest"] != nil {
            var model = FaceCompareRequest.FaceRequest()
            model.fromMap(dict["FaceRequest"] as! [String: Any])
            self.faceRequest = model
        }
    }
}

public class FaceCompareShrinkRequest : Tea.TeaModel {
    public var faceRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceRequestShrink != nil {
            map["FaceRequest"] = self.faceRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceRequest") && dict["FaceRequest"] != nil {
            self.faceRequestShrink = dict["FaceRequest"] as! String
        }
    }
}

public class FaceCompareResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var id: String?

        public var message: String?

        public var passed: String?

        public var requestId: String?

        public var status: String?

        public var verifyScore: Double?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.verifyScore != nil {
                map["VerifyScore"] = self.verifyScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VerifyScore") && dict["VerifyScore"] != nil {
                self.verifyScore = dict["VerifyScore"] as! Double
            }
        }
    }
    public var code: Int32?

    public var data: FaceCompareResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = FaceCompareResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FaceCompareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceCompareResponseBody?

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
            var model = FaceCompareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FaceLivenessRequest : Tea.TeaModel {
    public class FaceRequest : Tea.TeaModel {
        public var appId: String?

        public var sourceImage: String?

        public override init() {
            super.init()
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
            if self.sourceImage != nil {
                map["SourceImage"] = self.sourceImage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("SourceImage") && dict["SourceImage"] != nil {
                self.sourceImage = dict["SourceImage"] as! String
            }
        }
    }
    public var faceRequest: FaceLivenessRequest.FaceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.faceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceRequest != nil {
            map["FaceRequest"] = self.faceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceRequest") && dict["FaceRequest"] != nil {
            var model = FaceLivenessRequest.FaceRequest()
            model.fromMap(dict["FaceRequest"] as! [String: Any])
            self.faceRequest = model
        }
    }
}

public class FaceLivenessShrinkRequest : Tea.TeaModel {
    public var faceRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceRequestShrink != nil {
            map["FaceRequest"] = self.faceRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceRequest") && dict["FaceRequest"] != nil {
            self.faceRequestShrink = dict["FaceRequest"] as! String
        }
    }
}

public class FaceLivenessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public var passed: String?

        public var publicId: String?

        public var score: Double?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.publicId != nil {
                map["PublicId"] = self.publicId!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("PublicId") && dict["PublicId"] != nil {
                self.publicId = dict["PublicId"] as! String
            }
            if dict.keys.contains("Score") && dict["Score"] != nil {
                self.score = dict["Score"] as! Double
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: FaceLivenessResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = FaceLivenessResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FaceLivenessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceLivenessResponseBody?

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
            var model = FaceLivenessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FaceRecognizeRequest : Tea.TeaModel {
    public class FaceRequest : Tea.TeaModel {
        public var appId: String?

        public var liveness: Bool?

        public var sourceImage: String?

        public var targetImage: String?

        public override init() {
            super.init()
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
            if self.liveness != nil {
                map["Liveness"] = self.liveness!
            }
            if self.sourceImage != nil {
                map["SourceImage"] = self.sourceImage!
            }
            if self.targetImage != nil {
                map["TargetImage"] = self.targetImage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Liveness") && dict["Liveness"] != nil {
                self.liveness = dict["Liveness"] as! Bool
            }
            if dict.keys.contains("SourceImage") && dict["SourceImage"] != nil {
                self.sourceImage = dict["SourceImage"] as! String
            }
            if dict.keys.contains("TargetImage") && dict["TargetImage"] != nil {
                self.targetImage = dict["TargetImage"] as! String
            }
        }
    }
    public var faceRequest: FaceRecognizeRequest.FaceRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.faceRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceRequest != nil {
            map["FaceRequest"] = self.faceRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceRequest") && dict["FaceRequest"] != nil {
            var model = FaceRecognizeRequest.FaceRequest()
            model.fromMap(dict["FaceRequest"] as! [String: Any])
            self.faceRequest = model
        }
    }
}

public class FaceRecognizeShrinkRequest : Tea.TeaModel {
    public var faceRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceRequestShrink != nil {
            map["FaceRequest"] = self.faceRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceRequest") && dict["FaceRequest"] != nil {
            self.faceRequestShrink = dict["FaceRequest"] as! String
        }
    }
}

public class FaceRecognizeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var comparePassed: String?

        public var compareScore: Double?

        public var livenessPassed: String?

        public var livenessScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comparePassed != nil {
                map["ComparePassed"] = self.comparePassed!
            }
            if self.compareScore != nil {
                map["CompareScore"] = self.compareScore!
            }
            if self.livenessPassed != nil {
                map["LivenessPassed"] = self.livenessPassed!
            }
            if self.livenessScore != nil {
                map["LivenessScore"] = self.livenessScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComparePassed") && dict["ComparePassed"] != nil {
                self.comparePassed = dict["ComparePassed"] as! String
            }
            if dict.keys.contains("CompareScore") && dict["CompareScore"] != nil {
                self.compareScore = dict["CompareScore"] as! Double
            }
            if dict.keys.contains("LivenessPassed") && dict["LivenessPassed"] != nil {
                self.livenessPassed = dict["LivenessPassed"] as! String
            }
            if dict.keys.contains("LivenessScore") && dict["LivenessScore"] != nil {
                self.livenessScore = dict["LivenessScore"] as! Double
            }
        }
    }
    public var code: Int32?

    public var data: FaceRecognizeResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = FaceRecognizeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FaceRecognizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceRecognizeResponseBody?

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
            var model = FaceRecognizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppRequest : Tea.TeaModel {
    public var clientBaseParam: String?

    public var clientVersion: String?

    public var deviceId: String?

    public var id: String?

    public var packageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
            self.packageName = dict["PackageName"] as! String
        }
    }
}

public class GetAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var config: String?

        public var createdAt: String?

        public var disabled: String?

        public var feeId: String?

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
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.disabled != nil {
                map["Disabled"] = self.disabled!
            }
            if self.feeId != nil {
                map["FeeId"] = self.feeId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                self.disabled = dict["Disabled"] as! String
            }
            if dict.keys.contains("FeeId") && dict["FeeId"] != nil {
                self.feeId = dict["FeeId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetAppResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAppResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppResponseBody?

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
            var model = GetAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAsrResultRequest : Tea.TeaModel {
    public var asrTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asrTaskId != nil {
            map["AsrTaskId"] = self.asrTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsrTaskId") && dict["AsrTaskId"] != nil {
            self.asrTaskId = dict["AsrTaskId"] as! String
        }
    }
}

public class GetAsrResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
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
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: GetAsrResultResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAsrResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetAsrResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsrResultResponseBody?

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
            var model = GetAsrResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDepartmentRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetDepartmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDepartmentResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDepartmentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDepartmentResponseBody?

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
            var model = GetDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDetectProcessRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetDetectProcessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var draft: String?

        public var id: String?

        public var md5: String?

        public var name: String?

        public var newVersion: Bool?

        public var updatedAt: String?

        public override init() {
            super.init()
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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.draft != nil {
                map["Draft"] = self.draft!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newVersion != nil {
                map["NewVersion"] = self.newVersion!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Draft") && dict["Draft"] != nil {
                self.draft = dict["Draft"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Md5") && dict["Md5"] != nil {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NewVersion") && dict["NewVersion"] != nil {
                self.newVersion = dict["NewVersion"] as! Bool
            }
            if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDetectProcessResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDetectProcessResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDetectProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetectProcessResponseBody?

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
            var model = GetDetectProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDetectProcessJsonFileRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetDetectProcessJsonFileResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDetectProcessJsonFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetectProcessJsonFileResponseBody?

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
            var model = GetDetectProcessJsonFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDetectionRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetDetectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tasks : Tea.TeaModel {
            public var createdAt: String?

            public var id: String?

            public var status: String?

            public var videoMetaUrl: String?

            public var videoUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.videoMetaUrl != nil {
                    map["VideoMetaUrl"] = self.videoMetaUrl!
                }
                if self.videoUrl != nil {
                    map["VideoUrl"] = self.videoUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VideoMetaUrl") && dict["VideoMetaUrl"] != nil {
                    self.videoMetaUrl = dict["VideoMetaUrl"] as! String
                }
                if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                    self.videoUrl = dict["VideoUrl"] as! String
                }
            }
        }
        public var createdAt: String?

        public var departmentId: String?

        public var departmentName: String?

        public var id: String?

        public var recordingType: String?

        public var ruleId: String?

        public var ruleName: String?

        public var status: String?

        public var tasks: [GetDetectionResponseBody.Data.Tasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.departmentId != nil {
                map["DepartmentId"] = self.departmentId!
            }
            if self.departmentName != nil {
                map["DepartmentName"] = self.departmentName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.recordingType != nil {
                map["RecordingType"] = self.recordingType!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tasks != nil {
                var tmp : [Any] = []
                for k in self.tasks! {
                    tmp.append(k.toMap())
                }
                map["Tasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
                self.departmentId = dict["DepartmentId"] as! String
            }
            if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                self.departmentName = dict["DepartmentName"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("RecordingType") && dict["RecordingType"] != nil {
                self.recordingType = dict["RecordingType"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
                var tmp : [GetDetectionResponseBody.Data.Tasks] = []
                for v in dict["Tasks"] as! [Any] {
                    var model = GetDetectionResponseBody.Data.Tasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tasks = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDetectionResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDetectionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDetectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDetectionResponseBody?

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
            var model = GetDetectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPreSignedUrlRequest : Tea.TeaModel {
    public var clientBaseParam: String?

    public var clientVersion: String?

    public var prefix_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
    }
}

public class GetPreSignedUrlResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPreSignedUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPreSignedUrlResponseBody?

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
            var model = GetPreSignedUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRecordResultRequest : Tea.TeaModel {
    public var clientBaseParam: String?

    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! String
        }
    }
}

public class GetRecordResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RecordRoomList : Tea.TeaModel {
            public var outerBusinessId: String?

            public var recordType: String?

            public var role: String?

            public var roomMetaUrl: String?

            public var roomRecordAt: String?

            public var roomResultUrl: String?

            public var roomStatus: String?

            public var roomVideoUrl: String?

            public var rtcRecordId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outerBusinessId != nil {
                    map["OuterBusinessId"] = self.outerBusinessId!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.roomMetaUrl != nil {
                    map["RoomMetaUrl"] = self.roomMetaUrl!
                }
                if self.roomRecordAt != nil {
                    map["RoomRecordAt"] = self.roomRecordAt!
                }
                if self.roomResultUrl != nil {
                    map["RoomResultUrl"] = self.roomResultUrl!
                }
                if self.roomStatus != nil {
                    map["RoomStatus"] = self.roomStatus!
                }
                if self.roomVideoUrl != nil {
                    map["RoomVideoUrl"] = self.roomVideoUrl!
                }
                if self.rtcRecordId != nil {
                    map["RtcRecordId"] = self.rtcRecordId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                    self.outerBusinessId = dict["OuterBusinessId"] as! String
                }
                if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                    self.recordType = dict["RecordType"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("RoomMetaUrl") && dict["RoomMetaUrl"] != nil {
                    self.roomMetaUrl = dict["RoomMetaUrl"] as! String
                }
                if dict.keys.contains("RoomRecordAt") && dict["RoomRecordAt"] != nil {
                    self.roomRecordAt = dict["RoomRecordAt"] as! String
                }
                if dict.keys.contains("RoomResultUrl") && dict["RoomResultUrl"] != nil {
                    self.roomResultUrl = dict["RoomResultUrl"] as! String
                }
                if dict.keys.contains("RoomStatus") && dict["RoomStatus"] != nil {
                    self.roomStatus = dict["RoomStatus"] as! String
                }
                if dict.keys.contains("RoomVideoUrl") && dict["RoomVideoUrl"] != nil {
                    self.roomVideoUrl = dict["RoomVideoUrl"] as! String
                }
                if dict.keys.contains("RtcRecordId") && dict["RtcRecordId"] != nil {
                    self.rtcRecordId = dict["RtcRecordId"] as! String
                }
            }
        }
        public var appName: String?

        public var createdAt: String?

        public var departmentName: String?

        public var detectProcessName: String?

        public var duration: Int64?

        public var id: String?

        public var metaUrl: String?

        public var outerBusinessId: String?

        public var recordAt: String?

        public var recordRoomList: [GetRecordResultResponseBody.Data.RecordRoomList]?

        public var resultUrl: String?

        public var roomId: String?

        public var status: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.departmentName != nil {
                map["DepartmentName"] = self.departmentName!
            }
            if self.detectProcessName != nil {
                map["DetectProcessName"] = self.detectProcessName!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.metaUrl != nil {
                map["MetaUrl"] = self.metaUrl!
            }
            if self.outerBusinessId != nil {
                map["OuterBusinessId"] = self.outerBusinessId!
            }
            if self.recordAt != nil {
                map["RecordAt"] = self.recordAt!
            }
            if self.recordRoomList != nil {
                var tmp : [Any] = []
                for k in self.recordRoomList! {
                    tmp.append(k.toMap())
                }
                map["RecordRoomList"] = tmp
            }
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                self.departmentName = dict["DepartmentName"] as! String
            }
            if dict.keys.contains("DetectProcessName") && dict["DetectProcessName"] != nil {
                self.detectProcessName = dict["DetectProcessName"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MetaUrl") && dict["MetaUrl"] != nil {
                self.metaUrl = dict["MetaUrl"] as! String
            }
            if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                self.outerBusinessId = dict["OuterBusinessId"] as! String
            }
            if dict.keys.contains("RecordAt") && dict["RecordAt"] != nil {
                self.recordAt = dict["RecordAt"] as! String
            }
            if dict.keys.contains("RecordRoomList") && dict["RecordRoomList"] != nil {
                var tmp : [GetRecordResultResponseBody.Data.RecordRoomList] = []
                for v in dict["RecordRoomList"] as! [Any] {
                    var model = GetRecordResultResponseBody.Data.RecordRoomList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recordRoomList = tmp
            }
            if dict.keys.contains("ResultUrl") && dict["ResultUrl"] != nil {
                self.resultUrl = dict["ResultUrl"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                self.videoUrl = dict["VideoUrl"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetRecordResultResponseBody.Data?

    public var errors: [GetRecordResultResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetRecordResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [GetRecordResultResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = GetRecordResultResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRecordResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecordResultResponseBody?

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
            var model = GetRecordResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRecordsByFeeIdRequest : Tea.TeaModel {
    public var feeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feeId != nil {
            map["FeeId"] = self.feeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeeId") && dict["FeeId"] != nil {
            self.feeId = dict["FeeId"] as! String
        }
    }
}

public class GetRecordsByFeeIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RecordRoomList : Tea.TeaModel {
            public var outerBusinessId: String?

            public var recordType: String?

            public var role: String?

            public var roomMetaUrl: String?

            public var roomRecordAt: String?

            public var roomResultUrl: String?

            public var roomStatus: String?

            public var roomVideoUrl: String?

            public var rtcRecordId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outerBusinessId != nil {
                    map["OuterBusinessId"] = self.outerBusinessId!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.roomMetaUrl != nil {
                    map["RoomMetaUrl"] = self.roomMetaUrl!
                }
                if self.roomRecordAt != nil {
                    map["RoomRecordAt"] = self.roomRecordAt!
                }
                if self.roomResultUrl != nil {
                    map["RoomResultUrl"] = self.roomResultUrl!
                }
                if self.roomStatus != nil {
                    map["RoomStatus"] = self.roomStatus!
                }
                if self.roomVideoUrl != nil {
                    map["RoomVideoUrl"] = self.roomVideoUrl!
                }
                if self.rtcRecordId != nil {
                    map["RtcRecordId"] = self.rtcRecordId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                    self.outerBusinessId = dict["OuterBusinessId"] as! String
                }
                if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                    self.recordType = dict["RecordType"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("RoomMetaUrl") && dict["RoomMetaUrl"] != nil {
                    self.roomMetaUrl = dict["RoomMetaUrl"] as! String
                }
                if dict.keys.contains("RoomRecordAt") && dict["RoomRecordAt"] != nil {
                    self.roomRecordAt = dict["RoomRecordAt"] as! String
                }
                if dict.keys.contains("RoomResultUrl") && dict["RoomResultUrl"] != nil {
                    self.roomResultUrl = dict["RoomResultUrl"] as! String
                }
                if dict.keys.contains("RoomStatus") && dict["RoomStatus"] != nil {
                    self.roomStatus = dict["RoomStatus"] as! String
                }
                if dict.keys.contains("RoomVideoUrl") && dict["RoomVideoUrl"] != nil {
                    self.roomVideoUrl = dict["RoomVideoUrl"] as! String
                }
                if dict.keys.contains("RtcRecordId") && dict["RtcRecordId"] != nil {
                    self.rtcRecordId = dict["RtcRecordId"] as! String
                }
            }
        }
        public var appName: String?

        public var createdAt: String?

        public var departmentName: String?

        public var detectProcessName: String?

        public var duration: Int64?

        public var id: String?

        public var metaUrl: String?

        public var outerBusinessId: String?

        public var recordAt: String?

        public var recordRoomList: [GetRecordsByFeeIdResponseBody.Data.RecordRoomList]?

        public var resultUrl: String?

        public var roomId: String?

        public var status: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.departmentName != nil {
                map["DepartmentName"] = self.departmentName!
            }
            if self.detectProcessName != nil {
                map["DetectProcessName"] = self.detectProcessName!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.metaUrl != nil {
                map["MetaUrl"] = self.metaUrl!
            }
            if self.outerBusinessId != nil {
                map["OuterBusinessId"] = self.outerBusinessId!
            }
            if self.recordAt != nil {
                map["RecordAt"] = self.recordAt!
            }
            if self.recordRoomList != nil {
                var tmp : [Any] = []
                for k in self.recordRoomList! {
                    tmp.append(k.toMap())
                }
                map["RecordRoomList"] = tmp
            }
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                self.departmentName = dict["DepartmentName"] as! String
            }
            if dict.keys.contains("DetectProcessName") && dict["DetectProcessName"] != nil {
                self.detectProcessName = dict["DetectProcessName"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MetaUrl") && dict["MetaUrl"] != nil {
                self.metaUrl = dict["MetaUrl"] as! String
            }
            if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                self.outerBusinessId = dict["OuterBusinessId"] as! String
            }
            if dict.keys.contains("RecordAt") && dict["RecordAt"] != nil {
                self.recordAt = dict["RecordAt"] as! String
            }
            if dict.keys.contains("RecordRoomList") && dict["RecordRoomList"] != nil {
                var tmp : [GetRecordsByFeeIdResponseBody.Data.RecordRoomList] = []
                for v in dict["RecordRoomList"] as! [Any] {
                    var model = GetRecordsByFeeIdResponseBody.Data.RecordRoomList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recordRoomList = tmp
            }
            if dict.keys.contains("ResultUrl") && dict["ResultUrl"] != nil {
                self.resultUrl = dict["ResultUrl"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                self.videoUrl = dict["VideoUrl"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetRecordsByFeeIdResponseBody.Data]?

    public var errors: [GetRecordsByFeeIdResponseBody.Errors]?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetRecordsByFeeIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetRecordsByFeeIdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [GetRecordsByFeeIdResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = GetRecordsByFeeIdResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRecordsByFeeIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecordsByFeeIdResponseBody?

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
            var model = GetRecordsByFeeIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRecordsByOuterBusinessIdRequest : Tea.TeaModel {
    public var outerBusinessId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outerBusinessId != nil {
            map["OuterBusinessId"] = self.outerBusinessId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
            self.outerBusinessId = dict["OuterBusinessId"] as! String
        }
    }
}

public class GetRecordsByOuterBusinessIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RecordRoomList : Tea.TeaModel {
            public var outerBusinessId: String?

            public var recordType: String?

            public var role: String?

            public var roomMetaUrl: String?

            public var roomRecordAt: String?

            public var roomResultUrl: String?

            public var roomStatus: String?

            public var roomVideoUrl: String?

            public var rtcRecordId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.outerBusinessId != nil {
                    map["OuterBusinessId"] = self.outerBusinessId!
                }
                if self.recordType != nil {
                    map["RecordType"] = self.recordType!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.roomMetaUrl != nil {
                    map["RoomMetaUrl"] = self.roomMetaUrl!
                }
                if self.roomRecordAt != nil {
                    map["RoomRecordAt"] = self.roomRecordAt!
                }
                if self.roomResultUrl != nil {
                    map["RoomResultUrl"] = self.roomResultUrl!
                }
                if self.roomStatus != nil {
                    map["RoomStatus"] = self.roomStatus!
                }
                if self.roomVideoUrl != nil {
                    map["RoomVideoUrl"] = self.roomVideoUrl!
                }
                if self.rtcRecordId != nil {
                    map["RtcRecordId"] = self.rtcRecordId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                    self.outerBusinessId = dict["OuterBusinessId"] as! String
                }
                if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
                    self.recordType = dict["RecordType"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("RoomMetaUrl") && dict["RoomMetaUrl"] != nil {
                    self.roomMetaUrl = dict["RoomMetaUrl"] as! String
                }
                if dict.keys.contains("RoomRecordAt") && dict["RoomRecordAt"] != nil {
                    self.roomRecordAt = dict["RoomRecordAt"] as! String
                }
                if dict.keys.contains("RoomResultUrl") && dict["RoomResultUrl"] != nil {
                    self.roomResultUrl = dict["RoomResultUrl"] as! String
                }
                if dict.keys.contains("RoomStatus") && dict["RoomStatus"] != nil {
                    self.roomStatus = dict["RoomStatus"] as! String
                }
                if dict.keys.contains("RoomVideoUrl") && dict["RoomVideoUrl"] != nil {
                    self.roomVideoUrl = dict["RoomVideoUrl"] as! String
                }
                if dict.keys.contains("RtcRecordId") && dict["RtcRecordId"] != nil {
                    self.rtcRecordId = dict["RtcRecordId"] as! String
                }
            }
        }
        public var appName: String?

        public var createdAt: String?

        public var departmentName: String?

        public var detectProcessName: String?

        public var duration: Int64?

        public var id: String?

        public var metaUrl: String?

        public var outerBusinessId: String?

        public var recordAt: String?

        public var recordRoomList: [GetRecordsByOuterBusinessIdResponseBody.Data.RecordRoomList]?

        public var resultUrl: String?

        public var roomId: String?

        public var status: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.departmentName != nil {
                map["DepartmentName"] = self.departmentName!
            }
            if self.detectProcessName != nil {
                map["DetectProcessName"] = self.detectProcessName!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.metaUrl != nil {
                map["MetaUrl"] = self.metaUrl!
            }
            if self.outerBusinessId != nil {
                map["OuterBusinessId"] = self.outerBusinessId!
            }
            if self.recordAt != nil {
                map["RecordAt"] = self.recordAt!
            }
            if self.recordRoomList != nil {
                var tmp : [Any] = []
                for k in self.recordRoomList! {
                    tmp.append(k.toMap())
                }
                map["RecordRoomList"] = tmp
            }
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppName") && dict["AppName"] != nil {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                self.departmentName = dict["DepartmentName"] as! String
            }
            if dict.keys.contains("DetectProcessName") && dict["DetectProcessName"] != nil {
                self.detectProcessName = dict["DetectProcessName"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MetaUrl") && dict["MetaUrl"] != nil {
                self.metaUrl = dict["MetaUrl"] as! String
            }
            if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                self.outerBusinessId = dict["OuterBusinessId"] as! String
            }
            if dict.keys.contains("RecordAt") && dict["RecordAt"] != nil {
                self.recordAt = dict["RecordAt"] as! String
            }
            if dict.keys.contains("RecordRoomList") && dict["RecordRoomList"] != nil {
                var tmp : [GetRecordsByOuterBusinessIdResponseBody.Data.RecordRoomList] = []
                for v in dict["RecordRoomList"] as! [Any] {
                    var model = GetRecordsByOuterBusinessIdResponseBody.Data.RecordRoomList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.recordRoomList = tmp
            }
            if dict.keys.contains("ResultUrl") && dict["ResultUrl"] != nil {
                self.resultUrl = dict["ResultUrl"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                self.videoUrl = dict["VideoUrl"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetRecordsByOuterBusinessIdResponseBody.Data]?

    public var errors: [GetRecordsByOuterBusinessIdResponseBody.Errors]?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetRecordsByOuterBusinessIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetRecordsByOuterBusinessIdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [GetRecordsByOuterBusinessIdResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = GetRecordsByOuterBusinessIdResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRecordsByOuterBusinessIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRecordsByOuterBusinessIdResponseBody?

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
            var model = GetRecordsByOuterBusinessIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRuleRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var id: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetRuleResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRuleResponseBody?

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
            var model = GetRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStatisticsRecordsByFeeIdRequest : Tea.TeaModel {
    public var feeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feeId != nil {
            map["FeeId"] = self.feeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeeId") && dict["FeeId"] != nil {
            self.feeId = dict["FeeId"] as! String
        }
    }
}

public class GetStatisticsRecordsByFeeIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: Int64?

        public var beginAt: String?

        public var chargeDuration: Int32?

        public var createdAt: String?

        public var departmentId: Int64?

        public var detectionDuration: Int32?

        public var deviceId: String?

        public var deviceType: Int32?

        public var endAt: String?

        public var feeId: String?

        public var hour: Int32?

        public var tenantId: Int64?

        public var type: String?

        public var updatedAt: String?

        public override init() {
            super.init()
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
            if self.beginAt != nil {
                map["BeginAt"] = self.beginAt!
            }
            if self.chargeDuration != nil {
                map["ChargeDuration"] = self.chargeDuration!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.departmentId != nil {
                map["DepartmentId"] = self.departmentId!
            }
            if self.detectionDuration != nil {
                map["DetectionDuration"] = self.detectionDuration!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.endAt != nil {
                map["EndAt"] = self.endAt!
            }
            if self.feeId != nil {
                map["FeeId"] = self.feeId!
            }
            if self.hour != nil {
                map["Hour"] = self.hour!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! Int64
            }
            if dict.keys.contains("BeginAt") && dict["BeginAt"] != nil {
                self.beginAt = dict["BeginAt"] as! String
            }
            if dict.keys.contains("ChargeDuration") && dict["ChargeDuration"] != nil {
                self.chargeDuration = dict["ChargeDuration"] as! Int32
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
                self.departmentId = dict["DepartmentId"] as! Int64
            }
            if dict.keys.contains("DetectionDuration") && dict["DetectionDuration"] != nil {
                self.detectionDuration = dict["DetectionDuration"] as! Int32
            }
            if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
                self.deviceType = dict["DeviceType"] as! Int32
            }
            if dict.keys.contains("EndAt") && dict["EndAt"] != nil {
                self.endAt = dict["EndAt"] as! String
            }
            if dict.keys.contains("FeeId") && dict["FeeId"] != nil {
                self.feeId = dict["FeeId"] as! String
            }
            if dict.keys.contains("Hour") && dict["Hour"] != nil {
                self.hour = dict["Hour"] as! Int32
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! Int64
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetStatisticsRecordsByFeeIdResponseBody.Data]?

    public var errors: [GetStatisticsRecordsByFeeIdResponseBody.Errors]?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetStatisticsRecordsByFeeIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetStatisticsRecordsByFeeIdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [GetStatisticsRecordsByFeeIdResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = GetStatisticsRecordsByFeeIdResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetStatisticsRecordsByFeeIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStatisticsRecordsByFeeIdResponseBody?

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
            var model = GetStatisticsRecordsByFeeIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var id: String?

        public var status: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                self.videoUrl = dict["VideoUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetTaskResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskGroupRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetTaskGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var completedTasks: Int32?

        public var createdAt: String?

        public var id: String?

        public var name: String?

        public var ruleId: String?

        public var ruleName: String?

        public var status: String?

        public var taskIds: [String]?

        public var totalTasks: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completedTasks != nil {
                map["CompletedTasks"] = self.completedTasks!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskIds != nil {
                map["TaskIds"] = self.taskIds!
            }
            if self.totalTasks != nil {
                map["TotalTasks"] = self.totalTasks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompletedTasks") && dict["CompletedTasks"] != nil {
                self.completedTasks = dict["CompletedTasks"] as! Int32
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskIds") && dict["TaskIds"] != nil {
                self.taskIds = dict["TaskIds"] as! [String]
            }
            if dict.keys.contains("TotalTasks") && dict["TotalTasks"] != nil {
                self.totalTasks = dict["TotalTasks"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: GetTaskGroupResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTaskGroupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTaskGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskGroupResponseBody?

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
            var model = GetTaskGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTtsQuestionByGroupIdRequest : Tea.TeaModel {
    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class GetTtsQuestionByGroupIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Questions : Tea.TeaModel {
            public var answer: String?

            public var duration: Double?

            public var id: Int64?

            public var ossUrl: String?

            public var question: String?

            public var questionGroupId: Int64?

            public var questionKey: String?

            public var tenantId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answer != nil {
                    map["Answer"] = self.answer!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.ossUrl != nil {
                    map["OssUrl"] = self.ossUrl!
                }
                if self.question != nil {
                    map["Question"] = self.question!
                }
                if self.questionGroupId != nil {
                    map["QuestionGroupId"] = self.questionGroupId!
                }
                if self.questionKey != nil {
                    map["QuestionKey"] = self.questionKey!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Answer") && dict["Answer"] != nil {
                    self.answer = dict["Answer"] as! String
                }
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Double
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("OssUrl") && dict["OssUrl"] != nil {
                    self.ossUrl = dict["OssUrl"] as! String
                }
                if dict.keys.contains("Question") && dict["Question"] != nil {
                    self.question = dict["Question"] as! String
                }
                if dict.keys.contains("QuestionGroupId") && dict["QuestionGroupId"] != nil {
                    self.questionGroupId = dict["QuestionGroupId"] as! Int64
                }
                if dict.keys.contains("QuestionKey") && dict["QuestionKey"] != nil {
                    self.questionKey = dict["QuestionKey"] as! String
                }
                if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                    self.tenantId = dict["TenantId"] as! Int64
                }
            }
        }
        public var groupId: String?

        public var questions: [GetTtsQuestionByGroupIdResponseBody.Data.Questions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.questions != nil {
                var tmp : [Any] = []
                for k in self.questions! {
                    tmp.append(k.toMap())
                }
                map["Questions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("Questions") && dict["Questions"] != nil {
                var tmp : [GetTtsQuestionByGroupIdResponseBody.Data.Questions] = []
                for v in dict["Questions"] as! [Any] {
                    var model = GetTtsQuestionByGroupIdResponseBody.Data.Questions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.questions = tmp
            }
        }
    }
    public var code: Int32?

    public var data: GetTtsQuestionByGroupIdResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetTtsQuestionByGroupIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetTtsQuestionByGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTtsQuestionByGroupIdResponseBody?

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
            var model = GetTtsQuestionByGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var clientBaseParam: String?

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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Departments : Tea.TeaModel {
            public var description_: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var createdAt: String?

        public var departments: [GetUserResponseBody.Data.Departments]?

        public var email: String?

        public var id: String?

        public var name: String?

        public var phoneNumber: String?

        public var role: String?

        public var source: String?

        public var updatedAt: String?

        public var username: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.departments != nil {
                var tmp : [Any] = []
                for k in self.departments! {
                    tmp.append(k.toMap())
                }
                map["Departments"] = tmp
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.updatedAt != nil {
                map["UpdatedAt"] = self.updatedAt!
            }
            if self.username != nil {
                map["Username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Departments") && dict["Departments"] != nil {
                var tmp : [GetUserResponseBody.Data.Departments] = []
                for v in dict["Departments"] as! [Any] {
                    var model = GetUserResponseBody.Data.Departments()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.departments = tmp
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                self.updatedAt = dict["UpdatedAt"] as! String
            }
            if dict.keys.contains("Username") && dict["Username"] != nil {
                self.username = dict["Username"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetUserResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

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
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVideoMergeTaskRequest : Tea.TeaModel {
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
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetVideoMergeTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clientTraceId: String?

        public var duration: Double?

        public var height: Int32?

        public var mergeFileId: String?

        public var taskId: String?

        public var width: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientTraceId != nil {
                map["ClientTraceId"] = self.clientTraceId!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.mergeFileId != nil {
                map["MergeFileId"] = self.mergeFileId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientTraceId") && dict["ClientTraceId"] != nil {
                self.clientTraceId = dict["ClientTraceId"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Double
            }
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("MergeFileId") && dict["MergeFileId"] != nil {
                self.mergeFileId = dict["MergeFileId"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Width") && dict["Width"] != nil {
                self.width = dict["Width"] as! Int32
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetVideoMergeTaskResponseBody.Data?

    public var errors: [GetVideoMergeTaskResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetVideoMergeTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [GetVideoMergeTaskResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = GetVideoMergeTaskResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetVideoMergeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoMergeTaskResponseBody?

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
            var model = GetVideoMergeTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWatermarkRequest : Tea.TeaModel {
    public var clientBaseParam: String?

    public var clientVersion: String?

    public var watermarkId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.watermarkId != nil {
            map["WatermarkId"] = self.watermarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("WatermarkId") && dict["WatermarkId"] != nil {
            self.watermarkId = dict["WatermarkId"] as! String
        }
    }
}

public class GetWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetWatermarkResponseBody.Data?

    public var errors: [GetWatermarkResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetWatermarkResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [GetWatermarkResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = GetWatermarkResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWatermarkResponseBody?

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
            var model = GetWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JoinRoomRequest : Tea.TeaModel {
    public var appId: String?

    public var roomId: String?

    public var roomToken: String?

    public var streamId: String?

    public override init() {
        super.init()
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
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.roomToken != nil {
            map["RoomToken"] = self.roomToken!
        }
        if self.streamId != nil {
            map["StreamId"] = self.streamId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("RoomToken") && dict["RoomToken"] != nil {
            self.roomToken = dict["RoomToken"] as! String
        }
        if dict.keys.contains("StreamId") && dict["StreamId"] != nil {
            self.streamId = dict["StreamId"] as! String
        }
    }
}

public class JoinRoomResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var roomId: String?

        public var streamId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.streamId != nil {
                map["StreamId"] = self.streamId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("StreamId") && dict["StreamId"] != nil {
                self.streamId = dict["StreamId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: JoinRoomResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = JoinRoomResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class JoinRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JoinRoomResponseBody?

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
            var model = JoinRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LeaveRoomRequest : Tea.TeaModel {
    public var roomId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
            self.roomId = dict["RoomId"] as! String
        }
    }
}

public class LeaveRoomResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: String?

    public var httpCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class LeaveRoomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LeaveRoomResponseBody?

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
            var model = LeaveRoomResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppsRequest : Tea.TeaModel {
    public var pageIndex: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListAppsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createdAt: String?

            public var departmentId: String?

            public var departmentName: String?

            public var disabled: Bool?

            public var id: String?

            public var name: String?

            public var packageName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.departmentId != nil {
                    map["DepartmentId"] = self.departmentId!
                }
                if self.departmentName != nil {
                    map["DepartmentName"] = self.departmentName!
                }
                if self.disabled != nil {
                    map["Disabled"] = self.disabled!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
                    self.departmentId = dict["DepartmentId"] as! String
                }
                if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                    self.departmentName = dict["DepartmentName"] as! String
                }
                if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
                    self.disabled = dict["Disabled"] as! Bool
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
                    self.packageName = dict["PackageName"] as! String
                }
            }
        }
        public var items: [ListAppsResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListAppsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListAppsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListAppsResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListAppsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppsResponseBody?

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
            var model = ListAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDepartmentsRequest : Tea.TeaModel {
    public var name: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListDepartmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Administrators : Tea.TeaModel {
                public var id: String?

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
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var administrators: [ListDepartmentsResponseBody.Data.Items.Administrators]?

            public var createdAt: String?

            public var description_: String?

            public var id: String?

            public var name: String?

            public var updatedAt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.administrators != nil {
                    var tmp : [Any] = []
                    for k in self.administrators! {
                        tmp.append(k.toMap())
                    }
                    map["Administrators"] = tmp
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Administrators") && dict["Administrators"] != nil {
                    var tmp : [ListDepartmentsResponseBody.Data.Items.Administrators] = []
                    for v in dict["Administrators"] as! [Any] {
                        var model = ListDepartmentsResponseBody.Data.Items.Administrators()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.administrators = tmp
                }
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
            }
        }
        public var items: [ListDepartmentsResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListDepartmentsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListDepartmentsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListDepartmentsResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDepartmentsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDepartmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDepartmentsResponseBody?

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
            var model = ListDepartmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDetectProcessesRequest : Tea.TeaModel {
    public var name: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var publishStatus: Bool?

    public var sort: String?

    public var sortKey: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.publishStatus != nil {
            map["PublishStatus"] = self.publishStatus!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.sortKey != nil {
            map["SortKey"] = self.sortKey!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
            self.publishStatus = dict["PublishStatus"] as! Bool
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("SortKey") && dict["SortKey"] != nil {
            self.sortKey = dict["SortKey"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListDetectProcessesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var content: String?

            public var contentAt: String?

            public var createdAt: String?

            public var draft: String?

            public var draftAt: String?

            public var fileUrl: String?

            public var id: String?

            public var md5: String?

            public var name: String?

            public var newVersion: Bool?

            public var published: Bool?

            public var type: String?

            public var updatedAt: String?

            public override init() {
                super.init()
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
                if self.contentAt != nil {
                    map["ContentAt"] = self.contentAt!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.draft != nil {
                    map["Draft"] = self.draft!
                }
                if self.draftAt != nil {
                    map["DraftAt"] = self.draftAt!
                }
                if self.fileUrl != nil {
                    map["FileUrl"] = self.fileUrl!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.md5 != nil {
                    map["Md5"] = self.md5!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newVersion != nil {
                    map["NewVersion"] = self.newVersion!
                }
                if self.published != nil {
                    map["Published"] = self.published!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentAt") && dict["ContentAt"] != nil {
                    self.contentAt = dict["ContentAt"] as! String
                }
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Draft") && dict["Draft"] != nil {
                    self.draft = dict["Draft"] as! String
                }
                if dict.keys.contains("DraftAt") && dict["DraftAt"] != nil {
                    self.draftAt = dict["DraftAt"] as! String
                }
                if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                    self.fileUrl = dict["FileUrl"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Md5") && dict["Md5"] != nil {
                    self.md5 = dict["Md5"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewVersion") && dict["NewVersion"] != nil {
                    self.newVersion = dict["NewVersion"] as! Bool
                }
                if dict.keys.contains("Published") && dict["Published"] != nil {
                    self.published = dict["Published"] as! Bool
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
            }
        }
        public var items: [ListDetectProcessesResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListDetectProcessesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListDetectProcessesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListDetectProcessesResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDetectProcessesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDetectProcessesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDetectProcessesResponseBody?

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
            var model = ListDetectProcessesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDetectionsRequest : Tea.TeaModel {
    public var createDateFrom: String?

    public var createDateTo: String?

    public var departmentId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var recordingType: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createDateFrom != nil {
            map["CreateDateFrom"] = self.createDateFrom!
        }
        if self.createDateTo != nil {
            map["CreateDateTo"] = self.createDateTo!
        }
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recordingType != nil {
            map["RecordingType"] = self.recordingType!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateDateFrom") && dict["CreateDateFrom"] != nil {
            self.createDateFrom = dict["CreateDateFrom"] as! String
        }
        if dict.keys.contains("CreateDateTo") && dict["CreateDateTo"] != nil {
            self.createDateTo = dict["CreateDateTo"] as! String
        }
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecordingType") && dict["RecordingType"] != nil {
            self.recordingType = dict["RecordingType"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class ListDetectionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Tasks : Tea.TeaModel {
                public var createdAt: String?

                public var id: String?

                public var status: String?

                public var videoMetaUrl: String?

                public var videoUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createdAt != nil {
                        map["CreatedAt"] = self.createdAt!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.videoMetaUrl != nil {
                        map["VideoMetaUrl"] = self.videoMetaUrl!
                    }
                    if self.videoUrl != nil {
                        map["VideoUrl"] = self.videoUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                        self.createdAt = dict["CreatedAt"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("VideoMetaUrl") && dict["VideoMetaUrl"] != nil {
                        self.videoMetaUrl = dict["VideoMetaUrl"] as! String
                    }
                    if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                        self.videoUrl = dict["VideoUrl"] as! String
                    }
                }
            }
            public var createdAt: String?

            public var departmentId: String?

            public var departmentName: String?

            public var id: String?

            public var recordingType: String?

            public var ruleId: String?

            public var ruleName: String?

            public var status: String?

            public var tasks: [ListDetectionsResponseBody.Data.Items.Tasks]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.departmentId != nil {
                    map["DepartmentId"] = self.departmentId!
                }
                if self.departmentName != nil {
                    map["DepartmentName"] = self.departmentName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.recordingType != nil {
                    map["RecordingType"] = self.recordingType!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tasks != nil {
                    var tmp : [Any] = []
                    for k in self.tasks! {
                        tmp.append(k.toMap())
                    }
                    map["Tasks"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
                    self.departmentId = dict["DepartmentId"] as! String
                }
                if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                    self.departmentName = dict["DepartmentName"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RecordingType") && dict["RecordingType"] != nil {
                    self.recordingType = dict["RecordingType"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
                    var tmp : [ListDetectionsResponseBody.Data.Items.Tasks] = []
                    for v in dict["Tasks"] as! [Any] {
                        var model = ListDetectionsResponseBody.Data.Items.Tasks()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tasks = tmp
                }
            }
        }
        public var items: [ListDetectionsResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListDetectionsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListDetectionsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: ListDetectionsResponseBody.Data?

    public var errors: [ListDetectionsResponseBody.Errors]?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDetectionsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [ListDetectionsResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = ListDetectionsResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDetectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDetectionsResponseBody?

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
            var model = ListDetectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFilesRequest : Tea.TeaModel {
    public var limit: Int32?

    public var prefix_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
    }
}

public class ListFilesResponseBody : Tea.TeaModel {
    public var code: String?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFilesResponseBody?

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
            var model = ListFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRecordResultsRequest : Tea.TeaModel {
    public var createDateFrom: String?

    public var createDateTo: String?

    public var departmentId: String?

    public var outerBusinessId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var recordId: String?

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
        if self.createDateFrom != nil {
            map["CreateDateFrom"] = self.createDateFrom!
        }
        if self.createDateTo != nil {
            map["CreateDateTo"] = self.createDateTo!
        }
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.outerBusinessId != nil {
            map["OuterBusinessId"] = self.outerBusinessId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateDateFrom") && dict["CreateDateFrom"] != nil {
            self.createDateFrom = dict["CreateDateFrom"] as! String
        }
        if dict.keys.contains("CreateDateTo") && dict["CreateDateTo"] != nil {
            self.createDateTo = dict["CreateDateTo"] as! String
        }
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
            self.outerBusinessId = dict["OuterBusinessId"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
            self.recordId = dict["RecordId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListRecordResultsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appName: String?

            public var createdAt: String?

            public var departmentName: String?

            public var detectProcessName: String?

            public var duration: Int64?

            public var id: String?

            public var metaUrl: String?

            public var outerBusinessId: String?

            public var recordAt: String?

            public var resultUrl: String?

            public var roomId: String?

            public var rtcRecordId: String?

            public var status: String?

            public var videoUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.departmentName != nil {
                    map["DepartmentName"] = self.departmentName!
                }
                if self.detectProcessName != nil {
                    map["DetectProcessName"] = self.detectProcessName!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.metaUrl != nil {
                    map["MetaUrl"] = self.metaUrl!
                }
                if self.outerBusinessId != nil {
                    map["OuterBusinessId"] = self.outerBusinessId!
                }
                if self.recordAt != nil {
                    map["RecordAt"] = self.recordAt!
                }
                if self.resultUrl != nil {
                    map["ResultUrl"] = self.resultUrl!
                }
                if self.roomId != nil {
                    map["RoomId"] = self.roomId!
                }
                if self.rtcRecordId != nil {
                    map["RtcRecordId"] = self.rtcRecordId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.videoUrl != nil {
                    map["VideoUrl"] = self.videoUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("DepartmentName") && dict["DepartmentName"] != nil {
                    self.departmentName = dict["DepartmentName"] as! String
                }
                if dict.keys.contains("DetectProcessName") && dict["DetectProcessName"] != nil {
                    self.detectProcessName = dict["DetectProcessName"] as! String
                }
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Int64
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("MetaUrl") && dict["MetaUrl"] != nil {
                    self.metaUrl = dict["MetaUrl"] as! String
                }
                if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                    self.outerBusinessId = dict["OuterBusinessId"] as! String
                }
                if dict.keys.contains("RecordAt") && dict["RecordAt"] != nil {
                    self.recordAt = dict["RecordAt"] as! String
                }
                if dict.keys.contains("ResultUrl") && dict["ResultUrl"] != nil {
                    self.resultUrl = dict["ResultUrl"] as! String
                }
                if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                    self.roomId = dict["RoomId"] as! String
                }
                if dict.keys.contains("RtcRecordId") && dict["RtcRecordId"] != nil {
                    self.rtcRecordId = dict["RtcRecordId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                    self.videoUrl = dict["VideoUrl"] as! String
                }
            }
        }
        public var items: [ListRecordResultsResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListRecordResultsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListRecordResultsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: ListRecordResultsResponseBody.Data?

    public var errors: [ListRecordResultsResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListRecordResultsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [ListRecordResultsResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = ListRecordResultsResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListRecordResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecordResultsResponseBody?

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
            var model = ListRecordResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRulesRequest : Tea.TeaModel {
    public var pageIndex: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListRulesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var content: String?

            public var createdAt: String?

            public var id: String?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var items: [ListRulesResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListRulesResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListRulesResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListRulesResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListRulesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRulesResponseBody?

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
            var model = ListRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaskGroupsRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListTaskGroupsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var completedTasks: Int32?

            public var createdAt: String?

            public var id: String?

            public var name: String?

            public var ruleId: String?

            public var ruleName: String?

            public var status: String?

            public var taskIds: [String]?

            public var totalTasks: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTasks != nil {
                    map["CompletedTasks"] = self.completedTasks!
                }
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskIds != nil {
                    map["TaskIds"] = self.taskIds!
                }
                if self.totalTasks != nil {
                    map["TotalTasks"] = self.totalTasks!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTasks") && dict["CompletedTasks"] != nil {
                    self.completedTasks = dict["CompletedTasks"] as! Int32
                }
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskIds") && dict["TaskIds"] != nil {
                    self.taskIds = dict["TaskIds"] as! [String]
                }
                if dict.keys.contains("TotalTasks") && dict["TotalTasks"] != nil {
                    self.totalTasks = dict["TotalTasks"] as! Int32
                }
            }
        }
        public var items: [ListTaskGroupsResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListTaskGroupsResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListTaskGroupsResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListTaskGroupsResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListTaskGroupsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTaskGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskGroupsResponseBody?

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
            var model = ListTaskGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTaskItemsRequest : Tea.TeaModel {
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
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ListTaskItemsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var message: String?

        public var name: String?

        public var output: String?

        public var segmentSeq: Int64?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.segmentSeq != nil {
                map["SegmentSeq"] = self.segmentSeq!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Output") && dict["Output"] != nil {
                self.output = dict["Output"] as! String
            }
            if dict.keys.contains("SegmentSeq") && dict["SegmentSeq"] != nil {
                self.segmentSeq = dict["SegmentSeq"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListTaskItemsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListTaskItemsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListTaskItemsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTaskItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTaskItemsResponseBody?

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
            var model = ListTaskItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var taskGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskGroupId != nil {
            map["TaskGroupId"] = self.taskGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TaskGroupId") && dict["TaskGroupId"] != nil {
            self.taskGroupId = dict["TaskGroupId"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createdAt: String?

            public var id: String?

            public var status: String?

            public var videoMetaUrl: String?

            public var videoUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.videoMetaUrl != nil {
                    map["VideoMetaUrl"] = self.videoMetaUrl!
                }
                if self.videoUrl != nil {
                    map["VideoUrl"] = self.videoUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VideoMetaUrl") && dict["VideoMetaUrl"] != nil {
                    self.videoMetaUrl = dict["VideoMetaUrl"] as! String
                }
                if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                    self.videoUrl = dict["VideoUrl"] as! String
                }
            }
        }
        public var items: [ListTasksResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListTasksResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListTasksResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListTasksResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListTasksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

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
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var departmentId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public class Departments : Tea.TeaModel {
                public var createdAt: String?

                public var description_: String?

                public var id: String?

                public var name: String?

                public var updatedAt: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createdAt != nil {
                        map["CreatedAt"] = self.createdAt!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.updatedAt != nil {
                        map["UpdatedAt"] = self.updatedAt!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                        self.createdAt = dict["CreatedAt"] as! String
                    }
                    if dict.keys.contains("Description") && dict["Description"] != nil {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                        self.updatedAt = dict["UpdatedAt"] as! String
                    }
                }
            }
            public var createdAt: String?

            public var departments: [ListUsersResponseBody.Data.Items.Departments]?

            public var email: String?

            public var id: String?

            public var name: String?

            public var phoneNumber: String?

            public var ramUsername: String?

            public var role: String?

            public var source: String?

            public var updatedAt: String?

            public var username: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.departments != nil {
                    var tmp : [Any] = []
                    for k in self.departments! {
                        tmp.append(k.toMap())
                    }
                    map["Departments"] = tmp
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.ramUsername != nil {
                    map["RamUsername"] = self.ramUsername!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.updatedAt != nil {
                    map["UpdatedAt"] = self.updatedAt!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Departments") && dict["Departments"] != nil {
                    var tmp : [ListUsersResponseBody.Data.Items.Departments] = []
                    for v in dict["Departments"] as! [Any] {
                        var model = ListUsersResponseBody.Data.Items.Departments()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.departments = tmp
                }
                if dict.keys.contains("Email") && dict["Email"] != nil {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                    self.phoneNumber = dict["PhoneNumber"] as! String
                }
                if dict.keys.contains("RamUsername") && dict["RamUsername"] != nil {
                    self.ramUsername = dict["RamUsername"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
                    self.updatedAt = dict["UpdatedAt"] as! String
                }
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public var items: [ListUsersResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListUsersResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListUsersResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListUsersResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListUsersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

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
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWatermarksRequest : Tea.TeaModel {
    public var pageIndex: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListWatermarksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var createdAt: String?

            public var id: String?

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
                if self.createdAt != nil {
                    map["CreatedAt"] = self.createdAt!
                }
                if self.id != nil {
                    map["Id"] = self.id!
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
                if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                    self.createdAt = dict["CreatedAt"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var items: [ListWatermarksResponseBody.Data.Items]?

        public var totalElements: Int64?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.totalElements != nil {
                map["TotalElements"] = self.totalElements!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [ListWatermarksResponseBody.Data.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = ListWatermarksResponseBody.Data.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("TotalElements") && dict["TotalElements"] != nil {
                self.totalElements = dict["TotalElements"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int32
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: ListWatermarksResponseBody.Data?

    public var errors: [ListWatermarksResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListWatermarksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [ListWatermarksResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = ListWatermarksResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListWatermarksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWatermarksResponseBody?

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
            var model = ListWatermarksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameDetectProcessRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class RenameDetectProcessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var draft: String?

        public var id: String?

        public var md5: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.draft != nil {
                map["Draft"] = self.draft!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Draft") && dict["Draft"] != nil {
                self.draft = dict["Draft"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Md5") && dict["Md5"] != nil {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: RenameDetectProcessResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = RenameDetectProcessResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenameDetectProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameDetectProcessResponseBody?

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
            var model = RenameDetectProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TtsCommonRequest : Tea.TeaModel {
    public class TtsRequest : Tea.TeaModel {
        public var appId: String?

        public var format: String?

        public var pitchRate: Int32?

        public var sampleRate: Int32?

        public var speechRate: Int32?

        public var text: String?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
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
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("PitchRate") && dict["PitchRate"] != nil {
                self.pitchRate = dict["PitchRate"] as! Int32
            }
            if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
                self.sampleRate = dict["SampleRate"] as! Int32
            }
            if dict.keys.contains("SpeechRate") && dict["SpeechRate"] != nil {
                self.speechRate = dict["SpeechRate"] as! Int32
            }
            if dict.keys.contains("Text") && dict["Text"] != nil {
                self.text = dict["Text"] as! String
            }
            if dict.keys.contains("Voice") && dict["Voice"] != nil {
                self.voice = dict["Voice"] as! String
            }
            if dict.keys.contains("Volume") && dict["Volume"] != nil {
                self.volume = dict["Volume"] as! Int32
            }
        }
    }
    public var ttsRequest: TtsCommonRequest.TtsRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ttsRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ttsRequest != nil {
            map["TtsRequest"] = self.ttsRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TtsRequest") && dict["TtsRequest"] != nil {
            var model = TtsCommonRequest.TtsRequest()
            model.fromMap(dict["TtsRequest"] as! [String: Any])
            self.ttsRequest = model
        }
    }
}

public class TtsCommonShrinkRequest : Tea.TeaModel {
    public var ttsRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ttsRequestShrink != nil {
            map["TtsRequest"] = self.ttsRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TtsRequest") && dict["TtsRequest"] != nil {
            self.ttsRequestShrink = dict["TtsRequest"] as! String
        }
    }
}

public class TtsCommonResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int32?

        public var id: String?

        public var message: String?

        public var name: String?

        public var publicUrl: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.publicUrl != nil {
                map["PublicUrl"] = self.publicUrl!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PublicUrl") && dict["PublicUrl"] != nil {
                self.publicUrl = dict["PublicUrl"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TtsCommonResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TtsCommonResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TtsCommonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TtsCommonResponseBody?

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
            var model = TtsCommonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TtsTaskRequest : Tea.TeaModel {
    public class Request : Tea.TeaModel {
        public var key: String?

        public var roomId: String?

        public var timestamp: Int64?

        public override init() {
            super.init()
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
            if self.roomId != nil {
                map["RoomId"] = self.roomId!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
                self.roomId = dict["RoomId"] as! String
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var request: TtsTaskRequest.Request?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.request?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.request != nil {
            map["Request"] = self.request?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            var model = TtsTaskRequest.Request()
            model.fromMap(dict["Request"] as! [String: Any])
            self.request = model
        }
    }
}

public class TtsTaskShrinkRequest : Tea.TeaModel {
    public var requestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestShrink != nil {
            map["Request"] = self.requestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Request") && dict["Request"] != nil {
            self.requestShrink = dict["Request"] as! String
        }
    }
}

public class TtsTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var answer: String?

        public var duration: Double?

        public var question: String?

        public var speechRate: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answer != nil {
                map["Answer"] = self.answer!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.question != nil {
                map["Question"] = self.question!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Answer") && dict["Answer"] != nil {
                self.answer = dict["Answer"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Double
            }
            if dict.keys.contains("Question") && dict["Question"] != nil {
                self.question = dict["Question"] as! String
            }
            if dict.keys.contains("SpeechRate") && dict["SpeechRate"] != nil {
                self.speechRate = dict["SpeechRate"] as! Int32
            }
        }
    }
    public var code: Int32?

    public var data: TtsTaskResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TtsTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TtsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TtsTaskResponseBody?

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
            var model = TtsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAppRequest : Tea.TeaModel {
    public var departmentId: String?

    public var disabled: Bool?

    public var id: String?

    public var name: String?

    public var packageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.disabled != nil {
            map["Disabled"] = self.disabled!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("Disabled") && dict["Disabled"] != nil {
            self.disabled = dict["Disabled"] as! Bool
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
            self.packageName = dict["PackageName"] as! String
        }
    }
}

public class UpdateAppResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppResponseBody?

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
            var model = UpdateAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDepartmentRequest : Tea.TeaModel {
    public var description_: String?

    public var id: String?

    public var label: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Label") && dict["Label"] != nil {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateDepartmentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateDepartmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDepartmentResponseBody?

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
            var model = UpdateDepartmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDetectProcessRequest : Tea.TeaModel {
    public var content: String?

    public var draft: String?

    public var id: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.draft != nil {
            map["Draft"] = self.draft!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Draft") && dict["Draft"] != nil {
            self.draft = dict["Draft"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateDetectProcessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var draft: String?

        public var id: String?

        public var md5: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.draft != nil {
                map["Draft"] = self.draft!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Draft") && dict["Draft"] != nil {
                self.draft = dict["Draft"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Md5") && dict["Md5"] != nil {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateDetectProcessResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateDetectProcessResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateDetectProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDetectProcessResponseBody?

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
            var model = UpdateDetectProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRuleRequest : Tea.TeaModel {
    public var content: String?

    public var id: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class UpdateRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var createdAt: String?

        public var id: String?

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
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateRuleResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateRuleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRuleResponseBody?

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
            var model = UpdateRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var email: String?

    public var id: String?

    public var name: String?

    public var phoneNumber: String?

    public var role: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

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
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWatermarkRequest : Tea.TeaModel {
    public var name: String?

    public var value: String?

    public var watermarkId: String?

    public override init() {
        super.init()
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
        if self.watermarkId != nil {
            map["WatermarkId"] = self.watermarkId!
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
        if dict.keys.contains("WatermarkId") && dict["WatermarkId"] != nil {
            self.watermarkId = dict["WatermarkId"] as! String
        }
    }
}

public class UpdateWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var id: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateWatermarkResponseBody.Data?

    public var errors: [UpdateWatermarkResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UpdateWatermarkResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [UpdateWatermarkResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = UpdateWatermarkResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWatermarkResponseBody?

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
            var model = UpdateWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadReportRequest : Tea.TeaModel {
    public var appId: String?

    public var clientBaseParam: String?

    public var clientVersion: String?

    public var departmentId: String?

    public var detectProcessId: String?

    public var duration: Int64?

    public var feeId: String?

    public var metaUrl: String?

    public var outerBusinessId: String?

    public var recordAt: String?

    public var resultUrl: String?

    public var role: String?

    public var roomId: String?

    public var rtcRecordId: String?

    public var type: String?

    public var userId: String?

    public var videoType: String?

    public var videoUrl: String?

    public override init() {
        super.init()
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
        if self.clientBaseParam != nil {
            map["ClientBaseParam"] = self.clientBaseParam!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.departmentId != nil {
            map["DepartmentId"] = self.departmentId!
        }
        if self.detectProcessId != nil {
            map["DetectProcessId"] = self.detectProcessId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.feeId != nil {
            map["FeeId"] = self.feeId!
        }
        if self.metaUrl != nil {
            map["MetaUrl"] = self.metaUrl!
        }
        if self.outerBusinessId != nil {
            map["OuterBusinessId"] = self.outerBusinessId!
        }
        if self.recordAt != nil {
            map["RecordAt"] = self.recordAt!
        }
        if self.resultUrl != nil {
            map["ResultUrl"] = self.resultUrl!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.roomId != nil {
            map["RoomId"] = self.roomId!
        }
        if self.rtcRecordId != nil {
            map["RtcRecordId"] = self.rtcRecordId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.videoType != nil {
            map["VideoType"] = self.videoType!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ClientBaseParam") && dict["ClientBaseParam"] != nil {
            self.clientBaseParam = dict["ClientBaseParam"] as! String
        }
        if dict.keys.contains("ClientVersion") && dict["ClientVersion"] != nil {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DepartmentId") && dict["DepartmentId"] != nil {
            self.departmentId = dict["DepartmentId"] as! String
        }
        if dict.keys.contains("DetectProcessId") && dict["DetectProcessId"] != nil {
            self.detectProcessId = dict["DetectProcessId"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("FeeId") && dict["FeeId"] != nil {
            self.feeId = dict["FeeId"] as! String
        }
        if dict.keys.contains("MetaUrl") && dict["MetaUrl"] != nil {
            self.metaUrl = dict["MetaUrl"] as! String
        }
        if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
            self.outerBusinessId = dict["OuterBusinessId"] as! String
        }
        if dict.keys.contains("RecordAt") && dict["RecordAt"] != nil {
            self.recordAt = dict["RecordAt"] as! String
        }
        if dict.keys.contains("ResultUrl") && dict["ResultUrl"] != nil {
            self.resultUrl = dict["ResultUrl"] as! String
        }
        if dict.keys.contains("Role") && dict["Role"] != nil {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("RoomId") && dict["RoomId"] != nil {
            self.roomId = dict["RoomId"] as! String
        }
        if dict.keys.contains("RtcRecordId") && dict["RtcRecordId"] != nil {
            self.rtcRecordId = dict["RtcRecordId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("VideoType") && dict["VideoType"] != nil {
            self.videoType = dict["VideoType"] as! String
        }
        if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
            self.videoUrl = dict["VideoUrl"] as! String
        }
    }
}

public class UploadReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: String?

        public var duration: Int64?

        public var id: String?

        public var metaUrl: String?

        public var outerBusinessId: String?

        public var recordAt: String?

        public var resultUrl: String?

        public var rtcRecordId: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.metaUrl != nil {
                map["MetaUrl"] = self.metaUrl!
            }
            if self.outerBusinessId != nil {
                map["OuterBusinessId"] = self.outerBusinessId!
            }
            if self.recordAt != nil {
                map["RecordAt"] = self.recordAt!
            }
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            if self.rtcRecordId != nil {
                map["RtcRecordId"] = self.rtcRecordId!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("MetaUrl") && dict["MetaUrl"] != nil {
                self.metaUrl = dict["MetaUrl"] as! String
            }
            if dict.keys.contains("OuterBusinessId") && dict["OuterBusinessId"] != nil {
                self.outerBusinessId = dict["OuterBusinessId"] as! String
            }
            if dict.keys.contains("RecordAt") && dict["RecordAt"] != nil {
                self.recordAt = dict["RecordAt"] as! String
            }
            if dict.keys.contains("ResultUrl") && dict["ResultUrl"] != nil {
                self.resultUrl = dict["ResultUrl"] as! String
            }
            if dict.keys.contains("RtcRecordId") && dict["RtcRecordId"] != nil {
                self.rtcRecordId = dict["RtcRecordId"] as! String
            }
            if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                self.videoUrl = dict["VideoUrl"] as! String
            }
        }
    }
    public class Errors : Tea.TeaModel {
        public var field: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") && dict["Field"] != nil {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: UploadReportResponseBody.Data?

    public var errors: [UploadReportResponseBody.Errors]?

    public var httpCode: Int32?

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
        if self.errors != nil {
            var tmp : [Any] = []
            for k in self.errors! {
                tmp.append(k.toMap())
            }
            map["Errors"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UploadReportResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Errors") && dict["Errors"] != nil {
            var tmp : [UploadReportResponseBody.Errors] = []
            for v in dict["Errors"] as! [Any] {
                var model = UploadReportResponseBody.Errors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.errors = tmp
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UploadReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadReportResponseBody?

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
            var model = UploadReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
