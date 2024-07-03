import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddMTInterveneWordRequest : Tea.TeaModel {
    public var packageId: String?

    public var projectId: String?

    public var sourceText: String?

    public var targetText: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.projectId != nil {
            map["ProjectId"] = self.projectId!
        }
        if self.sourceText != nil {
            map["SourceText"] = self.sourceText!
        }
        if self.targetText != nil {
            map["TargetText"] = self.targetText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PackageId") {
            self.packageId = dict["PackageId"] as! String
        }
        if dict.keys.contains("ProjectId") {
            self.projectId = dict["ProjectId"] as! String
        }
        if dict.keys.contains("SourceText") {
            self.sourceText = dict["SourceText"] as! String
        }
        if dict.keys.contains("TargetText") {
            self.targetText = dict["TargetText"] as! String
        }
    }
}

public class AddMTInterveneWordResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var wordId: Int64?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wordId != nil {
            map["WordId"] = self.wordId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WordId") {
            self.wordId = dict["WordId"] as! Int64
        }
    }
}

public class AddMTInterveneWordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMTInterveneWordResponseBody?

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
            var model = AddMTInterveneWordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPredictDocRequest : Tea.TeaModel {
    public var docId: Int64?

    public var product: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docId != nil {
            map["DocId"] = self.docId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocId") {
            self.docId = dict["DocId"] as! Int64
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
    }
}

public class GetPredictDocResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultContent: String?

    public var status: Int32?

    public var XLIFFInfo: String?

    public override init() {
        super.init()
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
        if self.resultContent != nil {
            map["ResultContent"] = self.resultContent!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.XLIFFInfo != nil {
            map["XLIFFInfo"] = self.XLIFFInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultContent") {
            self.resultContent = dict["ResultContent"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("XLIFFInfo") {
            self.XLIFFInfo = dict["XLIFFInfo"] as! String
        }
    }
}

public class GetPredictDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPredictDocResponseBody?

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
            var model = GetPredictDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PredictMTModelByDocRequest : Tea.TeaModel {
    public var fileContent: String?

    public var fileType: String?

    public var modelId: Int32?

    public var modelVersion: String?

    public var needXLIFF: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileContent != nil {
            map["FileContent"] = self.fileContent!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.needXLIFF != nil {
            map["NeedXLIFF"] = self.needXLIFF!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileContent") {
            self.fileContent = dict["FileContent"] as! String
        }
        if dict.keys.contains("FileType") {
            self.fileType = dict["FileType"] as! String
        }
        if dict.keys.contains("ModelId") {
            self.modelId = dict["ModelId"] as! Int32
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("NeedXLIFF") {
            self.needXLIFF = dict["NeedXLIFF"] as! Bool
        }
    }
}

public class PredictMTModelByDocResponseBody : Tea.TeaModel {
    public var docId: String?

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
        if self.docId != nil {
            map["DocId"] = self.docId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocId") {
            self.docId = dict["DocId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PredictMTModelByDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PredictMTModelByDocResponseBody?

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
            var model = PredictMTModelByDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
