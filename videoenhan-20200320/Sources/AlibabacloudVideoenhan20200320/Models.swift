import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import DarabonbaNumber
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddFaceVideoTemplateRequest : Tea.TeaModel {
    public var videoScene: String?

    public var videoURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoScene != nil {
            map["VideoScene"] = self.videoScene!
        }
        if self.videoURL != nil {
            map["VideoURL"] = self.videoURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoScene"] as? String {
            self.videoScene = value
        }
        if let value = dict["VideoURL"] as? String {
            self.videoURL = value
        }
    }
}

public class AddFaceVideoTemplateAdvanceRequest : Tea.TeaModel {
    public var videoScene: String?

    public var videoURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoScene != nil {
            map["VideoScene"] = self.videoScene!
        }
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoScene"] as? String {
            self.videoScene = value
        }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
    }
}

public class AddFaceVideoTemplateResponseBody : Tea.TeaModel {
    public class Date : Tea.TeaModel {
        public class FaceInfos : Tea.TeaModel {
            public var templateFaceID: String?

            public var templateFaceURL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.templateFaceID != nil {
                    map["TemplateFaceID"] = self.templateFaceID!
                }
                if self.templateFaceURL != nil {
                    map["TemplateFaceURL"] = self.templateFaceURL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TemplateFaceID"] as? String {
                    self.templateFaceID = value
                }
                if let value = dict["TemplateFaceURL"] as? String {
                    self.templateFaceURL = value
                }
            }
        }
        public var faceInfos: [AddFaceVideoTemplateResponseBody.Date.FaceInfos]?

        public var templateId: String?

