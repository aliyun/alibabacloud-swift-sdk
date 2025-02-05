import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTaskRequest : Tea.TeaModel {
    public class Input : Tea.TeaModel {
        public var audioChannelMode: String?

        public var fileUrl: String?

        public var format: String?

        public var languageHints: [String]?

        public var multipleStreamsEnabled: Bool?

        public var outputPath: String?

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
            if self.audioChannelMode != nil {
                map["AudioChannelMode"] = self.audioChannelMode!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.languageHints != nil {
                map["LanguageHints"] = self.languageHints!
            }
            if self.multipleStreamsEnabled != nil {
                map["MultipleStreamsEnabled"] = self.multipleStreamsEnabled!
            }
            if self.outputPath != nil {
                map["OutputPath"] = self.outputPath!
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
            if dict.keys.contains("AudioChannelMode") {
                self.audioChannelMode = dict["AudioChannelMode"] as! String
            }
            if dict.keys.contains("FileUrl") {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Format") {
                self.format = dict["Format"] as! String
            }
            if dict.keys.contains("LanguageHints") {
                self.languageHints = dict["LanguageHints"] as! [String]
            }
            if dict.keys.contains("MultipleStreamsEnabled") {
                self.multipleStreamsEnabled = dict["MultipleStreamsEnabled"] as! Bool
            }
            if dict.keys.contains("OutputPath") {
                self.outputPath = dict["OutputPath"] as! String
            }
            if dict.keys.contains("ProgressiveCallbacksEnabled") {
                self.progressiveCallbacksEnabled = dict["ProgressiveCallbacksEnabled"] as! Bool
            }
            if dict.keys.contains("SampleRate") {
                self.sampleRate = dict["SampleRate"] as! Int32
            }
            if dict.keys.contains("SourceLanguage") {
                self.sourceLanguage = dict["SourceLanguage"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskKey") {
                self.taskKey = dict["TaskKey"] as! String
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public class ContentExtraction : Tea.TeaModel {
            public class ExtractionContents : Tea.TeaModel {
                public var content: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var extractionContents: [CreateTaskRequest.Parameters.ContentExtraction.ExtractionContents]?

            public var sceneIntroduction: String?

            public var speakerMap: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extractionContents != nil {
                    var tmp : [Any] = []
                    for k in self.extractionContents! {
                        tmp.append(k.toMap())
                    }
                    map["ExtractionContents"] = tmp
                }
                if self.sceneIntroduction != nil {
                    map["SceneIntroduction"] = self.sceneIntroduction!
                }
                if self.speakerMap != nil {
                    map["SpeakerMap"] = self.speakerMap!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExtractionContents") {
                    var tmp : [CreateTaskRequest.Parameters.ContentExtraction.ExtractionContents] = []
                    for v in dict["ExtractionContents"] as! [Any] {
                        var model = CreateTaskRequest.Parameters.ContentExtraction.ExtractionContents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.extractionContents = tmp
                }
                if dict.keys.contains("SceneIntroduction") {
                    self.sceneIntroduction = dict["SceneIntroduction"] as! String
                }
                if dict.keys.contains("SpeakerMap") {
                    self.speakerMap = dict["SpeakerMap"] as! [String: Any]
                }
            }
        }
        public class CustomPrompt : Tea.TeaModel {
            public class Contents : Tea.TeaModel {
                public var model: String?

                public var name: String?

                public var prompt: String?

                public var transType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.model != nil {
                        map["Model"] = self.model!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.prompt != nil {
                        map["Prompt"] = self.prompt!
                    }
                    if self.transType != nil {
                        map["TransType"] = self.transType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Model") {
                        self.model = dict["Model"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Prompt") {
                        self.prompt = dict["Prompt"] as! String
                    }
                    if dict.keys.contains("TransType") {
                        self.transType = dict["TransType"] as! String
                    }
                }
            }
            public var contents: [CreateTaskRequest.Parameters.CustomPrompt.Contents]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contents != nil {
                    var tmp : [Any] = []
                    for k in self.contents! {
                        tmp.append(k.toMap())
                    }
                    map["Contents"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Contents") {
                    var tmp : [CreateTaskRequest.Parameters.CustomPrompt.Contents] = []
                    for v in dict["Contents"] as! [Any] {
                        var model = CreateTaskRequest.Parameters.CustomPrompt.Contents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.contents = tmp
                }
            }
        }
        public class ExtraParams : Tea.TeaModel {
            public var domainEducationEnabled: Bool?

            public var maxKeywords: Int32?

            public var nfixEnabled: Bool?

            public var ocrAuxiliaryEnabled: Bool?

            public var translateLlmSceneEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainEducationEnabled != nil {
                    map["DomainEducationEnabled"] = self.domainEducationEnabled!
                }
                if self.maxKeywords != nil {
                    map["MaxKeywords"] = self.maxKeywords!
                }
                if self.nfixEnabled != nil {
                    map["NfixEnabled"] = self.nfixEnabled!
                }
                if self.ocrAuxiliaryEnabled != nil {
                    map["OcrAuxiliaryEnabled"] = self.ocrAuxiliaryEnabled!
                }
                if self.translateLlmSceneEnabled != nil {
                    map["TranslateLlmSceneEnabled"] = self.translateLlmSceneEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainEducationEnabled") {
                    self.domainEducationEnabled = dict["DomainEducationEnabled"] as! Bool
                }
                if dict.keys.contains("MaxKeywords") {
                    self.maxKeywords = dict["MaxKeywords"] as! Int32
                }
                if dict.keys.contains("NfixEnabled") {
                    self.nfixEnabled = dict["NfixEnabled"] as! Bool
                }
                if dict.keys.contains("OcrAuxiliaryEnabled") {
                    self.ocrAuxiliaryEnabled = dict["OcrAuxiliaryEnabled"] as! Bool
                }
                if dict.keys.contains("TranslateLlmSceneEnabled") {
                    self.translateLlmSceneEnabled = dict["TranslateLlmSceneEnabled"] as! Bool
                }
            }
        }
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
                if dict.keys.contains("Types") {
                    self.types = dict["Types"] as! [String]
                }
            }
        }
        public class ServiceInspection : Tea.TeaModel {
            public class InspectionContents : Tea.TeaModel {
                public var content: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var inspectionContents: [CreateTaskRequest.Parameters.ServiceInspection.InspectionContents]?

            public var inspectionIntroduction: String?

            public var sceneIntroduction: String?

            public var speakerMap: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inspectionContents != nil {
                    var tmp : [Any] = []
                    for k in self.inspectionContents! {
                        tmp.append(k.toMap())
                    }
                    map["InspectionContents"] = tmp
                }
                if self.inspectionIntroduction != nil {
                    map["InspectionIntroduction"] = self.inspectionIntroduction!
                }
                if self.sceneIntroduction != nil {
                    map["SceneIntroduction"] = self.sceneIntroduction!
                }
                if self.speakerMap != nil {
                    map["SpeakerMap"] = self.speakerMap!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InspectionContents") {
                    var tmp : [CreateTaskRequest.Parameters.ServiceInspection.InspectionContents] = []
                    for v in dict["InspectionContents"] as! [Any] {
                        var model = CreateTaskRequest.Parameters.ServiceInspection.InspectionContents()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.inspectionContents = tmp
                }
                if dict.keys.contains("InspectionIntroduction") {
                    self.inspectionIntroduction = dict["InspectionIntroduction"] as! String
                }
                if dict.keys.contains("SceneIntroduction") {
                    self.sceneIntroduction = dict["SceneIntroduction"] as! String
                }
                if dict.keys.contains("SpeakerMap") {
                    self.speakerMap = dict["SpeakerMap"] as! [String: Any]
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
                if dict.keys.contains("Types") {
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
                if dict.keys.contains("SpectrumEnabled") {
                    self.spectrumEnabled = dict["SpectrumEnabled"] as! Bool
                }
                if dict.keys.contains("TargetAudioFormat") {
                    self.targetAudioFormat = dict["TargetAudioFormat"] as! String
                }
                if dict.keys.contains("TargetVideoFormat") {
                    self.targetVideoFormat = dict["TargetVideoFormat"] as! String
                }
                if dict.keys.contains("VideoThumbnailEnabled") {
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
                    if dict.keys.contains("SpeakerCount") {
                        self.speakerCount = dict["SpeakerCount"] as! Int32
                    }
                }
            }
            public var additionalStreamOutputLevel: Int32?

            public var audioEventDetectionEnabled: Bool?

            public var diarization: CreateTaskRequest.Parameters.Transcription.Diarization?

            public var diarizationEnabled: Bool?

            public var model: String?

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
                if self.model != nil {
                    map["Model"] = self.model!
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
                if dict.keys.contains("AdditionalStreamOutputLevel") {
                    self.additionalStreamOutputLevel = dict["AdditionalStreamOutputLevel"] as! Int32
                }
                if dict.keys.contains("AudioEventDetectionEnabled") {
                    self.audioEventDetectionEnabled = dict["AudioEventDetectionEnabled"] as! Bool
                }
                if dict.keys.contains("Diarization") {
                    var model = CreateTaskRequest.Parameters.Transcription.Diarization()
                    model.fromMap(dict["Diarization"] as! [String: Any])
                    self.diarization = model
                }
                if dict.keys.contains("DiarizationEnabled") {
                    self.diarizationEnabled = dict["DiarizationEnabled"] as! Bool
                }
                if dict.keys.contains("Model") {
                    self.model = dict["Model"] as! String
                }
                if dict.keys.contains("OutputLevel") {
                    self.outputLevel = dict["OutputLevel"] as! Int32
                }
                if dict.keys.contains("PhraseId") {
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
                if dict.keys.contains("AdditionalStreamOutputLevel") {
                    self.additionalStreamOutputLevel = dict["AdditionalStreamOutputLevel"] as! Int32
                }
                if dict.keys.contains("OutputLevel") {
                    self.outputLevel = dict["OutputLevel"] as! Int32
                }
                if dict.keys.contains("TargetLanguages") {
                    self.targetLanguages = dict["TargetLanguages"] as! [String]
                }
            }
        }
        public var autoChaptersEnabled: Bool?

        public var contentExtraction: CreateTaskRequest.Parameters.ContentExtraction?

        public var contentExtractionEnabled: Bool?

        public var customPrompt: CreateTaskRequest.Parameters.CustomPrompt?

        public var customPromptEnabled: Bool?

        public var extraParams: CreateTaskRequest.Parameters.ExtraParams?

        public var meetingAssistance: CreateTaskRequest.Parameters.MeetingAssistance?

        public var meetingAssistanceEnabled: Bool?

        public var pptExtractionEnabled: Bool?

        public var serviceInspection: CreateTaskRequest.Parameters.ServiceInspection?

        public var serviceInspectionEnabled: Bool?

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
            try self.contentExtraction?.validate()
            try self.customPrompt?.validate()
            try self.extraParams?.validate()
            try self.meetingAssistance?.validate()
            try self.serviceInspection?.validate()
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
            if self.contentExtraction != nil {
                map["ContentExtraction"] = self.contentExtraction?.toMap()
            }
            if self.contentExtractionEnabled != nil {
                map["ContentExtractionEnabled"] = self.contentExtractionEnabled!
            }
            if self.customPrompt != nil {
                map["CustomPrompt"] = self.customPrompt?.toMap()
            }
            if self.customPromptEnabled != nil {
                map["CustomPromptEnabled"] = self.customPromptEnabled!
            }
            if self.extraParams != nil {
                map["ExtraParams"] = self.extraParams?.toMap()
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
            if self.serviceInspection != nil {
                map["ServiceInspection"] = self.serviceInspection?.toMap()
            }
            if self.serviceInspectionEnabled != nil {
                map["ServiceInspectionEnabled"] = self.serviceInspectionEnabled!
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
            if dict.keys.contains("AutoChaptersEnabled") {
                self.autoChaptersEnabled = dict["AutoChaptersEnabled"] as! Bool
            }
            if dict.keys.contains("ContentExtraction") {
                var model = CreateTaskRequest.Parameters.ContentExtraction()
                model.fromMap(dict["ContentExtraction"] as! [String: Any])
                self.contentExtraction = model
            }
            if dict.keys.contains("ContentExtractionEnabled") {
                self.contentExtractionEnabled = dict["ContentExtractionEnabled"] as! Bool
            }
            if dict.keys.contains("CustomPrompt") {
                var model = CreateTaskRequest.Parameters.CustomPrompt()
                model.fromMap(dict["CustomPrompt"] as! [String: Any])
                self.customPrompt = model
            }
            if dict.keys.contains("CustomPromptEnabled") {
                self.customPromptEnabled = dict["CustomPromptEnabled"] as! Bool
            }
            if dict.keys.contains("ExtraParams") {
                var model = CreateTaskRequest.Parameters.ExtraParams()
                model.fromMap(dict["ExtraParams"] as! [String: Any])
                self.extraParams = model
            }
            if dict.keys.contains("MeetingAssistance") {
                var model = CreateTaskRequest.Parameters.MeetingAssistance()
                model.fromMap(dict["MeetingAssistance"] as! [String: Any])
                self.meetingAssistance = model
            }
            if dict.keys.contains("MeetingAssistanceEnabled") {
                self.meetingAssistanceEnabled = dict["MeetingAssistanceEnabled"] as! Bool
            }
            if dict.keys.contains("PptExtractionEnabled") {
                self.pptExtractionEnabled = dict["PptExtractionEnabled"] as! Bool
            }
            if dict.keys.contains("ServiceInspection") {
                var model = CreateTaskRequest.Parameters.ServiceInspection()
                model.fromMap(dict["ServiceInspection"] as! [String: Any])
                self.serviceInspection = model
            }
            if dict.keys.contains("ServiceInspectionEnabled") {
                self.serviceInspectionEnabled = dict["ServiceInspectionEnabled"] as! Bool
            }
            if dict.keys.contains("Summarization") {
                var model = CreateTaskRequest.Parameters.Summarization()
                model.fromMap(dict["Summarization"] as! [String: Any])
                self.summarization = model
            }
            if dict.keys.contains("SummarizationEnabled") {
                self.summarizationEnabled = dict["SummarizationEnabled"] as! Bool
            }
            if dict.keys.contains("TextPolishEnabled") {
                self.textPolishEnabled = dict["TextPolishEnabled"] as! Bool
            }
            if dict.keys.contains("Transcoding") {
                var model = CreateTaskRequest.Parameters.Transcoding()
                model.fromMap(dict["Transcoding"] as! [String: Any])
                self.transcoding = model
            }
            if dict.keys.contains("Transcription") {
                var model = CreateTaskRequest.Parameters.Transcription()
                model.fromMap(dict["Transcription"] as! [String: Any])
                self.transcription = model
            }
            if dict.keys.contains("Translation") {
                var model = CreateTaskRequest.Parameters.Translation()
                model.fromMap(dict["Translation"] as! [String: Any])
                self.translation = model
            }
            if dict.keys.contains("TranslationEnabled") {
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
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("Input") {
            var model = CreateTaskRequest.Input()
            model.fromMap(dict["Input"] as! [String: Any])
            self.input = model
        }
        if dict.keys.contains("Parameters") {
            var model = CreateTaskRequest.Parameters()
            model.fromMap(dict["Parameters"] as! [String: Any])
            self.parameters = model
        }
        if dict.keys.contains("operation") {
            self.operation = dict["operation"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var meetingJoinUrl: String?

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
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MeetingJoinUrl") {
                self.meetingJoinUrl = dict["MeetingJoinUrl"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskKey") {
                self.taskKey = dict["TaskKey"] as! String
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! String
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateTaskResponseBody.Data()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WordWeights") {
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
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("PhraseId") {
                self.phraseId = dict["PhraseId"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateTranscriptionPhrasesResponseBody.Data()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

            public var customPrompt: String?

            public var meetingAssistance: String?

            public var pptExtraction: String?

            public var serviceInspection: String?

            public var summarization: String?

            public var textPolish: String?

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
                if self.customPrompt != nil {
                    map["CustomPrompt"] = self.customPrompt!
                }
                if self.meetingAssistance != nil {
                    map["MeetingAssistance"] = self.meetingAssistance!
                }
                if self.pptExtraction != nil {
                    map["PptExtraction"] = self.pptExtraction!
                }
                if self.serviceInspection != nil {
                    map["ServiceInspection"] = self.serviceInspection!
                }
                if self.summarization != nil {
                    map["Summarization"] = self.summarization!
                }
                if self.textPolish != nil {
                    map["TextPolish"] = self.textPolish!
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
                if dict.keys.contains("AutoChapters") {
                    self.autoChapters = dict["AutoChapters"] as! String
                }
                if dict.keys.contains("CustomPrompt") {
                    self.customPrompt = dict["CustomPrompt"] as! String
                }
                if dict.keys.contains("MeetingAssistance") {
                    self.meetingAssistance = dict["MeetingAssistance"] as! String
                }
                if dict.keys.contains("PptExtraction") {
                    self.pptExtraction = dict["PptExtraction"] as! String
                }
                if dict.keys.contains("ServiceInspection") {
                    self.serviceInspection = dict["ServiceInspection"] as! String
                }
                if dict.keys.contains("Summarization") {
                    self.summarization = dict["Summarization"] as! String
                }
                if dict.keys.contains("TextPolish") {
                    self.textPolish = dict["TextPolish"] as! String
                }
                if dict.keys.contains("Transcription") {
                    self.transcription = dict["Transcription"] as! String
                }
                if dict.keys.contains("Translation") {
                    self.translation = dict["Translation"] as! String
                }
            }
        }
        public var errorCode: String?

        public var errorMessage: String?

        public var outputMp3Path: String?

        public var outputMp4Path: String?

        public var outputSpectrumPath: String?

        public var outputThumbnailPath: String?

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
            if self.outputMp3Path != nil {
                map["OutputMp3Path"] = self.outputMp3Path!
            }
            if self.outputMp4Path != nil {
                map["OutputMp4Path"] = self.outputMp4Path!
            }
            if self.outputSpectrumPath != nil {
                map["OutputSpectrumPath"] = self.outputSpectrumPath!
            }
            if self.outputThumbnailPath != nil {
                map["OutputThumbnailPath"] = self.outputThumbnailPath!
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
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("OutputMp3Path") {
                self.outputMp3Path = dict["OutputMp3Path"] as! String
            }
            if dict.keys.contains("OutputMp4Path") {
                self.outputMp4Path = dict["OutputMp4Path"] as! String
            }
            if dict.keys.contains("OutputSpectrumPath") {
                self.outputSpectrumPath = dict["OutputSpectrumPath"] as! String
            }
            if dict.keys.contains("OutputThumbnailPath") {
                self.outputThumbnailPath = dict["OutputThumbnailPath"] as! String
            }
            if dict.keys.contains("Result") {
                var model = GetTaskInfoResponseBody.Data.Result()
                model.fromMap(dict["Result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskKey") {
                self.taskKey = dict["TaskKey"] as! String
            }
            if dict.keys.contains("TaskStatus") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTaskInfoResponseBody.Data()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PhraseId") {
                    self.phraseId = dict["PhraseId"] as! String
                }
                if dict.keys.contains("WordWeights") {
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
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Phrases") {
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
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetTranscriptionPhrasesResponseBody.Data()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PhraseId") {
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
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Phrases") {
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
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ListTranscriptionPhrasesResponseBody.Data()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WordWeights") {
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
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = UpdateTranscriptionPhrasesResponseBody.Data()
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTranscriptionPhrasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
