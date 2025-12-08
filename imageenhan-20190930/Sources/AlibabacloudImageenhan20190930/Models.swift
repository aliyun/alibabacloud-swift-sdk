import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssessCompositionRequest : Tea.TeaModel {
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
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class AssessCompositionAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class AssessCompositionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
        }
    }
    public var data: AssessCompositionResponseBody.Data?

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
            var model = AssessCompositionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssessCompositionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssessCompositionResponseBody?

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
            var model = AssessCompositionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssessExposureRequest : Tea.TeaModel {
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
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class AssessExposureAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class AssessExposureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var exposure: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exposure != nil {
                map["Exposure"] = self.exposure!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Exposure"] as? Double {
                self.exposure = value
            }
        }
    }
    public var data: AssessExposureResponseBody.Data?

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
            var model = AssessExposureResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssessExposureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssessExposureResponseBody?

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
            var model = AssessExposureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssessSharpnessRequest : Tea.TeaModel {
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
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class AssessSharpnessAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class AssessSharpnessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sharpness: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sharpness != nil {
                map["Sharpness"] = self.sharpness!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Sharpness"] as? Double {
                self.sharpness = value
            }
        }
    }
    public var data: AssessSharpnessResponseBody.Data?

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
            var model = AssessSharpnessResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssessSharpnessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssessSharpnessResponseBody?

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
            var model = AssessSharpnessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeImageSizeRequest : Tea.TeaModel {
    public var height: Int32?

    public var url: String?

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
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class ChangeImageSizeAdvanceRequest : Tea.TeaModel {
    public var height: Int32?

    public var urlObject: InputStream?

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
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Height"] as? Int32 {
            self.height = value
        }
        if let value = dict["Url"] as? InputStream {
            self.urlObject = value
        }
        if let value = dict["Width"] as? Int32 {
            self.width = value
        }
    }
}

public class ChangeImageSizeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RetainLocation : Tea.TeaModel {
            public var height: Int32?

            public var width: Int32?

            public var x: Int32?

            public var y: Int32?

            public override init() {
                super.init()
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
                if self.width != nil {
                    map["Width"] = self.width!
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
                if let value = dict["Height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["Width"] as? Int32 {
                    self.width = value
                }
                if let value = dict["X"] as? Int32 {
                    self.x = value
                }
                if let value = dict["Y"] as? Int32 {
                    self.y = value
                }
            }
        }
        public var retainLocation: ChangeImageSizeResponseBody.Data.RetainLocation?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.retainLocation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.retainLocation != nil {
                map["RetainLocation"] = self.retainLocation?.toMap()
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RetainLocation"] as? [String: Any?] {
                var model = ChangeImageSizeResponseBody.Data.RetainLocation()
                model.fromMap(value)
                self.retainLocation = model
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var data: ChangeImageSizeResponseBody.Data?

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
            var model = ChangeImageSizeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChangeImageSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeImageSizeResponseBody?

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
            var model = ChangeImageSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ColorizeImageRequest : Tea.TeaModel {
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
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class ColorizeImageAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class ColorizeImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: ColorizeImageResponseBody.Data?

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
            var model = ColorizeImageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ColorizeImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ColorizeImageResponseBody?

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
            var model = ColorizeImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnhanceImageColorRequest : Tea.TeaModel {
    public var imageURL: String?

    public var mode: String?

    public var outputFormat: String?

    public override init() {
        super.init()
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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
    }
}

public class EnhanceImageColorAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var mode: String?

    public var outputFormat: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
    }
}

public class EnhanceImageColorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: EnhanceImageColorResponseBody.Data?

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
            var model = EnhanceImageColorResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnhanceImageColorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnhanceImageColorResponseBody?

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
            var model = EnhanceImageColorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ErasePersonRequest : Tea.TeaModel {
    public var imageURL: String?

    public var userMask: String?

    public override init() {
        super.init()
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
        if self.userMask != nil {
            map["UserMask"] = self.userMask!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["UserMask"] as? String {
            self.userMask = value
        }
    }
}

public class ErasePersonAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var userMaskObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.userMaskObject != nil {
            map["UserMask"] = self.userMaskObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["UserMask"] as? InputStream {
            self.userMaskObject = value
        }
    }
}

public class ErasePersonResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageUrl: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageUrl"] as? String {
                self.imageUrl = value
            }
        }
    }
    public var data: ErasePersonResponseBody.Data?

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
            var model = ErasePersonResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ErasePersonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ErasePersonResponseBody?

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
            var model = ErasePersonResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExtendImageStyleRequest : Tea.TeaModel {
    public var majorUrl: String?

    public var styleUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.majorUrl != nil {
            map["MajorUrl"] = self.majorUrl!
        }
        if self.styleUrl != nil {
            map["StyleUrl"] = self.styleUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MajorUrl"] as? String {
            self.majorUrl = value
        }
        if let value = dict["StyleUrl"] as? String {
            self.styleUrl = value
        }
    }
}

