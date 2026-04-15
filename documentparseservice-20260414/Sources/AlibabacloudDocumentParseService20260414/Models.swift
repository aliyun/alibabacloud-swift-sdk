import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DocumentParseTestApiRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var type: Int64?

    public override init() {
        super.init()
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["Type"] as? Int64 {
            self.type = value
        }
    }
}

public class DocumentParseTestApiResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Usage : Tea.TeaModel {
            public var inputTokens: Int32?

            public var outputTokens: Int32?

            public var totalTokens: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputTokens != nil {
                    map["InputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["OutputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["TotalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InputTokens"] as? Int32 {
                    self.inputTokens = value
                }
                if let value = dict["OutputTokens"] as? Int32 {
                    self.outputTokens = value
                }
                if let value = dict["TotalTokens"] as? Int32 {
                    self.totalTokens = value
                }
            }
        }
        public var content: String?

        public var requestId: String?

        public var usage: DocumentParseTestApiResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.usage != nil {
                map["Usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["Usage"] as? [String: Any?] {
                var model = DocumentParseTestApiResponseBody.Data.Usage()
                model.fromMap(value)
                self.usage = model
            }
        }
    }
    public var code: String?

    public var data: DocumentParseTestApiResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DocumentParseTestApiResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class DocumentParseTestApiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DocumentParseTestApiResponseBody?

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
            var model = DocumentParseTestApiResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
