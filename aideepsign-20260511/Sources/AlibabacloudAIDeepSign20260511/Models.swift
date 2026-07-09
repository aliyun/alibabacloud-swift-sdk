import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateImageDetectionTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var credType: String?

    public var detectType: String?

    public var imageUrl: String?

    public var objectKey: String?

    public override init() {
        super.init()
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
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.detectType != nil {
            map["DetectType"] = self.detectType!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["DetectType"] as? String {
            self.detectType = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
    }
}

public class CreateImageDetectionTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateImageDetectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageDetectionTaskResponseBody?

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
            var model = CreateImageDetectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var model: String?

    public var n: Int32?

    public var negativePrompt: String?

    public var prompt: String?

    public var promptExtend: Bool?

    public var seed: Int32?

    public var size: String?

    public var watermark: Bool?

    public override init() {
        super.init()
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
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.n != nil {
            map["N"] = self.n!
        }
        if self.negativePrompt != nil {
            map["NegativePrompt"] = self.negativePrompt!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.promptExtend != nil {
            map["PromptExtend"] = self.promptExtend!
        }
        if self.seed != nil {
            map["Seed"] = self.seed!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["N"] as? Int32 {
            self.n = value
        }
        if let value = dict["NegativePrompt"] as? String {
            self.negativePrompt = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PromptExtend"] as? Bool {
            self.promptExtend = value
        }
        if let value = dict["Seed"] as? Int32 {
            self.seed = value
        }
        if let value = dict["Size"] as? String {
            self.size = value
        }
        if let value = dict["Watermark"] as? Bool {
            self.watermark = value
        }
    }
}

public class CreateImageTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateImageTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageTaskResponseBody?

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
            var model = CreateImageTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSensitiveScanTaskRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageUrl: String?

    public var objectKey: String?

    public override init() {
        super.init()
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
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
    }
}

public class CreateSensitiveScanTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateSensitiveScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSensitiveScanTaskResponseBody?

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
            var model = CreateSensitiveScanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectAigcImageRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var objectKey: String?

    public override init() {
        super.init()
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
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
    }
}