public class ExtendImageStyleAdvanceRequest : Tea.TeaModel {
    public var majorUrlObject: InputStream?

    public var styleUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.majorUrlObject != nil {
            map["MajorUrl"] = self.majorUrlObject!
        }
        if self.styleUrlObject != nil {
            map["StyleUrl"] = self.styleUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MajorUrl"] as? InputStream {
            self.majorUrlObject = value
        }
        if let value = dict["StyleUrl"] as? InputStream {
            self.styleUrlObject = value
        }
    }
}

public class ExtendImageStyleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var majorUrl: String?

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
            if self.majorUrl != nil {
                map["MajorUrl"] = self.majorUrl!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MajorUrl"] as? String {
                self.majorUrl = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var data: ExtendImageStyleResponseBody.Data?

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
            var model = ExtendImageStyleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExtendImageStyleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExtendImageStyleResponseBody?

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
            var model = ExtendImageStyleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateCartoonizedImageRequest : Tea.TeaModel {
    public var imageType: String?

    public var imageUrl: String?

    public var index: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Index"] as? String {
            self.index = value
        }
    }
}

public class GenerateCartoonizedImageAdvanceRequest : Tea.TeaModel {
    public var imageType: String?

    public var imageUrlObject: InputStream?

    public var index: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.imageUrlObject != nil {
            map["ImageUrl"] = self.imageUrlObject!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["ImageUrl"] as? InputStream {
            self.imageUrlObject = value
        }
        if let value = dict["Index"] as? String {
            self.index = value
        }
    }
}

public class GenerateCartoonizedImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resultUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultUrl"] as? String {
                self.resultUrl = value
            }
        }
    }
    public var data: GenerateCartoonizedImageResponseBody.Data?

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
            var model = GenerateCartoonizedImageResponseBody.Data()
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

