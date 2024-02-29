import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthUserRequest : Tea.TeaModel {
    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class AuthUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jwtToken: String?

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
            if self.jwtToken != nil {
                map["JwtToken"] = self.jwtToken!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
                self.jwtToken = dict["JwtToken"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: AuthUserResponseBody.Data?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            var model = AuthUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class AuthUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthUserResponseBody?

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
            var model = AuthUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchQueryMotionShopTaskStatusRequest : Tea.TeaModel {
    public var jwtToken: String?

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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class BatchQueryMotionShopTaskStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tasks : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var coverUrl: String?

                public var shareUrl: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.shareUrl != nil {
                        map["ShareUrl"] = self.shareUrl!
                    }
                    if self.videoUrl != nil {
                        map["VideoUrl"] = self.videoUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("ShareUrl") && dict["ShareUrl"] != nil {
                        self.shareUrl = dict["ShareUrl"] as! String
                    }
                    if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                        self.videoUrl = dict["VideoUrl"] as! String
                    }
                }
            }
            public var errorMessage: String?

            public var result: BatchQueryMotionShopTaskStatusResponseBody.Data.Tasks.Result?

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
                try self.result?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.result != nil {
                    map["Result"] = self.result?.toMap()
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
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Result") && dict["Result"] != nil {
                    var model = BatchQueryMotionShopTaskStatusResponseBody.Data.Tasks.Result()
                    model.fromMap(dict["Result"] as! [String: Any])
                    self.result = model
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                    self.taskId = dict["TaskId"] as! String
                }
            }
        }
        public var tasks: [BatchQueryMotionShopTaskStatusResponseBody.Data.Tasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
                var tmp : [BatchQueryMotionShopTaskStatusResponseBody.Data.Tasks] = []
                for v in dict["Tasks"] as! [Any] {
                    var model = BatchQueryMotionShopTaskStatusResponseBody.Data.Tasks()
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

    public var data: BatchQueryMotionShopTaskStatusResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = BatchQueryMotionShopTaskStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class BatchQueryMotionShopTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQueryMotionShopTaskStatusResponseBody?

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
            var model = BatchQueryMotionShopTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAvatarTalkProjectRequest : Tea.TeaModel {
    public var avatarProjectId: String?

    public var jwtToken: String?

    public var title: String?

    public var ttsVoice: String?

    public var txtContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avatarProjectId != nil {
            map["AvatarProjectId"] = self.avatarProjectId!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.ttsVoice != nil {
            map["TtsVoice"] = self.ttsVoice!
        }
        if self.txtContent != nil {
            map["TxtContent"] = self.txtContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvatarProjectId") && dict["AvatarProjectId"] != nil {
            self.avatarProjectId = dict["AvatarProjectId"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("TtsVoice") && dict["TtsVoice"] != nil {
            self.ttsVoice = dict["TtsVoice"] as! String
        }
        if dict.keys.contains("TxtContent") && dict["TxtContent"] != nil {
            self.txtContent = dict["TxtContent"] as! String
        }
    }
}

public class CreateAvatarTalkProjectResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateAvatarTalkProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateAvatarTalkProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CreateAvatarTalkProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAvatarTalkProjectResponseBody?

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
            var model = CreateAvatarTalkProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDigitalHumanProjectRequest : Tea.TeaModel {
    public var audioId: String?

    public var audioUrl: String?

    public var backgroundId: String?

    public var backgroundUrl: String?

    public var content: String?

    public var foregroundId: String?

    public var foregroundUrl: String?

    public var humanLayerStyle: String?

    public var intro: String?

    public var jwtToken: String?

    public var mode: String?

    public var modelId: String?

    public var outputConfig: String?

    public var title: String?

    public var ttsVoiceId: String?

    public var watermarkImageUrl: String?

    public var watermarkStyle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioId != nil {
            map["AudioId"] = self.audioId!
        }
        if self.audioUrl != nil {
            map["AudioUrl"] = self.audioUrl!
        }
        if self.backgroundId != nil {
            map["BackgroundId"] = self.backgroundId!
        }
        if self.backgroundUrl != nil {
            map["BackgroundUrl"] = self.backgroundUrl!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.foregroundId != nil {
            map["ForegroundId"] = self.foregroundId!
        }
        if self.foregroundUrl != nil {
            map["ForegroundUrl"] = self.foregroundUrl!
        }
        if self.humanLayerStyle != nil {
            map["HumanLayerStyle"] = self.humanLayerStyle!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.outputConfig != nil {
            map["OutputConfig"] = self.outputConfig!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.ttsVoiceId != nil {
            map["TtsVoiceId"] = self.ttsVoiceId!
        }
        if self.watermarkImageUrl != nil {
            map["WatermarkImageUrl"] = self.watermarkImageUrl!
        }
        if self.watermarkStyle != nil {
            map["WatermarkStyle"] = self.watermarkStyle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioId") && dict["AudioId"] != nil {
            self.audioId = dict["AudioId"] as! String
        }
        if dict.keys.contains("AudioUrl") && dict["AudioUrl"] != nil {
            self.audioUrl = dict["AudioUrl"] as! String
        }
        if dict.keys.contains("BackgroundId") && dict["BackgroundId"] != nil {
            self.backgroundId = dict["BackgroundId"] as! String
        }
        if dict.keys.contains("BackgroundUrl") && dict["BackgroundUrl"] != nil {
            self.backgroundUrl = dict["BackgroundUrl"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ForegroundId") && dict["ForegroundId"] != nil {
            self.foregroundId = dict["ForegroundId"] as! String
        }
        if dict.keys.contains("ForegroundUrl") && dict["ForegroundUrl"] != nil {
            self.foregroundUrl = dict["ForegroundUrl"] as! String
        }
        if dict.keys.contains("HumanLayerStyle") && dict["HumanLayerStyle"] != nil {
            self.humanLayerStyle = dict["HumanLayerStyle"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("OutputConfig") && dict["OutputConfig"] != nil {
            self.outputConfig = dict["OutputConfig"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("TtsVoiceId") && dict["TtsVoiceId"] != nil {
            self.ttsVoiceId = dict["TtsVoiceId"] as! String
        }
        if dict.keys.contains("WatermarkImageUrl") && dict["WatermarkImageUrl"] != nil {
            self.watermarkImageUrl = dict["WatermarkImageUrl"] as! String
        }
        if dict.keys.contains("WatermarkStyle") && dict["WatermarkStyle"] != nil {
            self.watermarkStyle = dict["WatermarkStyle"] as! String
        }
    }
}

public class CreateDigitalHumanProjectResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateDigitalHumanProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateDigitalHumanProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CreateDigitalHumanProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDigitalHumanProjectResponseBody?

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
            var model = CreateDigitalHumanProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLivePortraitProjectRequest : Tea.TeaModel {
    public var audioId: String?

    public var audioUrl: String?

    public var content: String?

    public var imageId: String?

    public var imageUrl: String?

    public var intro: String?

    public var jwtToken: String?

    public var lightModel: Bool?

    public var mode: String?

    public var outputConfig: String?

    public var title: String?

    public var ttsVoiceId: String?

    public var watermarkImageUrl: String?

    public var watermarkStyle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioId != nil {
            map["AudioId"] = self.audioId!
        }
        if self.audioUrl != nil {
            map["AudioUrl"] = self.audioUrl!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.lightModel != nil {
            map["LightModel"] = self.lightModel!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.outputConfig != nil {
            map["OutputConfig"] = self.outputConfig!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.ttsVoiceId != nil {
            map["TtsVoiceId"] = self.ttsVoiceId!
        }
        if self.watermarkImageUrl != nil {
            map["WatermarkImageUrl"] = self.watermarkImageUrl!
        }
        if self.watermarkStyle != nil {
            map["WatermarkStyle"] = self.watermarkStyle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioId") && dict["AudioId"] != nil {
            self.audioId = dict["AudioId"] as! String
        }
        if dict.keys.contains("AudioUrl") && dict["AudioUrl"] != nil {
            self.audioUrl = dict["AudioUrl"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("LightModel") && dict["LightModel"] != nil {
            self.lightModel = dict["LightModel"] as! Bool
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("OutputConfig") && dict["OutputConfig"] != nil {
            self.outputConfig = dict["OutputConfig"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("TtsVoiceId") && dict["TtsVoiceId"] != nil {
            self.ttsVoiceId = dict["TtsVoiceId"] as! String
        }
        if dict.keys.contains("WatermarkImageUrl") && dict["WatermarkImageUrl"] != nil {
            self.watermarkImageUrl = dict["WatermarkImageUrl"] as! String
        }
        if dict.keys.contains("WatermarkStyle") && dict["WatermarkStyle"] != nil {
            self.watermarkStyle = dict["WatermarkStyle"] as! String
        }
    }
}

public class CreateLivePortraitProjectResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: CreateLivePortraitProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateLivePortraitProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class CreateLivePortraitProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLivePortraitProjectResponseBody?

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
            var model = CreateLivePortraitProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateMotionShopVideoUploadUrlRequest : Tea.TeaModel {
    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class GenerateMotionShopVideoUploadUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ossKey: String?

        public var uploadUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.uploadUrl != nil {
                map["UploadUrl"] = self.uploadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                self.ossKey = dict["OssKey"] as! String
            }
            if dict.keys.contains("UploadUrl") && dict["UploadUrl"] != nil {
                self.uploadUrl = dict["UploadUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GenerateMotionShopVideoUploadUrlResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GenerateMotionShopVideoUploadUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class GenerateMotionShopVideoUploadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateMotionShopVideoUploadUrlResponseBody?

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
            var model = GenerateMotionShopVideoUploadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMapDataRequest : Tea.TeaModel {
    public var appId: String?

    public var jwtToken: String?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class GetMapDataResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [[String: Any]]?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            self.data = dict["Data"] as! [[String: Any]]
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class GetMapDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMapDataResponseBody?

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
            var model = GetMapDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMapPublishDataRequest : Tea.TeaModel {
    public var appId: String?

    public var jwtToken: String?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class GetMapPublishDataResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [[String: Any]]?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            self.data = dict["Data"] as! [[String: Any]]
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class GetMapPublishDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMapPublishDataResponseBody?

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
            var model = GetMapPublishDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitLocateRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var params: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
        }
    }
}

public class InitLocateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class InitLocateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitLocateResponseBody?

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
            var model = InitLocateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCommonMaterialsRequest : Tea.TeaModel {
    public var jwtToken: String?

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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListCommonMaterialsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coverUrl: String?

        public var ext: String?

        public var fileUrl: String?

        public var id: String?

        public var name: String?

        public var ossKey: String?

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
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                self.ossKey = dict["OssKey"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListCommonMaterialsResponseBody.Data]?

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
            var tmp : [ListCommonMaterialsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListCommonMaterialsResponseBody.Data()
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListCommonMaterialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommonMaterialsResponseBody?

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
            var model = ListCommonMaterialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDigitalHumanMaterialsRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var onlyPersonalMaterials: Bool?

    public var size: Int32?

    public var types: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.onlyPersonalMaterials != nil {
            map["OnlyPersonalMaterials"] = self.onlyPersonalMaterials!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("OnlyPersonalMaterials") && dict["OnlyPersonalMaterials"] != nil {
            self.onlyPersonalMaterials = dict["OnlyPersonalMaterials"] as! Bool
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! String
        }
    }
}

public class ListDigitalHumanMaterialsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public var ext: String?

            public var fileUrl: String?

            public var files: [String: Any]?

            public var id: String?

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
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.fileUrl != nil {
                    map["FileUrl"] = self.fileUrl!
                }
                if self.files != nil {
                    map["Files"] = self.files!
                }
                if self.id != nil {
                    map["Id"] = self.id!
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
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! String
                }
                if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                    self.fileUrl = dict["FileUrl"] as! String
                }
                if dict.keys.contains("Files") && dict["Files"] != nil {
                    self.files = dict["Files"] as! [String: Any]
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var components: [ListDigitalHumanMaterialsResponseBody.Data.Components]?

        public var ext: String?

        public var fileUrl: String?

        public var files: [String: Any]?

        public var id: String?

        public var name: String?

        public var sortOrder: Int32?

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
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.files != nil {
                map["Files"] = self.files!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sortOrder != nil {
                map["SortOrder"] = self.sortOrder!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Components") && dict["Components"] != nil {
                var tmp : [ListDigitalHumanMaterialsResponseBody.Data.Components] = []
                for v in dict["Components"] as! [Any] {
                    var model = ListDigitalHumanMaterialsResponseBody.Data.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Files") && dict["Files"] != nil {
                self.files = dict["Files"] as! [String: Any]
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
                self.sortOrder = dict["SortOrder"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListDigitalHumanMaterialsResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListDigitalHumanMaterialsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListDigitalHumanMaterialsResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListDigitalHumanMaterialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDigitalHumanMaterialsResponseBody?

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
            var model = ListDigitalHumanMaterialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListLocationServiceRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var size: Int32?

    public var sort: String?

    public var sortField: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
    }
}

public class ListLocationServiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var expireTime: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var name: String?

        public var note: String?

        public var qps: Int64?

        public var startTime: String?

        public var status: String?

        public var svcState: String?

        public override init() {
            super.init()
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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
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
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.qps != nil {
                map["Qps"] = self.qps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.svcState != nil {
                map["SvcState"] = self.svcState!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("Qps") && dict["Qps"] != nil {
                self.qps = dict["Qps"] as! Int64
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SvcState") && dict["SvcState"] != nil {
                self.svcState = dict["SvcState"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListLocationServiceResponseBody.Data]?

    public var errorName: String?

    public var httpCode: Int32?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListLocationServiceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListLocationServiceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListLocationServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLocationServiceResponseBody?

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
            var model = ListLocationServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMotionShopTasksRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class ListMotionShopTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Material : Tea.TeaModel {
            public var avatarId: String?

            public var box: [Double]?

            public var coverUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatarId != nil {
                    map["AvatarId"] = self.avatarId!
                }
                if self.box != nil {
                    map["Box"] = self.box!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarId") && dict["AvatarId"] != nil {
                    self.avatarId = dict["AvatarId"] as! String
                }
                if dict.keys.contains("Box") && dict["Box"] != nil {
                    self.box = dict["Box"] as! [Double]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
            }
        }
        public class Result : Tea.TeaModel {
            public var coverUrl: String?

            public var shareUrl: String?

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
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.shareUrl != nil {
                    map["ShareUrl"] = self.shareUrl!
                }
                if self.videoUrl != nil {
                    map["VideoUrl"] = self.videoUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("ShareUrl") && dict["ShareUrl"] != nil {
                    self.shareUrl = dict["ShareUrl"] as! String
                }
                if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                    self.videoUrl = dict["VideoUrl"] as! String
                }
            }
        }
        public var errorMessage: String?

        public var material: ListMotionShopTasksResponseBody.Data.Material?

        public var result: ListMotionShopTasksResponseBody.Data.Result?

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
            try self.material?.validate()
            try self.result?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.material != nil {
                map["Material"] = self.material?.toMap()
            }
            if self.result != nil {
                map["Result"] = self.result?.toMap()
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
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Material") && dict["Material"] != nil {
                var model = ListMotionShopTasksResponseBody.Data.Material()
                model.fromMap(dict["Material"] as! [String: Any])
                self.material = model
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                var model = ListMotionShopTasksResponseBody.Data.Result()
                model.fromMap(dict["Result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [ListMotionShopTasksResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListMotionShopTasksResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListMotionShopTasksResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class ListMotionShopTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMotionShopTasksResponseBody?

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
            var model = ListMotionShopTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LivePortraitFaceDetectRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class LivePortraitFaceDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: Int32?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int32
            }
            if dict.keys.contains("Message") && dict["Message"] != nil {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var code: String?

    public var data: LivePortraitFaceDetectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = LivePortraitFaceDetectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class LivePortraitFaceDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LivePortraitFaceDetectResponseBody?

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
            var model = LivePortraitFaceDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LocateRequest : Tea.TeaModel {
    public var image: String?

    public var jwtToken: String?

    public var params: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
        }
    }
}

public class LocateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class LocateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LocateResponseBody?

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
            var model = LocateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LoginHuggingFaceRequest : Tea.TeaModel {
    public var token: String?

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
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class LoginHuggingFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jwtToken: String?

        public var nickname: String?

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
            if self.jwtToken != nil {
                map["JwtToken"] = self.jwtToken!
            }
            if self.nickname != nil {
                map["Nickname"] = self.nickname!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
                self.jwtToken = dict["JwtToken"] as! String
            }
            if dict.keys.contains("Nickname") && dict["Nickname"] != nil {
                self.nickname = dict["Nickname"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: LoginHuggingFaceResponseBody.Data?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            var model = LoginHuggingFaceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class LoginHuggingFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoginHuggingFaceResponseBody?

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
            var model = LoginHuggingFaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LoginModelScopeRequest : Tea.TeaModel {
    public var empId: String?

    public var empName: String?

    public var token: String?

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
        if self.empId != nil {
            map["EmpId"] = self.empId!
        }
        if self.empName != nil {
            map["EmpName"] = self.empName!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EmpId") && dict["EmpId"] != nil {
            self.empId = dict["EmpId"] as! String
        }
        if dict.keys.contains("EmpName") && dict["EmpName"] != nil {
            self.empName = dict["EmpName"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class LoginModelScopeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var email: String?

        public var jwtToken: String?

        public var nickname: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.jwtToken != nil {
                map["JwtToken"] = self.jwtToken!
            }
            if self.nickname != nil {
                map["Nickname"] = self.nickname!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
                self.jwtToken = dict["JwtToken"] as! String
            }
            if dict.keys.contains("Nickname") && dict["Nickname"] != nil {
                self.nickname = dict["Nickname"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: LoginModelScopeResponseBody.Data?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            var model = LoginModelScopeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class LoginModelScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoginModelScopeResponseBody?

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
            var model = LoginModelScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MotionShopVideoDetectRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var ossKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
            self.ossKey = dict["OssKey"] as! String
        }
    }
}

public class MotionShopVideoDetectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
        }
    }
    public var code: String?

    public var data: MotionShopVideoDetectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = MotionShopVideoDetectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class MotionShopVideoDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MotionShopVideoDetectResponseBody?

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
            var model = MotionShopVideoDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBatchQueryObjectGenerationProjectStatusRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectIds != nil {
            map["ProjectIds"] = self.projectIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectIds") && dict["ProjectIds"] != nil {
            self.projectIds = dict["ProjectIds"] as! String
        }
    }
}

public class PopBatchQueryObjectGenerationProjectStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var buildResultUrl: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
            }
        }
        public var bizUsage: String?

        public var dataset: PopBatchQueryObjectGenerationProjectStatusResponseBody.Data.Dataset?

        public var id: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopBatchQueryObjectGenerationProjectStatusResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [PopBatchQueryObjectGenerationProjectStatusResponseBody.Data]?

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
            var tmp : [PopBatchQueryObjectGenerationProjectStatusResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopBatchQueryObjectGenerationProjectStatusResponseBody.Data()
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PopBatchQueryObjectGenerationProjectStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBatchQueryObjectGenerationProjectStatusResponseBody?

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
            var model = PopBatchQueryObjectGenerationProjectStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBatchQueryObjectProjectStatusRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectIds != nil {
            map["ProjectIds"] = self.projectIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectIds") && dict["ProjectIds"] != nil {
            self.projectIds = dict["ProjectIds"] as! String
        }
    }
}

public class PopBatchQueryObjectProjectStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkStatus: String?

        public var id: String?

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
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [PopBatchQueryObjectProjectStatusResponseBody.Data]?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            var tmp : [PopBatchQueryObjectProjectStatusResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopBatchQueryObjectProjectStatusResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class PopBatchQueryObjectProjectStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBatchQueryObjectProjectStatusResponseBody?

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
            var model = PopBatchQueryObjectProjectStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBuildFeatureToAvatarProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopBuildFeatureToAvatarProjectResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopBuildFeatureToAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBuildFeatureToAvatarProjectResponseBody?

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
            var model = PopBuildFeatureToAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBuildLivePortraitModelScopeProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopBuildLivePortraitModelScopeProjectResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopBuildLivePortraitModelScopeProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBuildLivePortraitModelScopeProjectResponseBody?

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
            var model = PopBuildLivePortraitModelScopeProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBuildObjectGenerationProjectRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopBuildObjectGenerationProjectResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopBuildObjectGenerationProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBuildObjectGenerationProjectResponseBody?

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
            var model = PopBuildObjectGenerationProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBuildObjectProjectRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopBuildObjectProjectResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class PopBuildObjectProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBuildObjectProjectResponseBody?

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
            var model = PopBuildObjectProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBuildPakRenderProjectRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopBuildPakRenderProjectResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopBuildPakRenderProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBuildPakRenderProjectResponseBody?

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
            var model = PopBuildPakRenderProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopBuildTextToAvatarProjectRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopBuildTextToAvatarProjectResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopBuildTextToAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopBuildTextToAvatarProjectResponseBody?

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
            var model = PopBuildTextToAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreateFeatureToAvatarProjectRequest : Tea.TeaModel {
    public var extInfo: String?

    public var intro: String?

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
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopCreateFeatureToAvatarProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var id: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var status: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorCode: String?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var id: Int64?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var policy: PopCreateFeatureToAvatarProjectResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopCreateFeatureToAvatarProjectResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public var bizUsage: String?

        public var buildDetail: PopCreateFeatureToAvatarProjectResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var dataset: PopCreateFeatureToAvatarProjectResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopCreateFeatureToAvatarProjectResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopCreateFeatureToAvatarProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopCreateFeatureToAvatarProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopCreateFeatureToAvatarProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopCreateFeatureToAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateFeatureToAvatarProjectResponseBody?

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
            var model = PopCreateFeatureToAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreateLivePortraitModelScopeProjectRequest : Tea.TeaModel {
    public var extInfo: String?

    public var intro: String?

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
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopCreateLivePortraitModelScopeProjectResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: PopCreateLivePortraitModelScopeProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopCreateLivePortraitModelScopeProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopCreateLivePortraitModelScopeProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateLivePortraitModelScopeProjectResponseBody?

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
            var model = PopCreateLivePortraitModelScopeProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreateMaterialRequest : Tea.TeaModel {
    public var checkStatus: String?

    public var ext: String?

    public var intro: String?

    public var jwtToken: String?

    public var listStatus: String?

    public var name: String?

    public var ossKey: String?

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
        if self.checkStatus != nil {
            map["CheckStatus"] = self.checkStatus!
        }
        if self.ext != nil {
            map["Ext"] = self.ext!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.listStatus != nil {
            map["ListStatus"] = self.listStatus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
            self.checkStatus = dict["CheckStatus"] as! String
        }
        if dict.keys.contains("Ext") && dict["Ext"] != nil {
            self.ext = dict["Ext"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
            self.listStatus = dict["ListStatus"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
            self.ossKey = dict["OssKey"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class PopCreateMaterialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkStatus: String?

        public var common: Bool?

        public var coverUrl: String?

        public var createTime: String?

        public var deleted: Bool?

        public var ext: String?

        public var fileUrl: String?

        public var id: String?

        public var intro: String?

        public var listStatus: String?

        public var modifiedTime: String?

        public var name: String?

        public var ossKey: String?

        public var previewUrl: String?

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
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.common != nil {
                map["Common"] = self.common!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.listStatus != nil {
                map["ListStatus"] = self.listStatus!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("Common") && dict["Common"] != nil {
                self.common = dict["Common"] as! Bool
            }
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                self.listStatus = dict["ListStatus"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                self.ossKey = dict["OssKey"] as! String
            }
            if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                self.previewUrl = dict["PreviewUrl"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopCreateMaterialResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopCreateMaterialResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopCreateMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateMaterialResponseBody?

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
            var model = PopCreateMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreateObjectGenerationProjectRequest : Tea.TeaModel {
    public var bizUsage: String?

    public var extInfo: String?

    public var intro: String?

    public var jwtToken: String?

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
        if self.bizUsage != nil {
            map["BizUsage"] = self.bizUsage!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
            self.bizUsage = dict["BizUsage"] as! String
        }
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopCreateObjectGenerationProjectResponseBody : Tea.TeaModel {
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
    public var code: String?

    public var data: PopCreateObjectGenerationProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopCreateObjectGenerationProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopCreateObjectGenerationProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateObjectGenerationProjectResponseBody?

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
            var model = PopCreateObjectGenerationProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreateObjectProjectRequest : Tea.TeaModel {
    public var autoBuild: Bool?

    public var bizUsage: String?

    public var customSource: String?

    public var dependencies: String?

    public var foreignUid: String?

    public var intro: String?

    public var jwtToken: String?

    public var mode: String?

    public var recommendStatus: String?

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
        if self.autoBuild != nil {
            map["AutoBuild"] = self.autoBuild!
        }
        if self.bizUsage != nil {
            map["BizUsage"] = self.bizUsage!
        }
        if self.customSource != nil {
            map["CustomSource"] = self.customSource!
        }
        if self.dependencies != nil {
            map["Dependencies"] = self.dependencies!
        }
        if self.foreignUid != nil {
            map["ForeignUid"] = self.foreignUid!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.recommendStatus != nil {
            map["RecommendStatus"] = self.recommendStatus!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
            self.autoBuild = dict["AutoBuild"] as! Bool
        }
        if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
            self.bizUsage = dict["BizUsage"] as! String
        }
        if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
            self.customSource = dict["CustomSource"] as! String
        }
        if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
            self.dependencies = dict["Dependencies"] as! String
        }
        if dict.keys.contains("ForeignUid") && dict["ForeignUid"] != nil {
            self.foreignUid = dict["ForeignUid"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("RecommendStatus") && dict["RecommendStatus"] != nil {
            self.recommendStatus = dict["RecommendStatus"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopCreateObjectProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public class Token : Tea.TeaModel {
                public var accessKeyId: String?

                public var accessKeySecret: String?

                public var dir: String?

                public var expiration: String?

                public var host: String?

                public var securityToken: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKeyId != nil {
                        map["AccessKeyId"] = self.accessKeyId!
                    }
                    if self.accessKeySecret != nil {
                        map["AccessKeySecret"] = self.accessKeySecret!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expiration != nil {
                        map["Expiration"] = self.expiration!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.securityToken != nil {
                        map["SecurityToken"] = self.securityToken!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                        self.accessKeyId = dict["AccessKeyId"] as! String
                    }
                    if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                        self.accessKeySecret = dict["AccessKeySecret"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                        self.expiration = dict["Expiration"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                        self.securityToken = dict["SecurityToken"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var policy: PopCreateObjectProjectResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public var token: PopCreateObjectProjectResponseBody.Data.Dataset.Token?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
                try self.token?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                if self.token != nil {
                    map["Token"] = self.token?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopCreateObjectProjectResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
                if dict.keys.contains("Token") && dict["Token"] != nil {
                    var model = PopCreateObjectProjectResponseBody.Data.Dataset.Token()
                    model.fromMap(dict["Token"] as! [String: Any])
                    self.token = model
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class Clothes : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public class SourceFiles : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var fileName: String?

                public var filesize: Int64?

                public var modifiedTime: String?

                public var ossKey: String?

                public var type: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.filesize != nil {
                        map["Filesize"] = self.filesize!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("FileName") && dict["FileName"] != nil {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                        self.filesize = dict["Filesize"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public class Token : Tea.TeaModel {
                public var accessKeyId: String?

                public var accessKeySecret: String?

                public var dir: String?

                public var expiration: String?

                public var host: String?

                public var securityToken: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessKeyId != nil {
                        map["AccessKeyId"] = self.accessKeyId!
                    }
                    if self.accessKeySecret != nil {
                        map["AccessKeySecret"] = self.accessKeySecret!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expiration != nil {
                        map["Expiration"] = self.expiration!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.securityToken != nil {
                        map["SecurityToken"] = self.securityToken!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                        self.accessKeyId = dict["AccessKeyId"] as! String
                    }
                    if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                        self.accessKeySecret = dict["AccessKeySecret"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                        self.expiration = dict["Expiration"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                        self.securityToken = dict["SecurityToken"] as! String
                    }
                }
            }
            public var clothes: [PopCreateObjectProjectResponseBody.Data.Source.Clothes]?

            public var createTime: String?

            public var deleted: Bool?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: PopCreateObjectProjectResponseBody.Data.Source.Policy?

            public var sourceFiles: [PopCreateObjectProjectResponseBody.Data.Source.SourceFiles]?

            public var token: PopCreateObjectProjectResponseBody.Data.Source.Token?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
                try self.token?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clothes != nil {
                    var tmp : [Any] = []
                    for k in self.clothes! {
                        tmp.append(k.toMap())
                    }
                    map["Clothes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.sourceFiles != nil {
                    var tmp : [Any] = []
                    for k in self.sourceFiles! {
                        tmp.append(k.toMap())
                    }
                    map["SourceFiles"] = tmp
                }
                if self.token != nil {
                    map["Token"] = self.token?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                    var tmp : [PopCreateObjectProjectResponseBody.Data.Source.Clothes] = []
                    for v in dict["Clothes"] as! [Any] {
                        var model = PopCreateObjectProjectResponseBody.Data.Source.Clothes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.clothes = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopCreateObjectProjectResponseBody.Data.Source.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                    var tmp : [PopCreateObjectProjectResponseBody.Data.Source.SourceFiles] = []
                    for v in dict["SourceFiles"] as! [Any] {
                        var model = PopCreateObjectProjectResponseBody.Data.Source.SourceFiles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sourceFiles = tmp
                }
                if dict.keys.contains("Token") && dict["Token"] != nil {
                    var model = PopCreateObjectProjectResponseBody.Data.Source.Token()
                    model.fromMap(dict["Token"] as! [String: Any])
                    self.token = model
                }
            }
        }
        public var auditStatus: String?

        public var autoBuild: Bool?

        public var bizUsage: String?

        public var buildDetail: PopCreateObjectProjectResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var customSource: String?

        public var dataset: PopCreateObjectProjectResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var modifiedTime: String?

        public var recommendStatus: String?

        public var source: PopCreateObjectProjectResponseBody.Data.Source?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customSource != nil {
                map["CustomSource"] = self.customSource!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.recommendStatus != nil {
                map["RecommendStatus"] = self.recommendStatus!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopCreateObjectProjectResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                self.customSource = dict["CustomSource"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopCreateObjectProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("RecommendStatus") && dict["RecommendStatus"] != nil {
                self.recommendStatus = dict["RecommendStatus"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                var model = PopCreateObjectProjectResponseBody.Data.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopCreateObjectProjectResponseBody.Data?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            var model = PopCreateObjectProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class PopCreateObjectProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateObjectProjectResponseBody?

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
            var model = PopCreateObjectProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreatePakRenderProjectRequest : Tea.TeaModel {
    public var extInfo: String?

    public var intro: String?

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
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopCreatePakRenderProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var autoBuild: Bool?

        public var bizUsage: String?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

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
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopCreatePakRenderProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopCreatePakRenderProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopCreatePakRenderProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreatePakRenderProjectResponseBody?

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
            var model = PopCreatePakRenderProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopCreateTextToAvatarProjectRequest : Tea.TeaModel {
    public var extInfo: String?

    public var intro: String?

    public var jwtToken: String?

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
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.intro != nil {
            map["Intro"] = self.intro!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("Intro") && dict["Intro"] != nil {
            self.intro = dict["Intro"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopCreateTextToAvatarProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var autoBuild: Bool?

        public var bizUsage: String?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

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
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopCreateTextToAvatarProjectResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopCreateTextToAvatarProjectResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopCreateTextToAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopCreateTextToAvatarProjectResponseBody?

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
            var model = PopCreateTextToAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopDeleteMaterialRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var materialId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.materialId != nil {
            map["MaterialId"] = self.materialId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("MaterialId") && dict["MaterialId"] != nil {
            self.materialId = dict["MaterialId"] as! String
        }
    }
}

public class PopDeleteMaterialResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopDeleteMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopDeleteMaterialResponseBody?

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
            var model = PopDeleteMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopGetAITryOnJobRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public var withMaterial: Bool?

    public var withResult: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.withMaterial != nil {
            map["WithMaterial"] = self.withMaterial!
        }
        if self.withResult != nil {
            map["WithResult"] = self.withResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("WithMaterial") && dict["WithMaterial"] != nil {
            self.withMaterial = dict["WithMaterial"] as! Bool
        }
        if dict.keys.contains("WithResult") && dict["WithResult"] != nil {
            self.withResult = dict["WithResult"] as! Bool
        }
    }
}

public class PopGetAITryOnJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DummyProjectInfo : Tea.TeaModel {
            public class BuildDetail : Tea.TeaModel {
                public var completedTime: String?

                public var createTime: String?

                public var deleted: Bool?

                public var errorMessage: String?

                public var estimatedDuration: Int64?

                public var id: Int64?

                public var modifiedTime: String?

                public var runningTime: String?

                public var status: String?

                public var submitTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.completedTime != nil {
                        map["CompletedTime"] = self.completedTime!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.estimatedDuration != nil {
                        map["EstimatedDuration"] = self.estimatedDuration!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.runningTime != nil {
                        map["RunningTime"] = self.runningTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.submitTime != nil {
                        map["SubmitTime"] = self.submitTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                        self.completedTime = dict["CompletedTime"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                        self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                        self.runningTime = dict["RunningTime"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                        self.submitTime = dict["SubmitTime"] as! String
                    }
                }
            }
            public class Dataset : Tea.TeaModel {
                public class Policy : Tea.TeaModel {
                    public var accessId: String?

                    public var dir: String?

                    public var expire: String?

                    public var host: String?

                    public var policy: String?

                    public var signature: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessId != nil {
                            map["AccessId"] = self.accessId!
                        }
                        if self.dir != nil {
                            map["Dir"] = self.dir!
                        }
                        if self.expire != nil {
                            map["Expire"] = self.expire!
                        }
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy!
                        }
                        if self.signature != nil {
                            map["Signature"] = self.signature!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                            self.accessId = dict["AccessId"] as! String
                        }
                        if dict.keys.contains("Dir") && dict["Dir"] != nil {
                            self.dir = dict["Dir"] as! String
                        }
                        if dict.keys.contains("Expire") && dict["Expire"] != nil {
                            self.expire = dict["Expire"] as! String
                        }
                        if dict.keys.contains("Host") && dict["Host"] != nil {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            self.policy = dict["Policy"] as! String
                        }
                        if dict.keys.contains("Signature") && dict["Signature"] != nil {
                            self.signature = dict["Signature"] as! String
                        }
                    }
                }
                public var buildResultUrl: [String: Any]?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var errorCode: String?

                public var errorMessage: String?

                public var glbModelUrl: String?

                public var id: Int64?

                public var modelUrl: String?

                public var modifiedTime: String?

                public var originResultUrl: String?

                public var ossKey: String?

                public var policy: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Dataset.Policy?

                public var poseUrl: String?

                public var previewUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.policy?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.buildResultUrl != nil {
                        map["BuildResultUrl"] = self.buildResultUrl!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.glbModelUrl != nil {
                        map["GlbModelUrl"] = self.glbModelUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modelUrl != nil {
                        map["ModelUrl"] = self.modelUrl!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.originResultUrl != nil {
                        map["OriginResultUrl"] = self.originResultUrl!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy?.toMap()
                    }
                    if self.poseUrl != nil {
                        map["PoseUrl"] = self.poseUrl!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                        self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                        self.glbModelUrl = dict["GlbModelUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                        self.modelUrl = dict["ModelUrl"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                        self.originResultUrl = dict["OriginResultUrl"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Dataset.Policy()
                        model.fromMap(dict["Policy"] as! [String: Any])
                        self.policy = model
                    }
                    if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                        self.poseUrl = dict["PoseUrl"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                }
            }
            public class Source : Tea.TeaModel {
                public class Clothes : Tea.TeaModel {
                    public class SkuProps : Tea.TeaModel {
                        public var name: String?

                        public var options: [String]?

                        public override init() {
                            super.init()
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
                            if self.options != nil {
                                map["Options"] = self.options!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Options") && dict["Options"] != nil {
                                self.options = dict["Options"] as! [String]
                            }
                        }
                    }
                    public class Skus : Tea.TeaModel {
                        public var color: String?

                        public var cover: String?

                        public var size: String?

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
                            if self.color != nil {
                                map["Color"] = self.color!
                            }
                            if self.cover != nil {
                                map["Cover"] = self.cover!
                            }
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Color") && dict["Color"] != nil {
                                self.color = dict["Color"] as! String
                            }
                            if dict.keys.contains("Cover") && dict["Cover"] != nil {
                                self.cover = dict["Cover"] as! String
                            }
                            if dict.keys.contains("Size") && dict["Size"] != nil {
                                self.size = dict["Size"] as! String
                            }
                            if dict.keys.contains("Status") && dict["Status"] != nil {
                                self.status = dict["Status"] as! String
                            }
                        }
                    }
                    public var coverUrl: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var name: String?

                    public var ossKey: String?

                    public var part: String?

                    public var size: String?

                    public var skuProps: [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes.SkuProps]?

                    public var skus: [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes.Skus]?

                    public var status: [String: String]?

                    public var type: String?

                    public var version: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.coverUrl != nil {
                            map["CoverUrl"] = self.coverUrl!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.part != nil {
                            map["Part"] = self.part!
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.skuProps != nil {
                            var tmp : [Any] = []
                            for k in self.skuProps! {
                                tmp.append(k.toMap())
                            }
                            map["SkuProps"] = tmp
                        }
                        if self.skus != nil {
                            var tmp : [Any] = []
                            for k in self.skus! {
                                tmp.append(k.toMap())
                            }
                            map["Skus"] = tmp
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                            self.coverUrl = dict["CoverUrl"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Part") && dict["Part"] != nil {
                            self.part = dict["Part"] as! String
                        }
                        if dict.keys.contains("Size") && dict["Size"] != nil {
                            self.size = dict["Size"] as! String
                        }
                        if dict.keys.contains("SkuProps") && dict["SkuProps"] != nil {
                            var tmp : [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes.SkuProps] = []
                            for v in dict["SkuProps"] as! [Any] {
                                var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes.SkuProps()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.skuProps = tmp
                        }
                        if dict.keys.contains("Skus") && dict["Skus"] != nil {
                            var tmp : [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes.Skus] = []
                            for v in dict["Skus"] as! [Any] {
                                var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes.Skus()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.skus = tmp
                        }
                        if dict.keys.contains("Status") && dict["Status"] != nil {
                            self.status = dict["Status"] as! [String: String]
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Version") && dict["Version"] != nil {
                            self.version = dict["Version"] as! Int32
                        }
                    }
                }
                public class Policy : Tea.TeaModel {
                    public var accessId: String?

                    public var dir: String?

                    public var expire: String?

                    public var host: String?

                    public var policy: String?

                    public var signature: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessId != nil {
                            map["AccessId"] = self.accessId!
                        }
                        if self.dir != nil {
                            map["Dir"] = self.dir!
                        }
                        if self.expire != nil {
                            map["Expire"] = self.expire!
                        }
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy!
                        }
                        if self.signature != nil {
                            map["Signature"] = self.signature!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                            self.accessId = dict["AccessId"] as! String
                        }
                        if dict.keys.contains("Dir") && dict["Dir"] != nil {
                            self.dir = dict["Dir"] as! String
                        }
                        if dict.keys.contains("Expire") && dict["Expire"] != nil {
                            self.expire = dict["Expire"] as! String
                        }
                        if dict.keys.contains("Host") && dict["Host"] != nil {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            self.policy = dict["Policy"] as! String
                        }
                        if dict.keys.contains("Signature") && dict["Signature"] != nil {
                            self.signature = dict["Signature"] as! String
                        }
                    }
                }
                public class SourceFiles : Tea.TeaModel {
                    public var coverUrl: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var fileName: String?

                    public var filesize: Int64?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var ossKey: String?

                    public var type: String?

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
                        if self.coverUrl != nil {
                            map["CoverUrl"] = self.coverUrl!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.fileName != nil {
                            map["FileName"] = self.fileName!
                        }
                        if self.filesize != nil {
                            map["Filesize"] = self.filesize!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                            self.coverUrl = dict["CoverUrl"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("FileName") && dict["FileName"] != nil {
                            self.fileName = dict["FileName"] as! String
                        }
                        if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                            self.filesize = dict["Filesize"] as! Int64
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Url") && dict["Url"] != nil {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public class Token : Tea.TeaModel {
                    public var accessKeyId: String?

                    public var accessKeySecret: String?

                    public var dir: String?

                    public var expiration: String?

                    public var host: String?

                    public var securityToken: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessKeyId != nil {
                            map["AccessKeyId"] = self.accessKeyId!
                        }
                        if self.accessKeySecret != nil {
                            map["AccessKeySecret"] = self.accessKeySecret!
                        }
                        if self.dir != nil {
                            map["Dir"] = self.dir!
                        }
                        if self.expiration != nil {
                            map["Expiration"] = self.expiration!
                        }
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.securityToken != nil {
                            map["SecurityToken"] = self.securityToken!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                            self.accessKeyId = dict["AccessKeyId"] as! String
                        }
                        if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                            self.accessKeySecret = dict["AccessKeySecret"] as! String
                        }
                        if dict.keys.contains("Dir") && dict["Dir"] != nil {
                            self.dir = dict["Dir"] as! String
                        }
                        if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                            self.expiration = dict["Expiration"] as! String
                        }
                        if dict.keys.contains("Host") && dict["Host"] != nil {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                            self.securityToken = dict["SecurityToken"] as! String
                        }
                    }
                }
                public var clothes: [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes]?

                public var createTime: String?

                public var deleted: Bool?

                public var id: Int64?

                public var modifiedTime: String?

                public var ossKey: String?

                public var policy: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Policy?

                public var sourceFiles: [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.SourceFiles]?

                public var token: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Token?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.policy?.validate()
                    try self.token?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clothes != nil {
                        var tmp : [Any] = []
                        for k in self.clothes! {
                            tmp.append(k.toMap())
                        }
                        map["Clothes"] = tmp
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy?.toMap()
                    }
                    if self.sourceFiles != nil {
                        var tmp : [Any] = []
                        for k in self.sourceFiles! {
                            tmp.append(k.toMap())
                        }
                        map["SourceFiles"] = tmp
                    }
                    if self.token != nil {
                        map["Token"] = self.token?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                        var tmp : [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes] = []
                        for v in dict["Clothes"] as! [Any] {
                            var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Clothes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.clothes = tmp
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Policy()
                        model.fromMap(dict["Policy"] as! [String: Any])
                        self.policy = model
                    }
                    if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                        var tmp : [PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.SourceFiles] = []
                        for v in dict["SourceFiles"] as! [Any] {
                            var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.SourceFiles()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.sourceFiles = tmp
                    }
                    if dict.keys.contains("Token") && dict["Token"] != nil {
                        var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source.Token()
                        model.fromMap(dict["Token"] as! [String: Any])
                        self.token = model
                    }
                }
            }
            public var auditStatus: String?

            public var autoBuild: Bool?

            public var bizUsage: String?

            public var buildDetail: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.BuildDetail?

            public var checkStatus: String?

            public var createMode: String?

            public var createTime: String?

            public var customSource: String?

            public var dataset: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Dataset?

            public var deleted: Bool?

            public var dependencies: String?

            public var ext: String?

            public var id: String?

            public var intro: String?

            public var materialCoverUrl: String?

            public var modifiedTime: String?

            public var source: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source?

            public var status: String?

            public var title: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.buildDetail?.validate()
                try self.dataset?.validate()
                try self.source?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.autoBuild != nil {
                    map["AutoBuild"] = self.autoBuild!
                }
                if self.bizUsage != nil {
                    map["BizUsage"] = self.bizUsage!
                }
                if self.buildDetail != nil {
                    map["BuildDetail"] = self.buildDetail?.toMap()
                }
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.createMode != nil {
                    map["CreateMode"] = self.createMode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customSource != nil {
                    map["CustomSource"] = self.customSource!
                }
                if self.dataset != nil {
                    map["Dataset"] = self.dataset?.toMap()
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.dependencies != nil {
                    map["Dependencies"] = self.dependencies!
                }
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.intro != nil {
                    map["Intro"] = self.intro!
                }
                if self.materialCoverUrl != nil {
                    map["MaterialCoverUrl"] = self.materialCoverUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.source != nil {
                    map["Source"] = self.source?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                    self.auditStatus = dict["AuditStatus"] as! String
                }
                if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                    self.autoBuild = dict["AutoBuild"] as! Bool
                }
                if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                    self.bizUsage = dict["BizUsage"] as! String
                }
                if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.BuildDetail()
                    model.fromMap(dict["BuildDetail"] as! [String: Any])
                    self.buildDetail = model
                }
                if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                    self.checkStatus = dict["CheckStatus"] as! String
                }
                if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                    self.createMode = dict["CreateMode"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                    self.customSource = dict["CustomSource"] as! String
                }
                if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Dataset()
                    model.fromMap(dict["Dataset"] as! [String: Any])
                    self.dataset = model
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                    self.dependencies = dict["Dependencies"] as! String
                }
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Intro") && dict["Intro"] != nil {
                    self.intro = dict["Intro"] as! String
                }
                if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                    self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo.Source()
                    model.fromMap(dict["Source"] as! [String: Any])
                    self.source = model
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class MaterialInfo : Tea.TeaModel {
            public class Bottoms : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Model : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Suit : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Tops : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var bottoms: PopGetAITryOnJobResponseBody.Data.MaterialInfo.Bottoms?

            public var clothingType: String?

            public var model: PopGetAITryOnJobResponseBody.Data.MaterialInfo.Model?

            public var shoeType: String?

            public var suit: PopGetAITryOnJobResponseBody.Data.MaterialInfo.Suit?

            public var tops: PopGetAITryOnJobResponseBody.Data.MaterialInfo.Tops?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bottoms?.validate()
                try self.model?.validate()
                try self.suit?.validate()
                try self.tops?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bottoms != nil {
                    map["Bottoms"] = self.bottoms?.toMap()
                }
                if self.clothingType != nil {
                    map["ClothingType"] = self.clothingType!
                }
                if self.model != nil {
                    map["Model"] = self.model?.toMap()
                }
                if self.shoeType != nil {
                    map["ShoeType"] = self.shoeType!
                }
                if self.suit != nil {
                    map["Suit"] = self.suit?.toMap()
                }
                if self.tops != nil {
                    map["Tops"] = self.tops?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bottoms") && dict["Bottoms"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.MaterialInfo.Bottoms()
                    model.fromMap(dict["Bottoms"] as! [String: Any])
                    self.bottoms = model
                }
                if dict.keys.contains("ClothingType") && dict["ClothingType"] != nil {
                    self.clothingType = dict["ClothingType"] as! String
                }
                if dict.keys.contains("Model") && dict["Model"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.MaterialInfo.Model()
                    model.fromMap(dict["Model"] as! [String: Any])
                    self.model = model
                }
                if dict.keys.contains("ShoeType") && dict["ShoeType"] != nil {
                    self.shoeType = dict["ShoeType"] as! String
                }
                if dict.keys.contains("Suit") && dict["Suit"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.MaterialInfo.Suit()
                    model.fromMap(dict["Suit"] as! [String: Any])
                    self.suit = model
                }
                if dict.keys.contains("Tops") && dict["Tops"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.MaterialInfo.Tops()
                    model.fromMap(dict["Tops"] as! [String: Any])
                    self.tops = model
                }
            }
        }
        public class SubTasks : Tea.TeaModel {
            public class Feedback : Tea.TeaModel {
                public var dislikeTags: [Int32]?

                public var otherReason: String?

                public var projectId: Int64?

                public var rating: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dislikeTags != nil {
                        map["DislikeTags"] = self.dislikeTags!
                    }
                    if self.otherReason != nil {
                        map["OtherReason"] = self.otherReason!
                    }
                    if self.projectId != nil {
                        map["ProjectId"] = self.projectId!
                    }
                    if self.rating != nil {
                        map["Rating"] = self.rating!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DislikeTags") && dict["DislikeTags"] != nil {
                        self.dislikeTags = dict["DislikeTags"] as! [Int32]
                    }
                    if dict.keys.contains("OtherReason") && dict["OtherReason"] != nil {
                        self.otherReason = dict["OtherReason"] as! String
                    }
                    if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                        self.projectId = dict["ProjectId"] as! Int64
                    }
                    if dict.keys.contains("Rating") && dict["Rating"] != nil {
                        self.rating = dict["Rating"] as! Int32
                    }
                }
            }
            public class SubProjectInfo : Tea.TeaModel {
                public class BuildDetail : Tea.TeaModel {
                    public var completedTime: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var errorMessage: String?

                    public var estimatedDuration: Int64?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var runningTime: String?

                    public var status: String?

                    public var submitTime: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.completedTime != nil {
                            map["CompletedTime"] = self.completedTime!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.errorMessage != nil {
                            map["ErrorMessage"] = self.errorMessage!
                        }
                        if self.estimatedDuration != nil {
                            map["EstimatedDuration"] = self.estimatedDuration!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.runningTime != nil {
                            map["RunningTime"] = self.runningTime!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.submitTime != nil {
                            map["SubmitTime"] = self.submitTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                            self.completedTime = dict["CompletedTime"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                            self.errorMessage = dict["ErrorMessage"] as! String
                        }
                        if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                            self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                            self.runningTime = dict["RunningTime"] as! String
                        }
                        if dict.keys.contains("Status") && dict["Status"] != nil {
                            self.status = dict["Status"] as! String
                        }
                        if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                            self.submitTime = dict["SubmitTime"] as! String
                        }
                    }
                }
                public class Dataset : Tea.TeaModel {
                    public class Policy : Tea.TeaModel {
                        public var accessId: String?

                        public var dir: String?

                        public var expire: String?

                        public var host: String?

                        public var policy: String?

                        public var signature: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessId != nil {
                                map["AccessId"] = self.accessId!
                            }
                            if self.dir != nil {
                                map["Dir"] = self.dir!
                            }
                            if self.expire != nil {
                                map["Expire"] = self.expire!
                            }
                            if self.host != nil {
                                map["Host"] = self.host!
                            }
                            if self.policy != nil {
                                map["Policy"] = self.policy!
                            }
                            if self.signature != nil {
                                map["Signature"] = self.signature!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                                self.accessId = dict["AccessId"] as! String
                            }
                            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                                self.dir = dict["Dir"] as! String
                            }
                            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                                self.expire = dict["Expire"] as! String
                            }
                            if dict.keys.contains("Host") && dict["Host"] != nil {
                                self.host = dict["Host"] as! String
                            }
                            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                                self.policy = dict["Policy"] as! String
                            }
                            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                                self.signature = dict["Signature"] as! String
                            }
                        }
                    }
                    public var buildResultUrl: [String: Any]?

                    public var coverUrl: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var errorCode: String?

                    public var errorMessage: String?

                    public var glbModelUrl: String?

                    public var id: Int64?

                    public var modelUrl: String?

                    public var modifiedTime: String?

                    public var originResultUrl: String?

                    public var ossKey: String?

                    public var policy: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Dataset.Policy?

                    public var poseUrl: String?

                    public var previewUrl: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.policy?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.buildResultUrl != nil {
                            map["BuildResultUrl"] = self.buildResultUrl!
                        }
                        if self.coverUrl != nil {
                            map["CoverUrl"] = self.coverUrl!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.errorMessage != nil {
                            map["ErrorMessage"] = self.errorMessage!
                        }
                        if self.glbModelUrl != nil {
                            map["GlbModelUrl"] = self.glbModelUrl!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modelUrl != nil {
                            map["ModelUrl"] = self.modelUrl!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.originResultUrl != nil {
                            map["OriginResultUrl"] = self.originResultUrl!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy?.toMap()
                        }
                        if self.poseUrl != nil {
                            map["PoseUrl"] = self.poseUrl!
                        }
                        if self.previewUrl != nil {
                            map["PreviewUrl"] = self.previewUrl!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                            self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                        }
                        if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                            self.coverUrl = dict["CoverUrl"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                            self.errorMessage = dict["ErrorMessage"] as! String
                        }
                        if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                            self.glbModelUrl = dict["GlbModelUrl"] as! String
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                            self.modelUrl = dict["ModelUrl"] as! String
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                            self.originResultUrl = dict["OriginResultUrl"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Dataset.Policy()
                            model.fromMap(dict["Policy"] as! [String: Any])
                            self.policy = model
                        }
                        if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                            self.poseUrl = dict["PoseUrl"] as! String
                        }
                        if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                            self.previewUrl = dict["PreviewUrl"] as! String
                        }
                    }
                }
                public class Source : Tea.TeaModel {
                    public class Clothes : Tea.TeaModel {
                        public class SkuProps : Tea.TeaModel {
                            public var name: String?

                            public var options: [String]?

                            public override init() {
                                super.init()
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
                                if self.options != nil {
                                    map["Options"] = self.options!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Name") && dict["Name"] != nil {
                                    self.name = dict["Name"] as! String
                                }
                                if dict.keys.contains("Options") && dict["Options"] != nil {
                                    self.options = dict["Options"] as! [String]
                                }
                            }
                        }
                        public class Skus : Tea.TeaModel {
                            public var color: String?

                            public var cover: String?

                            public var size: String?

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
                                if self.color != nil {
                                    map["Color"] = self.color!
                                }
                                if self.cover != nil {
                                    map["Cover"] = self.cover!
                                }
                                if self.size != nil {
                                    map["Size"] = self.size!
                                }
                                if self.status != nil {
                                    map["Status"] = self.status!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Color") && dict["Color"] != nil {
                                    self.color = dict["Color"] as! String
                                }
                                if dict.keys.contains("Cover") && dict["Cover"] != nil {
                                    self.cover = dict["Cover"] as! String
                                }
                                if dict.keys.contains("Size") && dict["Size"] != nil {
                                    self.size = dict["Size"] as! String
                                }
                                if dict.keys.contains("Status") && dict["Status"] != nil {
                                    self.status = dict["Status"] as! String
                                }
                            }
                        }
                        public var coverUrl: String?

                        public var createTime: String?

                        public var deleted: Bool?

                        public var id: Int64?

                        public var modifiedTime: String?

                        public var name: String?

                        public var ossKey: String?

                        public var part: String?

                        public var size: String?

                        public var skuProps: [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.SkuProps]?

                        public var skus: [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.Skus]?

                        public var status: [String: String]?

                        public var type: String?

                        public var version: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.coverUrl != nil {
                                map["CoverUrl"] = self.coverUrl!
                            }
                            if self.createTime != nil {
                                map["CreateTime"] = self.createTime!
                            }
                            if self.deleted != nil {
                                map["Deleted"] = self.deleted!
                            }
                            if self.id != nil {
                                map["Id"] = self.id!
                            }
                            if self.modifiedTime != nil {
                                map["ModifiedTime"] = self.modifiedTime!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.ossKey != nil {
                                map["OssKey"] = self.ossKey!
                            }
                            if self.part != nil {
                                map["Part"] = self.part!
                            }
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            if self.skuProps != nil {
                                var tmp : [Any] = []
                                for k in self.skuProps! {
                                    tmp.append(k.toMap())
                                }
                                map["SkuProps"] = tmp
                            }
                            if self.skus != nil {
                                var tmp : [Any] = []
                                for k in self.skus! {
                                    tmp.append(k.toMap())
                                }
                                map["Skus"] = tmp
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.version != nil {
                                map["Version"] = self.version!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                                self.coverUrl = dict["CoverUrl"] as! String
                            }
                            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                                self.createTime = dict["CreateTime"] as! String
                            }
                            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                                self.deleted = dict["Deleted"] as! Bool
                            }
                            if dict.keys.contains("Id") && dict["Id"] != nil {
                                self.id = dict["Id"] as! Int64
                            }
                            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                                self.modifiedTime = dict["ModifiedTime"] as! String
                            }
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                                self.ossKey = dict["OssKey"] as! String
                            }
                            if dict.keys.contains("Part") && dict["Part"] != nil {
                                self.part = dict["Part"] as! String
                            }
                            if dict.keys.contains("Size") && dict["Size"] != nil {
                                self.size = dict["Size"] as! String
                            }
                            if dict.keys.contains("SkuProps") && dict["SkuProps"] != nil {
                                var tmp : [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.SkuProps] = []
                                for v in dict["SkuProps"] as! [Any] {
                                    var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.SkuProps()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.skuProps = tmp
                            }
                            if dict.keys.contains("Skus") && dict["Skus"] != nil {
                                var tmp : [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.Skus] = []
                                for v in dict["Skus"] as! [Any] {
                                    var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.Skus()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.skus = tmp
                            }
                            if dict.keys.contains("Status") && dict["Status"] != nil {
                                self.status = dict["Status"] as! [String: String]
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Version") && dict["Version"] != nil {
                                self.version = dict["Version"] as! Int32
                            }
                        }
                    }
                    public class Policy : Tea.TeaModel {
                        public var accessId: String?

                        public var dir: String?

                        public var expire: String?

                        public var host: String?

                        public var policy: String?

                        public var signature: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessId != nil {
                                map["AccessId"] = self.accessId!
                            }
                            if self.dir != nil {
                                map["Dir"] = self.dir!
                            }
                            if self.expire != nil {
                                map["Expire"] = self.expire!
                            }
                            if self.host != nil {
                                map["Host"] = self.host!
                            }
                            if self.policy != nil {
                                map["Policy"] = self.policy!
                            }
                            if self.signature != nil {
                                map["Signature"] = self.signature!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                                self.accessId = dict["AccessId"] as! String
                            }
                            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                                self.dir = dict["Dir"] as! String
                            }
                            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                                self.expire = dict["Expire"] as! String
                            }
                            if dict.keys.contains("Host") && dict["Host"] != nil {
                                self.host = dict["Host"] as! String
                            }
                            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                                self.policy = dict["Policy"] as! String
                            }
                            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                                self.signature = dict["Signature"] as! String
                            }
                        }
                    }
                    public class SourceFiles : Tea.TeaModel {
                        public var coverUrl: String?

                        public var createTime: String?

                        public var deleted: Bool?

                        public var fileName: String?

                        public var filesize: Int64?

                        public var id: Int64?

                        public var modifiedTime: String?

                        public var ossKey: String?

                        public var type: String?

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
                            if self.coverUrl != nil {
                                map["CoverUrl"] = self.coverUrl!
                            }
                            if self.createTime != nil {
                                map["CreateTime"] = self.createTime!
                            }
                            if self.deleted != nil {
                                map["Deleted"] = self.deleted!
                            }
                            if self.fileName != nil {
                                map["FileName"] = self.fileName!
                            }
                            if self.filesize != nil {
                                map["Filesize"] = self.filesize!
                            }
                            if self.id != nil {
                                map["Id"] = self.id!
                            }
                            if self.modifiedTime != nil {
                                map["ModifiedTime"] = self.modifiedTime!
                            }
                            if self.ossKey != nil {
                                map["OssKey"] = self.ossKey!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.url != nil {
                                map["Url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                                self.coverUrl = dict["CoverUrl"] as! String
                            }
                            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                                self.createTime = dict["CreateTime"] as! String
                            }
                            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                                self.deleted = dict["Deleted"] as! Bool
                            }
                            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                                self.fileName = dict["FileName"] as! String
                            }
                            if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                                self.filesize = dict["Filesize"] as! Int64
                            }
                            if dict.keys.contains("Id") && dict["Id"] != nil {
                                self.id = dict["Id"] as! Int64
                            }
                            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                                self.modifiedTime = dict["ModifiedTime"] as! String
                            }
                            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                                self.ossKey = dict["OssKey"] as! String
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Token : Tea.TeaModel {
                        public var accessKeyId: String?

                        public var accessKeySecret: String?

                        public var dir: String?

                        public var expiration: String?

                        public var host: String?

                        public var securityToken: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessKeyId != nil {
                                map["AccessKeyId"] = self.accessKeyId!
                            }
                            if self.accessKeySecret != nil {
                                map["AccessKeySecret"] = self.accessKeySecret!
                            }
                            if self.dir != nil {
                                map["Dir"] = self.dir!
                            }
                            if self.expiration != nil {
                                map["Expiration"] = self.expiration!
                            }
                            if self.host != nil {
                                map["Host"] = self.host!
                            }
                            if self.securityToken != nil {
                                map["SecurityToken"] = self.securityToken!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                                self.accessKeyId = dict["AccessKeyId"] as! String
                            }
                            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                                self.accessKeySecret = dict["AccessKeySecret"] as! String
                            }
                            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                                self.dir = dict["Dir"] as! String
                            }
                            if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                                self.expiration = dict["Expiration"] as! String
                            }
                            if dict.keys.contains("Host") && dict["Host"] != nil {
                                self.host = dict["Host"] as! String
                            }
                            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                                self.securityToken = dict["SecurityToken"] as! String
                            }
                        }
                    }
                    public var clothes: [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes]?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var ossKey: String?

                    public var policy: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Policy?

                    public var sourceFiles: [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.SourceFiles]?

                    public var token: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Token?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.policy?.validate()
                        try self.token?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.clothes != nil {
                            var tmp : [Any] = []
                            for k in self.clothes! {
                                tmp.append(k.toMap())
                            }
                            map["Clothes"] = tmp
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy?.toMap()
                        }
                        if self.sourceFiles != nil {
                            var tmp : [Any] = []
                            for k in self.sourceFiles! {
                                tmp.append(k.toMap())
                            }
                            map["SourceFiles"] = tmp
                        }
                        if self.token != nil {
                            map["Token"] = self.token?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                            var tmp : [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes] = []
                            for v in dict["Clothes"] as! [Any] {
                                var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.clothes = tmp
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Policy()
                            model.fromMap(dict["Policy"] as! [String: Any])
                            self.policy = model
                        }
                        if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                            var tmp : [PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.SourceFiles] = []
                            for v in dict["SourceFiles"] as! [Any] {
                                var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.SourceFiles()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.sourceFiles = tmp
                        }
                        if dict.keys.contains("Token") && dict["Token"] != nil {
                            var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source.Token()
                            model.fromMap(dict["Token"] as! [String: Any])
                            self.token = model
                        }
                    }
                }
                public var auditStatus: String?

                public var autoBuild: Bool?

                public var bizUsage: String?

                public var buildDetail: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.BuildDetail?

                public var checkStatus: String?

                public var createMode: String?

                public var createTime: String?

                public var customSource: String?

                public var dataset: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Dataset?

                public var deleted: Bool?

                public var dependencies: String?

                public var ext: String?

                public var id: String?

                public var intro: String?

                public var materialCoverUrl: String?

                public var modifiedTime: String?

                public var source: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source?

                public var status: String?

                public var title: String?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.buildDetail?.validate()
                    try self.dataset?.validate()
                    try self.source?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auditStatus != nil {
                        map["AuditStatus"] = self.auditStatus!
                    }
                    if self.autoBuild != nil {
                        map["AutoBuild"] = self.autoBuild!
                    }
                    if self.bizUsage != nil {
                        map["BizUsage"] = self.bizUsage!
                    }
                    if self.buildDetail != nil {
                        map["BuildDetail"] = self.buildDetail?.toMap()
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.createMode != nil {
                        map["CreateMode"] = self.createMode!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.customSource != nil {
                        map["CustomSource"] = self.customSource!
                    }
                    if self.dataset != nil {
                        map["Dataset"] = self.dataset?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.dependencies != nil {
                        map["Dependencies"] = self.dependencies!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.materialCoverUrl != nil {
                        map["MaterialCoverUrl"] = self.materialCoverUrl!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.source != nil {
                        map["Source"] = self.source?.toMap()
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                        self.auditStatus = dict["AuditStatus"] as! String
                    }
                    if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                        self.autoBuild = dict["AutoBuild"] as! Bool
                    }
                    if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                        self.bizUsage = dict["BizUsage"] as! String
                    }
                    if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                        var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.BuildDetail()
                        model.fromMap(dict["BuildDetail"] as! [String: Any])
                        self.buildDetail = model
                    }
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                        self.createMode = dict["CreateMode"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                        self.customSource = dict["CustomSource"] as! String
                    }
                    if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                        var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Dataset()
                        model.fromMap(dict["Dataset"] as! [String: Any])
                        self.dataset = model
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                        self.dependencies = dict["Dependencies"] as! String
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                        self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Source") && dict["Source"] != nil {
                        var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo.Source()
                        model.fromMap(dict["Source"] as! [String: Any])
                        self.source = model
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var feedback: PopGetAITryOnJobResponseBody.Data.SubTasks.Feedback?

            public var subProjectInfo: PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.feedback?.validate()
                try self.subProjectInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.feedback != nil {
                    map["Feedback"] = self.feedback?.toMap()
                }
                if self.subProjectInfo != nil {
                    map["SubProjectInfo"] = self.subProjectInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.SubTasks.Feedback()
                    model.fromMap(dict["Feedback"] as! [String: Any])
                    self.feedback = model
                }
                if dict.keys.contains("SubProjectInfo") && dict["SubProjectInfo"] != nil {
                    var model = PopGetAITryOnJobResponseBody.Data.SubTasks.SubProjectInfo()
                    model.fromMap(dict["SubProjectInfo"] as! [String: Any])
                    self.subProjectInfo = model
                }
            }
        }
        public var dummyProjectInfo: PopGetAITryOnJobResponseBody.Data.DummyProjectInfo?

        public var materialInfo: PopGetAITryOnJobResponseBody.Data.MaterialInfo?

        public var subTasks: [PopGetAITryOnJobResponseBody.Data.SubTasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dummyProjectInfo?.validate()
            try self.materialInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dummyProjectInfo != nil {
                map["DummyProjectInfo"] = self.dummyProjectInfo?.toMap()
            }
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo?.toMap()
            }
            if self.subTasks != nil {
                var tmp : [Any] = []
                for k in self.subTasks! {
                    tmp.append(k.toMap())
                }
                map["SubTasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DummyProjectInfo") && dict["DummyProjectInfo"] != nil {
                var model = PopGetAITryOnJobResponseBody.Data.DummyProjectInfo()
                model.fromMap(dict["DummyProjectInfo"] as! [String: Any])
                self.dummyProjectInfo = model
            }
            if dict.keys.contains("MaterialInfo") && dict["MaterialInfo"] != nil {
                var model = PopGetAITryOnJobResponseBody.Data.MaterialInfo()
                model.fromMap(dict["MaterialInfo"] as! [String: Any])
                self.materialInfo = model
            }
            if dict.keys.contains("SubTasks") && dict["SubTasks"] != nil {
                var tmp : [PopGetAITryOnJobResponseBody.Data.SubTasks] = []
                for v in dict["SubTasks"] as! [Any] {
                    var model = PopGetAITryOnJobResponseBody.Data.SubTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subTasks = tmp
            }
        }
    }
    public var code: String?

    public var data: PopGetAITryOnJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopGetAITryOnJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopGetAITryOnJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopGetAITryOnJobResponseBody?

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
            var model = PopGetAITryOnJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListAITryOnJobsRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class PopListAITryOnJobsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DummyProjectInfo : Tea.TeaModel {
            public class BuildDetail : Tea.TeaModel {
                public var completedTime: String?

                public var createTime: String?

                public var deleted: Bool?

                public var errorMessage: String?

                public var estimatedDuration: Int64?

                public var id: Int64?

                public var modifiedTime: String?

                public var runningTime: String?

                public var status: String?

                public var submitTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.completedTime != nil {
                        map["CompletedTime"] = self.completedTime!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.estimatedDuration != nil {
                        map["EstimatedDuration"] = self.estimatedDuration!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.runningTime != nil {
                        map["RunningTime"] = self.runningTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.submitTime != nil {
                        map["SubmitTime"] = self.submitTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                        self.completedTime = dict["CompletedTime"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                        self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                        self.runningTime = dict["RunningTime"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                        self.submitTime = dict["SubmitTime"] as! String
                    }
                }
            }
            public class Dataset : Tea.TeaModel {
                public class Policy : Tea.TeaModel {
                    public var accessId: String?

                    public var dir: String?

                    public var expire: String?

                    public var host: String?

                    public var policy: String?

                    public var signature: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessId != nil {
                            map["AccessId"] = self.accessId!
                        }
                        if self.dir != nil {
                            map["Dir"] = self.dir!
                        }
                        if self.expire != nil {
                            map["Expire"] = self.expire!
                        }
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy!
                        }
                        if self.signature != nil {
                            map["Signature"] = self.signature!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                            self.accessId = dict["AccessId"] as! String
                        }
                        if dict.keys.contains("Dir") && dict["Dir"] != nil {
                            self.dir = dict["Dir"] as! String
                        }
                        if dict.keys.contains("Expire") && dict["Expire"] != nil {
                            self.expire = dict["Expire"] as! String
                        }
                        if dict.keys.contains("Host") && dict["Host"] != nil {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            self.policy = dict["Policy"] as! String
                        }
                        if dict.keys.contains("Signature") && dict["Signature"] != nil {
                            self.signature = dict["Signature"] as! String
                        }
                    }
                }
                public var buildResultUrl: [String: Any]?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var errorCode: String?

                public var errorMessage: String?

                public var glbModelUrl: String?

                public var id: Int64?

                public var modelUrl: String?

                public var modifiedTime: String?

                public var originResultUrl: String?

                public var ossKey: String?

                public var policy: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Dataset.Policy?

                public var poseUrl: String?

                public var previewUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.policy?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.buildResultUrl != nil {
                        map["BuildResultUrl"] = self.buildResultUrl!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.glbModelUrl != nil {
                        map["GlbModelUrl"] = self.glbModelUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modelUrl != nil {
                        map["ModelUrl"] = self.modelUrl!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.originResultUrl != nil {
                        map["OriginResultUrl"] = self.originResultUrl!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy?.toMap()
                    }
                    if self.poseUrl != nil {
                        map["PoseUrl"] = self.poseUrl!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                        self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                        self.glbModelUrl = dict["GlbModelUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                        self.modelUrl = dict["ModelUrl"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                        self.originResultUrl = dict["OriginResultUrl"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Dataset.Policy()
                        model.fromMap(dict["Policy"] as! [String: Any])
                        self.policy = model
                    }
                    if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                        self.poseUrl = dict["PoseUrl"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                }
            }
            public class Source : Tea.TeaModel {
                public class Clothes : Tea.TeaModel {
                    public class SkuProps : Tea.TeaModel {
                        public var name: String?

                        public var options: [String]?

                        public override init() {
                            super.init()
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
                            if self.options != nil {
                                map["Options"] = self.options!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Options") && dict["Options"] != nil {
                                self.options = dict["Options"] as! [String]
                            }
                        }
                    }
                    public class Skus : Tea.TeaModel {
                        public var color: String?

                        public var cover: String?

                        public var size: String?

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
                            if self.color != nil {
                                map["Color"] = self.color!
                            }
                            if self.cover != nil {
                                map["Cover"] = self.cover!
                            }
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Color") && dict["Color"] != nil {
                                self.color = dict["Color"] as! String
                            }
                            if dict.keys.contains("Cover") && dict["Cover"] != nil {
                                self.cover = dict["Cover"] as! String
                            }
                            if dict.keys.contains("Size") && dict["Size"] != nil {
                                self.size = dict["Size"] as! String
                            }
                            if dict.keys.contains("Status") && dict["Status"] != nil {
                                self.status = dict["Status"] as! String
                            }
                        }
                    }
                    public var coverUrl: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var name: String?

                    public var ossKey: String?

                    public var part: String?

                    public var size: String?

                    public var skuProps: [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes.SkuProps]?

                    public var skus: [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes.Skus]?

                    public var status: [String: String]?

                    public var type: String?

                    public var version: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.coverUrl != nil {
                            map["CoverUrl"] = self.coverUrl!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.part != nil {
                            map["Part"] = self.part!
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.skuProps != nil {
                            var tmp : [Any] = []
                            for k in self.skuProps! {
                                tmp.append(k.toMap())
                            }
                            map["SkuProps"] = tmp
                        }
                        if self.skus != nil {
                            var tmp : [Any] = []
                            for k in self.skus! {
                                tmp.append(k.toMap())
                            }
                            map["Skus"] = tmp
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                            self.coverUrl = dict["CoverUrl"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Part") && dict["Part"] != nil {
                            self.part = dict["Part"] as! String
                        }
                        if dict.keys.contains("Size") && dict["Size"] != nil {
                            self.size = dict["Size"] as! String
                        }
                        if dict.keys.contains("SkuProps") && dict["SkuProps"] != nil {
                            var tmp : [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes.SkuProps] = []
                            for v in dict["SkuProps"] as! [Any] {
                                var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes.SkuProps()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.skuProps = tmp
                        }
                        if dict.keys.contains("Skus") && dict["Skus"] != nil {
                            var tmp : [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes.Skus] = []
                            for v in dict["Skus"] as! [Any] {
                                var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes.Skus()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.skus = tmp
                        }
                        if dict.keys.contains("Status") && dict["Status"] != nil {
                            self.status = dict["Status"] as! [String: String]
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Version") && dict["Version"] != nil {
                            self.version = dict["Version"] as! Int32
                        }
                    }
                }
                public class Policy : Tea.TeaModel {
                    public var accessId: String?

                    public var dir: String?

                    public var expire: String?

                    public var host: String?

                    public var policy: String?

                    public var signature: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessId != nil {
                            map["AccessId"] = self.accessId!
                        }
                        if self.dir != nil {
                            map["Dir"] = self.dir!
                        }
                        if self.expire != nil {
                            map["Expire"] = self.expire!
                        }
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy!
                        }
                        if self.signature != nil {
                            map["Signature"] = self.signature!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                            self.accessId = dict["AccessId"] as! String
                        }
                        if dict.keys.contains("Dir") && dict["Dir"] != nil {
                            self.dir = dict["Dir"] as! String
                        }
                        if dict.keys.contains("Expire") && dict["Expire"] != nil {
                            self.expire = dict["Expire"] as! String
                        }
                        if dict.keys.contains("Host") && dict["Host"] != nil {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            self.policy = dict["Policy"] as! String
                        }
                        if dict.keys.contains("Signature") && dict["Signature"] != nil {
                            self.signature = dict["Signature"] as! String
                        }
                    }
                }
                public class SourceFiles : Tea.TeaModel {
                    public var coverUrl: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var fileName: String?

                    public var filesize: Int64?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var ossKey: String?

                    public var type: String?

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
                        if self.coverUrl != nil {
                            map["CoverUrl"] = self.coverUrl!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.fileName != nil {
                            map["FileName"] = self.fileName!
                        }
                        if self.filesize != nil {
                            map["Filesize"] = self.filesize!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                            self.coverUrl = dict["CoverUrl"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("FileName") && dict["FileName"] != nil {
                            self.fileName = dict["FileName"] as! String
                        }
                        if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                            self.filesize = dict["Filesize"] as! Int64
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("Url") && dict["Url"] != nil {
                            self.url = dict["Url"] as! String
                        }
                    }
                }
                public class Token : Tea.TeaModel {
                    public var accessKeyId: String?

                    public var accessKeySecret: String?

                    public var dir: String?

                    public var expiration: String?

                    public var host: String?

                    public var securityToken: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessKeyId != nil {
                            map["AccessKeyId"] = self.accessKeyId!
                        }
                        if self.accessKeySecret != nil {
                            map["AccessKeySecret"] = self.accessKeySecret!
                        }
                        if self.dir != nil {
                            map["Dir"] = self.dir!
                        }
                        if self.expiration != nil {
                            map["Expiration"] = self.expiration!
                        }
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.securityToken != nil {
                            map["SecurityToken"] = self.securityToken!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                            self.accessKeyId = dict["AccessKeyId"] as! String
                        }
                        if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                            self.accessKeySecret = dict["AccessKeySecret"] as! String
                        }
                        if dict.keys.contains("Dir") && dict["Dir"] != nil {
                            self.dir = dict["Dir"] as! String
                        }
                        if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                            self.expiration = dict["Expiration"] as! String
                        }
                        if dict.keys.contains("Host") && dict["Host"] != nil {
                            self.host = dict["Host"] as! String
                        }
                        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                            self.securityToken = dict["SecurityToken"] as! String
                        }
                    }
                }
                public var clothes: [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes]?

                public var createTime: String?

                public var deleted: Bool?

                public var id: Int64?

                public var modifiedTime: String?

                public var ossKey: String?

                public var policy: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Policy?

                public var sourceFiles: [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.SourceFiles]?

                public var token: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Token?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.policy?.validate()
                    try self.token?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clothes != nil {
                        var tmp : [Any] = []
                        for k in self.clothes! {
                            tmp.append(k.toMap())
                        }
                        map["Clothes"] = tmp
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy?.toMap()
                    }
                    if self.sourceFiles != nil {
                        var tmp : [Any] = []
                        for k in self.sourceFiles! {
                            tmp.append(k.toMap())
                        }
                        map["SourceFiles"] = tmp
                    }
                    if self.token != nil {
                        map["Token"] = self.token?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                        var tmp : [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes] = []
                        for v in dict["Clothes"] as! [Any] {
                            var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Clothes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.clothes = tmp
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Policy()
                        model.fromMap(dict["Policy"] as! [String: Any])
                        self.policy = model
                    }
                    if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                        var tmp : [PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.SourceFiles] = []
                        for v in dict["SourceFiles"] as! [Any] {
                            var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.SourceFiles()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.sourceFiles = tmp
                    }
                    if dict.keys.contains("Token") && dict["Token"] != nil {
                        var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source.Token()
                        model.fromMap(dict["Token"] as! [String: Any])
                        self.token = model
                    }
                }
            }
            public var auditStatus: String?

            public var autoBuild: Bool?

            public var bizUsage: String?

            public var buildDetail: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.BuildDetail?

            public var checkStatus: String?

            public var createMode: String?

            public var createTime: String?

            public var customSource: String?

            public var dataset: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Dataset?

            public var deleted: Bool?

            public var dependencies: String?

            public var ext: String?

            public var id: String?

            public var intro: String?

            public var materialCoverUrl: String?

            public var modifiedTime: String?

            public var source: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source?

            public var status: String?

            public var title: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.buildDetail?.validate()
                try self.dataset?.validate()
                try self.source?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.autoBuild != nil {
                    map["AutoBuild"] = self.autoBuild!
                }
                if self.bizUsage != nil {
                    map["BizUsage"] = self.bizUsage!
                }
                if self.buildDetail != nil {
                    map["BuildDetail"] = self.buildDetail?.toMap()
                }
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.createMode != nil {
                    map["CreateMode"] = self.createMode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.customSource != nil {
                    map["CustomSource"] = self.customSource!
                }
                if self.dataset != nil {
                    map["Dataset"] = self.dataset?.toMap()
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.dependencies != nil {
                    map["Dependencies"] = self.dependencies!
                }
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.intro != nil {
                    map["Intro"] = self.intro!
                }
                if self.materialCoverUrl != nil {
                    map["MaterialCoverUrl"] = self.materialCoverUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.source != nil {
                    map["Source"] = self.source?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                    self.auditStatus = dict["AuditStatus"] as! String
                }
                if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                    self.autoBuild = dict["AutoBuild"] as! Bool
                }
                if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                    self.bizUsage = dict["BizUsage"] as! String
                }
                if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.BuildDetail()
                    model.fromMap(dict["BuildDetail"] as! [String: Any])
                    self.buildDetail = model
                }
                if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                    self.checkStatus = dict["CheckStatus"] as! String
                }
                if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                    self.createMode = dict["CreateMode"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                    self.customSource = dict["CustomSource"] as! String
                }
                if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Dataset()
                    model.fromMap(dict["Dataset"] as! [String: Any])
                    self.dataset = model
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                    self.dependencies = dict["Dependencies"] as! String
                }
                if dict.keys.contains("Ext") && dict["Ext"] != nil {
                    self.ext = dict["Ext"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Intro") && dict["Intro"] != nil {
                    self.intro = dict["Intro"] as! String
                }
                if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                    self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("Source") && dict["Source"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo.Source()
                    model.fromMap(dict["Source"] as! [String: Any])
                    self.source = model
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public class MaterialInfo : Tea.TeaModel {
            public class Bottoms : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Model : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Suit : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Tops : Tea.TeaModel {
                public var checkStatus: String?

                public var common: Bool?

                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var ext: String?

                public var fileUrl: String?

                public var id: Int64?

                public var intro: String?

                public var listStatus: String?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

                public var previewUrl: String?

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
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.common != nil {
                        map["Common"] = self.common!
                    }
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.fileUrl != nil {
                        map["FileUrl"] = self.fileUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.listStatus != nil {
                        map["ListStatus"] = self.listStatus!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.previewUrl != nil {
                        map["PreviewUrl"] = self.previewUrl!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("Common") && dict["Common"] != nil {
                        self.common = dict["Common"] as! Bool
                    }
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                        self.fileUrl = dict["FileUrl"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                        self.listStatus = dict["ListStatus"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                        self.previewUrl = dict["PreviewUrl"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var bottoms: PopListAITryOnJobsResponseBody.Data.MaterialInfo.Bottoms?

            public var clothingType: String?

            public var model: PopListAITryOnJobsResponseBody.Data.MaterialInfo.Model?

            public var shoeType: String?

            public var suit: PopListAITryOnJobsResponseBody.Data.MaterialInfo.Suit?

            public var tops: PopListAITryOnJobsResponseBody.Data.MaterialInfo.Tops?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.bottoms?.validate()
                try self.model?.validate()
                try self.suit?.validate()
                try self.tops?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bottoms != nil {
                    map["Bottoms"] = self.bottoms?.toMap()
                }
                if self.clothingType != nil {
                    map["ClothingType"] = self.clothingType!
                }
                if self.model != nil {
                    map["Model"] = self.model?.toMap()
                }
                if self.shoeType != nil {
                    map["ShoeType"] = self.shoeType!
                }
                if self.suit != nil {
                    map["Suit"] = self.suit?.toMap()
                }
                if self.tops != nil {
                    map["Tops"] = self.tops?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bottoms") && dict["Bottoms"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.MaterialInfo.Bottoms()
                    model.fromMap(dict["Bottoms"] as! [String: Any])
                    self.bottoms = model
                }
                if dict.keys.contains("ClothingType") && dict["ClothingType"] != nil {
                    self.clothingType = dict["ClothingType"] as! String
                }
                if dict.keys.contains("Model") && dict["Model"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.MaterialInfo.Model()
                    model.fromMap(dict["Model"] as! [String: Any])
                    self.model = model
                }
                if dict.keys.contains("ShoeType") && dict["ShoeType"] != nil {
                    self.shoeType = dict["ShoeType"] as! String
                }
                if dict.keys.contains("Suit") && dict["Suit"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.MaterialInfo.Suit()
                    model.fromMap(dict["Suit"] as! [String: Any])
                    self.suit = model
                }
                if dict.keys.contains("Tops") && dict["Tops"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.MaterialInfo.Tops()
                    model.fromMap(dict["Tops"] as! [String: Any])
                    self.tops = model
                }
            }
        }
        public class SubTasks : Tea.TeaModel {
            public class Feedback : Tea.TeaModel {
                public var dislikeTags: [Int32]?

                public var otherReason: String?

                public var projectId: Int64?

                public var rating: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dislikeTags != nil {
                        map["DislikeTags"] = self.dislikeTags!
                    }
                    if self.otherReason != nil {
                        map["OtherReason"] = self.otherReason!
                    }
                    if self.projectId != nil {
                        map["ProjectId"] = self.projectId!
                    }
                    if self.rating != nil {
                        map["Rating"] = self.rating!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DislikeTags") && dict["DislikeTags"] != nil {
                        self.dislikeTags = dict["DislikeTags"] as! [Int32]
                    }
                    if dict.keys.contains("OtherReason") && dict["OtherReason"] != nil {
                        self.otherReason = dict["OtherReason"] as! String
                    }
                    if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                        self.projectId = dict["ProjectId"] as! Int64
                    }
                    if dict.keys.contains("Rating") && dict["Rating"] != nil {
                        self.rating = dict["Rating"] as! Int32
                    }
                }
            }
            public class SubProjectInfo : Tea.TeaModel {
                public class BuildDetail : Tea.TeaModel {
                    public var completedTime: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var errorMessage: String?

                    public var estimatedDuration: Int64?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var runningTime: String?

                    public var status: String?

                    public var submitTime: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.completedTime != nil {
                            map["CompletedTime"] = self.completedTime!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.errorMessage != nil {
                            map["ErrorMessage"] = self.errorMessage!
                        }
                        if self.estimatedDuration != nil {
                            map["EstimatedDuration"] = self.estimatedDuration!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.runningTime != nil {
                            map["RunningTime"] = self.runningTime!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.submitTime != nil {
                            map["SubmitTime"] = self.submitTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                            self.completedTime = dict["CompletedTime"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                            self.errorMessage = dict["ErrorMessage"] as! String
                        }
                        if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                            self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                            self.runningTime = dict["RunningTime"] as! String
                        }
                        if dict.keys.contains("Status") && dict["Status"] != nil {
                            self.status = dict["Status"] as! String
                        }
                        if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                            self.submitTime = dict["SubmitTime"] as! String
                        }
                    }
                }
                public class Dataset : Tea.TeaModel {
                    public class Policy : Tea.TeaModel {
                        public var accessId: String?

                        public var dir: String?

                        public var expire: String?

                        public var host: String?

                        public var policy: String?

                        public var signature: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessId != nil {
                                map["AccessId"] = self.accessId!
                            }
                            if self.dir != nil {
                                map["Dir"] = self.dir!
                            }
                            if self.expire != nil {
                                map["Expire"] = self.expire!
                            }
                            if self.host != nil {
                                map["Host"] = self.host!
                            }
                            if self.policy != nil {
                                map["Policy"] = self.policy!
                            }
                            if self.signature != nil {
                                map["Signature"] = self.signature!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                                self.accessId = dict["AccessId"] as! String
                            }
                            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                                self.dir = dict["Dir"] as! String
                            }
                            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                                self.expire = dict["Expire"] as! String
                            }
                            if dict.keys.contains("Host") && dict["Host"] != nil {
                                self.host = dict["Host"] as! String
                            }
                            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                                self.policy = dict["Policy"] as! String
                            }
                            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                                self.signature = dict["Signature"] as! String
                            }
                        }
                    }
                    public var buildResultUrl: [String: Any]?

                    public var coverUrl: String?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var errorCode: String?

                    public var errorMessage: String?

                    public var glbModelUrl: String?

                    public var id: Int64?

                    public var modelUrl: String?

                    public var modifiedTime: String?

                    public var originResultUrl: String?

                    public var ossKey: String?

                    public var policy: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Dataset.Policy?

                    public var poseUrl: String?

                    public var previewUrl: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.policy?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.buildResultUrl != nil {
                            map["BuildResultUrl"] = self.buildResultUrl!
                        }
                        if self.coverUrl != nil {
                            map["CoverUrl"] = self.coverUrl!
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.errorCode != nil {
                            map["ErrorCode"] = self.errorCode!
                        }
                        if self.errorMessage != nil {
                            map["ErrorMessage"] = self.errorMessage!
                        }
                        if self.glbModelUrl != nil {
                            map["GlbModelUrl"] = self.glbModelUrl!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modelUrl != nil {
                            map["ModelUrl"] = self.modelUrl!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.originResultUrl != nil {
                            map["OriginResultUrl"] = self.originResultUrl!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy?.toMap()
                        }
                        if self.poseUrl != nil {
                            map["PoseUrl"] = self.poseUrl!
                        }
                        if self.previewUrl != nil {
                            map["PreviewUrl"] = self.previewUrl!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                            self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                        }
                        if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                            self.coverUrl = dict["CoverUrl"] as! String
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                            self.errorCode = dict["ErrorCode"] as! String
                        }
                        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                            self.errorMessage = dict["ErrorMessage"] as! String
                        }
                        if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                            self.glbModelUrl = dict["GlbModelUrl"] as! String
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                            self.modelUrl = dict["ModelUrl"] as! String
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                            self.originResultUrl = dict["OriginResultUrl"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Dataset.Policy()
                            model.fromMap(dict["Policy"] as! [String: Any])
                            self.policy = model
                        }
                        if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                            self.poseUrl = dict["PoseUrl"] as! String
                        }
                        if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                            self.previewUrl = dict["PreviewUrl"] as! String
                        }
                    }
                }
                public class Source : Tea.TeaModel {
                    public class Clothes : Tea.TeaModel {
                        public class SkuProps : Tea.TeaModel {
                            public var name: String?

                            public var options: [String]?

                            public override init() {
                                super.init()
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
                                if self.options != nil {
                                    map["Options"] = self.options!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Name") && dict["Name"] != nil {
                                    self.name = dict["Name"] as! String
                                }
                                if dict.keys.contains("Options") && dict["Options"] != nil {
                                    self.options = dict["Options"] as! [String]
                                }
                            }
                        }
                        public class Skus : Tea.TeaModel {
                            public var color: String?

                            public var cover: String?

                            public var size: String?

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
                                if self.color != nil {
                                    map["Color"] = self.color!
                                }
                                if self.cover != nil {
                                    map["Cover"] = self.cover!
                                }
                                if self.size != nil {
                                    map["Size"] = self.size!
                                }
                                if self.status != nil {
                                    map["Status"] = self.status!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Color") && dict["Color"] != nil {
                                    self.color = dict["Color"] as! String
                                }
                                if dict.keys.contains("Cover") && dict["Cover"] != nil {
                                    self.cover = dict["Cover"] as! String
                                }
                                if dict.keys.contains("Size") && dict["Size"] != nil {
                                    self.size = dict["Size"] as! String
                                }
                                if dict.keys.contains("Status") && dict["Status"] != nil {
                                    self.status = dict["Status"] as! String
                                }
                            }
                        }
                        public var coverUrl: String?

                        public var createTime: String?

                        public var deleted: Bool?

                        public var id: Int64?

                        public var modifiedTime: String?

                        public var name: String?

                        public var ossKey: String?

                        public var part: String?

                        public var size: String?

                        public var skuProps: [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.SkuProps]?

                        public var skus: [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.Skus]?

                        public var status: [String: String]?

                        public var type: String?

                        public var version: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.coverUrl != nil {
                                map["CoverUrl"] = self.coverUrl!
                            }
                            if self.createTime != nil {
                                map["CreateTime"] = self.createTime!
                            }
                            if self.deleted != nil {
                                map["Deleted"] = self.deleted!
                            }
                            if self.id != nil {
                                map["Id"] = self.id!
                            }
                            if self.modifiedTime != nil {
                                map["ModifiedTime"] = self.modifiedTime!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.ossKey != nil {
                                map["OssKey"] = self.ossKey!
                            }
                            if self.part != nil {
                                map["Part"] = self.part!
                            }
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            if self.skuProps != nil {
                                var tmp : [Any] = []
                                for k in self.skuProps! {
                                    tmp.append(k.toMap())
                                }
                                map["SkuProps"] = tmp
                            }
                            if self.skus != nil {
                                var tmp : [Any] = []
                                for k in self.skus! {
                                    tmp.append(k.toMap())
                                }
                                map["Skus"] = tmp
                            }
                            if self.status != nil {
                                map["Status"] = self.status!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.version != nil {
                                map["Version"] = self.version!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                                self.coverUrl = dict["CoverUrl"] as! String
                            }
                            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                                self.createTime = dict["CreateTime"] as! String
                            }
                            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                                self.deleted = dict["Deleted"] as! Bool
                            }
                            if dict.keys.contains("Id") && dict["Id"] != nil {
                                self.id = dict["Id"] as! Int64
                            }
                            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                                self.modifiedTime = dict["ModifiedTime"] as! String
                            }
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                                self.ossKey = dict["OssKey"] as! String
                            }
                            if dict.keys.contains("Part") && dict["Part"] != nil {
                                self.part = dict["Part"] as! String
                            }
                            if dict.keys.contains("Size") && dict["Size"] != nil {
                                self.size = dict["Size"] as! String
                            }
                            if dict.keys.contains("SkuProps") && dict["SkuProps"] != nil {
                                var tmp : [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.SkuProps] = []
                                for v in dict["SkuProps"] as! [Any] {
                                    var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.SkuProps()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.skuProps = tmp
                            }
                            if dict.keys.contains("Skus") && dict["Skus"] != nil {
                                var tmp : [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.Skus] = []
                                for v in dict["Skus"] as! [Any] {
                                    var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes.Skus()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.skus = tmp
                            }
                            if dict.keys.contains("Status") && dict["Status"] != nil {
                                self.status = dict["Status"] as! [String: String]
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Version") && dict["Version"] != nil {
                                self.version = dict["Version"] as! Int32
                            }
                        }
                    }
                    public class Policy : Tea.TeaModel {
                        public var accessId: String?

                        public var dir: String?

                        public var expire: String?

                        public var host: String?

                        public var policy: String?

                        public var signature: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessId != nil {
                                map["AccessId"] = self.accessId!
                            }
                            if self.dir != nil {
                                map["Dir"] = self.dir!
                            }
                            if self.expire != nil {
                                map["Expire"] = self.expire!
                            }
                            if self.host != nil {
                                map["Host"] = self.host!
                            }
                            if self.policy != nil {
                                map["Policy"] = self.policy!
                            }
                            if self.signature != nil {
                                map["Signature"] = self.signature!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                                self.accessId = dict["AccessId"] as! String
                            }
                            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                                self.dir = dict["Dir"] as! String
                            }
                            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                                self.expire = dict["Expire"] as! String
                            }
                            if dict.keys.contains("Host") && dict["Host"] != nil {
                                self.host = dict["Host"] as! String
                            }
                            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                                self.policy = dict["Policy"] as! String
                            }
                            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                                self.signature = dict["Signature"] as! String
                            }
                        }
                    }
                    public class SourceFiles : Tea.TeaModel {
                        public var coverUrl: String?

                        public var createTime: String?

                        public var deleted: Bool?

                        public var fileName: String?

                        public var filesize: Int64?

                        public var id: Int64?

                        public var modifiedTime: String?

                        public var ossKey: String?

                        public var type: String?

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
                            if self.coverUrl != nil {
                                map["CoverUrl"] = self.coverUrl!
                            }
                            if self.createTime != nil {
                                map["CreateTime"] = self.createTime!
                            }
                            if self.deleted != nil {
                                map["Deleted"] = self.deleted!
                            }
                            if self.fileName != nil {
                                map["FileName"] = self.fileName!
                            }
                            if self.filesize != nil {
                                map["Filesize"] = self.filesize!
                            }
                            if self.id != nil {
                                map["Id"] = self.id!
                            }
                            if self.modifiedTime != nil {
                                map["ModifiedTime"] = self.modifiedTime!
                            }
                            if self.ossKey != nil {
                                map["OssKey"] = self.ossKey!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.url != nil {
                                map["Url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                                self.coverUrl = dict["CoverUrl"] as! String
                            }
                            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                                self.createTime = dict["CreateTime"] as! String
                            }
                            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                                self.deleted = dict["Deleted"] as! Bool
                            }
                            if dict.keys.contains("FileName") && dict["FileName"] != nil {
                                self.fileName = dict["FileName"] as! String
                            }
                            if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                                self.filesize = dict["Filesize"] as! Int64
                            }
                            if dict.keys.contains("Id") && dict["Id"] != nil {
                                self.id = dict["Id"] as! Int64
                            }
                            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                                self.modifiedTime = dict["ModifiedTime"] as! String
                            }
                            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                                self.ossKey = dict["OssKey"] as! String
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                            if dict.keys.contains("Url") && dict["Url"] != nil {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public class Token : Tea.TeaModel {
                        public var accessKeyId: String?

                        public var accessKeySecret: String?

                        public var dir: String?

                        public var expiration: String?

                        public var host: String?

                        public var securityToken: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.accessKeyId != nil {
                                map["AccessKeyId"] = self.accessKeyId!
                            }
                            if self.accessKeySecret != nil {
                                map["AccessKeySecret"] = self.accessKeySecret!
                            }
                            if self.dir != nil {
                                map["Dir"] = self.dir!
                            }
                            if self.expiration != nil {
                                map["Expiration"] = self.expiration!
                            }
                            if self.host != nil {
                                map["Host"] = self.host!
                            }
                            if self.securityToken != nil {
                                map["SecurityToken"] = self.securityToken!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                                self.accessKeyId = dict["AccessKeyId"] as! String
                            }
                            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                                self.accessKeySecret = dict["AccessKeySecret"] as! String
                            }
                            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                                self.dir = dict["Dir"] as! String
                            }
                            if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                                self.expiration = dict["Expiration"] as! String
                            }
                            if dict.keys.contains("Host") && dict["Host"] != nil {
                                self.host = dict["Host"] as! String
                            }
                            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                                self.securityToken = dict["SecurityToken"] as! String
                            }
                        }
                    }
                    public var clothes: [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes]?

                    public var createTime: String?

                    public var deleted: Bool?

                    public var id: Int64?

                    public var modifiedTime: String?

                    public var ossKey: String?

                    public var policy: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Policy?

                    public var sourceFiles: [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.SourceFiles]?

                    public var token: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Token?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.policy?.validate()
                        try self.token?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.clothes != nil {
                            var tmp : [Any] = []
                            for k in self.clothes! {
                                tmp.append(k.toMap())
                            }
                            map["Clothes"] = tmp
                        }
                        if self.createTime != nil {
                            map["CreateTime"] = self.createTime!
                        }
                        if self.deleted != nil {
                            map["Deleted"] = self.deleted!
                        }
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.modifiedTime != nil {
                            map["ModifiedTime"] = self.modifiedTime!
                        }
                        if self.ossKey != nil {
                            map["OssKey"] = self.ossKey!
                        }
                        if self.policy != nil {
                            map["Policy"] = self.policy?.toMap()
                        }
                        if self.sourceFiles != nil {
                            var tmp : [Any] = []
                            for k in self.sourceFiles! {
                                tmp.append(k.toMap())
                            }
                            map["SourceFiles"] = tmp
                        }
                        if self.token != nil {
                            map["Token"] = self.token?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                            var tmp : [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes] = []
                            for v in dict["Clothes"] as! [Any] {
                                var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Clothes()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.clothes = tmp
                        }
                        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                            self.createTime = dict["CreateTime"] as! String
                        }
                        if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                            self.deleted = dict["Deleted"] as! Bool
                        }
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! Int64
                        }
                        if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                            self.modifiedTime = dict["ModifiedTime"] as! String
                        }
                        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                            self.ossKey = dict["OssKey"] as! String
                        }
                        if dict.keys.contains("Policy") && dict["Policy"] != nil {
                            var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Policy()
                            model.fromMap(dict["Policy"] as! [String: Any])
                            self.policy = model
                        }
                        if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                            var tmp : [PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.SourceFiles] = []
                            for v in dict["SourceFiles"] as! [Any] {
                                var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.SourceFiles()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.sourceFiles = tmp
                        }
                        if dict.keys.contains("Token") && dict["Token"] != nil {
                            var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source.Token()
                            model.fromMap(dict["Token"] as! [String: Any])
                            self.token = model
                        }
                    }
                }
                public var auditStatus: String?

                public var autoBuild: Bool?

                public var bizUsage: String?

                public var buildDetail: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.BuildDetail?

                public var checkStatus: String?

                public var createMode: String?

                public var createTime: String?

                public var customSource: String?

                public var dataset: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Dataset?

                public var deleted: Bool?

                public var dependencies: String?

                public var ext: String?

                public var id: String?

                public var intro: String?

                public var materialCoverUrl: String?

                public var modifiedTime: String?

                public var source: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source?

                public var status: String?

                public var title: String?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.buildDetail?.validate()
                    try self.dataset?.validate()
                    try self.source?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.auditStatus != nil {
                        map["AuditStatus"] = self.auditStatus!
                    }
                    if self.autoBuild != nil {
                        map["AutoBuild"] = self.autoBuild!
                    }
                    if self.bizUsage != nil {
                        map["BizUsage"] = self.bizUsage!
                    }
                    if self.buildDetail != nil {
                        map["BuildDetail"] = self.buildDetail?.toMap()
                    }
                    if self.checkStatus != nil {
                        map["CheckStatus"] = self.checkStatus!
                    }
                    if self.createMode != nil {
                        map["CreateMode"] = self.createMode!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.customSource != nil {
                        map["CustomSource"] = self.customSource!
                    }
                    if self.dataset != nil {
                        map["Dataset"] = self.dataset?.toMap()
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.dependencies != nil {
                        map["Dependencies"] = self.dependencies!
                    }
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.intro != nil {
                        map["Intro"] = self.intro!
                    }
                    if self.materialCoverUrl != nil {
                        map["MaterialCoverUrl"] = self.materialCoverUrl!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.source != nil {
                        map["Source"] = self.source?.toMap()
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                        self.auditStatus = dict["AuditStatus"] as! String
                    }
                    if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                        self.autoBuild = dict["AutoBuild"] as! Bool
                    }
                    if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                        self.bizUsage = dict["BizUsage"] as! String
                    }
                    if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                        var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.BuildDetail()
                        model.fromMap(dict["BuildDetail"] as! [String: Any])
                        self.buildDetail = model
                    }
                    if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                        self.checkStatus = dict["CheckStatus"] as! String
                    }
                    if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                        self.createMode = dict["CreateMode"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                        self.customSource = dict["CustomSource"] as! String
                    }
                    if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                        var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Dataset()
                        model.fromMap(dict["Dataset"] as! [String: Any])
                        self.dataset = model
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                        self.dependencies = dict["Dependencies"] as! String
                    }
                    if dict.keys.contains("Ext") && dict["Ext"] != nil {
                        self.ext = dict["Ext"] as! String
                    }
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Intro") && dict["Intro"] != nil {
                        self.intro = dict["Intro"] as! String
                    }
                    if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                        self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Source") && dict["Source"] != nil {
                        var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo.Source()
                        model.fromMap(dict["Source"] as! [String: Any])
                        self.source = model
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var feedback: PopListAITryOnJobsResponseBody.Data.SubTasks.Feedback?

            public var subProjectInfo: PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.feedback?.validate()
                try self.subProjectInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.feedback != nil {
                    map["Feedback"] = self.feedback?.toMap()
                }
                if self.subProjectInfo != nil {
                    map["SubProjectInfo"] = self.subProjectInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.SubTasks.Feedback()
                    model.fromMap(dict["Feedback"] as! [String: Any])
                    self.feedback = model
                }
                if dict.keys.contains("SubProjectInfo") && dict["SubProjectInfo"] != nil {
                    var model = PopListAITryOnJobsResponseBody.Data.SubTasks.SubProjectInfo()
                    model.fromMap(dict["SubProjectInfo"] as! [String: Any])
                    self.subProjectInfo = model
                }
            }
        }
        public var dummyProjectInfo: PopListAITryOnJobsResponseBody.Data.DummyProjectInfo?

        public var materialInfo: PopListAITryOnJobsResponseBody.Data.MaterialInfo?

        public var subTasks: [PopListAITryOnJobsResponseBody.Data.SubTasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dummyProjectInfo?.validate()
            try self.materialInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dummyProjectInfo != nil {
                map["DummyProjectInfo"] = self.dummyProjectInfo?.toMap()
            }
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo?.toMap()
            }
            if self.subTasks != nil {
                var tmp : [Any] = []
                for k in self.subTasks! {
                    tmp.append(k.toMap())
                }
                map["SubTasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DummyProjectInfo") && dict["DummyProjectInfo"] != nil {
                var model = PopListAITryOnJobsResponseBody.Data.DummyProjectInfo()
                model.fromMap(dict["DummyProjectInfo"] as! [String: Any])
                self.dummyProjectInfo = model
            }
            if dict.keys.contains("MaterialInfo") && dict["MaterialInfo"] != nil {
                var model = PopListAITryOnJobsResponseBody.Data.MaterialInfo()
                model.fromMap(dict["MaterialInfo"] as! [String: Any])
                self.materialInfo = model
            }
            if dict.keys.contains("SubTasks") && dict["SubTasks"] != nil {
                var tmp : [PopListAITryOnJobsResponseBody.Data.SubTasks] = []
                for v in dict["SubTasks"] as! [Any] {
                    var model = PopListAITryOnJobsResponseBody.Data.SubTasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subTasks = tmp
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListAITryOnJobsResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListAITryOnJobsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListAITryOnJobsResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListAITryOnJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListAITryOnJobsResponseBody?

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
            var model = PopListAITryOnJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListCommonMaterialsAllRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var listStatus: String?

    public var name: String?

    public var size: Int32?

    public var tags: String?

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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.listStatus != nil {
            map["ListStatus"] = self.listStatus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
            self.listStatus = dict["ListStatus"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class PopListCommonMaterialsAllResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkStatus: String?

        public var common: Bool?

        public var coverUrl: String?

        public var createTime: String?

        public var deleted: Bool?

        public var ext: String?

        public var fileUrl: String?

        public var id: String?

        public var intro: String?

        public var listStatus: String?

        public var modifiedTime: String?

        public var name: String?

        public var ossKey: String?

        public var previewUrl: String?

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
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.common != nil {
                map["Common"] = self.common!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.listStatus != nil {
                map["ListStatus"] = self.listStatus!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("Common") && dict["Common"] != nil {
                self.common = dict["Common"] as! Bool
            }
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                self.listStatus = dict["ListStatus"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                self.ossKey = dict["OssKey"] as! String
            }
            if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                self.previewUrl = dict["PreviewUrl"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [PopListCommonMaterialsAllResponseBody.Data]?

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
            var tmp : [PopListCommonMaterialsAllResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListCommonMaterialsAllResponseBody.Data()
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PopListCommonMaterialsAllResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListCommonMaterialsAllResponseBody?

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
            var model = PopListCommonMaterialsAllResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListFeatureToAvatarMaterialsRequest : Tea.TeaModel {
    public var current: Int32?

    public var listStatus: String?

    public var size: Int32?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.listStatus != nil {
            map["ListStatus"] = self.listStatus!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
            self.listStatus = dict["ListStatus"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class PopListFeatureToAvatarMaterialsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkStatus: String?

        public var common: Bool?

        public var coverUrl: String?

        public var deleted: Bool?

        public var ext: String?

        public var fileUrl: String?

        public var id: String?

        public var intro: String?

        public var listStatus: String?

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
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.common != nil {
                map["Common"] = self.common!
            }
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.listStatus != nil {
                map["ListStatus"] = self.listStatus!
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
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("Common") && dict["Common"] != nil {
                self.common = dict["Common"] as! Bool
            }
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
                self.listStatus = dict["ListStatus"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListFeatureToAvatarMaterialsResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListFeatureToAvatarMaterialsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListFeatureToAvatarMaterialsResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListFeatureToAvatarMaterialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListFeatureToAvatarMaterialsResponseBody?

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
            var model = PopListFeatureToAvatarMaterialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListFeatureToAvatarProjectRequest : Tea.TeaModel {
    public var current: Int32?

    public var size: Int32?

    public var sortField: String?

    public var status: String?

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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopListFeatureToAvatarProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var status: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorCode: String?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var policy: PopListFeatureToAvatarProjectResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopListFeatureToAvatarProjectResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public var bizUsage: String?

        public var buildDetail: PopListFeatureToAvatarProjectResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var dataset: PopListFeatureToAvatarProjectResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopListFeatureToAvatarProjectResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopListFeatureToAvatarProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListFeatureToAvatarProjectResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListFeatureToAvatarProjectResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListFeatureToAvatarProjectResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListFeatureToAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListFeatureToAvatarProjectResponseBody?

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
            var model = PopListFeatureToAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListLivePortraitModelScopeMaterialsRequest : Tea.TeaModel {
    public var current: Int32?

    public var size: Int32?

    public var types: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Types") && dict["Types"] != nil {
            self.types = dict["Types"] as! String
        }
    }
}

public class PopListLivePortraitModelScopeMaterialsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coverUrl: String?

        public var ext: String?

        public var fileUrl: String?

        public var id: String?

        public var intro: String?

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
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
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
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListLivePortraitModelScopeMaterialsResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListLivePortraitModelScopeMaterialsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListLivePortraitModelScopeMaterialsResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListLivePortraitModelScopeMaterialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListLivePortraitModelScopeMaterialsResponseBody?

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
            var model = PopListLivePortraitModelScopeMaterialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListObjectCaseRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class PopListObjectCaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var policy: PopListObjectCaseResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopListObjectCaseResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class Clothes : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public class SourceFiles : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var fileName: String?

                public var filesize: Int64?

                public var modifiedTime: String?

                public var ossKey: String?

                public var type: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.filesize != nil {
                        map["Filesize"] = self.filesize!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("FileName") && dict["FileName"] != nil {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                        self.filesize = dict["Filesize"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var clothes: [PopListObjectCaseResponseBody.Data.Source.Clothes]?

            public var createTime: String?

            public var deleted: Bool?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: PopListObjectCaseResponseBody.Data.Source.Policy?

            public var sourceFiles: [PopListObjectCaseResponseBody.Data.Source.SourceFiles]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clothes != nil {
                    var tmp : [Any] = []
                    for k in self.clothes! {
                        tmp.append(k.toMap())
                    }
                    map["Clothes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.sourceFiles != nil {
                    var tmp : [Any] = []
                    for k in self.sourceFiles! {
                        tmp.append(k.toMap())
                    }
                    map["SourceFiles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                    var tmp : [PopListObjectCaseResponseBody.Data.Source.Clothes] = []
                    for v in dict["Clothes"] as! [Any] {
                        var model = PopListObjectCaseResponseBody.Data.Source.Clothes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.clothes = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopListObjectCaseResponseBody.Data.Source.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                    var tmp : [PopListObjectCaseResponseBody.Data.Source.SourceFiles] = []
                    for v in dict["SourceFiles"] as! [Any] {
                        var model = PopListObjectCaseResponseBody.Data.Source.SourceFiles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sourceFiles = tmp
                }
            }
        }
        public var auditStatus: String?

        public var autoBuild: Bool?

        public var bizUsage: String?

        public var buildDetail: PopListObjectCaseResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var customSource: String?

        public var dataset: PopListObjectCaseResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var modifiedTime: String?

        public var source: PopListObjectCaseResponseBody.Data.Source?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customSource != nil {
                map["CustomSource"] = self.customSource!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopListObjectCaseResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                self.customSource = dict["CustomSource"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopListObjectCaseResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                var model = PopListObjectCaseResponseBody.Data.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListObjectCaseResponseBody.Data]?

    public var errorName: String?

    public var httpCode: Int32?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListObjectCaseResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListObjectCaseResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListObjectCaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListObjectCaseResponseBody?

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
            var model = PopListObjectCaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListObjectGenerationProjectRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class PopListObjectGenerationProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public var buildResultUrl: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
            }
        }
        public var bizUsage: String?

        public var buildDetail: PopListObjectGenerationProjectResponseBody.Data.BuildDetail?

        public var dataset: PopListObjectGenerationProjectResponseBody.Data.Dataset?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopListObjectGenerationProjectResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopListObjectGenerationProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListObjectGenerationProjectResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListObjectGenerationProjectResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListObjectGenerationProjectResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListObjectGenerationProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListObjectGenerationProjectResponseBody?

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
            var model = PopListObjectGenerationProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListObjectProjectRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var current: Int32?

    public var customSource: String?

    public var jwtToken: String?

    public var size: Int32?

    public var sortField: String?

    public var status: String?

    public var title: String?

    public var withSource: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.customSource != nil {
            map["CustomSource"] = self.customSource!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.withSource != nil {
            map["WithSource"] = self.withSource!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
            self.customSource = dict["CustomSource"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("WithSource") && dict["WithSource"] != nil {
            self.withSource = dict["WithSource"] as! Bool
        }
    }
}

public class PopListObjectProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var policy: PopListObjectProjectResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopListObjectProjectResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class Clothes : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public class SourceFiles : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var fileName: String?

                public var filesize: Int64?

                public var modifiedTime: String?

                public var ossKey: String?

                public var type: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.filesize != nil {
                        map["Filesize"] = self.filesize!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("FileName") && dict["FileName"] != nil {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                        self.filesize = dict["Filesize"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var clothes: [PopListObjectProjectResponseBody.Data.Source.Clothes]?

            public var createTime: String?

            public var deleted: Bool?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: PopListObjectProjectResponseBody.Data.Source.Policy?

            public var sourceFiles: [PopListObjectProjectResponseBody.Data.Source.SourceFiles]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clothes != nil {
                    var tmp : [Any] = []
                    for k in self.clothes! {
                        tmp.append(k.toMap())
                    }
                    map["Clothes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.sourceFiles != nil {
                    var tmp : [Any] = []
                    for k in self.sourceFiles! {
                        tmp.append(k.toMap())
                    }
                    map["SourceFiles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                    var tmp : [PopListObjectProjectResponseBody.Data.Source.Clothes] = []
                    for v in dict["Clothes"] as! [Any] {
                        var model = PopListObjectProjectResponseBody.Data.Source.Clothes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.clothes = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopListObjectProjectResponseBody.Data.Source.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                    var tmp : [PopListObjectProjectResponseBody.Data.Source.SourceFiles] = []
                    for v in dict["SourceFiles"] as! [Any] {
                        var model = PopListObjectProjectResponseBody.Data.Source.SourceFiles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sourceFiles = tmp
                }
            }
        }
        public var auditStatus: String?

        public var autoBuild: Bool?

        public var bizUsage: String?

        public var buildDetail: PopListObjectProjectResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var customSource: String?

        public var dataset: PopListObjectProjectResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var modifiedTime: String?

        public var source: PopListObjectProjectResponseBody.Data.Source?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.customSource != nil {
                map["CustomSource"] = self.customSource!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! String
            }
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopListObjectProjectResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CustomSource") && dict["CustomSource"] != nil {
                self.customSource = dict["CustomSource"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopListObjectProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                var model = PopListObjectProjectResponseBody.Data.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListObjectProjectResponseBody.Data]?

    public var errorName: String?

    public var httpCode: Int32?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListObjectProjectResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListObjectProjectResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
        }
        if dict.keys.contains("HttpCode") && dict["HttpCode"] != nil {
            self.httpCode = dict["HttpCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListObjectProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListObjectProjectResponseBody?

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
            var model = PopListObjectProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListPakRenderExpressionRequest : Tea.TeaModel {
    public var current: Int32?

    public var listStatus: String?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.listStatus != nil {
            map["ListStatus"] = self.listStatus!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("ListStatus") && dict["ListStatus"] != nil {
            self.listStatus = dict["ListStatus"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class PopListPakRenderExpressionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coverUrl: String?

        public var ext: String?

        public var fileUrl: String?

        public var id: String?

        public var intro: String?

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
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListPakRenderExpressionResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListPakRenderExpressionResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListPakRenderExpressionResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListPakRenderExpressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListPakRenderExpressionResponseBody?

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
            var model = PopListPakRenderExpressionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopListTextToAvatarProjectRequest : Tea.TeaModel {
    public var current: Int32?

    public var jwtToken: String?

    public var size: Int32?

    public var sortField: String?

    public var status: String?

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
        if self.current != nil {
            map["Current"] = self.current!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("SortField") && dict["SortField"] != nil {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
    }
}

public class PopListTextToAvatarProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var status: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var createTime: String?

            public var deleted: Bool?

            public var errorCode: String?

            public var errorMessage: String?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: PopListTextToAvatarProjectResponseBody.Data.Dataset.Policy?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopListTextToAvatarProjectResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
            }
        }
        public var autoBuild: Bool?

        public var bizUsage: String?

        public var buildDetail: PopListTextToAvatarProjectResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var dataset: PopListTextToAvatarProjectResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopListTextToAvatarProjectResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopListTextToAvatarProjectResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var current: Int32?

    public var data: [PopListTextToAvatarProjectResponseBody.Data]?

    public var message: String?

    public var pages: Int32?

    public var requestId: String?

    public var size: Int32?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.current != nil {
            map["Current"] = self.current!
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
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Current") && dict["Current"] != nil {
            self.current = dict["Current"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PopListTextToAvatarProjectResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopListTextToAvatarProjectResponseBody.Data()
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
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
        }
    }
}

public class PopListTextToAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopListTextToAvatarProjectResponseBody?

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
            var model = PopListTextToAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopObjectProjectDetailRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopObjectProjectDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var policy: PopObjectProjectDetailResponseBody.Data.Dataset.Policy?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopObjectProjectDetailResponseBody.Data.Dataset.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public class Source : Tea.TeaModel {
            public class Clothes : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var modifiedTime: String?

                public var name: String?

                public var ossKey: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public class Policy : Tea.TeaModel {
                public var accessId: String?

                public var dir: String?

                public var expire: String?

                public var host: String?

                public var policy: String?

                public var signature: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accessId != nil {
                        map["AccessId"] = self.accessId!
                    }
                    if self.dir != nil {
                        map["Dir"] = self.dir!
                    }
                    if self.expire != nil {
                        map["Expire"] = self.expire!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.policy != nil {
                        map["Policy"] = self.policy!
                    }
                    if self.signature != nil {
                        map["Signature"] = self.signature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                        self.accessId = dict["AccessId"] as! String
                    }
                    if dict.keys.contains("Dir") && dict["Dir"] != nil {
                        self.dir = dict["Dir"] as! String
                    }
                    if dict.keys.contains("Expire") && dict["Expire"] != nil {
                        self.expire = dict["Expire"] as! String
                    }
                    if dict.keys.contains("Host") && dict["Host"] != nil {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Policy") && dict["Policy"] != nil {
                        self.policy = dict["Policy"] as! String
                    }
                    if dict.keys.contains("Signature") && dict["Signature"] != nil {
                        self.signature = dict["Signature"] as! String
                    }
                }
            }
            public class SourceFiles : Tea.TeaModel {
                public var coverUrl: String?

                public var createTime: String?

                public var deleted: Bool?

                public var fileName: String?

                public var filesize: Int64?

                public var modifiedTime: String?

                public var ossKey: String?

                public var type: String?

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
                    if self.coverUrl != nil {
                        map["CoverUrl"] = self.coverUrl!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.fileName != nil {
                        map["FileName"] = self.fileName!
                    }
                    if self.filesize != nil {
                        map["Filesize"] = self.filesize!
                    }
                    if self.modifiedTime != nil {
                        map["ModifiedTime"] = self.modifiedTime!
                    }
                    if self.ossKey != nil {
                        map["OssKey"] = self.ossKey!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                        self.coverUrl = dict["CoverUrl"] as! String
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                        self.deleted = dict["Deleted"] as! Bool
                    }
                    if dict.keys.contains("FileName") && dict["FileName"] != nil {
                        self.fileName = dict["FileName"] as! String
                    }
                    if dict.keys.contains("Filesize") && dict["Filesize"] != nil {
                        self.filesize = dict["Filesize"] as! Int64
                    }
                    if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                        self.modifiedTime = dict["ModifiedTime"] as! String
                    }
                    if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                        self.ossKey = dict["OssKey"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Url") && dict["Url"] != nil {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var clothes: [PopObjectProjectDetailResponseBody.Data.Source.Clothes]?

            public var createTime: String?

            public var deleted: Bool?

            public var modifiedTime: String?

            public var ossKey: String?

            public var policy: PopObjectProjectDetailResponseBody.Data.Source.Policy?

            public var sourceFiles: [PopObjectProjectDetailResponseBody.Data.Source.SourceFiles]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.policy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clothes != nil {
                    var tmp : [Any] = []
                    for k in self.clothes! {
                        tmp.append(k.toMap())
                    }
                    map["Clothes"] = tmp
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy?.toMap()
                }
                if self.sourceFiles != nil {
                    var tmp : [Any] = []
                    for k in self.sourceFiles! {
                        tmp.append(k.toMap())
                    }
                    map["SourceFiles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clothes") && dict["Clothes"] != nil {
                    var tmp : [PopObjectProjectDetailResponseBody.Data.Source.Clothes] = []
                    for v in dict["Clothes"] as! [Any] {
                        var model = PopObjectProjectDetailResponseBody.Data.Source.Clothes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.clothes = tmp
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    var model = PopObjectProjectDetailResponseBody.Data.Source.Policy()
                    model.fromMap(dict["Policy"] as! [String: Any])
                    self.policy = model
                }
                if dict.keys.contains("SourceFiles") && dict["SourceFiles"] != nil {
                    var tmp : [PopObjectProjectDetailResponseBody.Data.Source.SourceFiles] = []
                    for v in dict["SourceFiles"] as! [Any] {
                        var model = PopObjectProjectDetailResponseBody.Data.Source.SourceFiles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.sourceFiles = tmp
                }
            }
        }
        public var autoBuild: Bool?

        public var bizUsage: String?

        public var buildDetail: PopObjectProjectDetailResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var dataset: PopObjectProjectDetailResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var modifiedTime: String?

        public var source: PopObjectProjectDetailResponseBody.Data.Source?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.source != nil {
                map["Source"] = self.source?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopObjectProjectDetailResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopObjectProjectDetailResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                var model = PopObjectProjectDetailResponseBody.Data.Source()
                model.fromMap(dict["Source"] as! [String: Any])
                self.source = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopObjectProjectDetailResponseBody.Data?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
            var model = PopObjectProjectDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class PopObjectProjectDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopObjectProjectDetailResponseBody?

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
            var model = PopObjectProjectDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopObjectRetrievalRequest : Tea.TeaModel {
    public var content: String?

    public var jwtToken: String?

    public var sourceType: String?

    public var topK: Int32?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TopK") && dict["TopK"] != nil {
            self.topK = dict["TopK"] as! Int32
        }
    }
}

public class PopObjectRetrievalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var coverUrl: String?

        public var glbUrl: String?

        public var id: String?

        public var modelUrl: String?

        public var previewUrl: String?

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
            if self.coverUrl != nil {
                map["CoverUrl"] = self.coverUrl!
            }
            if self.glbUrl != nil {
                map["GlbUrl"] = self.glbUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modelUrl != nil {
                map["ModelUrl"] = self.modelUrl!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                self.coverUrl = dict["CoverUrl"] as! String
            }
            if dict.keys.contains("GlbUrl") && dict["GlbUrl"] != nil {
                self.glbUrl = dict["GlbUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                self.modelUrl = dict["ModelUrl"] as! String
            }
            if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                self.previewUrl = dict["PreviewUrl"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [PopObjectRetrievalResponseBody.Data]?

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
            var tmp : [PopObjectRetrievalResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PopObjectRetrievalResponseBody.Data()
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PopObjectRetrievalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopObjectRetrievalResponseBody?

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
            var model = PopObjectRetrievalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopObjectRetrievalUploadDataRequest : Tea.TeaModel {
    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class PopObjectRetrievalUploadDataResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessId: String?

        public var dir: String?

        public var expire: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                self.accessId = dict["AccessId"] as! String
            }
            if dict.keys.contains("Dir") && dict["Dir"] != nil {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("Expire") && dict["Expire"] != nil {
                self.expire = dict["Expire"] as! String
            }
            if dict.keys.contains("Host") && dict["Host"] != nil {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopObjectRetrievalUploadDataResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopObjectRetrievalUploadDataResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopObjectRetrievalUploadDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopObjectRetrievalUploadDataResponseBody?

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
            var model = PopObjectRetrievalUploadDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopQueryAvatarProjectDetailRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopQueryAvatarProjectDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var modifiedTime: String?

            public var runningTime: String?

            public var status: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public var buildResultUrl: [String: Any]?

            public var coverUrl: String?

            public var createTime: String?

            public var deleted: Bool?

            public var errorCode: String?

            public var errorMessage: String?

            public var glbModelUrl: String?

            public var modelUrl: String?

            public var modifiedTime: String?

            public var originResultUrl: String?

            public var ossKey: String?

            public var poseUrl: String?

            public var previewUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.glbModelUrl != nil {
                    map["GlbModelUrl"] = self.glbModelUrl!
                }
                if self.modelUrl != nil {
                    map["ModelUrl"] = self.modelUrl!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.originResultUrl != nil {
                    map["OriginResultUrl"] = self.originResultUrl!
                }
                if self.ossKey != nil {
                    map["OssKey"] = self.ossKey!
                }
                if self.poseUrl != nil {
                    map["PoseUrl"] = self.poseUrl!
                }
                if self.previewUrl != nil {
                    map["PreviewUrl"] = self.previewUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                    self.deleted = dict["Deleted"] as! Bool
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("GlbModelUrl") && dict["GlbModelUrl"] != nil {
                    self.glbModelUrl = dict["GlbModelUrl"] as! String
                }
                if dict.keys.contains("ModelUrl") && dict["ModelUrl"] != nil {
                    self.modelUrl = dict["ModelUrl"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("OriginResultUrl") && dict["OriginResultUrl"] != nil {
                    self.originResultUrl = dict["OriginResultUrl"] as! String
                }
                if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                    self.ossKey = dict["OssKey"] as! String
                }
                if dict.keys.contains("PoseUrl") && dict["PoseUrl"] != nil {
                    self.poseUrl = dict["PoseUrl"] as! String
                }
                if dict.keys.contains("PreviewUrl") && dict["PreviewUrl"] != nil {
                    self.previewUrl = dict["PreviewUrl"] as! String
                }
            }
        }
        public var autoBuild: Bool?

        public var bizUsage: String?

        public var buildDetail: PopQueryAvatarProjectDetailResponseBody.Data.BuildDetail?

        public var checkStatus: String?

        public var createMode: String?

        public var createTime: String?

        public var dataset: PopQueryAvatarProjectDetailResponseBody.Data.Dataset?

        public var deleted: Bool?

        public var dependencies: String?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var modifiedTime: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBuild != nil {
                map["AutoBuild"] = self.autoBuild!
            }
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.createMode != nil {
                map["CreateMode"] = self.createMode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.dependencies != nil {
                map["Dependencies"] = self.dependencies!
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoBuild") && dict["AutoBuild"] != nil {
                self.autoBuild = dict["AutoBuild"] as! Bool
            }
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopQueryAvatarProjectDetailResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! String
            }
            if dict.keys.contains("CreateMode") && dict["CreateMode"] != nil {
                self.createMode = dict["CreateMode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopQueryAvatarProjectDetailResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Deleted") && dict["Deleted"] != nil {
                self.deleted = dict["Deleted"] as! Bool
            }
            if dict.keys.contains("Dependencies") && dict["Dependencies"] != nil {
                self.dependencies = dict["Dependencies"] as! String
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopQueryAvatarProjectDetailResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopQueryAvatarProjectDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopQueryAvatarProjectDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopQueryAvatarProjectDetailResponseBody?

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
            var model = PopQueryAvatarProjectDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopQueryLatestAvatarProjectDetailByUserRequest : Tea.TeaModel {
    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class PopQueryLatestAvatarProjectDetailByUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var runningTime: String?

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
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public var buildResultUrl: [String: Any]?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
            }
        }
        public var bizUsage: String?

        public var buildDetail: PopQueryLatestAvatarProjectDetailByUserResponseBody.Data.BuildDetail?

        public var createTime: String?

        public var dataset: PopQueryLatestAvatarProjectDetailByUserResponseBody.Data.Dataset?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopQueryLatestAvatarProjectDetailByUserResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopQueryLatestAvatarProjectDetailByUserResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopQueryLatestAvatarProjectDetailByUserResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopQueryLatestAvatarProjectDetailByUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopQueryLatestAvatarProjectDetailByUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopQueryLatestAvatarProjectDetailByUserResponseBody?

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
            var model = PopQueryLatestAvatarProjectDetailByUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopQueryLivePortraitModelScopeProjectDetailRequest : Tea.TeaModel {
    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopQueryLivePortraitModelScopeProjectDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Dataset : Tea.TeaModel {
            public var buildResultUrl: [String: Any]?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
            }
        }
        public var bizUsage: String?

        public var dataset: PopQueryLivePortraitModelScopeProjectDetailResponseBody.Data.Dataset?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var materialCoverUrl: String?

        public var status: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.materialCoverUrl != nil {
                map["MaterialCoverUrl"] = self.materialCoverUrl!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopQueryLivePortraitModelScopeProjectDetailResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("MaterialCoverUrl") && dict["MaterialCoverUrl"] != nil {
                self.materialCoverUrl = dict["MaterialCoverUrl"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopQueryLivePortraitModelScopeProjectDetailResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopQueryLivePortraitModelScopeProjectDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopQueryLivePortraitModelScopeProjectDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopQueryLivePortraitModelScopeProjectDetailResponseBody?

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
            var model = PopQueryLivePortraitModelScopeProjectDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopQueryObjectGenerationProjectDetailRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopQueryObjectGenerationProjectDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BuildDetail : Tea.TeaModel {
            public var completedTime: String?

            public var errorMessage: String?

            public var estimatedDuration: Int64?

            public var runningTime: String?

            public var submitTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completedTime != nil {
                    map["CompletedTime"] = self.completedTime!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.estimatedDuration != nil {
                    map["EstimatedDuration"] = self.estimatedDuration!
                }
                if self.runningTime != nil {
                    map["RunningTime"] = self.runningTime!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CompletedTime") && dict["CompletedTime"] != nil {
                    self.completedTime = dict["CompletedTime"] as! String
                }
                if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                    self.estimatedDuration = dict["EstimatedDuration"] as! Int64
                }
                if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                    self.runningTime = dict["RunningTime"] as! String
                }
                if dict.keys.contains("SubmitTime") && dict["SubmitTime"] != nil {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public class Dataset : Tea.TeaModel {
            public var buildResultUrl: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.buildResultUrl != nil {
                    map["BuildResultUrl"] = self.buildResultUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BuildResultUrl") && dict["BuildResultUrl"] != nil {
                    self.buildResultUrl = dict["BuildResultUrl"] as! [String: Any]
                }
            }
        }
        public var bizUsage: String?

        public var buildDetail: PopQueryObjectGenerationProjectDetailResponseBody.Data.BuildDetail?

        public var dataset: PopQueryObjectGenerationProjectDetailResponseBody.Data.Dataset?

        public var ext: String?

        public var id: String?

        public var intro: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.buildDetail?.validate()
            try self.dataset?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizUsage != nil {
                map["BizUsage"] = self.bizUsage!
            }
            if self.buildDetail != nil {
                map["BuildDetail"] = self.buildDetail?.toMap()
            }
            if self.dataset != nil {
                map["Dataset"] = self.dataset?.toMap()
            }
            if self.ext != nil {
                map["Ext"] = self.ext!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizUsage") && dict["BizUsage"] != nil {
                self.bizUsage = dict["BizUsage"] as! String
            }
            if dict.keys.contains("BuildDetail") && dict["BuildDetail"] != nil {
                var model = PopQueryObjectGenerationProjectDetailResponseBody.Data.BuildDetail()
                model.fromMap(dict["BuildDetail"] as! [String: Any])
                self.buildDetail = model
            }
            if dict.keys.contains("Dataset") && dict["Dataset"] != nil {
                var model = PopQueryObjectGenerationProjectDetailResponseBody.Data.Dataset()
                model.fromMap(dict["Dataset"] as! [String: Any])
                self.dataset = model
            }
            if dict.keys.contains("Ext") && dict["Ext"] != nil {
                self.ext = dict["Ext"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopQueryObjectGenerationProjectDetailResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopQueryObjectGenerationProjectDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopQueryObjectGenerationProjectDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopQueryObjectGenerationProjectDetailResponseBody?

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
            var model = PopQueryObjectGenerationProjectDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopRetryAITryOnTaskRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
    }
}

public class PopRetryAITryOnTaskResponseBody : Tea.TeaModel {
    public var code: String?

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

public class PopRetryAITryOnTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopRetryAITryOnTaskResponseBody?

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
            var model = PopRetryAITryOnTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopSubmitAITryOnJobRequest : Tea.TeaModel {
    public var bottomsId: String?

    public var clothingType: String?

    public var generatePictureNum: Int32?

    public var jwtToken: String?

    public var modelId: String?

    public var shoeType: String?

    public var suitId: String?

    public var topsId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bottomsId != nil {
            map["BottomsId"] = self.bottomsId!
        }
        if self.clothingType != nil {
            map["ClothingType"] = self.clothingType!
        }
        if self.generatePictureNum != nil {
            map["GeneratePictureNum"] = self.generatePictureNum!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.shoeType != nil {
            map["ShoeType"] = self.shoeType!
        }
        if self.suitId != nil {
            map["SuitId"] = self.suitId!
        }
        if self.topsId != nil {
            map["TopsId"] = self.topsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BottomsId") && dict["BottomsId"] != nil {
            self.bottomsId = dict["BottomsId"] as! String
        }
        if dict.keys.contains("ClothingType") && dict["ClothingType"] != nil {
            self.clothingType = dict["ClothingType"] as! String
        }
        if dict.keys.contains("GeneratePictureNum") && dict["GeneratePictureNum"] != nil {
            self.generatePictureNum = dict["GeneratePictureNum"] as! Int32
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ModelId") && dict["ModelId"] != nil {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("ShoeType") && dict["ShoeType"] != nil {
            self.shoeType = dict["ShoeType"] as! String
        }
        if dict.keys.contains("SuitId") && dict["SuitId"] != nil {
            self.suitId = dict["SuitId"] as! String
        }
        if dict.keys.contains("TopsId") && dict["TopsId"] != nil {
            self.topsId = dict["TopsId"] as! String
        }
    }
}

public class PopSubmitAITryOnJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var projectId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.projectId != nil {
                map["ProjectId"] = self.projectId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
                self.projectId = dict["ProjectId"] as! String
            }
        }
    }
    public var code: String?

    public var data: PopSubmitAITryOnJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopSubmitAITryOnJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopSubmitAITryOnJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopSubmitAITryOnJobResponseBody?

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
            var model = PopSubmitAITryOnJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopUploadMaterialRequest : Tea.TeaModel {
    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class PopUploadMaterialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var accessId: String?

            public var dir: String?

            public var expire: String?

            public var host: String?

            public var policy: String?

            public var signature: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessId != nil {
                    map["AccessId"] = self.accessId!
                }
                if self.dir != nil {
                    map["Dir"] = self.dir!
                }
                if self.expire != nil {
                    map["Expire"] = self.expire!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.policy != nil {
                    map["Policy"] = self.policy!
                }
                if self.signature != nil {
                    map["Signature"] = self.signature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
                    self.accessId = dict["AccessId"] as! String
                }
                if dict.keys.contains("Dir") && dict["Dir"] != nil {
                    self.dir = dict["Dir"] as! String
                }
                if dict.keys.contains("Expire") && dict["Expire"] != nil {
                    self.expire = dict["Expire"] as! String
                }
                if dict.keys.contains("Host") && dict["Host"] != nil {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("Policy") && dict["Policy"] != nil {
                    self.policy = dict["Policy"] as! String
                }
                if dict.keys.contains("Signature") && dict["Signature"] != nil {
                    self.signature = dict["Signature"] as! String
                }
            }
        }
        public var ossKey: String?

        public var policy: PopUploadMaterialResponseBody.Data.Policy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.policy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossKey != nil {
                map["OssKey"] = self.ossKey!
            }
            if self.policy != nil {
                map["Policy"] = self.policy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
                self.ossKey = dict["OssKey"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                var model = PopUploadMaterialResponseBody.Data.Policy()
                model.fromMap(dict["Policy"] as! [String: Any])
                self.policy = model
            }
        }
    }
    public var code: String?

    public var data: PopUploadMaterialResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = PopUploadMaterialResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class PopUploadMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopUploadMaterialResponseBody?

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
            var model = PopUploadMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PopVideoSaveSourceRequest : Tea.TeaModel {
    public var jwtToken: String?

    public var projectId: String?

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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("ProjectId") && dict["ProjectId"] != nil {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class PopVideoSaveSourceResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class PopVideoSaveSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PopVideoSaveSourceResponseBody?

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
            var model = PopVideoSaveSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDigitalHumanProjectRequest : Tea.TeaModel {
    public var ids: String?

    public var jwtToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class QueryDigitalHumanProjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var estimatedDuration: Int32?

        public var fileUrl: String?

        public var id: String?

        public var intro: String?

        public var runningTime: String?

        public var status: String?

        public var subtitleUrl: String?

        public var title: String?

        public var videoLength: Int32?

        public var waitingTime: Int32?

        public override init() {
            super.init()
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
            if self.estimatedDuration != nil {
                map["EstimatedDuration"] = self.estimatedDuration!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.intro != nil {
                map["Intro"] = self.intro!
            }
            if self.runningTime != nil {
                map["RunningTime"] = self.runningTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subtitleUrl != nil {
                map["SubtitleUrl"] = self.subtitleUrl!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.videoLength != nil {
                map["VideoLength"] = self.videoLength!
            }
            if self.waitingTime != nil {
                map["WaitingTime"] = self.waitingTime!
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
            if dict.keys.contains("EstimatedDuration") && dict["EstimatedDuration"] != nil {
                self.estimatedDuration = dict["EstimatedDuration"] as! Int32
            }
            if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
                self.fileUrl = dict["FileUrl"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Intro") && dict["Intro"] != nil {
                self.intro = dict["Intro"] as! String
            }
            if dict.keys.contains("RunningTime") && dict["RunningTime"] != nil {
                self.runningTime = dict["RunningTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubtitleUrl") && dict["SubtitleUrl"] != nil {
                self.subtitleUrl = dict["SubtitleUrl"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("VideoLength") && dict["VideoLength"] != nil {
                self.videoLength = dict["VideoLength"] as! Int32
            }
            if dict.keys.contains("WaitingTime") && dict["WaitingTime"] != nil {
                self.waitingTime = dict["WaitingTime"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [QueryDigitalHumanProjectResponseBody.Data]?

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
            var tmp : [QueryDigitalHumanProjectResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryDigitalHumanProjectResponseBody.Data()
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryDigitalHumanProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDigitalHumanProjectResponseBody?

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
            var model = QueryDigitalHumanProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryLongTtsResultRequest : Tea.TeaModel {
    public var jobId: String?

    public var jwtToken: String?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class QueryLongTtsResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var audioUrl: String?

        public var duration: Double?

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
            if self.audioUrl != nil {
                map["AudioUrl"] = self.audioUrl!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioUrl") && dict["AudioUrl"] != nil {
                self.audioUrl = dict["AudioUrl"] as! String
            }
            if dict.keys.contains("Duration") && dict["Duration"] != nil {
                self.duration = dict["Duration"] as! Double
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryLongTtsResultResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryLongTtsResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class QueryLongTtsResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLongTtsResultResponseBody?

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
            var model = QueryLongTtsResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMotionShopVideoDetectResultRequest : Tea.TeaModel {
    public var jobId: String?

    public var jwtToken: String?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class QueryMotionShopVideoDetectResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetectResult : Tea.TeaModel {
            public var box: [Double]?

            public var code: Int32?

            public var coverUrl: String?

            public var message: String?

            public var selectedFrameIndex: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.box != nil {
                    map["Box"] = self.box!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.coverUrl != nil {
                    map["CoverUrl"] = self.coverUrl!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.selectedFrameIndex != nil {
                    map["SelectedFrameIndex"] = self.selectedFrameIndex!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Box") && dict["Box"] != nil {
                    self.box = dict["Box"] as! [Double]
                }
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! Int32
                }
                if dict.keys.contains("CoverUrl") && dict["CoverUrl"] != nil {
                    self.coverUrl = dict["CoverUrl"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("SelectedFrameIndex") && dict["SelectedFrameIndex"] != nil {
                    self.selectedFrameIndex = dict["SelectedFrameIndex"] as! Int32
                }
            }
        }
        public var detectResult: QueryMotionShopVideoDetectResultResponseBody.Data.DetectResult?

        public var status: String?

        public var videoId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detectResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectResult != nil {
                map["DetectResult"] = self.detectResult?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.videoId != nil {
                map["VideoId"] = self.videoId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetectResult") && dict["DetectResult"] != nil {
                var model = QueryMotionShopVideoDetectResultResponseBody.Data.DetectResult()
                model.fromMap(dict["DetectResult"] as! [String: Any])
                self.detectResult = model
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VideoId") && dict["VideoId"] != nil {
                self.videoId = dict["VideoId"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryMotionShopVideoDetectResultResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryMotionShopVideoDetectResultResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class QueryMotionShopVideoDetectResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMotionShopVideoDetectResultResponseBody?

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
            var model = QueryMotionShopVideoDetectResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitLongTtsTaskRequest : Tea.TeaModel {
    public var content: String?

    public var jwtToken: String?

    public var ttsVoiceId: String?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.ttsVoiceId != nil {
            map["TtsVoiceId"] = self.ttsVoiceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("TtsVoiceId") && dict["TtsVoiceId"] != nil {
            self.ttsVoiceId = dict["TtsVoiceId"] as! String
        }
    }
}

public class SubmitLongTtsTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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

public class SubmitLongTtsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitLongTtsTaskResponseBody?

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
            var model = SubmitLongTtsTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitMotionShopTaskRequest : Tea.TeaModel {
    public var avatarId: String?

    public var jwtToken: String?

    public var title: String?

    public var videoId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avatarId != nil {
            map["AvatarId"] = self.avatarId!
        }
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoId != nil {
            map["VideoId"] = self.videoId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvatarId") && dict["AvatarId"] != nil {
            self.avatarId = dict["AvatarId"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoId") && dict["VideoId"] != nil {
            self.videoId = dict["VideoId"] as! String
        }
    }
}

public class SubmitMotionShopTaskResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitMotionShopTaskResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitMotionShopTaskResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class SubmitMotionShopTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitMotionShopTaskResponseBody?

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
            var model = SubmitMotionShopTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserEmailRequest : Tea.TeaModel {
    public var email: String?

    public var jwtToken: String?

    public override init() {
        super.init()
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
        if self.jwtToken != nil {
            map["JwtToken"] = self.jwtToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
            self.jwtToken = dict["JwtToken"] as! String
        }
    }
}

public class UpdateUserEmailResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorName: String?

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
        if self.errorName != nil {
            map["ErrorName"] = self.errorName!
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
        if dict.keys.contains("ErrorName") && dict["ErrorName"] != nil {
            self.errorName = dict["ErrorName"] as! String
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

public class UpdateUserEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserEmailResponseBody?

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
            var model = UpdateUserEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