public class DetectAigcImageResponseBody : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var confidence: String?

        public var label: String?

        public override init() {
            super.init()
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
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Confidence"] as? String {
                self.confidence = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
        }
    }
    public var body: [DetectAigcImageResponseBody.Body]?

    public var code: String?

    public var httpStatusCode: Int32?

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
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["Body"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Body"] as? [Any?] {
            var tmp : [DetectAigcImageResponseBody.Body] = []
            for v in value {
                if v != nil {
                    var model = DetectAigcImageResponseBody.Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.body = tmp
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DetectAigcImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectAigcImageResponseBody?

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
            var model = DetectAigcImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectImageBasicInfoRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var objectKey: String?

    public override init() {
        super.init()
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
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
    }
}

public class DetectImageBasicInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var dpi: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var name: String?

    public var requestId: String?

    public var size: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dpi != nil {
            map["Dpi"] = self.dpi!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Dpi"] as? String {
            self.dpi = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Size"] as? String {
            self.size = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DetectImageBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageBasicInfoResponseBody?

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
            var model = DetectImageBasicInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageDetectionTaskResultRequest : Tea.TeaModel {
    public var clientToken: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetImageDetectionTaskResultResponseBody : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
        public var confidence: Double?

        public var label: String?

        public override init() {
            super.init()
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
            if self.label != nil {
                map["Label"] = self.label!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Confidence"] as? Double {
                self.confidence = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
        }
    }
    public class Tamper : Tea.TeaModel {
        public class BaseResults : Tea.TeaModel {
            public class Aigc : Tea.TeaModel {
                public var desc: String?

                public var score: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Desc"] as? String {
                        self.desc = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class Aips : Tea.TeaModel {
                public var desc: String?

                public var score: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Desc"] as? String {
                        self.desc = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public class PsLoc : Tea.TeaModel {
                public class Items : Tea.TeaModel {
                    public var bbox: [Double]?

                    public var score: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.bbox != nil {
                            map["Bbox"] = self.bbox!
                        }
                        if self.score != nil {
                            map["Score"] = self.score!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Bbox"] as? [Double] {
                            self.bbox = value
                        }
                        if let value = dict["Score"] as? Double {
                            self.score = value
                        }
                    }
                }
                public var desc: String?

                public var items: [GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.PsLoc.Items]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.items != nil {
                        var tmp : [Any] = []
                        for k in self.items! {
                            tmp.append(k.toMap())
                        }
                        map["Items"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Desc"] as? String {
                        self.desc = value
                    }
                    if let value = dict["Items"] as? [Any?] {
                        var tmp : [GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.PsLoc.Items] = []
                        for v in value {
                            if v != nil {
                                var model = GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.PsLoc.Items()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.items = tmp
                    }
                }
            }
            public var aigc: GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.Aigc?

            public var aips: GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.Aips?

            public var imgType: String?

            public var psLoc: GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.PsLoc?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aigc?.validate()
                try self.aips?.validate()
                try self.psLoc?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aigc != nil {
                    map["Aigc"] = self.aigc?.toMap()
                }
                if self.aips != nil {
                    map["Aips"] = self.aips?.toMap()
                }
                if self.imgType != nil {
                    map["ImgType"] = self.imgType!
                }
                if self.psLoc != nil {
                    map["PsLoc"] = self.psLoc?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Aigc"] as? [String: Any?] {
                    var model = GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.Aigc()
                    model.fromMap(value)
                    self.aigc = model
                }
                if let value = dict["Aips"] as? [String: Any?] {
                    var model = GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.Aips()
                    model.fromMap(value)
                    self.aips = model
                }
                if let value = dict["ImgType"] as? String {
                    self.imgType = value
                }
                if let value = dict["PsLoc"] as? [String: Any?] {
                    var model = GetImageDetectionTaskResultResponseBody.Tamper.BaseResults.PsLoc()
                    model.fromMap(value)
                    self.psLoc = model
                }
            }
        }
        public var baseResults: GetImageDetectionTaskResultResponseBody.Tamper.BaseResults?

        public var llmResult: String?

        public var riskCode: String?

        public var riskReasons: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.baseResults?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baseResults != nil {
                map["BaseResults"] = self.baseResults?.toMap()
            }
            if self.llmResult != nil {
                map["LlmResult"] = self.llmResult!
            }
            if self.riskCode != nil {
                map["RiskCode"] = self.riskCode!
            }
            if self.riskReasons != nil {
                map["RiskReasons"] = self.riskReasons!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BaseResults"] as? [String: Any?] {
                var model = GetImageDetectionTaskResultResponseBody.Tamper.BaseResults()
                model.fromMap(value)
                self.baseResults = model
            }
            if let value = dict["LlmResult"] as? String {
                self.llmResult = value
            }
            if let value = dict["RiskCode"] as? String {
                self.riskCode = value
            }
            if let value = dict["RiskReasons"] as? [String] {
                self.riskReasons = value
            }
        }
    }
    public var code: String?

    public var detectMode: String?

    public var httpStatusCode: Int32?

    public var labels: [GetImageDetectionTaskResultResponseBody.Labels]?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

    public var tamper: GetImageDetectionTaskResultResponseBody.Tamper?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tamper?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.detectMode != nil {
            map["DetectMode"] = self.detectMode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.tamper != nil {
            map["Tamper"] = self.tamper?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DetectMode"] as? String {
            self.detectMode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [GetImageDetectionTaskResultResponseBody.Labels] = []
            for v in value {
                if v != nil {
                    var model = GetImageDetectionTaskResultResponseBody.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
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
        if let value = dict["Tamper"] as? [String: Any?] {
            var model = GetImageDetectionTaskResultResponseBody.Tamper()
            model.fromMap(value)
            self.tamper = model
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetImageDetectionTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageDetectionTaskResultResponseBody?

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
            var model = GetImageDetectionTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageTaskResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetImageTaskResultResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var objectKey: String?

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
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ObjectKey"] as? String {
                self.objectKey = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var errorMessage: String?

    public var httpStatusCode: Int32?

    public var images: [GetImageTaskResultResponseBody.Images]?

    public var message: String?

    public var requestId: String?

    public var status: String?

    public var success: Bool?

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
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Images"] as? [Any?] {
            var tmp : [GetImageTaskResultResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = GetImageTaskResultResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
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
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetImageTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageTaskResultResponseBody?

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
            var model = GetImageTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSensitiveScanResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetSensitiveScanResultResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class OssObjectDetail : Tea.TeaModel {
            public class RuleList : Tea.TeaModel {
                public var categoryName: String?

                public var count: Int32?

                public var riskLevelName: String?

                public var ruleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryName != nil {
                        map["CategoryName"] = self.categoryName!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.riskLevelName != nil {
                        map["RiskLevelName"] = self.riskLevelName!
                    }
                    if self.ruleName != nil {
                        map["RuleName"] = self.ruleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryName"] as? String {
                        self.categoryName = value
                    }
                    if let value = dict["Count"] as? Int32 {
                        self.count = value
                    }
                    if let value = dict["RiskLevelName"] as? String {
                        self.riskLevelName = value
                    }
                    if let value = dict["RuleName"] as? String {
                        self.ruleName = value
                    }
                }
            }
            public var bucketName: String?

            public var categoryName: String?

            public var name: String?

            public var riskLevelName: String?

            public var ruleList: [GetSensitiveScanResultResponseBody.Result.OssObjectDetail.RuleList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.riskLevelName != nil {
                    map["RiskLevelName"] = self.riskLevelName!
                }
                if self.ruleList != nil {
                    var tmp : [Any] = []
                    for k in self.ruleList! {
                        tmp.append(k.toMap())
                    }
                    map["RuleList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RiskLevelName"] as? String {
                    self.riskLevelName = value
                }
                if let value = dict["RuleList"] as? [Any?] {
                    var tmp : [GetSensitiveScanResultResponseBody.Result.OssObjectDetail.RuleList] = []
                    for v in value {
                        if v != nil {
                            var model = GetSensitiveScanResultResponseBody.Result.OssObjectDetail.RuleList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ruleList = tmp
                }
            }
        }
        public var ossObjectDetail: GetSensitiveScanResultResponseBody.Result.OssObjectDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ossObjectDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossObjectDetail != nil {
                map["OssObjectDetail"] = self.ossObjectDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OssObjectDetail"] as? [String: Any?] {
                var model = GetSensitiveScanResultResponseBody.Result.OssObjectDetail()
                model.fromMap(value)
                self.ossObjectDetail = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: GetSensitiveScanResultResponseBody.Result?

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
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetSensitiveScanResultResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSensitiveScanResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSensitiveScanResultResponseBody?

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
            var model = GetSensitiveScanResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SignUserImageRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageUrl: String?

    public var objectKey: String?

    public override init() {
        super.init()
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
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
    }
}

public class SignUserImageResponseBody : Tea.TeaModel {
    public var algorithm: String?

    public var certificateSubject: String?

    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var objectKey: String?

    public var requestId: String?

    public var signTime: String?

    public var signedImageUrl: String?

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
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.certificateSubject != nil {
            map["CertificateSubject"] = self.certificateSubject!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signTime != nil {
            map["SignTime"] = self.signTime!
        }
        if self.signedImageUrl != nil {
            map["SignedImageUrl"] = self.signedImageUrl!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CertificateSubject"] as? String {
            self.certificateSubject = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignTime"] as? String {
            self.signTime = value
        }
        if let value = dict["SignedImageUrl"] as? String {
            self.signedImageUrl = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SignUserImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SignUserImageResponseBody?

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
            var model = SignUserImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyImageSignatureRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var objectKey: String?

    public override init() {
        super.init()
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
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
    }
}

public class VerifyImageSignatureResponseBody : Tea.TeaModel {
    public class Issuer : Tea.TeaModel {
        public var commonName: String?

        public var organization: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
        }
    }
    public class Manifest : Tea.TeaModel {
        public class Assertions : Tea.TeaModel {
            public var data: String?

            public var label: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? String {
                    self.data = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
            }
        }
        public class SignatureInfo : Tea.TeaModel {
            public var alg: String?

            public var issuer: String?

            public var time: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alg != nil {
                    map["Alg"] = self.alg!
                }
                if self.issuer != nil {
                    map["Issuer"] = self.issuer!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Alg"] as? String {
                    self.alg = value
                }
                if let value = dict["Issuer"] as? String {
                    self.issuer = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var assertions: [VerifyImageSignatureResponseBody.Manifest.Assertions]?

        public var signatureInfo: VerifyImageSignatureResponseBody.Manifest.SignatureInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.signatureInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assertions != nil {
                var tmp : [Any] = []
                for k in self.assertions! {
                    tmp.append(k.toMap())
                }
                map["Assertions"] = tmp
            }
            if self.signatureInfo != nil {
                map["SignatureInfo"] = self.signatureInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Assertions"] as? [Any?] {
                var tmp : [VerifyImageSignatureResponseBody.Manifest.Assertions] = []
                for v in value {
                    if v != nil {
                        var model = VerifyImageSignatureResponseBody.Manifest.Assertions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.assertions = tmp
            }
            if let value = dict["SignatureInfo"] as? [String: Any?] {
                var model = VerifyImageSignatureResponseBody.Manifest.SignatureInfo()
                model.fromMap(value)
                self.signatureInfo = model
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var issuer: VerifyImageSignatureResponseBody.Issuer?

    public var issuerTrusted: Bool?

    public var manifest: VerifyImageSignatureResponseBody.Manifest?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var verificationState: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.issuer?.validate()
        try self.manifest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.issuer != nil {
            map["Issuer"] = self.issuer?.toMap()
        }
        if self.issuerTrusted != nil {
            map["IssuerTrusted"] = self.issuerTrusted!
        }
        if self.manifest != nil {
            map["Manifest"] = self.manifest?.toMap()
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
        if self.verificationState != nil {
            map["VerificationState"] = self.verificationState!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Issuer"] as? [String: Any?] {
            var model = VerifyImageSignatureResponseBody.Issuer()
            model.fromMap(value)
            self.issuer = model
        }
        if let value = dict["IssuerTrusted"] as? Bool {
            self.issuerTrusted = value
        }
        if let value = dict["Manifest"] as? [String: Any?] {
            var model = VerifyImageSignatureResponseBody.Manifest()
            model.fromMap(value)
            self.manifest = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["VerificationState"] as? String {
            self.verificationState = value
        }
    }
}

public class VerifyImageSignatureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyImageSignatureResponseBody?

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
            var model = VerifyImageSignatureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