public class GenerateCartoonizedImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCartoonizedImageResponseBody?

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
            var model = GenerateCartoonizedImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateSuperResolutionImageRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var outputFormat: String?

    public var outputQuality: Int32?

    public var scale: Int32?

    public var userData: String?

    public override init() {
        super.init()
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
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.outputQuality != nil {
            map["OutputQuality"] = self.outputQuality!
        }
        if self.scale != nil {
            map["Scale"] = self.scale!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["OutputQuality"] as? Int32 {
            self.outputQuality = value
        }
        if let value = dict["Scale"] as? Int32 {
            self.scale = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GenerateSuperResolutionImageAdvanceRequest : Tea.TeaModel {
    public var imageUrlObject: InputStream?

    public var outputFormat: String?

    public var outputQuality: Int32?

    public var scale: Int32?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUrlObject != nil {
            map["ImageUrl"] = self.imageUrlObject!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.outputQuality != nil {
            map["OutputQuality"] = self.outputQuality!
        }
        if self.scale != nil {
            map["Scale"] = self.scale!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? InputStream {
            self.imageUrlObject = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["OutputQuality"] as? Int32 {
            self.outputQuality = value
        }
        if let value = dict["Scale"] as? Int32 {
            self.scale = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GenerateSuperResolutionImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resultUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultUrl"] as? String {
                self.resultUrl = value
            }
        }
    }
    public var data: GenerateSuperResolutionImageResponseBody.Data?

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
            var model = GenerateSuperResolutionImageResponseBody.Data()
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

public class GenerateSuperResolutionImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateSuperResolutionImageResponseBody?

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
            var model = GenerateSuperResolutionImageResponseBody()
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

public class ImageBlindCharacterWatermarkRequest : Tea.TeaModel {
    public var functionType: String?

    public var originImageURL: String?

    public var outputFileType: String?

    public var qualityFactor: Int32?

    public var text: String?

    public var watermarkImageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.originImageURL != nil {
            map["OriginImageURL"] = self.originImageURL!
        }
        if self.outputFileType != nil {
            map["OutputFileType"] = self.outputFileType!
        }
        if self.qualityFactor != nil {
            map["QualityFactor"] = self.qualityFactor!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.watermarkImageURL != nil {
            map["WatermarkImageURL"] = self.watermarkImageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["OriginImageURL"] as? String {
            self.originImageURL = value
        }
        if let value = dict["OutputFileType"] as? String {
            self.outputFileType = value
        }
        if let value = dict["QualityFactor"] as? Int32 {
            self.qualityFactor = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["WatermarkImageURL"] as? String {
            self.watermarkImageURL = value
        }
    }
}

public class ImageBlindCharacterWatermarkAdvanceRequest : Tea.TeaModel {
    public var functionType: String?

    public var originImageURLObject: InputStream?

    public var outputFileType: String?

    public var qualityFactor: Int32?

    public var text: String?

    public var watermarkImageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.originImageURLObject != nil {
            map["OriginImageURL"] = self.originImageURLObject!
        }
        if self.outputFileType != nil {
            map["OutputFileType"] = self.outputFileType!
        }
        if self.qualityFactor != nil {
            map["QualityFactor"] = self.qualityFactor!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.watermarkImageURLObject != nil {
            map["WatermarkImageURL"] = self.watermarkImageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["OriginImageURL"] as? InputStream {
            self.originImageURLObject = value
        }
        if let value = dict["OutputFileType"] as? String {
            self.outputFileType = value
        }
        if let value = dict["QualityFactor"] as? Int32 {
            self.qualityFactor = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["WatermarkImageURL"] as? InputStream {
            self.watermarkImageURLObject = value
        }
    }
}

public class ImageBlindCharacterWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var textImageURL: String?

        public var watermarkImageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.textImageURL != nil {
                map["TextImageURL"] = self.textImageURL!
            }
            if self.watermarkImageURL != nil {
                map["WatermarkImageURL"] = self.watermarkImageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TextImageURL"] as? String {
                self.textImageURL = value
            }
            if let value = dict["WatermarkImageURL"] as? String {
                self.watermarkImageURL = value
            }
        }
    }
    public var data: ImageBlindCharacterWatermarkResponseBody.Data?

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
            var model = ImageBlindCharacterWatermarkResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImageBlindCharacterWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageBlindCharacterWatermarkResponseBody?

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
            var model = ImageBlindCharacterWatermarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImageBlindPicWatermarkRequest : Tea.TeaModel {
    public var functionType: String?

    public var logoURL: String?

    public var originImageURL: String?

    public var outputFileType: String?

    public var qualityFactor: Int32?

    public var watermarkImageURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.logoURL != nil {
            map["LogoURL"] = self.logoURL!
        }
        if self.originImageURL != nil {
            map["OriginImageURL"] = self.originImageURL!
        }
        if self.outputFileType != nil {
            map["OutputFileType"] = self.outputFileType!
        }
        if self.qualityFactor != nil {
            map["QualityFactor"] = self.qualityFactor!
        }
        if self.watermarkImageURL != nil {
            map["WatermarkImageURL"] = self.watermarkImageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["LogoURL"] as? String {
            self.logoURL = value
        }
        if let value = dict["OriginImageURL"] as? String {
            self.originImageURL = value
        }
        if let value = dict["OutputFileType"] as? String {
            self.outputFileType = value
        }
        if let value = dict["QualityFactor"] as? Int32 {
            self.qualityFactor = value
        }
        if let value = dict["WatermarkImageURL"] as? String {
            self.watermarkImageURL = value
        }
    }
}

public class ImageBlindPicWatermarkAdvanceRequest : Tea.TeaModel {
    public var functionType: String?

    public var logoURLObject: InputStream?

    public var originImageURLObject: InputStream?

    public var outputFileType: String?

    public var qualityFactor: Int32?

    public var watermarkImageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.functionType != nil {
            map["FunctionType"] = self.functionType!
        }
        if self.logoURLObject != nil {
            map["LogoURL"] = self.logoURLObject!
        }
        if self.originImageURLObject != nil {
            map["OriginImageURL"] = self.originImageURLObject!
        }
        if self.outputFileType != nil {
            map["OutputFileType"] = self.outputFileType!
        }
        if self.qualityFactor != nil {
            map["QualityFactor"] = self.qualityFactor!
        }
        if self.watermarkImageURLObject != nil {
            map["WatermarkImageURL"] = self.watermarkImageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FunctionType"] as? String {
            self.functionType = value
        }
        if let value = dict["LogoURL"] as? InputStream {
            self.logoURLObject = value
        }
        if let value = dict["OriginImageURL"] as? InputStream {
            self.originImageURLObject = value
        }
        if let value = dict["OutputFileType"] as? String {
            self.outputFileType = value
        }
        if let value = dict["QualityFactor"] as? Int32 {
            self.qualityFactor = value
        }
        if let value = dict["WatermarkImageURL"] as? InputStream {
            self.watermarkImageURLObject = value
        }
    }
}

public class ImageBlindPicWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var logoURL: String?

        public var watermarkImageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logoURL != nil {
                map["LogoURL"] = self.logoURL!
            }
            if self.watermarkImageURL != nil {
                map["WatermarkImageURL"] = self.watermarkImageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogoURL"] as? String {
                self.logoURL = value
            }
            if let value = dict["WatermarkImageURL"] as? String {
                self.watermarkImageURL = value
            }
        }
    }
    public var data: ImageBlindPicWatermarkResponseBody.Data?

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
            var model = ImageBlindPicWatermarkResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImageBlindPicWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImageBlindPicWatermarkResponseBody?

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
            var model = ImageBlindPicWatermarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImitatePhotoStyleRequest : Tea.TeaModel {
    public var imageURL: String?

    public var styleUrl: String?

    public override init() {
        super.init()
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
        if self.styleUrl != nil {
            map["StyleUrl"] = self.styleUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["StyleUrl"] as? String {
            self.styleUrl = value
        }
    }
}

public class ImitatePhotoStyleAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var styleUrlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.styleUrlObject != nil {
            map["StyleUrl"] = self.styleUrlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["StyleUrl"] as? InputStream {
            self.styleUrlObject = value
        }
    }
}

public class ImitatePhotoStyleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: ImitatePhotoStyleResponseBody.Data?

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
            var model = ImitatePhotoStyleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ImitatePhotoStyleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImitatePhotoStyleResponseBody?

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
            var model = ImitatePhotoStyleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IntelligentCompositionRequest : Tea.TeaModel {
    public var imageURL: String?

    public var numBoxes: Int32?

    public override init() {
        super.init()
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
        if self.numBoxes != nil {
            map["NumBoxes"] = self.numBoxes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["NumBoxes"] as? Int32 {
            self.numBoxes = value
        }
    }
}

public class IntelligentCompositionAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public var numBoxes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        if self.numBoxes != nil {
            map["NumBoxes"] = self.numBoxes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["NumBoxes"] as? Int32 {
            self.numBoxes = value
        }
    }
}

public class IntelligentCompositionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var maxX: Int32?

            public var maxY: Int32?

            public var minX: Int32?

            public var minY: Int32?

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
                if self.maxX != nil {
                    map["MaxX"] = self.maxX!
                }
                if self.maxY != nil {
                    map["MaxY"] = self.maxY!
                }
                if self.minX != nil {
                    map["MinX"] = self.minX!
                }
                if self.minY != nil {
                    map["MinY"] = self.minY!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MaxX"] as? Int32 {
                    self.maxX = value
                }
                if let value = dict["MaxY"] as? Int32 {
                    self.maxY = value
                }
                if let value = dict["MinX"] as? Int32 {
                    self.minX = value
                }
                if let value = dict["MinY"] as? Int32 {
                    self.minY = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
            }
        }
        public var elements: [IntelligentCompositionResponseBody.Data.Elements]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [IntelligentCompositionResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = IntelligentCompositionResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
        }
    }
    public var data: IntelligentCompositionResponseBody.Data?

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
            var model = IntelligentCompositionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class IntelligentCompositionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IntelligentCompositionResponseBody?

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
            var model = IntelligentCompositionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MakeSuperResolutionImageRequest : Tea.TeaModel {
    public var mode: String?

    public var outputFormat: String?

    public var outputQuality: Int64?

    public var upscaleFactor: Int64?

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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.outputQuality != nil {
            map["OutputQuality"] = self.outputQuality!
        }
        if self.upscaleFactor != nil {
            map["UpscaleFactor"] = self.upscaleFactor!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["OutputQuality"] as? Int64 {
            self.outputQuality = value
        }
        if let value = dict["UpscaleFactor"] as? Int64 {
            self.upscaleFactor = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class MakeSuperResolutionImageAdvanceRequest : Tea.TeaModel {
    public var mode: String?

    public var outputFormat: String?

    public var outputQuality: Int64?

    public var upscaleFactor: Int64?

    public var urlObject: InputStream?

    public override init() {
        super.init()
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
        if self.outputFormat != nil {
            map["OutputFormat"] = self.outputFormat!
        }
        if self.outputQuality != nil {
            map["OutputQuality"] = self.outputQuality!
        }
        if self.upscaleFactor != nil {
            map["UpscaleFactor"] = self.upscaleFactor!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OutputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["OutputQuality"] as? Int64 {
            self.outputQuality = value
        }
        if let value = dict["UpscaleFactor"] as? Int64 {
            self.upscaleFactor = value
        }
        if let value = dict["Url"] as? InputStream {
            self.urlObject = value
        }
    }
}

public class MakeSuperResolutionImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var data: MakeSuperResolutionImageResponseBody.Data?

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
            var model = MakeSuperResolutionImageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MakeSuperResolutionImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MakeSuperResolutionImageResponseBody?

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
            var model = MakeSuperResolutionImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecolorHDImageRequest : Tea.TeaModel {
    public class ColorTemplate : Tea.TeaModel {
        public var color: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Color"] as? String {
                self.color = value
            }
        }
    }
    public var colorCount: Int32?

    public var colorTemplate: [RecolorHDImageRequest.ColorTemplate]?

    public var degree: String?

    public var mode: String?

    public var refUrl: String?

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
        if self.colorCount != nil {
            map["ColorCount"] = self.colorCount!
        }
        if self.colorTemplate != nil {
            var tmp : [Any] = []
            for k in self.colorTemplate! {
                tmp.append(k.toMap())
            }
            map["ColorTemplate"] = tmp
        }
        if self.degree != nil {
            map["Degree"] = self.degree!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.refUrl != nil {
            map["RefUrl"] = self.refUrl!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorCount"] as? Int32 {
            self.colorCount = value
        }
        if let value = dict["ColorTemplate"] as? [Any?] {
            var tmp : [RecolorHDImageRequest.ColorTemplate] = []
            for v in value {
                if v != nil {
                    var model = RecolorHDImageRequest.ColorTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.colorTemplate = tmp
        }
        if let value = dict["Degree"] as? String {
            self.degree = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RefUrl"] as? String {
            self.refUrl = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class RecolorHDImageAdvanceRequest : Tea.TeaModel {
    public class ColorTemplate : Tea.TeaModel {
        public var color: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Color"] as? String {
                self.color = value
            }
        }
    }
    public var colorCount: Int32?

    public var colorTemplate: [RecolorHDImageAdvanceRequest.ColorTemplate]?

    public var degree: String?

    public var mode: String?

    public var refUrlObject: InputStream?

    public var urlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.colorCount != nil {
            map["ColorCount"] = self.colorCount!
        }
        if self.colorTemplate != nil {
            var tmp : [Any] = []
            for k in self.colorTemplate! {
                tmp.append(k.toMap())
            }
            map["ColorTemplate"] = tmp
        }
        if self.degree != nil {
            map["Degree"] = self.degree!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.refUrlObject != nil {
            map["RefUrl"] = self.refUrlObject!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorCount"] as? Int32 {
            self.colorCount = value
        }
        if let value = dict["ColorTemplate"] as? [Any?] {
            var tmp : [RecolorHDImageAdvanceRequest.ColorTemplate] = []
            for v in value {
                if v != nil {
                    var model = RecolorHDImageAdvanceRequest.ColorTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.colorTemplate = tmp
        }
        if let value = dict["Degree"] as? String {
            self.degree = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RefUrl"] as? InputStream {
            self.refUrlObject = value
        }
        if let value = dict["Url"] as? InputStream {
            self.urlObject = value
        }
    }
}

public class RecolorHDImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageList != nil {
                map["ImageList"] = self.imageList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageList"] as? [String] {
                self.imageList = value
            }
        }
    }
    public var data: RecolorHDImageResponseBody.Data?

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
            var model = RecolorHDImageResponseBody.Data()
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

public class RecolorHDImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecolorHDImageResponseBody?

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
            var model = RecolorHDImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RecolorImageRequest : Tea.TeaModel {
    public class ColorTemplate : Tea.TeaModel {
        public var color: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Color"] as? String {
                self.color = value
            }
        }
    }
    public var colorCount: Int32?

    public var colorTemplate: [RecolorImageRequest.ColorTemplate]?

    public var mode: String?

    public var refUrl: String?

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
        if self.colorCount != nil {
            map["ColorCount"] = self.colorCount!
        }
        if self.colorTemplate != nil {
            var tmp : [Any] = []
            for k in self.colorTemplate! {
                tmp.append(k.toMap())
            }
            map["ColorTemplate"] = tmp
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.refUrl != nil {
            map["RefUrl"] = self.refUrl!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorCount"] as? Int32 {
            self.colorCount = value
        }
        if let value = dict["ColorTemplate"] as? [Any?] {
            var tmp : [RecolorImageRequest.ColorTemplate] = []
            for v in value {
                if v != nil {
                    var model = RecolorImageRequest.ColorTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.colorTemplate = tmp
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RefUrl"] as? String {
            self.refUrl = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class RecolorImageAdvanceRequest : Tea.TeaModel {
    public class ColorTemplate : Tea.TeaModel {
        public var color: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Color"] as? String {
                self.color = value
            }
        }
    }
    public var colorCount: Int32?

    public var colorTemplate: [RecolorImageAdvanceRequest.ColorTemplate]?

    public var mode: String?

    public var refUrlObject: InputStream?

    public var urlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.colorCount != nil {
            map["ColorCount"] = self.colorCount!
        }
        if self.colorTemplate != nil {
            var tmp : [Any] = []
            for k in self.colorTemplate! {
                tmp.append(k.toMap())
            }
            map["ColorTemplate"] = tmp
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.refUrlObject != nil {
            map["RefUrl"] = self.refUrlObject!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColorCount"] as? Int32 {
            self.colorCount = value
        }
        if let value = dict["ColorTemplate"] as? [Any?] {
            var tmp : [RecolorImageAdvanceRequest.ColorTemplate] = []
            for v in value {
                if v != nil {
                    var model = RecolorImageAdvanceRequest.ColorTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.colorTemplate = tmp
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RefUrl"] as? InputStream {
            self.refUrlObject = value
        }
        if let value = dict["Url"] as? InputStream {
            self.urlObject = value
        }
    }
}

public class RecolorImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageList != nil {
                map["ImageList"] = self.imageList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageList"] as? [String] {
                self.imageList = value
            }
        }
    }
    public var data: RecolorImageResponseBody.Data?

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
            var model = RecolorImageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RecolorImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecolorImageResponseBody?

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
            var model = RecolorImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveImageSubtitlesRequest : Tea.TeaModel {
    public var BH: Double?

    public var BW: Double?

    public var BX: Double?

    public var BY: Double?

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
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
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
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RemoveImageSubtitlesAdvanceRequest : Tea.TeaModel {
    public var BH: Double?

    public var BW: Double?

    public var BX: Double?

    public var BY: Double?

    public var imageURLObject: InputStream?

    public override init() {
        super.init()
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
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
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
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RemoveImageSubtitlesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: RemoveImageSubtitlesResponseBody.Data?

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
            var model = RemoveImageSubtitlesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveImageSubtitlesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveImageSubtitlesResponseBody?

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
            var model = RemoveImageSubtitlesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveImageWatermarkRequest : Tea.TeaModel {
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
        if self.imageURL != nil {
            map["ImageURL"] = self.imageURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
    }
}

public class RemoveImageWatermarkAdvanceRequest : Tea.TeaModel {
    public var imageURLObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLObject != nil {
            map["ImageURL"] = self.imageURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
    }
}

public class RemoveImageWatermarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.imageURL != nil {
                map["ImageURL"] = self.imageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageURL"] as? String {
                self.imageURL = value
            }
        }
    }
    public var data: RemoveImageWatermarkResponseBody.Data?

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
            var model = RemoveImageWatermarkResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveImageWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveImageWatermarkResponseBody?

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
            var model = RemoveImageWatermarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
