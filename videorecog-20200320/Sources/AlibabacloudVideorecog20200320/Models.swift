import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DetectVideoShotRequest : Tea.TeaModel {
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

public class DetectVideoShotAdvanceRequest : Tea.TeaModel {
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

public class DetectVideoShotResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var shotFrameIds: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.shotFrameIds != nil {
                map["ShotFrameIds"] = self.shotFrameIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ShotFrameIds"] as? [Int32] {
                self.shotFrameIds = value
            }
        }
    }
    public var data: DetectVideoShotResponseBody.Data?

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
            var model = DetectVideoShotResponseBody.Data()
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

public class DetectVideoShotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectVideoShotResponseBody?

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
            var model = DetectVideoShotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EvaluateVideoQualityRequest : Tea.TeaModel {
    public var mode: String?

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
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class EvaluateVideoQualityAdvanceRequest : Tea.TeaModel {
    public var mode: String?

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
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class EvaluateVideoQualityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VideoQualityInfo : Tea.TeaModel {
            public var blurriness: Double?

            public var colorContrast: Double?

            public var colorSaturation: Double?

            public var colorfulness: Double?

            public var compressiveStrength: Double?

            public var luminance: Double?

            public var mosScore: Double?

            public var noiseIntensity: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blurriness != nil {
                    map["Blurriness"] = self.blurriness!
                }
                if self.colorContrast != nil {
                    map["ColorContrast"] = self.colorContrast!
                }
                if self.colorSaturation != nil {
                    map["ColorSaturation"] = self.colorSaturation!
                }
                if self.colorfulness != nil {
                    map["Colorfulness"] = self.colorfulness!
                }
                if self.compressiveStrength != nil {
                    map["CompressiveStrength"] = self.compressiveStrength!
                }
                if self.luminance != nil {
                    map["Luminance"] = self.luminance!
                }
                if self.mosScore != nil {
                    map["MosScore"] = self.mosScore!
                }
                if self.noiseIntensity != nil {
                    map["NoiseIntensity"] = self.noiseIntensity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Blurriness"] as? Double {
                    self.blurriness = value
                }
                if let value = dict["ColorContrast"] as? Double {
                    self.colorContrast = value
                }
                if let value = dict["ColorSaturation"] as? Double {
                    self.colorSaturation = value
                }
                if let value = dict["Colorfulness"] as? Double {
                    self.colorfulness = value
                }
                if let value = dict["CompressiveStrength"] as? Double {
                    self.compressiveStrength = value
                }
                if let value = dict["Luminance"] as? Double {
                    self.luminance = value
                }
                if let value = dict["MosScore"] as? Double {
                    self.mosScore = value
                }
                if let value = dict["NoiseIntensity"] as? Double {
                    self.noiseIntensity = value
                }
            }
        }
        public var jsonUrl: String?

        public var pdfUrl: String?

        public var videoQualityInfo: EvaluateVideoQualityResponseBody.Data.VideoQualityInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.videoQualityInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jsonUrl != nil {
                map["JsonUrl"] = self.jsonUrl!
            }
            if self.pdfUrl != nil {
                map["PdfUrl"] = self.pdfUrl!
            }
            if self.videoQualityInfo != nil {
                map["VideoQualityInfo"] = self.videoQualityInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JsonUrl"] as? String {
                self.jsonUrl = value
            }
            if let value = dict["PdfUrl"] as? String {
                self.pdfUrl = value
            }
            if let value = dict["VideoQualityInfo"] as? [String: Any?] {
                var model = EvaluateVideoQualityResponseBody.Data.VideoQualityInfo()
                model.fromMap(value)
                self.videoQualityInfo = model
            }
        }
    }
    public var data: EvaluateVideoQualityResponseBody.Data?

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
            var model = EvaluateVideoQualityResponseBody.Data()
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

