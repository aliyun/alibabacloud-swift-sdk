import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class TranslateECommerceRequest : Tea.TeaModel {
    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

    public var targetLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") && dict["SourceLanguage"] != nil {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") && dict["SourceText"] != nil {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") && dict["TargetLanguage"] != nil {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateECommerceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var translated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Translated") && dict["Translated"] != nil {
                self.translated = dict["Translated"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateECommerceResponseBody.Data?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TranslateECommerceResponseBody.Data()
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

public class TranslateECommerceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateECommerceResponseBody?

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
            var model = TranslateECommerceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TranslateGeneralRequest : Tea.TeaModel {
    public var formatType: String?

    public var scene: String?

    public var sourceLanguage: String?

    public var sourceText: String?

    public var targetLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.formatType != nil {
            map["FormatType"] = self.formatType!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        if self.sourceLanguage != nil {
            map["SourceLanguage"] = self.sourceLanguage!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetLanguage != nil {
            map["TargetLanguage"] = self.targetLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FormatType") && dict["FormatType"] != nil {
            self.formatType = dict["FormatType"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
        if dict.keys.contains("SourceLanguage") && dict["SourceLanguage"] != nil {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") && dict["SourceText"] != nil {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") && dict["TargetLanguage"] != nil {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class TranslateGeneralResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var translated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.translated != nil {
                map["Translated"] = self.translated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Translated") && dict["Translated"] != nil {
                self.translated = dict["Translated"] as! String
            }
        }
    }
    public var code: Int32?

    public var data: TranslateGeneralResponseBody.Data?

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
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TranslateGeneralResponseBody.Data()
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

public class TranslateGeneralResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TranslateGeneralResponseBody?

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
            var model = TranslateGeneralResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
