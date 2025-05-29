import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetOpenApiListRequest : Tea.TeaModel {
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

public class GetOpenApiListResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var openApiString: String?

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
        if self.openApiString != nil {
            map["OpenApiString"] = self.openApiString!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OpenApiString"] as? String {
            self.openApiString = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOpenApiListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOpenApiListResponseBody?

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
            var model = GetOpenApiListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListConsoleProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var belongedCategory: String?

        public var categories: [String]?

        public var channelLinks: [String]?

        public var docId: String?

        public var keywords: [String]?

        public var names: String?

        public var pinyin: String?

        public var productId: String?

        public var relatedConsoleAppId: String?

        public var relatedPipId: String?

        public var showInNav: Bool?

        public var supportedAccounts: [String]?

        public var supportedChannels: [String]?

        public var tag: String?

        public var tagExpireTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.belongedCategory != nil {
                map["BelongedCategory"] = self.belongedCategory!
            }
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.channelLinks != nil {
                map["ChannelLinks"] = self.channelLinks!
            }
            if self.docId != nil {
                map["DocId"] = self.docId!
            }
            if self.keywords != nil {
                map["Keywords"] = self.keywords!
            }
            if self.names != nil {
                map["Names"] = self.names!
            }
            if self.pinyin != nil {
                map["Pinyin"] = self.pinyin!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.relatedConsoleAppId != nil {
                map["RelatedConsoleAppId"] = self.relatedConsoleAppId!
            }
            if self.relatedPipId != nil {
                map["RelatedPipId"] = self.relatedPipId!
            }
            if self.showInNav != nil {
                map["ShowInNav"] = self.showInNav!
            }
            if self.supportedAccounts != nil {
                map["SupportedAccounts"] = self.supportedAccounts!
            }
            if self.supportedChannels != nil {
                map["SupportedChannels"] = self.supportedChannels!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.tagExpireTime != nil {
                map["TagExpireTime"] = self.tagExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BelongedCategory"] as? String {
                self.belongedCategory = value
            }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["ChannelLinks"] as? [String] {
                self.channelLinks = value
            }
            if let value = dict["DocId"] as? String {
                self.docId = value
            }
            if let value = dict["Keywords"] as? [String] {
                self.keywords = value
            }
            if let value = dict["Names"] as? String {
                self.names = value
            }
            if let value = dict["Pinyin"] as? String {
                self.pinyin = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["RelatedConsoleAppId"] as? String {
                self.relatedConsoleAppId = value
            }
            if let value = dict["RelatedPipId"] as? String {
                self.relatedPipId = value
            }
            if let value = dict["ShowInNav"] as? Bool {
                self.showInNav = value
            }
            if let value = dict["SupportedAccounts"] as? [String] {
                self.supportedAccounts = value
            }
            if let value = dict["SupportedChannels"] as? [String] {
                self.supportedChannels = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
            if let value = dict["TagExpireTime"] as? String {
                self.tagExpireTime = value
            }
        }
    }
    public var code: String?

    public var data: [ListConsoleProductResponseBody.Data]?

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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListConsoleProductResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListConsoleProductResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListConsoleProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListConsoleProductResponseBody?

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
            var model = ListConsoleProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
