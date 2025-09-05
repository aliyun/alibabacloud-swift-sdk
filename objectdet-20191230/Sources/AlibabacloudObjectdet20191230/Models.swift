import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DetectObjectElement : Tea.TeaModel {
    public var height: Int64?

    public var score: Double?

    public var type: String?

    public var width: Int64?

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
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.score != nil {
            map["Score"] = self.score!
        }
        if self.type != nil {
            map["Type"] = self.type!
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
        if let value = dict["Height"] as? Int64 {
            self.height = value
        }
        if let value = dict["Score"] as? Double {
            self.score = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Width"] as? Int64 {
            self.width = value
        }
        if let value = dict["X"] as? Int64 {
            self.x = value
        }
        if let value = dict["Y"] as? Int64 {
            self.y = value
        }
    }
}

public class DetectObjectFrame : Tea.TeaModel {
    public var elements: [DetectObjectElement]?

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
        if self.elements != nil {
            var tmp : [Any] = []
            for k in self.elements! {
                tmp.append(k.toMap())
            }
            map["Elements"] = tmp
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Elements"] as? [Any?] {
            var tmp : [DetectObjectElement] = []
            for v in value {
                if v != nil {
                    var model = DetectObjectElement()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elements = tmp
        }
        if let value = dict["Time"] as? Int64 {
            self.time = value
        }
    }
}

public class DetectIPCObjectRequest : Tea.TeaModel {
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

public class DetectIPCObjectAdvanceRequest : Tea.TeaModel {
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

public class DetectIPCObjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var box: [Int64]?

            public var score: Double?

            public var targetRate: Double?

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
                if self.box != nil {
                    map["Box"] = self.box!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.targetRate != nil {
                    map["TargetRate"] = self.targetRate!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Box"] as? [Int64] {
                    self.box = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["TargetRate"] as? Double {
                    self.targetRate = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var elements: [DetectIPCObjectResponseBody.Data.Elements]?

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
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
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
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectIPCObjectResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectIPCObjectResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
        }
    }
    public var data: DetectIPCObjectResponseBody.Data?

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
            var model = DetectIPCObjectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectIPCObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectIPCObjectResponseBody?

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
            var model = DetectIPCObjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectKitchenAnimalsRequest : Tea.TeaModel {
    public var imageURLA: String?

    public var imageURLB: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLA != nil {
            map["ImageURLA"] = self.imageURLA!
        }
        if self.imageURLB != nil {
            map["ImageURLB"] = self.imageURLB!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURLA"] as? String {
            self.imageURLA = value
        }
        if let value = dict["ImageURLB"] as? String {
            self.imageURLB = value
        }
    }
}

public class DetectKitchenAnimalsAdvanceRequest : Tea.TeaModel {
    public var imageURLAObject: InputStream?

    public var imageURLBObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageURLAObject != nil {
            map["ImageURLA"] = self.imageURLAObject!
        }
        if self.imageURLBObject != nil {
            map["ImageURLB"] = self.imageURLBObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURLA"] as? InputStream {
            self.imageURLAObject = value
        }
        if let value = dict["ImageURLB"] as? InputStream {
            self.imageURLBObject = value
        }
    }
}

public class DetectKitchenAnimalsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Rectangles : Tea.TeaModel {
                public var height: Int64?

                public var left_: Int64?

