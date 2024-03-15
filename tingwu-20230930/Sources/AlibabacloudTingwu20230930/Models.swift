import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTaskRequest : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var fileUrl: String?

        public var format: String?

        public var multipleStreamsEnabled: Bool?

        public var progressiveCallbacksEnabled: Bool?

        public var sampleRate: Int32?

        public var sourceLanguage: String?

        public var taskId: String?

        public var taskKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.multipleStreamsEnabled != nil {
                map["MultipleStreamsEnabled"] = self.multipleStreamsEnabled!
            }
            if self.progressiveCallbacksEnabled != nil {
                map["ProgressiveCallbacksEnabled"] = self.progressiveCallbacksEnabled!
            }
            if self.sampleRate != nil {
                map["SampleRate"] = self.sampleRate!
            }
            if self.sourceLanguage != nil {
                map["SourceLanguage"] = self.sourceLanguage!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskKey != nil {
                map["TaskKey"] = self.taskKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Format") && dict["Format"] != nil {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("MultipleStreamsEnabled") && dict["MultipleStreamsEnabled"] != nil {
                self.multipleStreamsEnabled = dict["MultipleStreamsEnabled"] as! Bool
            }
            if dict.keys.contains("ProgressiveCallbacksEnabled") && dict["ProgressiveCallbacksEnabled"] != nil {
                self.progressiveCallbacksEnabled = dict["ProgressiveCallbacksEnabled"] as! Bool
            }
            if dict.keys.contains("SampleRate") && dict["SampleRate"] != nil {
                self.sampleRate = dict["SampleRate"] as! Int32
            }
            if dict.keys.contains("SourceLanguage") && dict["SourceLanguage"] != nil {
                self.sourceLanguage = dict["SourceLanguage"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskKey") && dict["TaskKey"] != nil {
                self.taskKey = dict["TaskKey"] as! String
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public class MeetingAssistance : Tea.TeaModel {
            public var types: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.types != nil {
                    map["Types"] = self.types!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Types") && dict["Types"] != nil {
                    self.types = dict["Types"] as! [String]
                }
            }
        }
        public class Summarization : Tea.TeaModel {
            public var types: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.types != nil {
                    map["Types"] = self.types!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Types") && dict["Types"] != nil {
                    self.types = dict["Types"] as! [String]
                }
            }
        }
        public class Transcoding : Tea.TeaModel {
            public var spectrumEnabled: Bool?

            public var targetAudioFormat: String?

            public var targetVideoFormat: String?

            public var videoThumbnailEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.spectrumEnabled != nil {
                    map["SpectrumEnabled"] = self.spectrumEnabled!
                }
                if self.targetAudioFormat != nil {
                    map["TargetAudioFormat"] = self.targetAudioFormat!
                }
                if self.targetVideoFormat != nil {
                    map["TargetVideoFormat"] = self.targetVideoFormat!
                }
                if self.videoThumbnailEnabled != nil {
                    map["VideoThumbnailEnabled"] = self.videoThumbnailEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SpectrumEnabled") && dict["SpectrumEnabled"] != nil {
                    self.spectrumEnabled = dict["SpectrumEnabled"] as! Bool
                }
                if dict.keys.contains("TargetAudioFormat") && dict["TargetAudioFormat"] != nil {
                    self.targetAudioFormat = dict["TargetAudioFormat"] as! String
                }
                if dict.keys.contains("TargetVideoFormat") && dict["TargetVideoFormat"] != nil {
                    self.targetVideoFormat = dict["TargetVideoFormat"] as! String
                }
                if dict.keys.contains("VideoThumbnailEnabled") && dict["VideoThumbnailEnabled"] != nil {
                    self.videoThumbnailEnabled = dict["VideoThumbnailEnabled"] as! Bool
                }
            }
        }
        public class Transcription : Tea.TeaModel {
            public class Diarization : Tea.TeaModel {
                public var speakerCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.speakerCount != nil {
                        map["SpeakerCount"] = self.speakerCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpeakerCount") && dict["SpeakerCount"] != nil {
                        self.speakerCount = dict["SpeakerCount"] as! Int32
                    }
                }
            }
            public var additionalStreamOutputLevel: Int32?

            public var audioEventDetectionEnabled: Bool?

            public var diarization: CreateTaskRequest.Parameters.Transcription.Diarization?

            public var diarizationEnabled: Bool?

            public var outputLevel: Int32?

            public var phraseId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.diarization?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.additionalStreamOutputLevel != nil {
                    map["AdditionalStreamOutputLevel"] = self.additionalStreamOutputLevel!
                }
                if self.audioEventDetectionEnabled != nil {
                    map["AudioEventDetectionEnabled"] = self.audioEventDetectionEnabled!
                }
                if self.diarization != nil {
                    map["Diarization"] = self.diarization?.toMap()
                }
                if self.diarizationEnabled != nil {
                    map["DiarizationEnabled"] = self.diarizationEnabled!
                }
                if self.outputLevel != nil {
                    map["OutputLevel"] = self.outputLevel!
                }
                if self.phraseId != nil {
                    map["PhraseId"] = self.phraseId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdditionalStreamOutputLevel") && dict["AdditionalStreamOutputLevel"] != nil {
                    self.additionalStreamOutputLevel = dict["AdditionalStreamOutputLevel"] as! Int32
                }
                if dict.keys.contains("AudioEventDetectionEnabled") && dict["AudioEventDetectionEnabled"] != nil {
                    self.audioEventDetectionEnabled = dict["AudioEventDetectionEnabled"] as! Bool
                }
                if dict.keys.contains("Diarization") && dict["Diarization"] != nil {
                    var model = CreateTaskRequest.Parameters.Transcription.Diarization()
                    model.fromMap(dict["Diarization"] as! [String: Any])
                    self.diarization = model
                }
                if dict.keys.contains("DiarizationEnabled") && dict["DiarizationEnabled"] != nil {
                    self.diarizationEnabled = dict["DiarizationEnabled"] as! Bool
                }
                if dict.keys.contains("OutputLevel") && dict["OutputLevel"] != nil {
                    self.outputLevel = dict["OutputLevel"] as! Int32
                }
                if dict.keys.contains("PhraseId") && dict["PhraseId"] != nil {
                    self.phraseId = dict["PhraseId"] as! String
                }
            }
        }
        public class Translation : Tea.TeaModel {
            public var additionalStreamOutputLevel: Int32?

            public var outputLevel: Int32?

            public var targetLanguages: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.additionalStreamOutputLevel != nil {
                    map["AdditionalStreamOutputLevel"] = self.additionalStreamOutputLevel!
                }
                if self.outputLevel != nil {
                    map["OutputLevel"] = self.outputLevel!
                }
                if self.targetLanguages != nil {
                    map["TargetLanguages"] = self.targetLanguages!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdditionalStreamOutputLevel") && dict["AdditionalStreamOutputLevel"] != nil {
                    self.additionalStreamOutputLevel = dict["AdditionalStreamOutputLevel"] as! Int32
                }
                if dict.keys.contains("OutputLevel") && dict["OutputLevel"] != nil {
                    self.outputLevel = dict["OutputLevel"] as! Int32
                }
                if dict.keys.contains("TargetLanguages") && dict["TargetLanguages"] != nil {
                    self.targetLanguages = dict["TargetLanguages"] as! [String]
                }
            }
        }
        public var autoChaptersEnabled: Bool?

        public var meetingAssistance: CreateTaskRequest.Parameters.MeetingAssistance?

        public var meetingAssistanceEnabled: Bool?

        public var pptExtractionEnabled: Bool?

        public var summarization: CreateTaskRequest.Parameters.Summarization?

        public var summarizationEnabled: Bool?

        public var textPolishEnabled: Bool?

        public var transcoding: CreateTaskRequest.Parameters.Transcoding?

        public var transcription: CreateTaskRequest.Parameters.Transcription?

        public var translation: CreateTaskRequest.Parameters.Translation?

        public var translationEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.meetingAssistance?.validate()
            try self.summarization?.validate()
            try self.transcoding?.validate()
            try self.transcription?.validate()
            try self.translation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoChaptersEnabled != nil {
                map["AutoChaptersEnabled"] = self.autoChaptersEnabled!
            }
            if self.meetingAssistance != nil {
                map["MeetingAssistance"] = self.meetingAssistance?.toMap()
            }
            if self.meetingAssistanceEnabled != nil {
                map["MeetingAssistanceEnabled"] = self.meetingAssistanceEnabled!
            }
            if self.pptExtractionEnabled != nil {
                map["PptExtractionEnabled"] = self.pptExtractionEnabled!
            }
            if self.summarization != nil {
                map["Summarization"] = self.summarization?.toMap()
            }
            if self.summarizationEnabled != nil {
                map["SummarizationEnabled"] = self.summarizationEnabled!
            }
            if self.textPolishEnabled != nil {
                map["TextPolishEnabled"] = self.textPolishEnabled!
            }
            if self.transcoding != nil {
                map["Transcoding"] = self.transcoding?.toMap()
            }
            if self.transcription != nil {
                map["Transcription"] = self.transcription?.toMap()
            }
            if self.translation != nil {
                map["Translation"] = self.translation?.toMap()
            }
            if self.translationEnabled != nil {
                map["TranslationEnabled"] = self.translationEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoChaptersEnabled") && dict["AutoChaptersEnabled"] != nil {
                self.autoChaptersEnabled = dict["AutoChaptersEnabled"] as! Bool
            }
            if dict.keys.contains("MeetingAssistance") && dict["MeetingAssistance"] != nil {
                var model = CreateTaskRequest.Parameters.MeetingAssistance()
                model.fromMap(dict["MeetingAssistance"] as! [String: Any])
                self.meetingAssistance = model
            }
            if dict.keys.contains("MeetingAssistanceEnabled") && dict["MeetingAssistanceEnabled"] != nil {
                self.meetingAssistanceEnabled = dict["MeetingAssistanceEnabled"] as! Bool
            }
            if dict.keys.contains("PptExtractionEnabled") && dict["PptExtractionEnabled"] != nil {
                self.pptExtractionEnabled = dict["PptExtractionEnabled"] as! Bool
            }
            if dict.keys.contains("Summarization") && dict["Summarization"] != nil {
                var model = CreateTaskRequest.Parameters.Summarization()
                model.fromMap(dict["Summarization"] as! [String: Any])
                self.summarization = model
            }
            if dict.keys.contains("SummarizationEnabled") && dict["SummarizationEnabled"] != nil {
                self.summarizationEnabled = dict["SummarizationEnabled"] as! Bool
            }
            if dict.keys.contains("TextPolishEnabled") && dict["TextPolishEnabled"] != nil {
                self.textPolishEnabled = dict["TextPolishEnabled"] as! Bool
            }
            if dict.keys.contains("Transcoding") && dict["Transcoding"] != nil {
                var model = CreateTaskRequest.Parameters.Transcoding()
                model.fromMap(dict["Transcoding"] as! [String: Any])
                self.transcoding = model
            }
            if dict.keys.contains("Transcription") && dict["Transcription"] != nil {
                var model = CreateTaskRequest.Parameters.Transcription()
                model.fromMap(dict["Transcription"] as! [String: Any])
                self.transcription = model
            }
            if dict.keys.contains("Translation") && dict["Translation"] != nil {
                var model = CreateTaskRequest.Parameters.Translation()
                model.fromMap(dict["Translation"] as! [String: Any])
                self.translation = model
            }
            if dict.keys.contains("TranslationEnabled") && dict["TranslationEnabled"] != nil {
                self.translationEnabled = dict["TranslationEnabled"] as! Bool
            }
        }
    }
    public var appKey: String?

    public var input: CreateTaskRequest.Input?

    public var parameters: CreateTaskRequest.Parameters?

    public var operation: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.input?.validate()
        try self.parameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.input != nil {
            map["Input"] = self.input?.toMap()
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters?.toMap()
        }
        if self.operation != nil {
            map["operation"] = self.operation!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("Input") && dict["Input"] != nil {
            var model = CreateTaskRequest.Input()
            model.fromMap(dict["Input"] as! [String: Any])
            self.input = model
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            var model = CreateTaskRequest.Parameters()
            model.fromMap(dict["Parameters"] as! [String: Any])
            self.parameters = model
        }
        if dict.keys.contains("operation") && dict["operation"] != nil {
            self.operation = dict["operation"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var meetingJoinUrl: String?

        public var taskId: String?

        public var taskKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meetingJoinUrl != nil {
                map["MeetingJoinUrl"] = self.meetingJoinUrl!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskKey != nil {
                map["TaskKey"] = self.taskKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MeetingJoinUrl") && dict["MeetingJoinUrl"] != nil {
                self.meetingJoinUrl = dict["MeetingJoinUrl"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskKey") && dict["TaskKey"] != nil {
                self.taskKey = dict["TaskKey"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateTaskResponseBody.Data?

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
            var model = CreateTaskResponseBody.Data()
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

public class CreateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTranscriptionPhrasesRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var wordWeights: String?

    public override init() {
        super.init()
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
        if self.wordWeights != nil {
            map["WordWeights"] = self.wordWeights!
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
        if dict.keys.contains("WordWeights") && dict["WordWeights"] != nil {
            self.wordWeights = dict["WordWeights"] as! String
        }
    }
}

public class CreateTranscriptionPhrasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var phraseId: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.phraseId != nil {
                map["PhraseId"] = self.phraseId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("PhraseId") && dict["PhraseId"] != nil {
                self.phraseId = dict["PhraseId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateTranscriptionPhrasesResponseBody.Data?

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
            var model = CreateTranscriptionPhrasesResponseBody.Data()
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

public class CreateTranscriptionPhrasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTranscriptionPhrasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTranscriptionPhrasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTranscriptionPhrasesResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DeleteTranscriptionPhrasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTranscriptionPhrasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTranscriptionPhrasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var autoChapters: String?

            public var meetingAssistance: String?

            public var pptExtraction: String?

            public var summarization: String?

            public var transcription: String?

            public var translation: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoChapters != nil {
                    map["AutoChapters"] = self.autoChapters!
                }
                if self.meetingAssistance != nil {
                    map["MeetingAssistance"] = self.meetingAssistance!
                }
                if self.pptExtraction != nil {
                    map["PptExtraction"] = self.pptExtraction!
                }
                if self.summarization != nil {
                    map["Summarization"] = self.summarization!
                }
                if self.transcription != nil {
                    map["Transcription"] = self.transcription!
                }
                if self.translation != nil {
                    map["Translation"] = self.translation!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoChapters") && dict["AutoChapters"] != nil {
                    self.autoChapters = dict["AutoChapters"] as! String
                }
                if dict.keys.contains("MeetingAssistance") && dict["MeetingAssistance"] != nil {
                    self.meetingAssistance = dict["MeetingAssistance"] as! String
                }
                if dict.keys.contains("PptExtraction") && dict["PptExtraction"] != nil {
                    self.pptExtraction = dict["PptExtraction"] as! String
                }
                if dict.keys.contains("Summarization") && dict["Summarization"] != nil {
                    self.summarization = dict["Summarization"] as! String
                }
                if dict.keys.contains("Transcription") && dict["Transcription"] != nil {
                    self.transcription = dict["Transcription"] as! String
                }
                if dict.keys.contains("Translation") && dict["Translation"] != nil {
                    self.translation = dict["Translation"] as! String
                }
            }
        }
        public var errorCode: String?

        public var errorMessage: String?

        public var result: GetTaskInfoResponseBody.Data.Result?

        public var taskId: String?

        public var taskKey: String?

        public var taskStatus: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskKey != nil {
                map["TaskKey"] = self.taskKey!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                var model = GetTaskInfoResponseBody.Data.Result()
                model.fromMap(dict["Result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskKey") && dict["TaskKey"] != nil {
                self.taskKey = dict["TaskKey"] as! String
            }
            if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                self.taskStatus = dict["TaskStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetTaskInfoResponseBody.Data?

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
            var model = GetTaskInfoResponseBody.Data()
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

public class GetTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTranscriptionPhrasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Phrases : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var phraseId: String?

            public var wordWeights: String?

            public override init() {
                super.init()
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
                if self.phraseId != nil {
                    map["PhraseId"] = self.phraseId!
                }
                if self.wordWeights != nil {
                    map["WordWeights"] = self.wordWeights!
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
                if dict.keys.contains("PhraseId") && dict["PhraseId"] != nil {
                    self.phraseId = dict["PhraseId"] as! String
                }
                if dict.keys.contains("WordWeights") && dict["WordWeights"] != nil {
                    self.wordWeights = dict["WordWeights"] as! String
                }
            }
        }
        public var errorCode: String?

        public var errorMessage: String?

        public var phrases: [GetTranscriptionPhrasesResponseBody.Data.Phrases]?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.phrases != nil {
                var tmp : [Any] = []
                for k in self.phrases! {
                    tmp.append(k.toMap())
                }
                map["Phrases"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Phrases") && dict["Phrases"] != nil {
                var tmp : [GetTranscriptionPhrasesResponseBody.Data.Phrases] = []
                for v in dict["Phrases"] as! [Any] {
                    var model = GetTranscriptionPhrasesResponseBody.Data.Phrases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.phrases = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetTranscriptionPhrasesResponseBody.Data?

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
            var model = GetTranscriptionPhrasesResponseBody.Data()
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

public class GetTranscriptionPhrasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTranscriptionPhrasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTranscriptionPhrasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTranscriptionPhrasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Phrases : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var phraseId: String?

            public override init() {
                super.init()
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
                if self.phraseId != nil {
                    map["PhraseId"] = self.phraseId!
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
                if dict.keys.contains("PhraseId") && dict["PhraseId"] != nil {
                    self.phraseId = dict["PhraseId"] as! String
                }
            }
        }
        public var errorCode: String?

        public var errorMessage: String?

        public var phrases: [ListTranscriptionPhrasesResponseBody.Data.Phrases]?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.phrases != nil {
                var tmp : [Any] = []
                for k in self.phrases! {
                    tmp.append(k.toMap())
                }
                map["Phrases"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Phrases") && dict["Phrases"] != nil {
                var tmp : [ListTranscriptionPhrasesResponseBody.Data.Phrases] = []
                for v in dict["Phrases"] as! [Any] {
                    var model = ListTranscriptionPhrasesResponseBody.Data.Phrases()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.phrases = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: ListTranscriptionPhrasesResponseBody.Data?

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
            var model = ListTranscriptionPhrasesResponseBody.Data()
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

public class ListTranscriptionPhrasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTranscriptionPhrasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTranscriptionPhrasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTranscriptionPhrasesRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var wordWeights: String?

    public override init() {
        super.init()
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
        if self.wordWeights != nil {
            map["WordWeights"] = self.wordWeights!
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
        if dict.keys.contains("WordWeights") && dict["WordWeights"] != nil {
            self.wordWeights = dict["WordWeights"] as! String
        }
    }
}

public class UpdateTranscriptionPhrasesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateTranscriptionPhrasesResponseBody.Data?

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
            var model = UpdateTranscriptionPhrasesResponseBody.Data()
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

public class UpdateTranscriptionPhrasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTranscriptionPhrasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTranscriptionPhrasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
