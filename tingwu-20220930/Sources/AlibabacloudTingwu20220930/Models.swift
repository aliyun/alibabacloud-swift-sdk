import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateFileTransRequest : Tea.TeaModel {
    public var abilityParams: [String: Any]?

    public var appKey: String?

    public var asrParams: [String: Any]?

    public var audioLanguage: String?

    public var audioOssBucket: String?

    public var audioOssPath: String?

    public var audioOutputEnabled: Bool?

    public var audioOutputOssBucket: String?

    public var audioOutputOssPath: String?

    public var audioRoleNum: String?

    public var audioSegmentsEnabled: Bool?

    public var labParams: [String: Any]?

    public var tags: [String: Any]?

    public var transKey: String?

    public var transResultOssBucket: String?

    public var transResultOssPath: String?

    public var videoOutputEnabled: Bool?

    public var videoOutputOssBucket: String?

    public var videoOutputOssPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abilityParams != nil {
            map["AbilityParams"] = self.abilityParams!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.asrParams != nil {
            map["AsrParams"] = self.asrParams!
        }
        if self.audioLanguage != nil {
            map["AudioLanguage"] = self.audioLanguage!
        }
        if self.audioOssBucket != nil {
            map["AudioOssBucket"] = self.audioOssBucket!
        }
        if self.audioOssPath != nil {
            map["AudioOssPath"] = self.audioOssPath!
        }
        if self.audioOutputEnabled != nil {
            map["AudioOutputEnabled"] = self.audioOutputEnabled!
        }
        if self.audioOutputOssBucket != nil {
            map["AudioOutputOssBucket"] = self.audioOutputOssBucket!
        }
        if self.audioOutputOssPath != nil {
            map["AudioOutputOssPath"] = self.audioOutputOssPath!
        }
        if self.audioRoleNum != nil {
            map["AudioRoleNum"] = self.audioRoleNum!
        }
        if self.audioSegmentsEnabled != nil {
            map["AudioSegmentsEnabled"] = self.audioSegmentsEnabled!
        }
        if self.labParams != nil {
            map["LabParams"] = self.labParams!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.transKey != nil {
            map["TransKey"] = self.transKey!
        }
        if self.transResultOssBucket != nil {
            map["TransResultOssBucket"] = self.transResultOssBucket!
        }
        if self.transResultOssPath != nil {
            map["TransResultOssPath"] = self.transResultOssPath!
        }
        if self.videoOutputEnabled != nil {
            map["VideoOutputEnabled"] = self.videoOutputEnabled!
        }
        if self.videoOutputOssBucket != nil {
            map["VideoOutputOssBucket"] = self.videoOutputOssBucket!
        }
        if self.videoOutputOssPath != nil {
            map["VideoOutputOssPath"] = self.videoOutputOssPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbilityParams") && dict["AbilityParams"] != nil {
            self.abilityParams = dict["AbilityParams"] as! [String: Any]
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AsrParams") && dict["AsrParams"] != nil {
            self.asrParams = dict["AsrParams"] as! [String: Any]
        }
        if dict.keys.contains("AudioLanguage") && dict["AudioLanguage"] != nil {
            self.audioLanguage = dict["AudioLanguage"] as! String
        }
        if dict.keys.contains("AudioOssBucket") && dict["AudioOssBucket"] != nil {
            self.audioOssBucket = dict["AudioOssBucket"] as! String
        }
        if dict.keys.contains("AudioOssPath") && dict["AudioOssPath"] != nil {
            self.audioOssPath = dict["AudioOssPath"] as! String
        }
        if dict.keys.contains("AudioOutputEnabled") && dict["AudioOutputEnabled"] != nil {
            self.audioOutputEnabled = dict["AudioOutputEnabled"] as! Bool
        }
        if dict.keys.contains("AudioOutputOssBucket") && dict["AudioOutputOssBucket"] != nil {
            self.audioOutputOssBucket = dict["AudioOutputOssBucket"] as! String
        }
        if dict.keys.contains("AudioOutputOssPath") && dict["AudioOutputOssPath"] != nil {
            self.audioOutputOssPath = dict["AudioOutputOssPath"] as! String
        }
        if dict.keys.contains("AudioRoleNum") && dict["AudioRoleNum"] != nil {
            self.audioRoleNum = dict["AudioRoleNum"] as! String
        }
        if dict.keys.contains("AudioSegmentsEnabled") && dict["AudioSegmentsEnabled"] != nil {
            self.audioSegmentsEnabled = dict["AudioSegmentsEnabled"] as! Bool
        }
        if dict.keys.contains("LabParams") && dict["LabParams"] != nil {
            self.labParams = dict["LabParams"] as! [String: Any]
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TransKey") && dict["TransKey"] != nil {
            self.transKey = dict["TransKey"] as! String
        }
        if dict.keys.contains("TransResultOssBucket") && dict["TransResultOssBucket"] != nil {
            self.transResultOssBucket = dict["TransResultOssBucket"] as! String
        }
        if dict.keys.contains("TransResultOssPath") && dict["TransResultOssPath"] != nil {
            self.transResultOssPath = dict["TransResultOssPath"] as! String
        }
        if dict.keys.contains("VideoOutputEnabled") && dict["VideoOutputEnabled"] != nil {
            self.videoOutputEnabled = dict["VideoOutputEnabled"] as! Bool
        }
        if dict.keys.contains("VideoOutputOssBucket") && dict["VideoOutputOssBucket"] != nil {
            self.videoOutputOssBucket = dict["VideoOutputOssBucket"] as! String
        }
        if dict.keys.contains("VideoOutputOssPath") && dict["VideoOutputOssPath"] != nil {
            self.videoOutputOssPath = dict["VideoOutputOssPath"] as! String
        }
    }
}

public class CreateFileTransResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var transId: String?

        public var transKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.transId != nil {
                map["TransId"] = self.transId!
            }
            if self.transKey != nil {
                map["TransKey"] = self.transKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TransId") && dict["TransId"] != nil {
                self.transId = dict["TransId"] as! String
            }
            if dict.keys.contains("TransKey") && dict["TransKey"] != nil {
                self.transKey = dict["TransKey"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateFileTransResponseBody.Data?

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
            var model = CreateFileTransResponseBody.Data()
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

public class CreateFileTransResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileTransResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFileTransResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMeetingTransRequest : Tea.TeaModel {
    public var abilityParams: [String: Any]?

    public var appKey: String?

    public var asrParams: [String: Any]?

    public var audioBitRate: Int32?

    public var audioFormat: String?

    public var audioLanguage: String?

    public var audioOutputEnabled: Bool?

    public var audioOutputOssBucket: String?

    public var audioOutputOssPath: String?

    public var audioPackage: String?

    public var audioSampleRate: Int32?

    public var audioSegmentsEnabled: Bool?

    public var docResultEnabled: Bool?

    public var labParams: [String: Any]?

    public var meetingKey: String?

    public var meetingResultEnabled: Bool?

    public var meetingResultOssBucket: String?

    public var meetingResultOssPath: String?

    public var realtimeActiveResultLevel: Int32?

    public var realtimeResultEnabled: Bool?

    public var realtimeResultLevel: Int32?

    public var realtimeResultMeetingInfoEnabled: Bool?

    public var realtimeResultWordsEnabled: Bool?

    public var tags: [String: Any]?

    public var translateActiveResultLevel: Int32?

    public var translateLanguages: String?

    public var translateResultEnabled: Bool?

    public var translateResultLevel: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abilityParams != nil {
            map["AbilityParams"] = self.abilityParams!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.asrParams != nil {
            map["AsrParams"] = self.asrParams!
        }
        if self.audioBitRate != nil {
            map["AudioBitRate"] = self.audioBitRate!
        }
        if self.audioFormat != nil {
            map["AudioFormat"] = self.audioFormat!
        }
        if self.audioLanguage != nil {
            map["AudioLanguage"] = self.audioLanguage!
        }
        if self.audioOutputEnabled != nil {
            map["AudioOutputEnabled"] = self.audioOutputEnabled!
        }
        if self.audioOutputOssBucket != nil {
            map["AudioOutputOssBucket"] = self.audioOutputOssBucket!
        }
        if self.audioOutputOssPath != nil {
            map["AudioOutputOssPath"] = self.audioOutputOssPath!
        }
        if self.audioPackage != nil {
            map["AudioPackage"] = self.audioPackage!
        }
        if self.audioSampleRate != nil {
            map["AudioSampleRate"] = self.audioSampleRate!
        }
        if self.audioSegmentsEnabled != nil {
            map["AudioSegmentsEnabled"] = self.audioSegmentsEnabled!
        }
        if self.docResultEnabled != nil {
            map["DocResultEnabled"] = self.docResultEnabled!
        }
        if self.labParams != nil {
            map["LabParams"] = self.labParams!
        }
        if self.meetingKey != nil {
            map["MeetingKey"] = self.meetingKey!
        }
        if self.meetingResultEnabled != nil {
            map["MeetingResultEnabled"] = self.meetingResultEnabled!
        }
        if self.meetingResultOssBucket != nil {
            map["MeetingResultOssBucket"] = self.meetingResultOssBucket!
        }
        if self.meetingResultOssPath != nil {
            map["MeetingResultOssPath"] = self.meetingResultOssPath!
        }
        if self.realtimeActiveResultLevel != nil {
            map["RealtimeActiveResultLevel"] = self.realtimeActiveResultLevel!
        }
        if self.realtimeResultEnabled != nil {
            map["RealtimeResultEnabled"] = self.realtimeResultEnabled!
        }
        if self.realtimeResultLevel != nil {
            map["RealtimeResultLevel"] = self.realtimeResultLevel!
        }
        if self.realtimeResultMeetingInfoEnabled != nil {
            map["RealtimeResultMeetingInfoEnabled"] = self.realtimeResultMeetingInfoEnabled!
        }
        if self.realtimeResultWordsEnabled != nil {
            map["RealtimeResultWordsEnabled"] = self.realtimeResultWordsEnabled!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.translateActiveResultLevel != nil {
            map["TranslateActiveResultLevel"] = self.translateActiveResultLevel!
        }
        if self.translateLanguages != nil {
            map["TranslateLanguages"] = self.translateLanguages!
        }
        if self.translateResultEnabled != nil {
            map["TranslateResultEnabled"] = self.translateResultEnabled!
        }
        if self.translateResultLevel != nil {
            map["TranslateResultLevel"] = self.translateResultLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbilityParams") && dict["AbilityParams"] != nil {
            self.abilityParams = dict["AbilityParams"] as! [String: Any]
        }
        if dict.keys.contains("AppKey") && dict["AppKey"] != nil {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("AsrParams") && dict["AsrParams"] != nil {
            self.asrParams = dict["AsrParams"] as! [String: Any]
        }
        if dict.keys.contains("AudioBitRate") && dict["AudioBitRate"] != nil {
            self.audioBitRate = dict["AudioBitRate"] as! Int32
        }
        if dict.keys.contains("AudioFormat") && dict["AudioFormat"] != nil {
            self.audioFormat = dict["AudioFormat"] as! String
        }
        if dict.keys.contains("AudioLanguage") && dict["AudioLanguage"] != nil {
            self.audioLanguage = dict["AudioLanguage"] as! String
        }
        if dict.keys.contains("AudioOutputEnabled") && dict["AudioOutputEnabled"] != nil {
            self.audioOutputEnabled = dict["AudioOutputEnabled"] as! Bool
        }
        if dict.keys.contains("AudioOutputOssBucket") && dict["AudioOutputOssBucket"] != nil {
            self.audioOutputOssBucket = dict["AudioOutputOssBucket"] as! String
        }
        if dict.keys.contains("AudioOutputOssPath") && dict["AudioOutputOssPath"] != nil {
            self.audioOutputOssPath = dict["AudioOutputOssPath"] as! String
        }
        if dict.keys.contains("AudioPackage") && dict["AudioPackage"] != nil {
            self.audioPackage = dict["AudioPackage"] as! String
        }
        if dict.keys.contains("AudioSampleRate") && dict["AudioSampleRate"] != nil {
            self.audioSampleRate = dict["AudioSampleRate"] as! Int32
        }
        if dict.keys.contains("AudioSegmentsEnabled") && dict["AudioSegmentsEnabled"] != nil {
            self.audioSegmentsEnabled = dict["AudioSegmentsEnabled"] as! Bool
        }
        if dict.keys.contains("DocResultEnabled") && dict["DocResultEnabled"] != nil {
            self.docResultEnabled = dict["DocResultEnabled"] as! Bool
        }
        if dict.keys.contains("LabParams") && dict["LabParams"] != nil {
            self.labParams = dict["LabParams"] as! [String: Any]
        }
        if dict.keys.contains("MeetingKey") && dict["MeetingKey"] != nil {
            self.meetingKey = dict["MeetingKey"] as! String
        }
        if dict.keys.contains("MeetingResultEnabled") && dict["MeetingResultEnabled"] != nil {
            self.meetingResultEnabled = dict["MeetingResultEnabled"] as! Bool
        }
        if dict.keys.contains("MeetingResultOssBucket") && dict["MeetingResultOssBucket"] != nil {
            self.meetingResultOssBucket = dict["MeetingResultOssBucket"] as! String
        }
        if dict.keys.contains("MeetingResultOssPath") && dict["MeetingResultOssPath"] != nil {
            self.meetingResultOssPath = dict["MeetingResultOssPath"] as! String
        }
        if dict.keys.contains("RealtimeActiveResultLevel") && dict["RealtimeActiveResultLevel"] != nil {
            self.realtimeActiveResultLevel = dict["RealtimeActiveResultLevel"] as! Int32
        }
        if dict.keys.contains("RealtimeResultEnabled") && dict["RealtimeResultEnabled"] != nil {
            self.realtimeResultEnabled = dict["RealtimeResultEnabled"] as! Bool
        }
        if dict.keys.contains("RealtimeResultLevel") && dict["RealtimeResultLevel"] != nil {
            self.realtimeResultLevel = dict["RealtimeResultLevel"] as! Int32
        }
        if dict.keys.contains("RealtimeResultMeetingInfoEnabled") && dict["RealtimeResultMeetingInfoEnabled"] != nil {
            self.realtimeResultMeetingInfoEnabled = dict["RealtimeResultMeetingInfoEnabled"] as! Bool
        }
        if dict.keys.contains("RealtimeResultWordsEnabled") && dict["RealtimeResultWordsEnabled"] != nil {
            self.realtimeResultWordsEnabled = dict["RealtimeResultWordsEnabled"] as! Bool
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TranslateActiveResultLevel") && dict["TranslateActiveResultLevel"] != nil {
            self.translateActiveResultLevel = dict["TranslateActiveResultLevel"] as! Int32
        }
        if dict.keys.contains("TranslateLanguages") && dict["TranslateLanguages"] != nil {
            self.translateLanguages = dict["TranslateLanguages"] as! String
        }
        if dict.keys.contains("TranslateResultEnabled") && dict["TranslateResultEnabled"] != nil {
            self.translateResultEnabled = dict["TranslateResultEnabled"] as! Bool
        }
        if dict.keys.contains("TranslateResultLevel") && dict["TranslateResultLevel"] != nil {
            self.translateResultLevel = dict["TranslateResultLevel"] as! Int32
        }
    }
}

public class CreateMeetingTransResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var meetingId: String?

        public var meetingJoinUrl: String?

        public var meetingKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meetingId != nil {
                map["MeetingId"] = self.meetingId!
            }
            if self.meetingJoinUrl != nil {
                map["MeetingJoinUrl"] = self.meetingJoinUrl!
            }
            if self.meetingKey != nil {
                map["MeetingKey"] = self.meetingKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MeetingId") && dict["MeetingId"] != nil {
                self.meetingId = dict["MeetingId"] as! String
            }
            if dict.keys.contains("MeetingJoinUrl") && dict["MeetingJoinUrl"] != nil {
                self.meetingJoinUrl = dict["MeetingJoinUrl"] as! String
            }
            if dict.keys.contains("MeetingKey") && dict["MeetingKey"] != nil {
                self.meetingKey = dict["MeetingKey"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateMeetingTransResponseBody.Data?

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
            var model = CreateMeetingTransResponseBody.Data()
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

public class CreateMeetingTransResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMeetingTransResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMeetingTransResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileTransResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var transId: String?

        public var transKey: String?

        public var transStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.transId != nil {
                map["TransId"] = self.transId!
            }
            if self.transKey != nil {
                map["TransKey"] = self.transKey!
            }
            if self.transStatus != nil {
                map["TransStatus"] = self.transStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TransId") && dict["TransId"] != nil {
                self.transId = dict["TransId"] as! String
            }
            if dict.keys.contains("TransKey") && dict["TransKey"] != nil {
                self.transKey = dict["TransKey"] as! String
            }
            if dict.keys.contains("TransStatus") && dict["TransStatus"] != nil {
                self.transStatus = dict["TransStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetFileTransResponseBody.Data?

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
            var model = GetFileTransResponseBody.Data()
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

public class GetFileTransResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileTransResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFileTransResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMeetingTransResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var meetingId: String?

        public var meetingKey: String?

        public var meetingStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meetingId != nil {
                map["MeetingId"] = self.meetingId!
            }
            if self.meetingKey != nil {
                map["MeetingKey"] = self.meetingKey!
            }
            if self.meetingStatus != nil {
                map["MeetingStatus"] = self.meetingStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MeetingId") && dict["MeetingId"] != nil {
                self.meetingId = dict["MeetingId"] as! String
            }
            if dict.keys.contains("MeetingKey") && dict["MeetingKey"] != nil {
                self.meetingKey = dict["MeetingKey"] as! String
            }
            if dict.keys.contains("MeetingStatus") && dict["MeetingStatus"] != nil {
                self.meetingStatus = dict["MeetingStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetMeetingTransResponseBody.Data?

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
            var model = GetMeetingTransResponseBody.Data()
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

public class GetMeetingTransResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMeetingTransResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMeetingTransResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopMeetingTransRequest : Tea.TeaModel {
    public var meetingRoleNum: Int32?

    public var onlyRoleSplitResult: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.meetingRoleNum != nil {
            map["MeetingRoleNum"] = self.meetingRoleNum!
        }
        if self.onlyRoleSplitResult != nil {
            map["OnlyRoleSplitResult"] = self.onlyRoleSplitResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MeetingRoleNum") && dict["MeetingRoleNum"] != nil {
            self.meetingRoleNum = dict["MeetingRoleNum"] as! Int32
        }
        if dict.keys.contains("OnlyRoleSplitResult") && dict["OnlyRoleSplitResult"] != nil {
            self.onlyRoleSplitResult = dict["OnlyRoleSplitResult"] as! Bool
        }
    }
}

public class StopMeetingTransResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var meetingId: String?

        public var meetingKey: String?

        public var meetingStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.meetingId != nil {
                map["MeetingId"] = self.meetingId!
            }
            if self.meetingKey != nil {
                map["MeetingKey"] = self.meetingKey!
            }
            if self.meetingStatus != nil {
                map["MeetingStatus"] = self.meetingStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MeetingId") && dict["MeetingId"] != nil {
                self.meetingId = dict["MeetingId"] as! String
            }
            if dict.keys.contains("MeetingKey") && dict["MeetingKey"] != nil {
                self.meetingKey = dict["MeetingKey"] as! String
            }
            if dict.keys.contains("MeetingStatus") && dict["MeetingStatus"] != nil {
                self.meetingStatus = dict["MeetingStatus"] as! String
            }
        }
    }
    public var code: String?

    public var data: StopMeetingTransResponseBody.Data?

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
            var model = StopMeetingTransResponseBody.Data()
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

public class StopMeetingTransResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMeetingTransResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopMeetingTransResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