                public var top: Int64?

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
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Height"] as? Int64 {
                        self.height = value
                    }
                    if let value = dict["Left"] as? Int64 {
                        self.left_ = value
                    }
                    if let value = dict["Top"] as? Int64 {
                        self.top = value
                    }
                    if let value = dict["Width"] as? Int64 {
                        self.width = value
                    }
                }
            }
            public var rectangles: DetectKitchenAnimalsResponseBody.Data.Elements.Rectangles?

            public var score: Double?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.rectangles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rectangles != nil {
                    map["Rectangles"] = self.rectangles?.toMap()
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Rectangles"] as? [String: Any?] {
                    var model = DetectKitchenAnimalsResponseBody.Data.Elements.Rectangles()
                    model.fromMap(value)
                    self.rectangles = model
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var elements: [DetectKitchenAnimalsResponseBody.Data.Elements]?

        public override init() {
            super.init()
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
                var tmp : [DetectKitchenAnimalsResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectKitchenAnimalsResponseBody.Data.Elements()
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
    public var data: DetectKitchenAnimalsResponseBody.Data?

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
            var model = DetectKitchenAnimalsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectKitchenAnimalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectKitchenAnimalsResponseBody?

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
            var model = DetectKitchenAnimalsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectMainBodyRequest : Tea.TeaModel {
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

public class DetectMainBodyAdvanceRequest : Tea.TeaModel {
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

public class DetectMainBodyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Location : Tea.TeaModel {
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
        public var location: DetectMainBodyResponseBody.Data.Location?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.location?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.location != nil {
                map["Location"] = self.location?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Location"] as? [String: Any?] {
                var model = DetectMainBodyResponseBody.Data.Location()
                model.fromMap(value)
                self.location = model
            }
        }
    }
    public var data: DetectMainBodyResponseBody.Data?

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
            var model = DetectMainBodyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectMainBodyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectMainBodyResponseBody?

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
            var model = DetectMainBodyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectObjectRequest : Tea.TeaModel {
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

public class DetectObjectAdvanceRequest : Tea.TeaModel {
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

public class DetectObjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var boxes: [Int32]?

            public var score: Double?

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
                if self.boxes != nil {
                    map["Boxes"] = self.boxes!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Boxes"] as? [Int32] {
                    self.boxes = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var elements: [DetectObjectResponseBody.Data.Elements]?

        public var height: Int32?

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
            if self.elements != nil {
                var tmp : [Any] = []
                for k in self.elements! {
                    tmp.append(k.toMap())
                }
                map["Elements"] = tmp
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
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectObjectResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectObjectResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["Height"] as? Int32 {
                self.height = value
            }
            if let value = dict["Width"] as? Int32 {
                self.width = value
            }
        }
    }
    public var data: DetectObjectResponseBody.Data?

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
            var model = DetectObjectResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectObjectResponseBody?

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
            var model = DetectObjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectVehicleICongestionRequest : Tea.TeaModel {
    public class PreRegionIntersectFeatures : Tea.TeaModel {
        public var features: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.features != nil {
                map["Features"] = self.features!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Features"] as? [String] {
                self.features = value
            }
        }
    }
    public class RoadRegions : Tea.TeaModel {
        public class RoadRegion : Tea.TeaModel {
            public class Point : Tea.TeaModel {
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
            public var point: DetectVehicleICongestionRequest.RoadRegions.RoadRegion.Point?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.point?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.point != nil {
                    map["Point"] = self.point?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Point"] as? [String: Any?] {
                    var model = DetectVehicleICongestionRequest.RoadRegions.RoadRegion.Point()
                    model.fromMap(value)
                    self.point = model
                }
            }
        }
        public var roadRegion: [DetectVehicleICongestionRequest.RoadRegions.RoadRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roadRegion != nil {
                var tmp : [Any] = []
                for k in self.roadRegion! {
                    tmp.append(k.toMap())
                }
                map["RoadRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoadRegion"] as? [Any?] {
                var tmp : [DetectVehicleICongestionRequest.RoadRegions.RoadRegion] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleICongestionRequest.RoadRegions.RoadRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.roadRegion = tmp
            }
        }
    }
    public var imageURL: String?

    public var preRegionIntersectFeatures: [DetectVehicleICongestionRequest.PreRegionIntersectFeatures]?

    public var roadRegions: [DetectVehicleICongestionRequest.RoadRegions]?

    public override init() {
        super.init()
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
        if self.preRegionIntersectFeatures != nil {
            var tmp : [Any] = []
            for k in self.preRegionIntersectFeatures! {
                tmp.append(k.toMap())
            }
            map["PreRegionIntersectFeatures"] = tmp
        }
        if self.roadRegions != nil {
            var tmp : [Any] = []
            for k in self.roadRegions! {
                tmp.append(k.toMap())
            }
            map["RoadRegions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["PreRegionIntersectFeatures"] as? [Any?] {
            var tmp : [DetectVehicleICongestionRequest.PreRegionIntersectFeatures] = []
            for v in value {
                if v != nil {
                    var model = DetectVehicleICongestionRequest.PreRegionIntersectFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.preRegionIntersectFeatures = tmp
        }
        if let value = dict["RoadRegions"] as? [Any?] {
            var tmp : [DetectVehicleICongestionRequest.RoadRegions] = []
            for v in value {
                if v != nil {
                    var model = DetectVehicleICongestionRequest.RoadRegions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roadRegions = tmp
        }
    }
}

public class DetectVehicleICongestionAdvanceRequest : Tea.TeaModel {
    public class PreRegionIntersectFeatures : Tea.TeaModel {
        public var features: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.features != nil {
                map["Features"] = self.features!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Features"] as? [String] {
                self.features = value
            }
        }
    }
    public class RoadRegions : Tea.TeaModel {
        public class RoadRegion : Tea.TeaModel {
            public class Point : Tea.TeaModel {
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
            public var point: DetectVehicleICongestionAdvanceRequest.RoadRegions.RoadRegion.Point?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.point?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.point != nil {
                    map["Point"] = self.point?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Point"] as? [String: Any?] {
                    var model = DetectVehicleICongestionAdvanceRequest.RoadRegions.RoadRegion.Point()
                    model.fromMap(value)
                    self.point = model
                }
            }
        }
        public var roadRegion: [DetectVehicleICongestionAdvanceRequest.RoadRegions.RoadRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roadRegion != nil {
                var tmp : [Any] = []
                for k in self.roadRegion! {
                    tmp.append(k.toMap())
                }
                map["RoadRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoadRegion"] as? [Any?] {
                var tmp : [DetectVehicleICongestionAdvanceRequest.RoadRegions.RoadRegion] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleICongestionAdvanceRequest.RoadRegions.RoadRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.roadRegion = tmp
            }
        }
    }
    public var imageURLObject: InputStream?

    public var preRegionIntersectFeatures: [DetectVehicleICongestionAdvanceRequest.PreRegionIntersectFeatures]?

    public var roadRegions: [DetectVehicleICongestionAdvanceRequest.RoadRegions]?

    public override init() {
        super.init()
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
        if self.preRegionIntersectFeatures != nil {
            var tmp : [Any] = []
            for k in self.preRegionIntersectFeatures! {
                tmp.append(k.toMap())
            }
            map["PreRegionIntersectFeatures"] = tmp
        }
        if self.roadRegions != nil {
            var tmp : [Any] = []
            for k in self.roadRegions! {
                tmp.append(k.toMap())
            }
            map["RoadRegions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["PreRegionIntersectFeatures"] as? [Any?] {
            var tmp : [DetectVehicleICongestionAdvanceRequest.PreRegionIntersectFeatures] = []
            for v in value {
                if v != nil {
                    var model = DetectVehicleICongestionAdvanceRequest.PreRegionIntersectFeatures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.preRegionIntersectFeatures = tmp
        }
        if let value = dict["RoadRegions"] as? [Any?] {
            var tmp : [DetectVehicleICongestionAdvanceRequest.RoadRegions] = []
            for v in value {
                if v != nil {
                    var model = DetectVehicleICongestionAdvanceRequest.RoadRegions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roadRegions = tmp
        }
    }
}

public class DetectVehicleICongestionShrinkRequest : Tea.TeaModel {
    public var imageURL: String?

    public var preRegionIntersectFeaturesShrink: String?

    public var roadRegionsShrink: String?

    public override init() {
        super.init()
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
        if self.preRegionIntersectFeaturesShrink != nil {
            map["PreRegionIntersectFeatures"] = self.preRegionIntersectFeaturesShrink!
        }
        if self.roadRegionsShrink != nil {
            map["RoadRegions"] = self.roadRegionsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["PreRegionIntersectFeatures"] as? String {
            self.preRegionIntersectFeaturesShrink = value
        }
        if let value = dict["RoadRegions"] as? String {
            self.roadRegionsShrink = value
        }
    }
}

public class DetectVehicleICongestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Boxes : Tea.TeaModel {
                public var bottom: Int64?

                public var left_: Int64?

                public var right_: Int64?

                public var top: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bottom != nil {
                        map["Bottom"] = self.bottom!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.right_ != nil {
                        map["Right"] = self.right_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bottom"] as? Int64 {
                        self.bottom = value
                    }
                    if let value = dict["Left"] as? Int64 {
                        self.left_ = value
                    }
                    if let value = dict["Right"] as? Int64 {
                        self.right_ = value
                    }
                    if let value = dict["Top"] as? Int64 {
                        self.top = value
                    }
                }
            }
            public var boxes: [DetectVehicleICongestionResponseBody.Data.Elements.Boxes]?

            public var id: Int64?

            public var score: Double?

            public var typeName: String?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.typeName != nil {
                    map["TypeName"] = self.typeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Boxes"] as? [Any?] {
                    var tmp : [DetectVehicleICongestionResponseBody.Data.Elements.Boxes] = []
                    for v in value {
                        if v != nil {
                            var model = DetectVehicleICongestionResponseBody.Data.Elements.Boxes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.boxes = tmp
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["TypeName"] as? String {
                    self.typeName = value
                }
            }
        }
        public class RegionIntersectFeatures : Tea.TeaModel {
            public var features: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.features != nil {
                    map["Features"] = self.features!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Features"] as? [String] {
                    self.features = value
                }
            }
        }
        public class RegionIntersectMatched : Tea.TeaModel {
            public var ids: [Int64]?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ids"] as? [Int64] {
                    self.ids = value
                }
            }
        }
        public class RegionIntersects : Tea.TeaModel {
            public var ids: [Int64]?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ids"] as? [Int64] {
                    self.ids = value
                }
            }
        }
        public var elements: [DetectVehicleICongestionResponseBody.Data.Elements]?

        public var regionIntersectFeatures: [DetectVehicleICongestionResponseBody.Data.RegionIntersectFeatures]?

        public var regionIntersectMatched: [DetectVehicleICongestionResponseBody.Data.RegionIntersectMatched]?

        public var regionIntersects: [DetectVehicleICongestionResponseBody.Data.RegionIntersects]?

        public override init() {
            super.init()
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
            if self.regionIntersectFeatures != nil {
                var tmp : [Any] = []
                for k in self.regionIntersectFeatures! {
                    tmp.append(k.toMap())
                }
                map["RegionIntersectFeatures"] = tmp
            }
            if self.regionIntersectMatched != nil {
                var tmp : [Any] = []
                for k in self.regionIntersectMatched! {
                    tmp.append(k.toMap())
                }
                map["RegionIntersectMatched"] = tmp
            }
            if self.regionIntersects != nil {
                var tmp : [Any] = []
                for k in self.regionIntersects! {
                    tmp.append(k.toMap())
                }
                map["RegionIntersects"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectVehicleICongestionResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleICongestionResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["RegionIntersectFeatures"] as? [Any?] {
                var tmp : [DetectVehicleICongestionResponseBody.Data.RegionIntersectFeatures] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleICongestionResponseBody.Data.RegionIntersectFeatures()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionIntersectFeatures = tmp
            }
            if let value = dict["RegionIntersectMatched"] as? [Any?] {
                var tmp : [DetectVehicleICongestionResponseBody.Data.RegionIntersectMatched] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleICongestionResponseBody.Data.RegionIntersectMatched()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionIntersectMatched = tmp
            }
            if let value = dict["RegionIntersects"] as? [Any?] {
                var tmp : [DetectVehicleICongestionResponseBody.Data.RegionIntersects] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleICongestionResponseBody.Data.RegionIntersects()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionIntersects = tmp
            }
        }
    }
    public var data: DetectVehicleICongestionResponseBody.Data?

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
            var model = DetectVehicleICongestionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectVehicleICongestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectVehicleICongestionResponseBody?

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
            var model = DetectVehicleICongestionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectVehicleIllegalParkingRequest : Tea.TeaModel {
    public class RoadRegions : Tea.TeaModel {
        public class RoadRegion : Tea.TeaModel {
            public class Point : Tea.TeaModel {
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
            public var point: DetectVehicleIllegalParkingRequest.RoadRegions.RoadRegion.Point?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.point?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.point != nil {
                    map["Point"] = self.point?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Point"] as? [String: Any?] {
                    var model = DetectVehicleIllegalParkingRequest.RoadRegions.RoadRegion.Point()
                    model.fromMap(value)
                    self.point = model
                }
            }
        }
        public var roadRegion: [DetectVehicleIllegalParkingRequest.RoadRegions.RoadRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roadRegion != nil {
                var tmp : [Any] = []
                for k in self.roadRegion! {
                    tmp.append(k.toMap())
                }
                map["RoadRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoadRegion"] as? [Any?] {
                var tmp : [DetectVehicleIllegalParkingRequest.RoadRegions.RoadRegion] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleIllegalParkingRequest.RoadRegions.RoadRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.roadRegion = tmp
            }
        }
    }
    public var imageURL: String?

    public var roadRegions: [DetectVehicleIllegalParkingRequest.RoadRegions]?

    public override init() {
        super.init()
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
        if self.roadRegions != nil {
            var tmp : [Any] = []
            for k in self.roadRegions! {
                tmp.append(k.toMap())
            }
            map["RoadRegions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["RoadRegions"] as? [Any?] {
            var tmp : [DetectVehicleIllegalParkingRequest.RoadRegions] = []
            for v in value {
                if v != nil {
                    var model = DetectVehicleIllegalParkingRequest.RoadRegions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roadRegions = tmp
        }
    }
}

public class DetectVehicleIllegalParkingAdvanceRequest : Tea.TeaModel {
    public class RoadRegions : Tea.TeaModel {
        public class RoadRegion : Tea.TeaModel {
            public class Point : Tea.TeaModel {
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
            public var point: DetectVehicleIllegalParkingAdvanceRequest.RoadRegions.RoadRegion.Point?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.point?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.point != nil {
                    map["Point"] = self.point?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Point"] as? [String: Any?] {
                    var model = DetectVehicleIllegalParkingAdvanceRequest.RoadRegions.RoadRegion.Point()
                    model.fromMap(value)
                    self.point = model
                }
            }
        }
        public var roadRegion: [DetectVehicleIllegalParkingAdvanceRequest.RoadRegions.RoadRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roadRegion != nil {
                var tmp : [Any] = []
                for k in self.roadRegion! {
                    tmp.append(k.toMap())
                }
                map["RoadRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoadRegion"] as? [Any?] {
                var tmp : [DetectVehicleIllegalParkingAdvanceRequest.RoadRegions.RoadRegion] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleIllegalParkingAdvanceRequest.RoadRegions.RoadRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.roadRegion = tmp
            }
        }
    }
    public var imageURLObject: InputStream?

    public var roadRegions: [DetectVehicleIllegalParkingAdvanceRequest.RoadRegions]?

    public override init() {
        super.init()
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
        if self.roadRegions != nil {
            var tmp : [Any] = []
            for k in self.roadRegions! {
                tmp.append(k.toMap())
            }
            map["RoadRegions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? InputStream {
            self.imageURLObject = value
        }
        if let value = dict["RoadRegions"] as? [Any?] {
            var tmp : [DetectVehicleIllegalParkingAdvanceRequest.RoadRegions] = []
            for v in value {
                if v != nil {
                    var model = DetectVehicleIllegalParkingAdvanceRequest.RoadRegions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roadRegions = tmp
        }
    }
}

public class DetectVehicleIllegalParkingShrinkRequest : Tea.TeaModel {
    public var imageURL: String?

    public var roadRegionsShrink: String?

    public override init() {
        super.init()
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
        if self.roadRegionsShrink != nil {
            map["RoadRegions"] = self.roadRegionsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageURL"] as? String {
            self.imageURL = value
        }
        if let value = dict["RoadRegions"] as? String {
            self.roadRegionsShrink = value
        }
    }
}

public class DetectVehicleIllegalParkingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Boxes : Tea.TeaModel {
                public var bottom: Int64?

                public var left_: Int64?

                public var right_: Int64?

                public var top: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bottom != nil {
                        map["Bottom"] = self.bottom!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.right_ != nil {
                        map["Right"] = self.right_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bottom"] as? Int64 {
                        self.bottom = value
                    }
                    if let value = dict["Left"] as? Int64 {
                        self.left_ = value
                    }
                    if let value = dict["Right"] as? Int64 {
                        self.right_ = value
                    }
                    if let value = dict["Top"] as? Int64 {
                        self.top = value
                    }
                }
            }
            public var boxes: [DetectVehicleIllegalParkingResponseBody.Data.Elements.Boxes]?

            public var id: Int64?

            public var score: Double?

            public var typeName: String?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.typeName != nil {
                    map["TypeName"] = self.typeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Boxes"] as? [Any?] {
                    var tmp : [DetectVehicleIllegalParkingResponseBody.Data.Elements.Boxes] = []
                    for v in value {
                        if v != nil {
                            var model = DetectVehicleIllegalParkingResponseBody.Data.Elements.Boxes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.boxes = tmp
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["TypeName"] as? String {
                    self.typeName = value
                }
            }
        }
        public class RegionIntersects : Tea.TeaModel {
            public var ids: [Int64]?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Ids"] as? [Int64] {
                    self.ids = value
                }
            }
        }
        public var elements: [DetectVehicleIllegalParkingResponseBody.Data.Elements]?

        public var regionIntersects: [DetectVehicleIllegalParkingResponseBody.Data.RegionIntersects]?

        public override init() {
            super.init()
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
            if self.regionIntersects != nil {
                var tmp : [Any] = []
                for k in self.regionIntersects! {
                    tmp.append(k.toMap())
                }
                map["RegionIntersects"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Elements"] as? [Any?] {
                var tmp : [DetectVehicleIllegalParkingResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleIllegalParkingResponseBody.Data.Elements()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.elements = tmp
            }
            if let value = dict["RegionIntersects"] as? [Any?] {
                var tmp : [DetectVehicleIllegalParkingResponseBody.Data.RegionIntersects] = []
                for v in value {
                    if v != nil {
                        var model = DetectVehicleIllegalParkingResponseBody.Data.RegionIntersects()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionIntersects = tmp
            }
        }
    }
    public var data: DetectVehicleIllegalParkingResponseBody.Data?

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
            var model = DetectVehicleIllegalParkingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectVehicleIllegalParkingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectVehicleIllegalParkingResponseBody?

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
            var model = DetectVehicleIllegalParkingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectVideoIPCObjectRequest : Tea.TeaModel {
    public var callbackOnlyHasObject: Bool?

    public var startTimestamp: Int64?

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
        if self.callbackOnlyHasObject != nil {
            map["CallbackOnlyHasObject"] = self.callbackOnlyHasObject!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.videoURL != nil {
            map["VideoURL"] = self.videoURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackOnlyHasObject"] as? Bool {
            self.callbackOnlyHasObject = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
        if let value = dict["VideoURL"] as? String {
            self.videoURL = value
        }
    }
}

public class DetectVideoIPCObjectAdvanceRequest : Tea.TeaModel {
    public var callbackOnlyHasObject: Bool?

    public var startTimestamp: Int64?

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
        if self.callbackOnlyHasObject != nil {
            map["CallbackOnlyHasObject"] = self.callbackOnlyHasObject!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.videoURLObject != nil {
            map["VideoURL"] = self.videoURLObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackOnlyHasObject"] as? Bool {
            self.callbackOnlyHasObject = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
        if let value = dict["VideoURL"] as? InputStream {
            self.videoURLObject = value
        }
    }
}

public class DetectVideoIPCObjectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Frames : Tea.TeaModel {
            public class Elements : Tea.TeaModel {
                public var height: Int64?

                public var score: Double?

                public var type: String?

                public var width: Int64?

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
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
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
                    if let value = dict["Height"] as? Int64 {
                        self.height = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Width"] as? Int64 {
                        self.width = value
                    }
                    if let value = dict["X"] as? Int64 {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Int64 {
                        self.y = value
                    }
                }
            }
            public var elements: [DetectVideoIPCObjectResponseBody.Data.Frames.Elements]?

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
                if self.elements != nil {
                    var tmp : [Any] = []
                    for k in self.elements! {
                        tmp.append(k.toMap())
                    }
                    map["Elements"] = tmp
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Elements"] as? [Any?] {
                    var tmp : [DetectVideoIPCObjectResponseBody.Data.Frames.Elements] = []
                    for v in value {
                        if v != nil {
                            var model = DetectVideoIPCObjectResponseBody.Data.Frames.Elements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.elements = tmp
                }
                if let value = dict["Time"] as? Int64 {
                    self.time = value
                }
            }
        }
        public var frames: [DetectVideoIPCObjectResponseBody.Data.Frames]?

        public var height: Int64?

        public var inputFile: String?

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
            if self.frames != nil {
                var tmp : [Any] = []
                for k in self.frames! {
                    tmp.append(k.toMap())
                }
                map["Frames"] = tmp
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.inputFile != nil {
                map["InputFile"] = self.inputFile!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Frames"] as? [Any?] {
                var tmp : [DetectVideoIPCObjectResponseBody.Data.Frames] = []
                for v in value {
                    if v != nil {
                        var model = DetectVideoIPCObjectResponseBody.Data.Frames()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.frames = tmp
            }
            if let value = dict["Height"] as? Int64 {
                self.height = value
            }
            if let value = dict["InputFile"] as? String {
                self.inputFile = value
            }
            if let value = dict["Width"] as? Int64 {
                self.width = value
            }
        }
    }
    public var data: DetectVideoIPCObjectResponseBody.Data?

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
            var model = DetectVideoIPCObjectResponseBody.Data()
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

public class DetectVideoIPCObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectVideoIPCObjectResponseBody?

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
            var model = DetectVideoIPCObjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectWhiteBaseImageRequest : Tea.TeaModel {
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

public class DetectWhiteBaseImageAdvanceRequest : Tea.TeaModel {
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

public class DetectWhiteBaseImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public var whiteBase: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.whiteBase != nil {
                    map["WhiteBase"] = self.whiteBase!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["WhiteBase"] as? Int32 {
                    self.whiteBase = value
                }
            }
        }
        public var elements: [DetectWhiteBaseImageResponseBody.Data.Elements]?

        public override init() {
            super.init()
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
                var tmp : [DetectWhiteBaseImageResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectWhiteBaseImageResponseBody.Data.Elements()
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
    public var data: DetectWhiteBaseImageResponseBody.Data?

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
            var model = DetectWhiteBaseImageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectWhiteBaseImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectWhiteBaseImageResponseBody?

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
            var model = DetectWhiteBaseImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectWorkwearRequest : Tea.TeaModel {
    public class Clothes : Tea.TeaModel {
        public var maxNum: Int64?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxNum != nil {
                map["MaxNum"] = self.maxNum!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxNum"] as? Int64 {
                self.maxNum = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var clothes: DetectWorkwearRequest.Clothes?

    public var imageUrl: String?

    public var labels: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clothes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clothes != nil {
            map["Clothes"] = self.clothes?.toMap()
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clothes"] as? [String: Any?] {
            var model = DetectWorkwearRequest.Clothes()
            model.fromMap(value)
            self.clothes = model
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Labels"] as? [String] {
            self.labels = value
        }
    }
}

public class DetectWorkwearAdvanceRequest : Tea.TeaModel {
    public class Clothes : Tea.TeaModel {
        public var maxNum: Int64?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxNum != nil {
                map["MaxNum"] = self.maxNum!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxNum"] as? Int64 {
                self.maxNum = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var clothes: DetectWorkwearAdvanceRequest.Clothes?

    public var imageUrlObject: InputStream?

    public var labels: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clothes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clothes != nil {
            map["Clothes"] = self.clothes?.toMap()
        }
        if self.imageUrlObject != nil {
            map["ImageUrl"] = self.imageUrlObject!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clothes"] as? [String: Any?] {
            var model = DetectWorkwearAdvanceRequest.Clothes()
            model.fromMap(value)
            self.clothes = model
        }
        if let value = dict["ImageUrl"] as? InputStream {
            self.imageUrlObject = value
        }
        if let value = dict["Labels"] as? [String] {
            self.labels = value
        }
    }
}

public class DetectWorkwearShrinkRequest : Tea.TeaModel {
    public var clothesShrink: String?

    public var imageUrl: String?

    public var labels: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clothesShrink != nil {
            map["Clothes"] = self.clothesShrink!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clothes"] as? String {
            self.clothesShrink = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Labels"] as? [String] {
            self.labels = value
        }
    }
}

public class DetectWorkwearResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Elements : Tea.TeaModel {
            public class Property : Tea.TeaModel {
                public class Probability : Tea.TeaModel {
                    public var no: Double?

                    public var threshold: Int64?

                    public var unknown: Double?

                    public var yes: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.no != nil {
                            map["No"] = self.no!
                        }
                        if self.threshold != nil {
                            map["Threshold"] = self.threshold!
                        }
                        if self.unknown != nil {
                            map["Unknown"] = self.unknown!
                        }
                        if self.yes != nil {
                            map["Yes"] = self.yes!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["No"] as? Double {
                            self.no = value
                        }
                        if let value = dict["Threshold"] as? Int64 {
                            self.threshold = value
                        }
                        if let value = dict["Unknown"] as? Double {
                            self.unknown = value
                        }
                        if let value = dict["Yes"] as? Double {
                            self.yes = value
                        }
                    }
                }
                public var label: String?

                public var probability: DetectWorkwearResponseBody.Data.Elements.Property.Probability?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.probability?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.probability != nil {
                        map["Probability"] = self.probability?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Probability"] as? [String: Any?] {
                        var model = DetectWorkwearResponseBody.Data.Elements.Property.Probability()
                        model.fromMap(value)
                        self.probability = model
                    }
                }
            }
            public class Rectangles : Tea.TeaModel {
                public var height: Int64?

                public var left_: Int64?

                public var top: Int64?

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
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Height"] as? Int64 {
                        self.height = value
                    }
                    if let value = dict["Left"] as? Int64 {
                        self.left_ = value
                    }
                    if let value = dict["Top"] as? Int64 {
                        self.top = value
                    }
                    if let value = dict["Width"] as? Int64 {
                        self.width = value
                    }
                }
            }
            public var property: [DetectWorkwearResponseBody.Data.Elements.Property]?

            public var rectangles: DetectWorkwearResponseBody.Data.Elements.Rectangles?

            public var score: Double?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.rectangles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.property != nil {
                    var tmp : [Any] = []
                    for k in self.property! {
                        tmp.append(k.toMap())
                    }
                    map["Property"] = tmp
                }
                if self.rectangles != nil {
                    map["Rectangles"] = self.rectangles?.toMap()
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Property"] as? [Any?] {
                    var tmp : [DetectWorkwearResponseBody.Data.Elements.Property] = []
                    for v in value {
                        if v != nil {
                            var model = DetectWorkwearResponseBody.Data.Elements.Property()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.property = tmp
                }
                if let value = dict["Rectangles"] as? [String: Any?] {
                    var model = DetectWorkwearResponseBody.Data.Elements.Rectangles()
                    model.fromMap(value)
                    self.rectangles = model
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var elements: [DetectWorkwearResponseBody.Data.Elements]?

        public override init() {
            super.init()
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
                var tmp : [DetectWorkwearResponseBody.Data.Elements] = []
                for v in value {
                    if v != nil {
                        var model = DetectWorkwearResponseBody.Data.Elements()
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
    public var data: DetectWorkwearResponseBody.Data?

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
            var model = DetectWorkwearResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectWorkwearResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectWorkwearResponseBody?

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
            var model = DetectWorkwearResponseBody()
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
