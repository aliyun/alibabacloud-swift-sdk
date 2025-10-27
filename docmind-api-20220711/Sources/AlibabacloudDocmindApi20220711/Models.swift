import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AyncTradeDocumentPackageExtractSmartAppRequest : Tea.TeaModel {
    public var customExtractionRange: [String]?

    public var fileName: String?

    public var fileUrl: String?

    public var option: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customExtractionRange != nil {
            map["CustomExtractionRange"] = self.customExtractionRange!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomExtractionRange"] as? [String] {
            self.customExtractionRange = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class AyncTradeDocumentPackageExtractSmartAppShrinkRequest : Tea.TeaModel {
    public var customExtractionRangeShrink: String?

    public var fileName: String?

    public var fileUrl: String?

    public var option: String?

    public var templateName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customExtractionRangeShrink != nil {
            map["CustomExtractionRange"] = self.customExtractionRangeShrink!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomExtractionRange"] as? String {
            self.customExtractionRangeShrink = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class AyncTradeDocumentPackageExtractSmartAppResponseBody : Tea.TeaModel {
    public var completed: Bool?

    public var createTime: String?

    public var data: Any?

    public var requestId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.completed != nil {
            map["Completed"] = self.completed!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Completed"] as? Bool {
            self.completed = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
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
    }
}

public class AyncTradeDocumentPackageExtractSmartAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AyncTradeDocumentPackageExtractSmartAppResponseBody?

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
            var model = AyncTradeDocumentPackageExtractSmartAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocParserResultRequest : Tea.TeaModel {
    public var excludeFields: [String]?

    public var id: String?

    public var layoutNum: Int32?

    public var layoutStepSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeFields != nil {
            map["ExcludeFields"] = self.excludeFields!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.layoutNum != nil {
            map["LayoutNum"] = self.layoutNum!
        }
        if self.layoutStepSize != nil {
            map["LayoutStepSize"] = self.layoutStepSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeFields"] as? [String] {
            self.excludeFields = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LayoutNum"] as? Int32 {
            self.layoutNum = value
        }
        if let value = dict["LayoutStepSize"] as? Int32 {
            self.layoutStepSize = value
        }
    }
}

public class GetDocParserResultShrinkRequest : Tea.TeaModel {
    public var excludeFieldsShrink: String?

    public var id: String?

    public var layoutNum: Int32?

    public var layoutStepSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeFieldsShrink != nil {
            map["ExcludeFields"] = self.excludeFieldsShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.layoutNum != nil {
            map["LayoutNum"] = self.layoutNum!
        }
        if self.layoutStepSize != nil {
            map["LayoutStepSize"] = self.layoutStepSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeFields"] as? String {
            self.excludeFieldsShrink = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["LayoutNum"] as? Int32 {
            self.layoutNum = value
        }
        if let value = dict["LayoutStepSize"] as? Int32 {
            self.layoutStepSize = value
        }
    }
}

public class GetDocParserResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDocParserResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocParserResultResponseBody?

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
            var model = GetDocParserResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocStructureResultRequest : Tea.TeaModel {
    public var id: String?

    public var imageStrategy: String?

    public var revealMarkdown: Bool?

    public var useUrlResponseBody: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.imageStrategy != nil {
            map["ImageStrategy"] = self.imageStrategy!
        }
        if self.revealMarkdown != nil {
            map["RevealMarkdown"] = self.revealMarkdown!
        }
        if self.useUrlResponseBody != nil {
            map["UseUrlResponseBody"] = self.useUrlResponseBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ImageStrategy"] as? String {
            self.imageStrategy = value
        }
        if let value = dict["RevealMarkdown"] as? Bool {
            self.revealMarkdown = value
        }
        if let value = dict["UseUrlResponseBody"] as? Bool {
            self.useUrlResponseBody = value
        }
    }
}

public class GetDocStructureResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var completed: Bool?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.completed != nil {
            map["Completed"] = self.completed!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Completed"] as? Bool {
            self.completed = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
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
    }
}

public class GetDocStructureResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocStructureResultResponseBody?

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
            var model = GetDocStructureResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentCompareResultRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class GetDocumentCompareResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var completed: Bool?

    public var data: Any?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.completed != nil {
            map["Completed"] = self.completed!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Completed"] as? Bool {
            self.completed = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
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
    }
}

public class GetDocumentCompareResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentCompareResultResponseBody?

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
            var model = GetDocumentCompareResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentConvertResultRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class GetDocumentConvertResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var md5: String?

        public var size: Int64?

        public var type: String?

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
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var completed: Bool?

    public var data: [GetDocumentConvertResultResponseBody.Data]?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.completed != nil {
            map["Completed"] = self.completed!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Completed"] as? Bool {
            self.completed = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetDocumentConvertResultResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDocumentConvertResultResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
    }
}

public class GetDocumentConvertResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentConvertResultResponseBody?

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
            var model = GetDocumentConvertResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDocumentExtractResultRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class GetDocumentExtractResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var completed: Bool?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.completed != nil {
            map["Completed"] = self.completed!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Completed"] as? Bool {
            self.completed = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
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
    }
}

