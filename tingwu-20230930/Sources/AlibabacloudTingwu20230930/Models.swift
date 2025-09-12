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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AudioChannelMode"] as? String {
                self.audioChannelMode = value
            }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["LanguageHints"] as? [String] {
                self.languageHints = value
            }
            if let value = dict["MultipleStreamsEnabled"] as? Bool {
                self.multipleStreamsEnabled = value
            }
            if let value = dict["OutputPath"] as? String {
                self.outputPath = value
            }
            if let value = dict["ProgressiveCallbacksEnabled"] as? Bool {
                self.progressiveCallbacksEnabled = value
            }
            if let value = dict["SampleRate"] as? Int32 {
                self.sampleRate = value
            }
            if let value = dict["SourceLanguage"] as? String {
                self.sourceLanguage = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskKey"] as? String {
                self.taskKey = value
            }
        }
    }
    public class Parameters : Tea.TeaModel {
        public class AutoChapters : Tea.TeaModel {
            public var chapterGranularity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chapterGranularity != nil {
                    map["ChapterGranularity"] = self.chapterGranularity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChapterGranularity"] as? String {
                    self.chapterGranularity = value
                }
            }
        }
        public class ContentExtraction : Tea.TeaModel {
            public class ExtractionContents : Tea.TeaModel {
                public var content: String?

                public var identity: String?

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
                    if self.identity != nil {
                        map["Identity"] = self.identity!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Identity"] as? String {
                        self.identity = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExtractionContents"] as? [Any?] {
                    var tmp : [CreateTaskRequest.Parameters.ContentExtraction.ExtractionContents] = []
                    for v in value {
                        if v != nil {
                            var model = CreateTaskRequest.Parameters.ContentExtraction.ExtractionContents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.extractionContents = tmp
                }
                if let value = dict["SceneIntroduction"] as? String {
                    self.sceneIntroduction = value
                }
                if let value = dict["SpeakerMap"] as? [String: Any] {
                    self.speakerMap = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Model"] as? String {
                        self.model = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Prompt"] as? String {
                        self.prompt = value
                    }
                    if let value = dict["TransType"] as? String {
                        self.transType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Contents"] as? [Any?] {
                    var tmp : [CreateTaskRequest.Parameters.CustomPrompt.Contents] = []
                    for v in value {
                        if v != nil {
                            var model = CreateTaskRequest.Parameters.CustomPrompt.Contents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.contents = tmp
                }
            }
        }
        public class ExtraParams : Tea.TeaModel {
            public var domainEducationEnabled: Bool?

            public var fullTextSummaryFormat: String?

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
                if self.fullTextSummaryFormat != nil {
                    map["FullTextSummaryFormat"] = self.fullTextSummaryFormat!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainEducationEnabled"] as? Bool {
                    self.domainEducationEnabled = value
                }
                if let value = dict["FullTextSummaryFormat"] as? String {
                    self.fullTextSummaryFormat = value
                }
                if let value = dict["MaxKeywords"] as? Int32 {
                    self.maxKeywords = value
                }
                if let value = dict["NfixEnabled"] as? Bool {
                    self.nfixEnabled = value
                }
                if let value = dict["OcrAuxiliaryEnabled"] as? Bool {
                    self.ocrAuxiliaryEnabled = value
                }
                if let value = dict["TranslateLlmSceneEnabled"] as? Bool {
                    self.translateLlmSceneEnabled = value
                }
            }
        }
        public class IdentityRecognition : Tea.TeaModel {
            public class IdentityContents : Tea.TeaModel {
                public var description_: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public var identityContents: [CreateTaskRequest.Parameters.IdentityRecognition.IdentityContents]?

            public var sceneIntroduction: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.identityContents != nil {
                    var tmp : [Any] = []
                    for k in self.identityContents! {
                        tmp.append(k.toMap())
                    }
                    map["IdentityContents"] = tmp
                }
                if self.sceneIntroduction != nil {
                    map["SceneIntroduction"] = self.sceneIntroduction!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IdentityContents"] as? [Any?] {
                    var tmp : [CreateTaskRequest.Parameters.IdentityRecognition.IdentityContents] = []
                    for v in value {
                        if v != nil {
                            var model = CreateTaskRequest.Parameters.IdentityRecognition.IdentityContents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.identityContents = tmp
                }
                if let value = dict["SceneIntroduction"] as? String {
                    self.sceneIntroduction = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Types"] as? [String] {
                    self.types = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InspectionContents"] as? [Any?] {
                    var tmp : [CreateTaskRequest.Parameters.ServiceInspection.InspectionContents] = []
                    for v in value {
                        if v != nil {
                            var model = CreateTaskRequest.Parameters.ServiceInspection.InspectionContents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.inspectionContents = tmp
                }
                if let value = dict["InspectionIntroduction"] as? String {
                    self.inspectionIntroduction = value
                }
                if let value = dict["SceneIntroduction"] as? String {
                    self.sceneIntroduction = value
                }
                if let value = dict["SpeakerMap"] as? [String: Any] {
                    self.speakerMap = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Types"] as? [String] {
                    self.types = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpectrumEnabled"] as? Bool {
                    self.spectrumEnabled = value
                }
                if let value = dict["TargetAudioFormat"] as? String {
                    self.targetAudioFormat = value
                }
                if let value = dict["TargetVideoFormat"] as? String {
                    self.targetVideoFormat = value
                }
                if let value = dict["VideoThumbnailEnabled"] as? Bool {
                    self.videoThumbnailEnabled = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SpeakerCount"] as? Int32 {
                        self.speakerCount = value
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

            public var profanityFilterEnabled: Bool?

            public var realtimeDiarizationEnabled: Bool?

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
                if self.profanityFilterEnabled != nil {
                    map["ProfanityFilterEnabled"] = self.profanityFilterEnabled!
                }
                if self.realtimeDiarizationEnabled != nil {
                    map["RealtimeDiarizationEnabled"] = self.realtimeDiarizationEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdditionalStreamOutputLevel"] as? Int32 {
                    self.additionalStreamOutputLevel = value
                }
                if let value = dict["AudioEventDetectionEnabled"] as? Bool {
                    self.audioEventDetectionEnabled = value
                }
                if let value = dict["Diarization"] as? [String: Any?] {
                    var model = CreateTaskRequest.Parameters.Transcription.Diarization()
                    model.fromMap(value)
                    self.diarization = model
                }
                if let value = dict["DiarizationEnabled"] as? Bool {
                    self.diarizationEnabled = value
                }
                if let value = dict["Model"] as? String {
                    self.model = value
                }
                if let value = dict["OutputLevel"] as? Int32 {
                    self.outputLevel = value
                }
                if let value = dict["PhraseId"] as? String {
                    self.phraseId = value
                }
                if let value = dict["ProfanityFilterEnabled"] as? Bool {
                    self.profanityFilterEnabled = value
                }
                if let value = dict["RealtimeDiarizationEnabled"] as? Bool {
                    self.realtimeDiarizationEnabled = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdditionalStreamOutputLevel"] as? Int32 {
                    self.additionalStreamOutputLevel = value
                }
                if let value = dict["OutputLevel"] as? Int32 {
                    self.outputLevel = value
                }
                if let value = dict["TargetLanguages"] as? [String] {
                    self.targetLanguages = value
                }
            }
        }
        public var autoChapters: CreateTaskRequest.Parameters.AutoChapters?

        public var autoChaptersEnabled: Bool?

        public var contentExtraction: CreateTaskRequest.Parameters.ContentExtraction?

        public var contentExtractionEnabled: Bool?

        public var customPrompt: CreateTaskRequest.Parameters.CustomPrompt?

        public var customPromptEnabled: Bool?

        public var extraParams: CreateTaskRequest.Parameters.ExtraParams?

        public var identityRecognition: CreateTaskRequest.Parameters.IdentityRecognition?

        public var identityRecognitionEnabled: Bool?

        public var llmOutputLanguage: String?

        public var meetingAssistance: CreateTaskRequest.Parameters.MeetingAssistance?

        public var meetingAssistanceEnabled: Bool?

        public var model: String?

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
            try self.autoChapters?.validate()
            try self.contentExtraction?.validate()
            try self.customPrompt?.validate()
            try self.extraParams?.validate()
            try self.identityRecognition?.validate()
            try self.meetingAssistance?.validate()
            try self.serviceInspection?.validate()
            try self.summarization?.validate()
            try self.transcoding?.validate()
            try self.transcription?.validate()
            try self.translation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoChapters != nil {
                map["AutoChapters"] = self.autoChapters?.toMap()
            }
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
            if self.identityRecognition != nil {
                map["IdentityRecognition"] = self.identityRecognition?.toMap()
            }
            if self.identityRecognitionEnabled != nil {
                map["IdentityRecognitionEnabled"] = self.identityRecognitionEnabled!
            }
            if self.llmOutputLanguage != nil {
                map["LlmOutputLanguage"] = self.llmOutputLanguage!
            }
            if self.meetingAssistance != nil {
                map["MeetingAssistance"] = self.meetingAssistance?.toMap()
            }
            if self.meetingAssistanceEnabled != nil {
                map["MeetingAssistanceEnabled"] = self.meetingAssistanceEnabled!
            }
            if self.model != nil {
                map["Model"] = self.model!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoChapters"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.AutoChapters()
                model.fromMap(value)
                self.autoChapters = model
            }
            if let value = dict["AutoChaptersEnabled"] as? Bool {
                self.autoChaptersEnabled = value
            }
            if let value = dict["ContentExtraction"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.ContentExtraction()
                model.fromMap(value)
                self.contentExtraction = model
            }
            if let value = dict["ContentExtractionEnabled"] as? Bool {
                self.contentExtractionEnabled = value
            }
            if let value = dict["CustomPrompt"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.CustomPrompt()
                model.fromMap(value)
                self.customPrompt = model
            }
            if let value = dict["CustomPromptEnabled"] as? Bool {
                self.customPromptEnabled = value
            }
            if let value = dict["ExtraParams"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.ExtraParams()
                model.fromMap(value)
                self.extraParams = model
            }
            if let value = dict["IdentityRecognition"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.IdentityRecognition()
                model.fromMap(value)
                self.identityRecognition = model
            }
            if let value = dict["IdentityRecognitionEnabled"] as? Bool {
                self.identityRecognitionEnabled = value
            }
            if let value = dict["LlmOutputLanguage"] as? String {
                self.llmOutputLanguage = value
            }
            if let value = dict["MeetingAssistance"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.MeetingAssistance()
                model.fromMap(value)
                self.meetingAssistance = model
            }
            if let value = dict["MeetingAssistanceEnabled"] as? Bool {
                self.meetingAssistanceEnabled = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["PptExtractionEnabled"] as? Bool {
                self.pptExtractionEnabled = value
            }
            if let value = dict["ServiceInspection"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.ServiceInspection()
                model.fromMap(value)
                self.serviceInspection = model
            }
            if let value = dict["ServiceInspectionEnabled"] as? Bool {
                self.serviceInspectionEnabled = value
            }
            if let value = dict["Summarization"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.Summarization()
                model.fromMap(value)
                self.summarization = model
            }
            if let value = dict["SummarizationEnabled"] as? Bool {
                self.summarizationEnabled = value
            }
            if let value = dict["TextPolishEnabled"] as? Bool {
                self.textPolishEnabled = value
            }
            if let value = dict["Transcoding"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.Transcoding()
                model.fromMap(value)
                self.transcoding = model
            }
            if let value = dict["Transcription"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.Transcription()
                model.fromMap(value)
                self.transcription = model
            }
            if let value = dict["Translation"] as? [String: Any?] {
                var model = CreateTaskRequest.Parameters.Translation()
                model.fromMap(value)
                self.translation = model
            }
            if let value = dict["TranslationEnabled"] as? Bool {
                self.translationEnabled = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["Input"] as? [String: Any?] {
            var model = CreateTaskRequest.Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["Parameters"] as? [String: Any?] {
            var model = CreateTaskRequest.Parameters()
            model.fromMap(value)
            self.parameters = model
        }
        if let value = dict["operation"] as? String {
            self.operation = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MeetingJoinUrl"] as? String {
                self.meetingJoinUrl = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskKey"] as? String {
                self.taskKey = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["WordWeights"] as? String {
            self.wordWeights = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["PhraseId"] as? String {
                self.phraseId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateTranscriptionPhrasesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTranscriptionPhrasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTranscriptionPhrasesResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: DeleteTranscriptionPhrasesResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteTranscriptionPhrasesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTranscriptionPhrasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var autoChapters: String?

            public var contentExtraction: String?

            public var customPrompt: String?

            public var identityRecognition: String?

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
                if self.contentExtraction != nil {
                    map["ContentExtraction"] = self.contentExtraction!
                }
                if self.customPrompt != nil {
                    map["CustomPrompt"] = self.customPrompt!
                }
                if self.identityRecognition != nil {
                    map["IdentityRecognition"] = self.identityRecognition!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoChapters"] as? String {
                    self.autoChapters = value
                }
                if let value = dict["ContentExtraction"] as? String {
                    self.contentExtraction = value
                }
                if let value = dict["CustomPrompt"] as? String {
                    self.customPrompt = value
                }
                if let value = dict["IdentityRecognition"] as? String {
                    self.identityRecognition = value
                }
                if let value = dict["MeetingAssistance"] as? String {
                    self.meetingAssistance = value
                }
                if let value = dict["PptExtraction"] as? String {
                    self.pptExtraction = value
                }
                if let value = dict["ServiceInspection"] as? String {
                    self.serviceInspection = value
                }
                if let value = dict["Summarization"] as? String {
                    self.summarization = value
                }
                if let value = dict["TextPolish"] as? String {
                    self.textPolish = value
                }
                if let value = dict["Transcription"] as? String {
                    self.transcription = value
                }
                if let value = dict["Translation"] as? String {
                    self.translation = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["OutputMp3Path"] as? String {
                self.outputMp3Path = value
            }
            if let value = dict["OutputMp4Path"] as? String {
                self.outputMp4Path = value
            }
            if let value = dict["OutputSpectrumPath"] as? String {
                self.outputSpectrumPath = value
            }
            if let value = dict["OutputThumbnailPath"] as? String {
                self.outputThumbnailPath = value
            }
            if let value = dict["Result"] as? [String: Any?] {
                var model = GetTaskInfoResponseBody.Data.Result()
                model.fromMap(value)
                self.result = model
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskKey"] as? String {
                self.taskKey = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTaskInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskInfoResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PhraseId"] as? String {
                    self.phraseId = value
                }
                if let value = dict["WordWeights"] as? String {
                    self.wordWeights = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Phrases"] as? [Any?] {
                var tmp : [GetTranscriptionPhrasesResponseBody.Data.Phrases] = []
                for v in value {
                    if v != nil {
                        var model = GetTranscriptionPhrasesResponseBody.Data.Phrases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.phrases = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetTranscriptionPhrasesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTranscriptionPhrasesResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PhraseId"] as? String {
                    self.phraseId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Phrases"] as? [Any?] {
                var tmp : [ListTranscriptionPhrasesResponseBody.Data.Phrases] = []
                for v in value {
                    if v != nil {
                        var model = ListTranscriptionPhrasesResponseBody.Data.Phrases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.phrases = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListTranscriptionPhrasesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTranscriptionPhrasesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["WordWeights"] as? String {
            self.wordWeights = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateTranscriptionPhrasesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTranscriptionPhrasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