public class EvaluateVideoQualityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EvaluateVideoQualityResponseBody?

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
            var model = EvaluateVideoQualityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateVideoCoverRequest : Tea.TeaModel {
    public var isGif: Bool?

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
        if self.isGif != nil {
            map["IsGif"] = self.isGif!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsGif"] as? Bool {
            self.isGif = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class GenerateVideoCoverAdvanceRequest : Tea.TeaModel {
    public var isGif: Bool?

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
        if self.isGif != nil {
            map["IsGif"] = self.isGif!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsGif"] as? Bool {
            self.isGif = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class GenerateVideoCoverResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Outputs : Tea.TeaModel {
            public var confidence: Double?

            public var imageURL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.confidence != nil {
                    map["Confidence"] = self.confidence!
                }
                if self.imageURL != nil {
                    map["ImageURL"] = self.imageURL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Confidence"] as? Double {
                    self.confidence = value
                }
                if let value = dict["ImageURL"] as? String {
                    self.imageURL = value
                }
            }
        }
        public var outputs: [GenerateVideoCoverResponseBody.Data.Outputs]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outputs != nil {
                var tmp : [Any] = []
                for k in self.outputs! {
                    tmp.append(k.toMap())
                }
                map["Outputs"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Outputs"] as? [Any?] {
                var tmp : [GenerateVideoCoverResponseBody.Data.Outputs] = []
                for v in value {
                    if v != nil {
                        var model = GenerateVideoCoverResponseBody.Data.Outputs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.outputs = tmp
            }
        }
    }
    public var data: GenerateVideoCoverResponseBody.Data?

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
            var model = GenerateVideoCoverResponseBody.Data()
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

public class GenerateVideoCoverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateVideoCoverResponseBody?

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
            var model = GenerateVideoCoverResponseBody()
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

public class RecognizeVideoCastCrewListRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var params: [RecognizeVideoCastCrewListRequest.Params]?

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
        if self.params != nil {
            var tmp : [Any] = []
            for k in self.params! {
                tmp.append(k.toMap())
            }
            map["Params"] = tmp
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Params"] as? [Any?] {
            var tmp : [RecognizeVideoCastCrewListRequest.Params] = []
            for v in value {
                if v != nil {
                    var model = RecognizeVideoCastCrewListRequest.Params()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class RecognizeVideoCastCrewListAdvanceRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var params: [RecognizeVideoCastCrewListAdvanceRequest.Params]?

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
        if self.params != nil {
            var tmp : [Any] = []
            for k in self.params! {
                tmp.append(k.toMap())
            }
            map["Params"] = tmp
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Params"] as? [Any?] {
            var tmp : [RecognizeVideoCastCrewListAdvanceRequest.Params] = []
            for v in value {
                if v != nil {
                    var model = RecognizeVideoCastCrewListAdvanceRequest.Params()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class RecognizeVideoCastCrewListShrinkRequest : Tea.TeaModel {
    public var paramsShrink: String?

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
        if self.paramsShrink != nil {
            map["Params"] = self.paramsShrink!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Params"] as? String {
            self.paramsShrink = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class RecognizeVideoCastCrewListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CastResults : Tea.TeaModel {
            public var detailInfo: [String: String]?

            public var endTime: Double?

            public var startTime: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailInfo != nil {
                    map["DetailInfo"] = self.detailInfo!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DetailInfo"] as? [String: String] {
                    self.detailInfo = value
                }
                if let value = dict["EndTime"] as? Double {
                    self.endTime = value
                }
                if let value = dict["StartTime"] as? Double {
                    self.startTime = value
                }
            }
        }
        public class OcrResults : Tea.TeaModel {
            public class DetailInfo : Tea.TeaModel {
                public class Position : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
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
                        if let value = dict["X"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public var boxes: [Int32]?

                public var charProbs: [[Double]]?

                public var frameIndex: Int64?

                public var position: [RecognizeVideoCastCrewListResponseBody.Data.OcrResults.DetailInfo.Position]?

                public var score: Double?

                public var text: String?

                public var textProb: Double?

                public var timeStamp: Double?

                public var trackId: Int64?

                public override init() {
                    super.init()
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
                        map["Boxes"] = self.boxes!
                    }
                    if self.charProbs != nil {
                        map["CharProbs"] = self.charProbs!
                    }
                    if self.frameIndex != nil {
                        map["FrameIndex"] = self.frameIndex!
                    }
                    if self.position != nil {
                        var tmp : [Any] = []
                        for k in self.position! {
                            tmp.append(k.toMap())
                        }
                        map["Position"] = tmp
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.textProb != nil {
                        map["TextProb"] = self.textProb!
                    }
                    if self.timeStamp != nil {
                        map["TimeStamp"] = self.timeStamp!
                    }
                    if self.trackId != nil {
                        map["TrackId"] = self.trackId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Boxes"] as? [Int32] {
                        self.boxes = value
                    }
                    if let value = dict["CharProbs"] as? [[Double]] {
                        self.charProbs = value
                    }
                    if let value = dict["FrameIndex"] as? Int64 {
                        self.frameIndex = value
                    }
                    if let value = dict["Position"] as? [Any?] {
                        var tmp : [RecognizeVideoCastCrewListResponseBody.Data.OcrResults.DetailInfo.Position] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizeVideoCastCrewListResponseBody.Data.OcrResults.DetailInfo.Position()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.position = tmp
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["TextProb"] as? Double {
                        self.textProb = value
                    }
                    if let value = dict["TimeStamp"] as? Double {
                        self.timeStamp = value
                    }
                    if let value = dict["TrackId"] as? Int64 {
                        self.trackId = value
                    }
                }
            }
            public var detailInfo: [RecognizeVideoCastCrewListResponseBody.Data.OcrResults.DetailInfo]?

            public var endTime: Double?

            public var startTime: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailInfo != nil {
                    var tmp : [Any] = []
                    for k in self.detailInfo! {
                        tmp.append(k.toMap())
                    }
                    map["DetailInfo"] = tmp
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DetailInfo"] as? [Any?] {
                    var tmp : [RecognizeVideoCastCrewListResponseBody.Data.OcrResults.DetailInfo] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeVideoCastCrewListResponseBody.Data.OcrResults.DetailInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detailInfo = tmp
                }
                if let value = dict["EndTime"] as? Double {
                    self.endTime = value
                }
                if let value = dict["StartTime"] as? Double {
                    self.startTime = value
                }
            }
        }
        public class SubtitlesResults : Tea.TeaModel {
            public var subtitlesAllResults: [String: String]?

            public var subtitlesAllResultsUrl: String?

            public var subtitlesChineseResults: [String: String]?

            public var subtitlesChineseResultsUrl: String?

            public var subtitlesEnglishResults: [String: Any]?

            public var subtitlesEnglishResultsUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.subtitlesAllResults != nil {
                    map["SubtitlesAllResults"] = self.subtitlesAllResults!
                }
                if self.subtitlesAllResultsUrl != nil {
                    map["SubtitlesAllResultsUrl"] = self.subtitlesAllResultsUrl!
                }
                if self.subtitlesChineseResults != nil {
                    map["SubtitlesChineseResults"] = self.subtitlesChineseResults!
                }
                if self.subtitlesChineseResultsUrl != nil {
                    map["SubtitlesChineseResultsUrl"] = self.subtitlesChineseResultsUrl!
                }
                if self.subtitlesEnglishResults != nil {
                    map["SubtitlesEnglishResults"] = self.subtitlesEnglishResults!
                }
                if self.subtitlesEnglishResultsUrl != nil {
                    map["SubtitlesEnglishResultsUrl"] = self.subtitlesEnglishResultsUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SubtitlesAllResults"] as? [String: String] {
                    self.subtitlesAllResults = value
                }
                if let value = dict["SubtitlesAllResultsUrl"] as? String {
                    self.subtitlesAllResultsUrl = value
                }
                if let value = dict["SubtitlesChineseResults"] as? [String: String] {
                    self.subtitlesChineseResults = value
                }
                if let value = dict["SubtitlesChineseResultsUrl"] as? String {
                    self.subtitlesChineseResultsUrl = value
                }
                if let value = dict["SubtitlesEnglishResults"] as? [String: Any] {
                    self.subtitlesEnglishResults = value
                }
                if let value = dict["SubtitlesEnglishResultsUrl"] as? String {
                    self.subtitlesEnglishResultsUrl = value
                }
            }
        }
        public class VideoOcrResults : Tea.TeaModel {
            public class DetailInfo : Tea.TeaModel {
                public class Position : Tea.TeaModel {
                    public var x: Int64?

                    public var y: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
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
                        if let value = dict["X"] as? Int64 {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Int64 {
                            self.y = value
                        }
                    }
                }
                public var boxes: [Int64]?

                public var position: [RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults.DetailInfo.Position]?

                public var score: Double?

                public var text: String?

                public var textType: Int64?

                public override init() {
                    super.init()
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
                        map["Boxes"] = self.boxes!
                    }
                    if self.position != nil {
                        var tmp : [Any] = []
                        for k in self.position! {
                            tmp.append(k.toMap())
                        }
                        map["Position"] = tmp
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.textType != nil {
                        map["TextType"] = self.textType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Boxes"] as? [Int64] {
                        self.boxes = value
                    }
                    if let value = dict["Position"] as? [Any?] {
                        var tmp : [RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults.DetailInfo.Position] = []
                        for v in value {
                            if v != nil {
                                var model = RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults.DetailInfo.Position()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.position = tmp
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["TextType"] as? Int64 {
                        self.textType = value
                    }
                }
            }
            public var detailInfo: [RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults.DetailInfo]?

            public var endTime: Double?

            public var startTime: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detailInfo != nil {
                    var tmp : [Any] = []
                    for k in self.detailInfo! {
                        tmp.append(k.toMap())
                    }
                    map["DetailInfo"] = tmp
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DetailInfo"] as? [Any?] {
                    var tmp : [RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults.DetailInfo] = []
                    for v in value {
                        if v != nil {
                            var model = RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults.DetailInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detailInfo = tmp
                }
                if let value = dict["EndTime"] as? Double {
                    self.endTime = value
                }
                if let value = dict["StartTime"] as? Double {
                    self.startTime = value
                }
            }
        }
        public var castResults: [RecognizeVideoCastCrewListResponseBody.Data.CastResults]?

        public var ocrResults: [RecognizeVideoCastCrewListResponseBody.Data.OcrResults]?

        public var ocrResultsUrl: String?

        public var ocrVideoResultsUrl: String?

        public var subtitlesResults: [RecognizeVideoCastCrewListResponseBody.Data.SubtitlesResults]?

        public var videoOcrResults: [RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.castResults != nil {
                var tmp : [Any] = []
                for k in self.castResults! {
                    tmp.append(k.toMap())
                }
                map["CastResults"] = tmp
            }
            if self.ocrResults != nil {
                var tmp : [Any] = []
                for k in self.ocrResults! {
                    tmp.append(k.toMap())
                }
                map["OcrResults"] = tmp
            }
            if self.ocrResultsUrl != nil {
                map["OcrResultsUrl"] = self.ocrResultsUrl!
            }
            if self.ocrVideoResultsUrl != nil {
                map["OcrVideoResultsUrl"] = self.ocrVideoResultsUrl!
            }
            if self.subtitlesResults != nil {
                var tmp : [Any] = []
                for k in self.subtitlesResults! {
                    tmp.append(k.toMap())
                }
                map["SubtitlesResults"] = tmp
            }
            if self.videoOcrResults != nil {
                var tmp : [Any] = []
                for k in self.videoOcrResults! {
                    tmp.append(k.toMap())
                }
                map["VideoOcrResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CastResults"] as? [Any?] {
                var tmp : [RecognizeVideoCastCrewListResponseBody.Data.CastResults] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeVideoCastCrewListResponseBody.Data.CastResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.castResults = tmp
            }
            if let value = dict["OcrResults"] as? [Any?] {
                var tmp : [RecognizeVideoCastCrewListResponseBody.Data.OcrResults] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeVideoCastCrewListResponseBody.Data.OcrResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ocrResults = tmp
            }
            if let value = dict["OcrResultsUrl"] as? String {
                self.ocrResultsUrl = value
            }
            if let value = dict["OcrVideoResultsUrl"] as? String {
                self.ocrVideoResultsUrl = value
            }
            if let value = dict["SubtitlesResults"] as? [Any?] {
                var tmp : [RecognizeVideoCastCrewListResponseBody.Data.SubtitlesResults] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeVideoCastCrewListResponseBody.Data.SubtitlesResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subtitlesResults = tmp
            }
            if let value = dict["VideoOcrResults"] as? [Any?] {
                var tmp : [RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults] = []
                for v in value {
                    if v != nil {
                        var model = RecognizeVideoCastCrewListResponseBody.Data.VideoOcrResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.videoOcrResults = tmp
            }
        }
    }
    public var data: RecognizeVideoCastCrewListResponseBody.Data?

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
            var model = RecognizeVideoCastCrewListResponseBody.Data()
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

public class RecognizeVideoCastCrewListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeVideoCastCrewListResponseBody?

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
            var model = RecognizeVideoCastCrewListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SplitVideoPartsRequest : Tea.TeaModel {
    public var maxTime: Int32?

    public var minTime: Int32?

    public var template: String?

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
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.videoUrl != nil {
            map["VideoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxTime"] as? Int32 {
            self.maxTime = value
        }
        if let value = dict["MinTime"] as? Int32 {
            self.minTime = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["VideoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class SplitVideoPartsAdvanceRequest : Tea.TeaModel {
    public var maxTime: Int32?

    public var minTime: Int32?

    public var template: String?

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
        if self.maxTime != nil {
            map["MaxTime"] = self.maxTime!
        }
        if self.minTime != nil {
            map["MinTime"] = self.minTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.videoUrlObject != nil {
            map["VideoUrl"] = self.videoUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxTime"] as? Int32 {
            self.maxTime = value
        }
        if let value = dict["MinTime"] as? Int32 {
            self.minTime = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
        if let value = dict["VideoUrl"] as? InputStream {
            self.videoUrlObject = value
        }
    }
}

public class SplitVideoPartsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var beginTime: Double?

            public var endTime: Double?

            public var index: Int64?

            public override init() {
                super.init()
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
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTime"] as? Double {
                    self.beginTime = value
                }
                if let value = dict["EndTime"] as? Double {
                    self.endTime = value
                }
                if let value = dict["Index"] as? Int64 {
                    self.index = value
                }
            }
        }
        public class SplitVideoPartResults : Tea.TeaModel {
            public var beginTime: Double?

            public var by: String?

            public var endTime: Double?

            public var theme: String?

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
                if self.beginTime != nil {
                    map["BeginTime"] = self.beginTime!
                }
                if self.by != nil {
                    map["By"] = self.by!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.theme != nil {
                    map["Theme"] = self.theme!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginTime"] as? Double {
                    self.beginTime = value
                }
                if let value = dict["By"] as? String {
                    self.by = value
                }
                if let value = dict["EndTime"] as? Double {
                    self.endTime = value
                }
                if let value = dict["Theme"] as? String {
                    self.theme = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var elements: [SplitVideoPartsResponseBody.Data.Elements]?

        public var splitVideoPartResults: [SplitVideoPartsResponseBody.Data.SplitVideoPartResults]?

        public override init() {
            super.init()
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
            if self.splitVideoPartResults != nil {
                var tmp : [Any] = []
                for k in self.splitVideoPartResults! {
                    tmp.append(k.toMap())
                }
                map["SplitVideoPartResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [SplitVideoPartsResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = SplitVideoPartsResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["SplitVideoPartResults"] as? [Any?] {
                var tmp : [SplitVideoPartsResponseBody.Data.SplitVideoPartResults] = []
                for v in value {
                    if v != nil {
                        var model = SplitVideoPartsResponseBody.Data.SplitVideoPartResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.splitVideoPartResults = tmp
            }
        }
    }
    public var data: SplitVideoPartsResponseBody.Data?

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
            var model = SplitVideoPartsResponseBody.Data()
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

public class SplitVideoPartsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SplitVideoPartsResponseBody?

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
            var model = SplitVideoPartsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnderstandVideoContentRequest : Tea.TeaModel {
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

public class UnderstandVideoContentAdvanceRequest : Tea.TeaModel {
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
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
    }
}

public class UnderstandVideoContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VideoInfo : Tea.TeaModel {
            public var duration: Int64?

            public var fps: Double?

            public var height: Int64?

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
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.fps != nil {
                    map["Fps"] = self.fps!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Int64 {
                    self.duration = value
                }
                if let value = dict["Fps"] as? Double {
                    self.fps = value
                }
                if let value = dict["Height"] as? Int64 {
                    self.height = value
                }
                if let value = dict["Width"] as? Int64 {
                    self.width = value
                }
            }
        }
        public var tagInfo: [String: Any]?

        public var videoInfo: UnderstandVideoContentResponseBody.Data.VideoInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.videoInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagInfo != nil {
                map["TagInfo"] = self.tagInfo!
            }
            if self.videoInfo != nil {
                map["VideoInfo"] = self.videoInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagInfo"] as? [String: Any] {
                self.tagInfo = value
            }
            if let value = dict["VideoInfo"] as? [String: Any?] {
                var model = UnderstandVideoContentResponseBody.Data.VideoInfo()
                model.fromMap(value)
                self.videoInfo = model
            }
        }
    }
    public var data: UnderstandVideoContentResponseBody.Data?

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
            var model = UnderstandVideoContentResponseBody.Data()
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

public class UnderstandVideoContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnderstandVideoContentResponseBody?

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
            var model = UnderstandVideoContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