public class GetDocumentExtractResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentExtractResultResponseBody?

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
            var model = GetDocumentExtractResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPageNumRequest : Tea.TeaModel {
    public var bizId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
    }
}

public class GetPageNumResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var pageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
        }
    }
    public var data: GetPageNumResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

    public var httpCode: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPageNumResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["HttpCode"] as? String {
            self.httpCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetPageNumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPageNumResponseBody?

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
            var model = GetPageNumResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTableUnderstandingResultRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class GetTableUnderstandingResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var completed: Bool?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.completed != nil {
            map["Completed"] = self.completed!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Completed"] as? Bool {
            self.completed = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
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
    }
}

public class GetTableUnderstandingResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTableUnderstandingResultResponseBody?

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
            var model = GetTableUnderstandingResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDocParserStatusRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class QueryDocParserStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imageCount: Int32?

        public var numberOfSuccessfulParsing: Int32?

        public var pageCountEstimate: Int32?

        public var paragraphCount: Int32?

        public var processing: Double?

        public var status: String?

        public var tableCount: Int32?

        public var tokens: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageCount != nil {
                map["ImageCount"] = self.imageCount!
            }
            if self.numberOfSuccessfulParsing != nil {
                map["NumberOfSuccessfulParsing"] = self.numberOfSuccessfulParsing!
            }
            if self.pageCountEstimate != nil {
                map["PageCountEstimate"] = self.pageCountEstimate!
            }
            if self.paragraphCount != nil {
                map["ParagraphCount"] = self.paragraphCount!
            }
            if self.processing != nil {
                map["Processing"] = self.processing!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tableCount != nil {
                map["TableCount"] = self.tableCount!
            }
            if self.tokens != nil {
                map["Tokens"] = self.tokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageCount"] as? Int32 {
                self.imageCount = value
            }
            if let value = dict["NumberOfSuccessfulParsing"] as? Int32 {
                self.numberOfSuccessfulParsing = value
            }
            if let value = dict["PageCountEstimate"] as? Int32 {
                self.pageCountEstimate = value
            }
            if let value = dict["ParagraphCount"] as? Int32 {
                self.paragraphCount = value
            }
            if let value = dict["Processing"] as? Double {
                self.processing = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TableCount"] as? Int32 {
                self.tableCount = value
            }
            if let value = dict["Tokens"] as? Int64 {
                self.tokens = value
            }
        }
    }
    public var code: String?

    public var data: QueryDocParserStatusResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryDocParserStatusResponseBody.Data()
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

