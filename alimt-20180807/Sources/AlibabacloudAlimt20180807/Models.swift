import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class MachineTranslateECommerceRequest : Tea.TeaModel {
    public var contentFormat: String?

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
        if self.contentFormat != nil {
            map["ContentFormat"] = self.contentFormat!
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
        if dict.keys.contains("ContentFormat") {
            self.contentFormat = dict["ContentFormat"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class MachineTranslateECommerceResponseBody : Tea.TeaModel {
    public class ResultCode : Tea.TeaModel {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int32
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var resultCode: MachineTranslateECommerceResponseBody.ResultCode?

    public var success: Bool?

    public var translateText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultCode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.translateText != nil {
            map["TranslateText"] = self.translateText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") {
            var model = MachineTranslateECommerceResponseBody.ResultCode()
            model.fromMap(dict["ResultCode"] as! [String: Any])
            self.resultCode = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TranslateText") {
            self.translateText = dict["TranslateText"] as! String
        }
    }
}

public class MachineTranslateECommerceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MachineTranslateECommerceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MachineTranslateECommerceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MachineTranslateGeneralRequest : Tea.TeaModel {
    public var contentFormat: String?

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
        if self.contentFormat != nil {
            map["ContentFormat"] = self.contentFormat!
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
        if dict.keys.contains("ContentFormat") {
            self.contentFormat = dict["ContentFormat"] as! String
        }
        if dict.keys.contains("SourceLanguage") {
            self.sourceLanguage = dict["SourceLanguage"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetLanguage") {
            self.targetLanguage = dict["TargetLanguage"] as! String
        }
    }
}

public class MachineTranslateGeneralResponseBody : Tea.TeaModel {
    public class ResultCode : Tea.TeaModel {
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
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! Int32
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
        }
    }
    public var requestId: String?

    public var resultCode: MachineTranslateGeneralResponseBody.ResultCode?

    public var success: Bool?

    public var translateText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultCode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.translateText != nil {
            map["TranslateText"] = self.translateText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultCode") {
            var model = MachineTranslateGeneralResponseBody.ResultCode()
            model.fromMap(dict["ResultCode"] as! [String: Any])
            self.resultCode = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TranslateText") {
            self.translateText = dict["TranslateText"] as! String
        }
    }
}

public class MachineTranslateGeneralResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MachineTranslateGeneralResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MachineTranslateGeneralResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
