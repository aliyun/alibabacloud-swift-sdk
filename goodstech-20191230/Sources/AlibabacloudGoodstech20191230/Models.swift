import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ClassifyCommodityRequest : Tea.TeaModel {
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

public class ClassifyCommodityAdvanceRequest : Tea.TeaModel {
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

public class ClassifyCommodityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Categories : Tea.TeaModel {
            public var categoryId: String?

            public var categoryName: String?

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
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryId"] as? String {
                    self.categoryId = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
            }
        }
        public var categories: [ClassifyCommodityResponseBody.Data.Categories]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                var tmp : [Any] = []
                for k in self.categories! {
                    tmp.append(k.toMap())
                }
                map["Categories"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [Any?] {
                var tmp : [ClassifyCommodityResponseBody.Data.Categories] = []
                for v in value {
                    if v != nil {
                        var model = ClassifyCommodityResponseBody.Data.Categories()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.categories = tmp
            }
        }
    }
    public var data: ClassifyCommodityResponseBody.Data?

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
            var model = ClassifyCommodityResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ClassifyCommodityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClassifyCommodityResponseBody?

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
            var model = ClassifyCommodityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