public class QueryDocParserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDocParserStatusResponseBody?

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
            var model = QueryDocParserStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertImageToExcelJobRequest : Tea.TeaModel {
    public var forceMergeExcel: Bool?

    public var imageNameExtension: String?

    public var imageNames: [String]?

    public var imageUrls: [String]?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceMergeExcel != nil {
            map["ForceMergeExcel"] = self.forceMergeExcel!
        }
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForceMergeExcel"] as? Bool {
            self.forceMergeExcel = value
        }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? [String] {
            self.imageNames = value
        }
        if let value = dict["ImageUrls"] as? [String] {
            self.imageUrls = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToExcelJobShrinkRequest : Tea.TeaModel {
    public var forceMergeExcel: Bool?

    public var imageNameExtension: String?

    public var imageNamesShrink: String?

    public var imageUrlsShrink: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceMergeExcel != nil {
            map["ForceMergeExcel"] = self.forceMergeExcel!
        }
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNamesShrink != nil {
            map["ImageNames"] = self.imageNamesShrink!
        }
        if self.imageUrlsShrink != nil {
            map["ImageUrls"] = self.imageUrlsShrink!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForceMergeExcel"] as? Bool {
            self.forceMergeExcel = value
        }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? String {
            self.imageNamesShrink = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrlsShrink = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToExcelJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertImageToExcelJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertImageToExcelJobResponseBody.Data()
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

public class SubmitConvertImageToExcelJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertImageToExcelJobResponseBody?

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
            var model = SubmitConvertImageToExcelJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertImageToMarkdownJobRequest : Tea.TeaModel {
    public var imageNameExtension: String?

    public var imageNames: [String]?

    public var imageUrls: [String]?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? [String] {
            self.imageNames = value
        }
        if let value = dict["ImageUrls"] as? [String] {
            self.imageUrls = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToMarkdownJobShrinkRequest : Tea.TeaModel {
    public var imageNameExtension: String?

    public var imageNamesShrink: String?

    public var imageUrlsShrink: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNamesShrink != nil {
            map["ImageNames"] = self.imageNamesShrink!
        }
        if self.imageUrlsShrink != nil {
            map["ImageUrls"] = self.imageUrlsShrink!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? String {
            self.imageNamesShrink = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrlsShrink = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToMarkdownJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertImageToMarkdownJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertImageToMarkdownJobResponseBody.Data()
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

public class SubmitConvertImageToMarkdownJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertImageToMarkdownJobResponseBody?

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
            var model = SubmitConvertImageToMarkdownJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertImageToPdfJobRequest : Tea.TeaModel {
    public var imageNameExtension: String?

    public var imageNames: [String]?

    public var imageUrls: [String]?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? [String] {
            self.imageNames = value
        }
        if let value = dict["ImageUrls"] as? [String] {
            self.imageUrls = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToPdfJobShrinkRequest : Tea.TeaModel {
    public var imageNameExtension: String?

    public var imageNamesShrink: String?

    public var imageUrlsShrink: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNamesShrink != nil {
            map["ImageNames"] = self.imageNamesShrink!
        }
        if self.imageUrlsShrink != nil {
            map["ImageUrls"] = self.imageUrlsShrink!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? String {
            self.imageNamesShrink = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrlsShrink = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToPdfJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertImageToPdfJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertImageToPdfJobResponseBody.Data()
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

public class SubmitConvertImageToPdfJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertImageToPdfJobResponseBody?

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
            var model = SubmitConvertImageToPdfJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertImageToWordJobRequest : Tea.TeaModel {
    public var imageNameExtension: String?

    public var imageNames: [String]?

    public var imageUrls: [String]?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
        }
        if self.imageUrls != nil {
            map["ImageUrls"] = self.imageUrls!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? [String] {
            self.imageNames = value
        }
        if let value = dict["ImageUrls"] as? [String] {
            self.imageUrls = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToWordJobShrinkRequest : Tea.TeaModel {
    public var imageNameExtension: String?

    public var imageNamesShrink: String?

    public var imageUrlsShrink: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageNameExtension != nil {
            map["ImageNameExtension"] = self.imageNameExtension!
        }
        if self.imageNamesShrink != nil {
            map["ImageNames"] = self.imageNamesShrink!
        }
        if self.imageUrlsShrink != nil {
            map["ImageUrls"] = self.imageUrlsShrink!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageNameExtension"] as? String {
            self.imageNameExtension = value
        }
        if let value = dict["ImageNames"] as? String {
            self.imageNamesShrink = value
        }
        if let value = dict["ImageUrls"] as? String {
            self.imageUrlsShrink = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertImageToWordJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertImageToWordJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertImageToWordJobResponseBody.Data()
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

public class SubmitConvertImageToWordJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertImageToWordJobResponseBody?

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
            var model = SubmitConvertImageToWordJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertPdfToExcelJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrl: String?

    public var forceExportInnerImage: Bool?

    public var forceMergeExcel: Bool?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.forceExportInnerImage != nil {
            map["ForceExportInnerImage"] = self.forceExportInnerImage!
        }
        if self.forceMergeExcel != nil {
            map["ForceMergeExcel"] = self.forceMergeExcel!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["ForceExportInnerImage"] as? Bool {
            self.forceExportInnerImage = value
        }
        if let value = dict["ForceMergeExcel"] as? Bool {
            self.forceMergeExcel = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToExcelJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var forceExportInnerImage: Bool?

    public var forceMergeExcel: Bool?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.forceExportInnerImage != nil {
            map["ForceExportInnerImage"] = self.forceExportInnerImage!
        }
        if self.forceMergeExcel != nil {
            map["ForceMergeExcel"] = self.forceMergeExcel!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["ForceExportInnerImage"] as? Bool {
            self.forceExportInnerImage = value
        }
        if let value = dict["ForceMergeExcel"] as? Bool {
            self.forceMergeExcel = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToExcelJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertPdfToExcelJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertPdfToExcelJobResponseBody.Data()
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

public class SubmitConvertPdfToExcelJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertPdfToExcelJobResponseBody?

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
            var model = SubmitConvertPdfToExcelJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertPdfToImageJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrl: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToImageJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToImageJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertPdfToImageJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertPdfToImageJobResponseBody.Data()
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

public class SubmitConvertPdfToImageJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertPdfToImageJobResponseBody?

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
            var model = SubmitConvertPdfToImageJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertPdfToMarkdownJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrl: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToMarkdownJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToMarkdownJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertPdfToMarkdownJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertPdfToMarkdownJobResponseBody.Data()
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

public class SubmitConvertPdfToMarkdownJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertPdfToMarkdownJobResponseBody?

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
            var model = SubmitConvertPdfToMarkdownJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitConvertPdfToWordJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrl: String?

    public var forceExportInnerImage: Bool?

    public var formulaEnhancement: Bool?

    public var option: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.forceExportInnerImage != nil {
            map["ForceExportInnerImage"] = self.forceExportInnerImage!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["ForceExportInnerImage"] as? Bool {
            self.forceExportInnerImage = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToWordJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var forceExportInnerImage: Bool?

    public var formulaEnhancement: Bool?

    public var option: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.forceExportInnerImage != nil {
            map["ForceExportInnerImage"] = self.forceExportInnerImage!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
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
        if let value = dict["ForceExportInnerImage"] as? Bool {
            self.forceExportInnerImage = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitConvertPdfToWordJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitConvertPdfToWordJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitConvertPdfToWordJobResponseBody.Data()
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

public class SubmitConvertPdfToWordJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitConvertPdfToWordJobResponseBody?

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
            var model = SubmitConvertPdfToWordJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDigitalDocStructureJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrl: String?

    public var imageStrategy: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var revealMarkdown: Bool?

    public var useUrlResponseBody: Bool?

    public override init() {
        super.init()
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
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.imageStrategy != nil {
            map["ImageStrategy"] = self.imageStrategy!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.revealMarkdown != nil {
            map["RevealMarkdown"] = self.revealMarkdown!
        }
        if self.useUrlResponseBody != nil {
            map["UseUrlResponseBody"] = self.useUrlResponseBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["ImageStrategy"] as? String {
            self.imageStrategy = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["RevealMarkdown"] as? Bool {
            self.revealMarkdown = value
        }
        if let value = dict["UseUrlResponseBody"] as? Bool {
            self.useUrlResponseBody = value
        }
    }
}

public class SubmitDigitalDocStructureJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrlObject: InputStream?

    public var imageStrategy: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var revealMarkdown: Bool?

    public var useUrlResponseBody: Bool?

    public override init() {
        super.init()
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
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.imageStrategy != nil {
            map["ImageStrategy"] = self.imageStrategy!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.revealMarkdown != nil {
            map["RevealMarkdown"] = self.revealMarkdown!
        }
        if self.useUrlResponseBody != nil {
            map["UseUrlResponseBody"] = self.useUrlResponseBody!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["ImageStrategy"] as? String {
            self.imageStrategy = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["RevealMarkdown"] as? Bool {
            self.revealMarkdown = value
        }
        if let value = dict["UseUrlResponseBody"] as? Bool {
            self.useUrlResponseBody = value
        }
    }
}

public class SubmitDigitalDocStructureJobResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var id: String?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.id != nil {
            map["Id"] = self.id!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
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
    }
}

public class SubmitDigitalDocStructureJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDigitalDocStructureJobResponseBody?

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
            var model = SubmitDigitalDocStructureJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDocParserJobRequest : Tea.TeaModel {
    public class CustomOssConfig : Tea.TeaModel {
        public var accessId: String?

        public var accessKeySecret: String?

        public var stsToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.stsToken != nil {
                map["StsToken"] = self.stsToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["StsToken"] as? String {
                self.stsToken = value
            }
        }
    }
    public class LLMParam : Tea.TeaModel {
        public var model: String?

        public var prompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
        }
    }
    public class MultimediaParameters : Tea.TeaModel {
        public var enableSynopsisParse: Bool?

        public var vlParsePrompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableSynopsisParse != nil {
                map["EnableSynopsisParse"] = self.enableSynopsisParse!
            }
            if self.vlParsePrompt != nil {
                map["VlParsePrompt"] = self.vlParsePrompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableSynopsisParse"] as? Bool {
                self.enableSynopsisParse = value
            }
            if let value = dict["VlParsePrompt"] as? String {
                self.vlParsePrompt = value
            }
        }
    }
    public var customOssConfig: SubmitDocParserJobRequest.CustomOssConfig?

    public var enhancementMode: String?

    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrl: String?

    public var formulaEnhancement: Bool?

    public var LLMParam: SubmitDocParserJobRequest.LLMParam?

    public var llmEnhancement: Bool?

    public var multimediaParameters: SubmitDocParserJobRequest.MultimediaParameters?

    public var needHeaderFooter: Bool?

    public var option: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var outputHtmlTable: Bool?

    public var pageIndex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customOssConfig?.validate()
        try self.LLMParam?.validate()
        try self.multimediaParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customOssConfig != nil {
            map["CustomOssConfig"] = self.customOssConfig?.toMap()
        }
        if self.enhancementMode != nil {
            map["EnhancementMode"] = self.enhancementMode!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.LLMParam != nil {
            map["LLMParam"] = self.LLMParam?.toMap()
        }
        if self.llmEnhancement != nil {
            map["LlmEnhancement"] = self.llmEnhancement!
        }
        if self.multimediaParameters != nil {
            map["MultimediaParameters"] = self.multimediaParameters?.toMap()
        }
        if self.needHeaderFooter != nil {
            map["NeedHeaderFooter"] = self.needHeaderFooter!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.outputHtmlTable != nil {
            map["OutputHtmlTable"] = self.outputHtmlTable!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomOssConfig"] as? [String: Any?] {
            var model = SubmitDocParserJobRequest.CustomOssConfig()
            model.fromMap(value)
            self.customOssConfig = model
        }
        if let value = dict["EnhancementMode"] as? String {
            self.enhancementMode = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["LLMParam"] as? [String: Any?] {
            var model = SubmitDocParserJobRequest.LLMParam()
            model.fromMap(value)
            self.LLMParam = model
        }
        if let value = dict["LlmEnhancement"] as? Bool {
            self.llmEnhancement = value
        }
        if let value = dict["MultimediaParameters"] as? [String: Any?] {
            var model = SubmitDocParserJobRequest.MultimediaParameters()
            model.fromMap(value)
            self.multimediaParameters = model
        }
        if let value = dict["NeedHeaderFooter"] as? Bool {
            self.needHeaderFooter = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["OutputHtmlTable"] as? Bool {
            self.outputHtmlTable = value
        }
        if let value = dict["PageIndex"] as? String {
            self.pageIndex = value
        }
    }
}

public class SubmitDocParserJobAdvanceRequest : Tea.TeaModel {
    public class CustomOssConfig : Tea.TeaModel {
        public var accessId: String?

        public var accessKeySecret: String?

        public var stsToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessId != nil {
                map["AccessId"] = self.accessId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.stsToken != nil {
                map["StsToken"] = self.stsToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? String {
                self.accessId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["StsToken"] as? String {
                self.stsToken = value
            }
        }
    }
    public class LLMParam : Tea.TeaModel {
        public var model: String?

        public var prompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.prompt != nil {
                map["Prompt"] = self.prompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Prompt"] as? String {
                self.prompt = value
            }
        }
    }
    public class MultimediaParameters : Tea.TeaModel {
        public var enableSynopsisParse: Bool?

        public var vlParsePrompt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableSynopsisParse != nil {
                map["EnableSynopsisParse"] = self.enableSynopsisParse!
            }
            if self.vlParsePrompt != nil {
                map["VlParsePrompt"] = self.vlParsePrompt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableSynopsisParse"] as? Bool {
                self.enableSynopsisParse = value
            }
            if let value = dict["VlParsePrompt"] as? String {
                self.vlParsePrompt = value
            }
        }
    }
    public var customOssConfig: SubmitDocParserJobAdvanceRequest.CustomOssConfig?

    public var enhancementMode: String?

    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrlObject: InputStream?

    public var formulaEnhancement: Bool?

    public var LLMParam: SubmitDocParserJobAdvanceRequest.LLMParam?

    public var llmEnhancement: Bool?

    public var multimediaParameters: SubmitDocParserJobAdvanceRequest.MultimediaParameters?

    public var needHeaderFooter: Bool?

    public var option: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var outputHtmlTable: Bool?

    public var pageIndex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customOssConfig?.validate()
        try self.LLMParam?.validate()
        try self.multimediaParameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customOssConfig != nil {
            map["CustomOssConfig"] = self.customOssConfig?.toMap()
        }
        if self.enhancementMode != nil {
            map["EnhancementMode"] = self.enhancementMode!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.LLMParam != nil {
            map["LLMParam"] = self.LLMParam?.toMap()
        }
        if self.llmEnhancement != nil {
            map["LlmEnhancement"] = self.llmEnhancement!
        }
        if self.multimediaParameters != nil {
            map["MultimediaParameters"] = self.multimediaParameters?.toMap()
        }
        if self.needHeaderFooter != nil {
            map["NeedHeaderFooter"] = self.needHeaderFooter!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.outputHtmlTable != nil {
            map["OutputHtmlTable"] = self.outputHtmlTable!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomOssConfig"] as? [String: Any?] {
            var model = SubmitDocParserJobAdvanceRequest.CustomOssConfig()
            model.fromMap(value)
            self.customOssConfig = model
        }
        if let value = dict["EnhancementMode"] as? String {
            self.enhancementMode = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["LLMParam"] as? [String: Any?] {
            var model = SubmitDocParserJobAdvanceRequest.LLMParam()
            model.fromMap(value)
            self.LLMParam = model
        }
        if let value = dict["LlmEnhancement"] as? Bool {
            self.llmEnhancement = value
        }
        if let value = dict["MultimediaParameters"] as? [String: Any?] {
            var model = SubmitDocParserJobAdvanceRequest.MultimediaParameters()
            model.fromMap(value)
            self.multimediaParameters = model
        }
        if let value = dict["NeedHeaderFooter"] as? Bool {
            self.needHeaderFooter = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["OutputHtmlTable"] as? Bool {
            self.outputHtmlTable = value
        }
        if let value = dict["PageIndex"] as? String {
            self.pageIndex = value
        }
    }
}

public class SubmitDocParserJobShrinkRequest : Tea.TeaModel {
    public var customOssConfigShrink: String?

    public var enhancementMode: String?

    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrl: String?

    public var formulaEnhancement: Bool?

    public var LLMParamShrink: String?

    public var llmEnhancement: Bool?

    public var multimediaParametersShrink: String?

    public var needHeaderFooter: Bool?

    public var option: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var outputHtmlTable: Bool?

    public var pageIndex: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customOssConfigShrink != nil {
            map["CustomOssConfig"] = self.customOssConfigShrink!
        }
        if self.enhancementMode != nil {
            map["EnhancementMode"] = self.enhancementMode!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.LLMParamShrink != nil {
            map["LLMParam"] = self.LLMParamShrink!
        }
        if self.llmEnhancement != nil {
            map["LlmEnhancement"] = self.llmEnhancement!
        }
        if self.multimediaParametersShrink != nil {
            map["MultimediaParameters"] = self.multimediaParametersShrink!
        }
        if self.needHeaderFooter != nil {
            map["NeedHeaderFooter"] = self.needHeaderFooter!
        }
        if self.option != nil {
            map["Option"] = self.option!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.outputHtmlTable != nil {
            map["OutputHtmlTable"] = self.outputHtmlTable!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomOssConfig"] as? String {
            self.customOssConfigShrink = value
        }
        if let value = dict["EnhancementMode"] as? String {
            self.enhancementMode = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["LLMParam"] as? String {
            self.LLMParamShrink = value
        }
        if let value = dict["LlmEnhancement"] as? Bool {
            self.llmEnhancement = value
        }
        if let value = dict["MultimediaParameters"] as? String {
            self.multimediaParametersShrink = value
        }
        if let value = dict["NeedHeaderFooter"] as? Bool {
            self.needHeaderFooter = value
        }
        if let value = dict["Option"] as? String {
            self.option = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["OutputHtmlTable"] as? Bool {
            self.outputHtmlTable = value
        }
        if let value = dict["PageIndex"] as? String {
            self.pageIndex = value
        }
    }
}

public class SubmitDocParserJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitDocParserJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitDocParserJobResponseBody.Data()
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

public class SubmitDocParserJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocParserJobResponseBody?

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
            var model = SubmitDocParserJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDocStructureJobRequest : Tea.TeaModel {
    public var allowPptFormat: Bool?

    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrl: String?

    public var formulaEnhancement: Bool?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var pageIndex: String?

    public var structureType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowPptFormat != nil {
            map["AllowPptFormat"] = self.allowPptFormat!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.structureType != nil {
            map["StructureType"] = self.structureType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowPptFormat"] as? Bool {
            self.allowPptFormat = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["PageIndex"] as? String {
            self.pageIndex = value
        }
        if let value = dict["StructureType"] as? String {
            self.structureType = value
        }
    }
}

public class SubmitDocStructureJobAdvanceRequest : Tea.TeaModel {
    public var allowPptFormat: Bool?

    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrlObject: InputStream?

    public var formulaEnhancement: Bool?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var pageIndex: String?

    public var structureType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowPptFormat != nil {
            map["AllowPptFormat"] = self.allowPptFormat!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.formulaEnhancement != nil {
            map["FormulaEnhancement"] = self.formulaEnhancement!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.structureType != nil {
            map["StructureType"] = self.structureType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowPptFormat"] as? Bool {
            self.allowPptFormat = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["FormulaEnhancement"] as? Bool {
            self.formulaEnhancement = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
        if let value = dict["PageIndex"] as? String {
            self.pageIndex = value
        }
        if let value = dict["StructureType"] as? String {
            self.structureType = value
        }
    }
}

public class SubmitDocStructureJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitDocStructureJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitDocStructureJobResponseBody.Data()
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

public class SubmitDocStructureJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocStructureJobResponseBody?

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
            var model = SubmitDocStructureJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitDocumentExtractJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrl: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitDocumentExtractJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrlObject: InputStream?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitDocumentExtractJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitDocumentExtractJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitDocumentExtractJobResponseBody.Data()
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

public class SubmitDocumentExtractJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitDocumentExtractJobResponseBody?

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
            var model = SubmitDocumentExtractJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitTableUnderstandingJobRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrl: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrl != nil {
            map["FileUrl"] = self.fileUrl!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitTableUnderstandingJobAdvanceRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileNameExtension: String?

    public var fileUrlObject: InputStream?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public override init() {
        super.init()
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
        if self.fileNameExtension != nil {
            map["FileNameExtension"] = self.fileNameExtension!
        }
        if self.fileUrlObject != nil {
            map["FileUrl"] = self.fileUrlObject!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileNameExtension"] as? String {
            self.fileNameExtension = value
        }
        if let value = dict["FileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["OssBucket"] as? String {
            self.ossBucket = value
        }
        if let value = dict["OssEndpoint"] as? String {
            self.ossEndpoint = value
        }
    }
}

public class SubmitTableUnderstandingJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: SubmitTableUnderstandingJobResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SubmitTableUnderstandingJobResponseBody.Data()
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

public class SubmitTableUnderstandingJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTableUnderstandingJobResponseBody?

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
            var model = SubmitTableUnderstandingJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