        public var transResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceInfos != nil {
                var tmp : [Any] = []
                for k in self.faceInfos! {
                    tmp.append(k.toMap())
                }
                map["FaceInfos"] = tmp
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.transResult != nil {
                map["TransResult"] = self.transResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceInfos"] as? [Any?] {
                var tmp : [AddFaceVideoTemplateResponseBody.Date.FaceInfos] = []
                for v in value {
                    if v != nil {
                        var model = AddFaceVideoTemplateResponseBody.Date.FaceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.faceInfos = tmp
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TransResult"] as? String {
                self.transResult = value
            }
        }
    }
    public var date: AddFaceVideoTemplateResponseBody.Date?

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
        try self.date?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.date != nil {
            map["Date"] = self.date?.toMap()
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
        if let value = dict["Date"] as? [String: Any?] {
            var model = AddFaceVideoTemplateResponseBody.Date()
            model.fromMap(value)
            self.date = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddFaceVideoTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceVideoTemplateResponseBody?

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
            var model = AddFaceVideoTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AdjustVideoColorRequest : Tea.TeaModel {
    public var mode: String?

    public var videoBitrate: Int64?

    public var videoCodec: String?

    public var videoFormat: String?

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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.videoBitrate != nil {
            map["VideoBitrate"] = self.videoBitrate!
        }
        if self.videoCodec != nil {
            map["VideoCodec"] = self.videoCodec!
        }
        if self.videoFormat != nil {
            map["VideoFormat"] = self.videoFormat!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["VideoBitrate"] as? Int64 {
            self.videoBitrate = value
        }
        if let value = dict["VideoCodec"] as? String {
            self.videoCodec = value
        }
        if let value = dict["VideoFormat"] as? String {
            self.videoFormat = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class AdjustVideoColorAdvanceRequest : Tea.TeaModel {
    public var mode: String?

    public var videoBitrate: Int64?

    public var videoCodec: String?

    public var videoFormat: String?

    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.videoBitrate != nil {
            map["VideoBitrate"] = self.videoBitrate!
        }
        if self.videoCodec != nil {
            map["VideoCodec"] = self.videoCodec!
        }
        if self.videoFormat != nil {
            map["VideoFormat"] = self.videoFormat!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["VideoBitrate"] as? Int64 {
            self.videoBitrate = value
        }
        if let value = dict["VideoCodec"] as? String {
            self.videoCodec = value
        }
        if let value = dict["VideoFormat"] as? String {
            self.videoFormat = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class AdjustVideoColorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: AdjustVideoColorResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = AdjustVideoColorResponseBody.Data()
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

public class AdjustVideoColorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AdjustVideoColorResponseBody?

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
            var model = AdjustVideoColorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeVideoSizeRequest : Tea.TeaModel {
    public var b: Int32?

    public var cropType: String?

    public var fillType: String?

    public var g: Int32?

    public var height: Int32?

    public var r: Int32?

    public var tightness: Double?

    public var videoUrl: String?

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
        if self.b != nil {
            map["B"] = self.b!
        }
        if self.cropType != nil {
            map["CropType"] = self.cropType!
        }
        if self.fillType != nil {
            map["FillType"] = self.fillType!
        }
        if self.g != nil {
            map["G"] = self.g!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.r != nil {
            map["R"] = self.r!
        }
        if self.tightness != nil {
            map["Tightness"] = self.tightness!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["B"] as? Int32 {
            self.b = value
        }
        if let value = dict["CropType"] as? String {
            self.cropType = value
        }
        if let value = dict["FillType"] as? String {
            self.fillType = value
        }
        if let value = dict["G"] as? Int32 {
            self.g = value
        }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["R"] as? Int32 {
            self.r = value
        }
        if let value = dict["Tightness"] as? Double {
            self.tightness = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class ChangeVideoSizeAdvanceRequest : Tea.TeaModel {
    public var b: Int32?

    public var cropType: String?

    public var fillType: String?

    public var g: Int32?

    public var height: Int32?

    public var r: Int32?

    public var tightness: Double?

    public var videoUrlObject: InputStream?

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
        if self.b != nil {
            map["B"] = self.b!
        }
        if self.cropType != nil {
            map["CropType"] = self.cropType!
        }
        if self.fillType != nil {
            map["FillType"] = self.fillType!
        }
        if self.g != nil {
            map["G"] = self.g!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.r != nil {
            map["R"] = self.r!
        }
        if self.tightness != nil {
            map["Tightness"] = self.tightness!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["B"] as? Int32 {
            self.b = value
        }
        if let value = dict["CropType"] as? String {
            self.cropType = value
        }
        if let value = dict["FillType"] as? String {
            self.fillType = value
        }
        if let value = dict["G"] as? Int32 {
            self.g = value
        }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["R"] as? Int32 {
            self.r = value
        }
        if let value = dict["Tightness"] as? Double {
            self.tightness = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class ChangeVideoSizeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var videoCoverUrl: String?

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
            if self.videoCoverUrl != nil {
                map["VideoCoverUrl"] = self.videoCoverUrl!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoCoverUrl"] as? String {
                self.videoCoverUrl = value
            }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: ChangeVideoSizeResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = ChangeVideoSizeResponseBody.Data()
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

public class ChangeVideoSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeVideoSizeResponseBody?

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
            var model = ChangeVideoSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceVideoTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DeleteFaceVideoTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFaceVideoTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceVideoTemplateResponseBody?

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
            var model = DeleteFaceVideoTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnhancePortraitVideoRequest : Tea.TeaModel {
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
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class EnhancePortraitVideoAdvanceRequest : Tea.TeaModel {
    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class EnhancePortraitVideoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: EnhancePortraitVideoResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = EnhancePortraitVideoResponseBody.Data()
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

public class EnhancePortraitVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnhancePortraitVideoResponseBody?

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
            var model = EnhancePortraitVideoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnhanceVideoQualityRequest : Tea.TeaModel {
    public var bitrate: Int32?

    public var frameRate: Int32?

    public var HDRFormat: String?

    public var maxIlluminance: Int32?

    public var outPutHeight: Int32?

    public var outPutWidth: Int32?

    public var videoURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.HDRFormat != nil {
            map["HDRFormat"] = self.HDRFormat!
        }
        if self.maxIlluminance != nil {
            map["MaxIlluminance"] = self.maxIlluminance!
        }
        if self.outPutHeight != nil {
            map["OutPutHeight"] = self.outPutHeight!
        }
        if self.outPutWidth != nil {
            map["OutPutWidth"] = self.outPutWidth!
        }
        if self.videoURL != nil {
            map["VideoURL"] = self.videoURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bitrate"] as? Int32 {
            self.bitrate = value
        }
        if let value = dict["FrameRate"] as? Int32 {
            self.frameRate = value
        }
        if let value = dict["HDRFormat"] as? String {
            self.HDRFormat = value
        }
        if let value = dict["MaxIlluminance"] as? Int32 {
            self.maxIlluminance = value
        }
        if let value = dict["OutPutHeight"] as? Int32 {
            self.outPutHeight = value
        }
        if let value = dict["OutPutWidth"] as? Int32 {
            self.outPutWidth = value
        }
        if let value = dict["VideoURL"] as? String {
            self.videoURL = value
        }
    }
}

public class EnhanceVideoQualityAdvanceRequest : Tea.TeaModel {
    public var bitrate: Int32?

    public var frameRate: Int32?

    public var HDRFormat: String?

    public var maxIlluminance: Int32?

    public var outPutHeight: Int32?

    public var outPutWidth: Int32?

    public var videoURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.HDRFormat != nil {
            map["HDRFormat"] = self.HDRFormat!
        }
        if self.maxIlluminance != nil {
            map["MaxIlluminance"] = self.maxIlluminance!
        }
        if self.outPutHeight != nil {
            map["OutPutHeight"] = self.outPutHeight!
        }
        if self.outPutWidth != nil {
            map["OutPutWidth"] = self.outPutWidth!
        }
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bitrate"] as? Int32 {
            self.bitrate = value
        }
        if let value = dict["FrameRate"] as? Int32 {
            self.frameRate = value
        }
        if let value = dict["HDRFormat"] as? String {
            self.HDRFormat = value
        }
        if let value = dict["MaxIlluminance"] as? Int32 {
            self.maxIlluminance = value
        }
        if let value = dict["OutPutHeight"] as? Int32 {
            self.outPutHeight = value
        }
        if let value = dict["OutPutWidth"] as? Int32 {
            self.outPutWidth = value
        }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
    }
}

public class EnhanceVideoQualityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var videoURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.videoURL != nil {
                map["VideoURL"] = self.videoURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoURL"] as? String {
                self.videoURL = value
            }
        }
    }
    public var data: EnhanceVideoQualityResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = EnhanceVideoQualityResponseBody.Data()
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

public class EnhanceVideoQualityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnhanceVideoQualityResponseBody?

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
            var model = EnhanceVideoQualityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EraseVideoLogoRequest : Tea.TeaModel {
    public class Boxes : Tea.TeaModel {
        public var h: Double?

        public var w: Double?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.h != nil {
                map["H"] = self.h!
            }
            if self.w != nil {
                map["W"] = self.w!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["H"] as? Double {
                self.h = value
            }
            if let value = dict["W"] as? Double {
                self.w = value
            }
            if let value = dict["X"] as? Double {
                self.x = value
            }
            if let value = dict["Y"] as? Double {
                self.y = value
            }
        }
    }
    public var boxes: [EraseVideoLogoRequest.Boxes]?

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
        if self.boxes != nil {
            var tmp : [Any] = []
            for k in self.boxes! {
                tmp.append(k.toMap())
            }
            map["Boxes"] = tmp
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boxes"] as? [Any?] {
            var tmp : [EraseVideoLogoRequest.Boxes] = []
            for v in value {
                if v != nil {
                    var model = EraseVideoLogoRequest.Boxes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.boxes = tmp
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class EraseVideoLogoAdvanceRequest : Tea.TeaModel {
    public class Boxes : Tea.TeaModel {
        public var h: Double?

        public var w: Double?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.h != nil {
                map["H"] = self.h!
            }
            if self.w != nil {
                map["W"] = self.w!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["H"] as? Double {
                self.h = value
            }
            if let value = dict["W"] as? Double {
                self.w = value
            }
            if let value = dict["X"] as? Double {
                self.x = value
            }
            if let value = dict["Y"] as? Double {
                self.y = value
            }
        }
    }
    public var boxes: [EraseVideoLogoAdvanceRequest.Boxes]?

    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boxes != nil {
            var tmp : [Any] = []
            for k in self.boxes! {
                tmp.append(k.toMap())
            }
            map["Boxes"] = tmp
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boxes"] as? [Any?] {
            var tmp : [EraseVideoLogoAdvanceRequest.Boxes] = []
            for v in value {
                if v != nil {
                    var model = EraseVideoLogoAdvanceRequest.Boxes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.boxes = tmp
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class EraseVideoLogoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: EraseVideoLogoResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = EraseVideoLogoResponseBody.Data()
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

public class EraseVideoLogoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EraseVideoLogoResponseBody?

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
            var model = EraseVideoLogoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EraseVideoSubtitlesRequest : Tea.TeaModel {
    public var BH: Double?

    public var BW: Double?

    public var BX: Double?

    public var BY: Double?

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
        if self.BH != nil {
            map["BH"] = self.BH!
        }
        if self.BW != nil {
            map["BW"] = self.BW!
        }
        if self.BX != nil {
            map["BX"] = self.BX!
        }
        if self.BY != nil {
            map["BY"] = self.BY!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BH"] as? Double {
            self.BH = value
        }
        if let value = dict["BW"] as? Double {
            self.BW = value
        }
        if let value = dict["BX"] as? Double {
            self.BX = value
        }
        if let value = dict["BY"] as? Double {
            self.BY = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class EraseVideoSubtitlesAdvanceRequest : Tea.TeaModel {
    public var BH: Double?

    public var BW: Double?

    public var BX: Double?

    public var BY: Double?

    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.BH != nil {
            map["BH"] = self.BH!
        }
        if self.BW != nil {
            map["BW"] = self.BW!
        }
        if self.BX != nil {
            map["BX"] = self.BX!
        }
        if self.BY != nil {
            map["BY"] = self.BY!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BH"] as? Double {
            self.BH = value
        }
        if let value = dict["BW"] as? Double {
            self.BW = value
        }
        if let value = dict["BX"] as? Double {
            self.BX = value
        }
        if let value = dict["BY"] as? Double {
            self.BY = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class EraseVideoSubtitlesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: EraseVideoSubtitlesResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = EraseVideoSubtitlesResponseBody.Data()
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

public class EraseVideoSubtitlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EraseVideoSubtitlesResponseBody?

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
            var model = EraseVideoSubtitlesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateHumanAnimeStyleVideoRequest : Tea.TeaModel {
    public var cartoonStyle: String?

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
        if self.cartoonStyle != nil {
            map["CartoonStyle"] = self.cartoonStyle!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CartoonStyle"] as? String {
            self.cartoonStyle = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class GenerateHumanAnimeStyleVideoAdvanceRequest : Tea.TeaModel {
    public var cartoonStyle: String?

    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cartoonStyle != nil {
            map["CartoonStyle"] = self.cartoonStyle!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CartoonStyle"] as? String {
            self.cartoonStyle = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class GenerateHumanAnimeStyleVideoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: GenerateHumanAnimeStyleVideoResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GenerateHumanAnimeStyleVideoResponseBody.Data()
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

public class GenerateHumanAnimeStyleVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateHumanAnimeStyleVideoResponseBody?

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
            var model = GenerateHumanAnimeStyleVideoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateVideoRequest : Tea.TeaModel {
    public class FileList : Tea.TeaModel {
        public var fileName: String?

        public var fileUrl: String?

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
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUrl"] as? String {
                self.fileUrl = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var duration: Double?

    public var durationAdaption: Bool?

    public var fileList: [GenerateVideoRequest.FileList]?

    public var height: Int32?

    public var mute: Bool?

    public var puzzleEffect: Bool?

    public var scene: String?

    public var smartEffect: Bool?

    public var style: String?

    public var transitionStyle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.durationAdaption != nil {
            map["DurationAdaption"] = self.durationAdaption!
        }
        if self.fileList != nil {
            var tmp : [Any] = []
            for k in self.fileList! {
                tmp.append(k.toMap())
            }
            map["FileList"] = tmp
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.mute != nil {
            map["Mute"] = self.mute!
        }
        if self.puzzleEffect != nil {
            map["PuzzleEffect"] = self.puzzleEffect!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.smartEffect != nil {
            map["SmartEffect"] = self.smartEffect!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        if self.transitionStyle != nil {
            map["TransitionStyle"] = self.transitionStyle!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["DurationAdaption"] as? Bool {
            self.durationAdaption = value
        }
        if let value = dict["FileList"] as? [Any?] {
            var tmp : [GenerateVideoRequest.FileList] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoRequest.FileList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileList = tmp
        }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["Mute"] as? Bool {
            self.mute = value
        }
        if let value = dict["PuzzleEffect"] as? Bool {
            self.puzzleEffect = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["SmartEffect"] as? Bool {
            self.smartEffect = value
        }
        if let value = dict["Style"] as? String {
            self.style = value
        }
        if let value = dict["TransitionStyle"] as? String {
            self.transitionStyle = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class GenerateVideoAdvanceRequest : Tea.TeaModel {
    public class FileList : Tea.TeaModel {
        public var fileName: String?

        public var fileUrlObject: InputStream?

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
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileUrlObject != nil {
                map["FileUrl"] = self.fileUrlObject!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileUrl"] as? InputStream {
                self.fileUrlObject = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var duration: Double?

    public var durationAdaption: Bool?

    public var fileList: [GenerateVideoAdvanceRequest.FileList]?

    public var height: Int32?

    public var mute: Bool?

    public var puzzleEffect: Bool?

    public var scene: String?

    public var smartEffect: Bool?

    public var style: String?

    public var transitionStyle: String?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.durationAdaption != nil {
            map["DurationAdaption"] = self.durationAdaption!
        }
        if self.fileList != nil {
            var tmp : [Any] = []
            for k in self.fileList! {
                tmp.append(k.toMap())
            }
            map["FileList"] = tmp
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.mute != nil {
            map["Mute"] = self.mute!
        }
        if self.puzzleEffect != nil {
            map["PuzzleEffect"] = self.puzzleEffect!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.smartEffect != nil {
            map["SmartEffect"] = self.smartEffect!
        }
        if self.style != nil {
            map["Style"] = self.style!
        }
        if self.transitionStyle != nil {
            map["TransitionStyle"] = self.transitionStyle!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["DurationAdaption"] as? Bool {
            self.durationAdaption = value
        }
        if let value = dict["FileList"] as? [Any?] {
            var tmp : [GenerateVideoAdvanceRequest.FileList] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoAdvanceRequest.FileList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileList = tmp
        }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["Mute"] as? Bool {
            self.mute = value
        }
        if let value = dict["PuzzleEffect"] as? Bool {
            self.puzzleEffect = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["SmartEffect"] as? Bool {
            self.smartEffect = value
        }
        if let value = dict["Style"] as? String {
            self.style = value
        }
        if let value = dict["TransitionStyle"] as? String {
            self.transitionStyle = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class GenerateVideoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var videoCoverUrl: String?

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
            if self.videoCoverUrl != nil {
                map["VideoCoverUrl"] = self.videoCoverUrl!
            }
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoCoverUrl"] as? String {
                self.videoCoverUrl = value
            }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: GenerateVideoResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GenerateVideoResponseBody.Data()
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

public class GenerateVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateVideoResponseBody?

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
            var model = GenerateVideoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAsyncJobResultRequest : Tea.TeaModel {
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

public class GetAsyncJobResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var result: String?

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
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.result != nil {
                map["Result"] = self.result!
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
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: GetAsyncJobResultResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAsyncJobResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAsyncJobResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncJobResultResponseBody?

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
            var model = GetAsyncJobResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InterpolateVideoFrameRequest : Tea.TeaModel {
    public var bitrate: Int32?

    public var frameRate: Int32?

    public var videoURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.videoURL != nil {
            map["VideoURL"] = self.videoURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bitrate"] as? Int32 {
            self.bitrate = value
        }
        if let value = dict["FrameRate"] as? Int32 {
            self.frameRate = value
        }
        if let value = dict["VideoURL"] as? String {
            self.videoURL = value
        }
    }
}

public class InterpolateVideoFrameAdvanceRequest : Tea.TeaModel {
    public var bitrate: Int32?

    public var frameRate: Int32?

    public var videoURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bitrate"] as? Int32 {
            self.bitrate = value
        }
        if let value = dict["FrameRate"] as? Int32 {
            self.frameRate = value
        }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
    }
}

public class InterpolateVideoFrameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var videoURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.videoURL != nil {
                map["VideoURL"] = self.videoURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoURL"] as? String {
                self.videoURL = value
            }
        }
    }
    public var data: InterpolateVideoFrameResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = InterpolateVideoFrameResponseBody.Data()
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

public class InterpolateVideoFrameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InterpolateVideoFrameResponseBody?

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
            var model = InterpolateVideoFrameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MergeVideoFaceRequest : Tea.TeaModel {
    public var addWatermark: Bool?

    public var enhance: Bool?

    public var referenceURL: String?

    public var videoURL: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addWatermark != nil {
            map["AddWatermark"] = self.addWatermark!
        }
        if self.enhance != nil {
            map["Enhance"] = self.enhance!
        }
        if self.referenceURL != nil {
            map["ReferenceURL"] = self.referenceURL!
        }
        if self.videoURL != nil {
            map["VideoURL"] = self.videoURL!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWatermark"] as? Bool {
            self.addWatermark = value
        }
        if let value = dict["Enhance"] as? Bool {
            self.enhance = value
        }
        if let value = dict["ReferenceURL"] as? String {
            self.referenceURL = value
        }
        if let value = dict["VideoURL"] as? String {
            self.videoURL = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class MergeVideoFaceAdvanceRequest : Tea.TeaModel {
    public var addWatermark: Bool?

    public var enhance: Bool?

    public var referenceURLObject: InputStream?

    public var videoURLObject: InputStream?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addWatermark != nil {
            map["AddWatermark"] = self.addWatermark!
        }
        if self.enhance != nil {
            map["Enhance"] = self.enhance!
        }
        if self.referenceURLObject != nil {
            map["ReferenceURL"] = self.referenceURLObject!
        }
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWatermark"] as? Bool {
            self.addWatermark = value
        }
        if let value = dict["Enhance"] as? Bool {
            self.enhance = value
        }
        if let value = dict["ReferenceURL"] as? InputStream {
            self.referenceURLObject = value
        }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class MergeVideoFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var videoURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.videoURL != nil {
                map["VideoURL"] = self.videoURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoURL"] as? String {
                self.videoURL = value
            }
        }
    }
    public var data: MergeVideoFaceResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = MergeVideoFaceResponseBody.Data()
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

public class MergeVideoFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MergeVideoFaceResponseBody?

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
            var model = MergeVideoFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MergeVideoModelFaceRequest : Tea.TeaModel {
    public class MergeInfos : Tea.TeaModel {
        public var imageURL: String?

        public var templateFaceID: String?

        public var templateFaceURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            if self.templateFaceID != nil {
                map["TemplateFaceID"] = self.templateFaceID!
            }
            if self.templateFaceURL != nil {
                map["TemplateFaceURL"] = self.templateFaceURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
            if let value = dict["TemplateFaceID"] as? String {
                self.templateFaceID = value
            }
            if let value = dict["TemplateFaceURL"] as? String {
                self.templateFaceURL = value
            }
        }
    }
    public var addWatermark: Bool?

    public var enhance: Bool?

    public var faceImageURL: String?

    public var mergeInfos: [MergeVideoModelFaceRequest.MergeInfos]?

    public var templateId: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addWatermark != nil {
            map["AddWatermark"] = self.addWatermark!
        }
        if self.enhance != nil {
            map["Enhance"] = self.enhance!
        }
        if self.faceImageURL != nil {
            map["FaceImageURL"] = self.faceImageURL!
        }
        if self.mergeInfos != nil {
            var tmp : [Any] = []
            for k in self.mergeInfos! {
                tmp.append(k.toMap())
            }
            map["MergeInfos"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWatermark"] as? Bool {
            self.addWatermark = value
        }
        if let value = dict["Enhance"] as? Bool {
            self.enhance = value
        }
        if let value = dict["FaceImageURL"] as? String {
            self.faceImageURL = value
        }
        if let value = dict["MergeInfos"] as? [Any?] {
            var tmp : [MergeVideoModelFaceRequest.MergeInfos] = []
            for v in value {
                if v != nil {
                    var model = MergeVideoModelFaceRequest.MergeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mergeInfos = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class MergeVideoModelFaceAdvanceRequest : Tea.TeaModel {
    public class MergeInfos : Tea.TeaModel {
        public var imageURL: String?

        public var templateFaceID: String?

        public var templateFaceURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            if self.templateFaceID != nil {
                map["TemplateFaceID"] = self.templateFaceID!
            }
            if self.templateFaceURL != nil {
                map["TemplateFaceURL"] = self.templateFaceURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
            if let value = dict["TemplateFaceID"] as? String {
                self.templateFaceID = value
            }
            if let value = dict["TemplateFaceURL"] as? String {
                self.templateFaceURL = value
            }
        }
    }
    public var addWatermark: Bool?

    public var enhance: Bool?

    public var faceImageURLObject: InputStream?

    public var mergeInfos: [MergeVideoModelFaceAdvanceRequest.MergeInfos]?

    public var templateId: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addWatermark != nil {
            map["AddWatermark"] = self.addWatermark!
        }
        if self.enhance != nil {
            map["Enhance"] = self.enhance!
        }
        if self.faceImageURLObject != nil {
            map["FaceImageURL"] = self.faceImageURLObject!
        }
        if self.mergeInfos != nil {
            var tmp : [Any] = []
            for k in self.mergeInfos! {
                tmp.append(k.toMap())
            }
            map["MergeInfos"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddWatermark"] as? Bool {
            self.addWatermark = value
        }
        if let value = dict["Enhance"] as? Bool {
            self.enhance = value
        }
        if let value = dict["FaceImageURL"] as? InputStream {
            self.faceImageURLObject = value
        }
        if let value = dict["MergeInfos"] as? [Any?] {
            var tmp : [MergeVideoModelFaceAdvanceRequest.MergeInfos] = []
            for v in value {
                if v != nil {
                    var model = MergeVideoModelFaceAdvanceRequest.MergeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mergeInfos = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class MergeVideoModelFaceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var videoURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.videoURL != nil {
                map["VideoURL"] = self.videoURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoURL"] as? String {
                self.videoURL = value
            }
        }
    }
    public var data: MergeVideoModelFaceResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = MergeVideoModelFaceResponseBody.Data()
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

public class MergeVideoModelFaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MergeVideoModelFaceResponseBody?

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
            var model = MergeVideoModelFaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceVideoTemplateRequest : Tea.TeaModel {
    public var pageNo: Int64?

    public var pageSize: Int64?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class QueryFaceVideoTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class FaceInfos : Tea.TeaModel {
                public var templateFaceID: String?

                public var templateFaceURL: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.templateFaceID != nil {
                        map["TemplateFaceID"] = self.templateFaceID!
                    }
                    if self.templateFaceURL != nil {
                        map["TemplateFaceURL"] = self.templateFaceURL!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TemplateFaceID"] as? String {
                        self.templateFaceID = value
                    }
                    if let value = dict["TemplateFaceURL"] as? String {
                        self.templateFaceURL = value
                    }
                }
            }
            public var createTime: String?

            public var faceInfos: [QueryFaceVideoTemplateResponseBody.Data.Elements.FaceInfos]?

            public var templateId: String?

            public var templateURL: String?

            public var updateTime: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.faceInfos != nil {
                    var tmp : [Any] = []
                    for k in self.faceInfos! {
                        tmp.append(k.toMap())
                    }
                    map["FaceInfos"] = tmp
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateURL != nil {
                    map["TemplateURL"] = self.templateURL!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FaceInfos"] as? [Any?] {
                    var tmp : [QueryFaceVideoTemplateResponseBody.Data.Elements.FaceInfos] = []
                    for v in value {
                        if v != nil {
                            var model = QueryFaceVideoTemplateResponseBody.Data.Elements.FaceInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.faceInfos = tmp
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateURL"] as? String {
                    self.templateURL = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var elements: [QueryFaceVideoTemplateResponseBody.Data.Elements]?

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
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [QueryFaceVideoTemplateResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = QueryFaceVideoTemplateResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var data: QueryFaceVideoTemplateResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryFaceVideoTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryFaceVideoTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceVideoTemplateResponseBody?

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
            var model = QueryFaceVideoTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SuperResolveVideoRequest : Tea.TeaModel {
    public var bitRate: Int32?

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
        if self.bitRate != nil {
            map["BitRate"] = self.bitRate!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BitRate"] as? Int32 {
            self.bitRate = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class SuperResolveVideoAdvanceRequest : Tea.TeaModel {
    public var bitRate: Int32?

    public var videoUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitRate != nil {
            map["BitRate"] = self.bitRate!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BitRate"] as? Int32 {
            self.bitRate = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class SuperResolveVideoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.videoUrl != nil {
                map["VideoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VideoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var data: SuperResolveVideoResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SuperResolveVideoResponseBody.Data()
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

public class SuperResolveVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuperResolveVideoResponseBody?

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
            var model = SuperResolveVideoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
