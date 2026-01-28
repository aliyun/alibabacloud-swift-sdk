import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDocumentInfo : Tea.TeaModel {
    public var documentType: String?

    public var name: String?

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
        if self.documentType != nil {
            map["documentType"] = self.documentType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentType"] as? String {
            self.documentType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class AddDocumentResult : Tea.TeaModel {
    public var docName: String?

    public var documentInfo: DocumentInfo?

    public var errorMessage: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.documentInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docName != nil {
            map["docName"] = self.docName!
        }
        if self.documentInfo != nil {
            map["documentInfo"] = self.documentInfo?.toMap()
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docName"] as? String {
            self.docName = value
        }
        if let value = dict["documentInfo"] as? [String: Any?] {
            var model = DocumentInfo()
            model.fromMap(value)
            self.documentInfo = model
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AnchorResponse : Tea.TeaModel {
    public var anchorCategory: String?

    public var anchorId: String?

    public var anchorMaterialName: String?

    public var anchorType: String?

    public var coverHeight: Int32?

    public var coverRate: String?

    public var coverThumbnailUrl: String?

    public var coverUrl: String?

    public var coverWeight: Int32?

    public var digitalHumanType: String?

    public var gender: String?

    public var resourceTypeDesc: String?

    public var status: String?

    public var supportBgChange: Int32?

    public var useScene: String?

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
        if self.anchorCategory != nil {
            map["anchorCategory"] = self.anchorCategory!
        }
        if self.anchorId != nil {
            map["anchorId"] = self.anchorId!
        }
        if self.anchorMaterialName != nil {
            map["anchorMaterialName"] = self.anchorMaterialName!
        }
        if self.anchorType != nil {
            map["anchorType"] = self.anchorType!
        }
        if self.coverHeight != nil {
            map["coverHeight"] = self.coverHeight!
        }
        if self.coverRate != nil {
            map["coverRate"] = self.coverRate!
        }
        if self.coverThumbnailUrl != nil {
            map["coverThumbnailUrl"] = self.coverThumbnailUrl!
        }
        if self.coverUrl != nil {
            map["coverUrl"] = self.coverUrl!
        }
        if self.coverWeight != nil {
            map["coverWeight"] = self.coverWeight!
        }
        if self.digitalHumanType != nil {
            map["digitalHumanType"] = self.digitalHumanType!
        }
        if self.gender != nil {
            map["gender"] = self.gender!
        }
        if self.resourceTypeDesc != nil {
            map["resourceTypeDesc"] = self.resourceTypeDesc!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.supportBgChange != nil {
            map["supportBgChange"] = self.supportBgChange!
        }
        if self.useScene != nil {
            map["useScene"] = self.useScene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["anchorCategory"] as? String {
            self.anchorCategory = value
        }
        if let value = dict["anchorId"] as? String {
            self.anchorId = value
        }
        if let value = dict["anchorMaterialName"] as? String {
            self.anchorMaterialName = value
        }
        if let value = dict["anchorType"] as? String {
            self.anchorType = value
        }
        if let value = dict["coverHeight"] as? Int32 {
            self.coverHeight = value
        }
        if let value = dict["coverRate"] as? String {
            self.coverRate = value
        }
        if let value = dict["coverThumbnailUrl"] as? String {
            self.coverThumbnailUrl = value
        }
        if let value = dict["coverUrl"] as? String {
            self.coverUrl = value
        }
        if let value = dict["coverWeight"] as? Int32 {
            self.coverWeight = value
        }
        if let value = dict["digitalHumanType"] as? String {
            self.digitalHumanType = value
        }
        if let value = dict["gender"] as? String {
            self.gender = value
        }
        if let value = dict["resourceTypeDesc"] as? String {
            self.resourceTypeDesc = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["supportBgChange"] as? Int32 {
            self.supportBgChange = value
        }
        if let value = dict["useScene"] as? String {
            self.useScene = value
        }
    }
}

public class BatchAddDocumentResult : Tea.TeaModel {
    public var addDocumentResults: [AddDocumentResult]?

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
        if self.addDocumentResults != nil {
            var tmp : [Any] = []
            for k in self.addDocumentResults! {
                tmp.append(k.toMap())
            }
            map["addDocumentResults"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addDocumentResults"] as? [Any?] {
            var tmp : [AddDocumentResult] = []
            for v in value {
                if v != nil {
                    var model = AddDocumentResult()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addDocumentResults = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DocumentInfo : Tea.TeaModel {
    public var documentType: String?

    public var id: String?

    public var name: String?

    public var processStatus: String?

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
        if self.documentType != nil {
            map["documentType"] = self.documentType!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.processStatus != nil {
            map["processStatus"] = self.processStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentType"] as? String {
            self.documentType = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["processStatus"] as? String {
            self.processStatus = value
        }
    }
}

public class DocumentResult : Tea.TeaModel {
    public var documentInfo: DocumentInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.documentInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentInfo != nil {
            map["documentInfo"] = self.documentInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentInfo"] as? [String: Any?] {
            var model = DocumentInfo()
            model.fromMap(value)
            self.documentInfo = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOssUploadTokenResult : Tea.TeaModel {
    public var requestId: String?

    public var uploadInfo: UploadInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uploadInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.uploadInfo != nil {
            map["uploadInfo"] = self.uploadInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["uploadInfo"] as? [String: Any?] {
            var model = UploadInfo()
            model.fromMap(value)
            self.uploadInfo = model
        }
    }
}

public class Illustration : Tea.TeaModel {
    public var illustrationId: Int64?

    public var oss: String?

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
        if self.illustrationId != nil {
            map["illustrationId"] = self.illustrationId!
        }
        if self.oss != nil {
            map["oss"] = self.oss!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["illustrationId"] as? Int64 {
            self.illustrationId = value
        }
        if let value = dict["oss"] as? String {
            self.oss = value
        }
    }
}

public class IllustrationResult : Tea.TeaModel {
    public var illustration: Illustration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.illustration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.illustration != nil {
            map["illustration"] = self.illustration?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["illustration"] as? [String: Any?] {
            var model = Illustration()
            model.fromMap(value)
            self.illustration = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class IllustrationTask : Tea.TeaModel {
    public var gmtCreate: String?

    public var gmtModified: String?

    public var illustrationIds: [Int64]?

    public var illustrationTaskId: Int64?

    public var taskStatus: String?

    public var textId: Int64?

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
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.illustrationIds != nil {
            map["illustrationIds"] = self.illustrationIds!
        }
        if self.illustrationTaskId != nil {
            map["illustrationTaskId"] = self.illustrationTaskId!
        }
        if self.taskStatus != nil {
            map["taskStatus"] = self.taskStatus!
        }
        if self.textId != nil {
            map["textId"] = self.textId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["illustrationIds"] as? [Int64] {
            self.illustrationIds = value
        }
        if let value = dict["illustrationTaskId"] as? Int64 {
            self.illustrationTaskId = value
        }
        if let value = dict["taskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["textId"] as? Int64 {
            self.textId = value
        }
    }
}

public class IllustrationTaskCreateCmd : Tea.TeaModel {
    public var backgroundType: Int32?

    public var dstHeight: Int32?

    public var dstWidth: Int32?

    public var idempotentId: String?

    public var imageUrls: [String]?

    public var nums: Int32?

    public var ossPaths: [String]?

    public var stickerText: String?

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
        if self.backgroundType != nil {
            map["backgroundType"] = self.backgroundType!
        }
        if self.dstHeight != nil {
            map["dstHeight"] = self.dstHeight!
        }
        if self.dstWidth != nil {
            map["dstWidth"] = self.dstWidth!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.imageUrls != nil {
            map["imageUrls"] = self.imageUrls!
        }
        if self.nums != nil {
            map["nums"] = self.nums!
        }
        if self.ossPaths != nil {
            map["ossPaths"] = self.ossPaths!
        }
        if self.stickerText != nil {
            map["stickerText"] = self.stickerText!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backgroundType"] as? Int32 {
            self.backgroundType = value
        }
        if let value = dict["dstHeight"] as? Int32 {
            self.dstHeight = value
        }
        if let value = dict["dstWidth"] as? Int32 {
            self.dstWidth = value
        }
        if let value = dict["idempotentId"] as? String {
            self.idempotentId = value
        }
        if let value = dict["imageUrls"] as? [String] {
            self.imageUrls = value
        }
        if let value = dict["nums"] as? Int32 {
            self.nums = value
        }
        if let value = dict["ossPaths"] as? [String] {
            self.ossPaths = value
        }
        if let value = dict["stickerText"] as? String {
            self.stickerText = value
        }
    }
}

public class IllustrationTaskResult : Tea.TeaModel {
    public var illustrationTask: IllustrationTask?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.illustrationTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.illustrationTask != nil {
            map["illustrationTask"] = self.illustrationTask?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["illustrationTask"] as? [String: Any?] {
            var model = IllustrationTask()
            model.fromMap(value)
            self.illustrationTask = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class KnowledgeBaseInfo : Tea.TeaModel {
    public var description_: String?

    public var id: String?

    public var industry: String?

    public var knowledgeBaseType: String?

    public var name: String?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.knowledgeBaseType != nil {
            map["knowledgeBaseType"] = self.knowledgeBaseType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["knowledgeBaseType"] as? String {
            self.knowledgeBaseType = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class KnowledgeBaseListResult : Tea.TeaModel {
    public var knowledgeBases: [KnowledgeBaseInfo]?

    public var requestId: String?

    public var total: Int32?

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
        if self.knowledgeBases != nil {
            var tmp : [Any] = []
            for k in self.knowledgeBases! {
                tmp.append(k.toMap())
            }
            map["knowledgeBases"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["knowledgeBases"] as? [Any?] {
            var tmp : [KnowledgeBaseInfo] = []
            for v in value {
                if v != nil {
                    var model = KnowledgeBaseInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.knowledgeBases = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ReferenceTag : Tea.TeaModel {
    public var referenceContent: String?

    public var referenceTitle: String?

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
        if self.referenceContent != nil {
            map["referenceContent"] = self.referenceContent!
        }
        if self.referenceTitle != nil {
            map["referenceTitle"] = self.referenceTitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["referenceContent"] as? String {
            self.referenceContent = value
        }
        if let value = dict["referenceTitle"] as? String {
            self.referenceTitle = value
        }
    }
}

public class Text : Tea.TeaModel {
    public var agentId: String?

    public var agentName: String?

    public var desc: String?

    public var errMsg: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var illustrationTaskIdList: [Int64]?

    public var publishStatus: String?

    public var textContent: String?

    public var textId: Int64?

    public var textIllustrationTag: Bool?

    public var textModeType: String?

    public var textStatus: String?

    public var textStyleType: String?

    public var textTaskId: Int64?

    public var textThemes: [String]?

    public var title: String?

    public var userNameCreate: String?

    public var userNameModified: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.agentName != nil {
            map["agentName"] = self.agentName!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.errMsg != nil {
            map["errMsg"] = self.errMsg!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.illustrationTaskIdList != nil {
            map["illustrationTaskIdList"] = self.illustrationTaskIdList!
        }
        if self.publishStatus != nil {
            map["publishStatus"] = self.publishStatus!
        }
        if self.textContent != nil {
            map["textContent"] = self.textContent!
        }
        if self.textId != nil {
            map["textId"] = self.textId!
        }
        if self.textIllustrationTag != nil {
            map["textIllustrationTag"] = self.textIllustrationTag!
        }
        if self.textModeType != nil {
            map["textModeType"] = self.textModeType!
        }
        if self.textStatus != nil {
            map["textStatus"] = self.textStatus!
        }
        if self.textStyleType != nil {
            map["textStyleType"] = self.textStyleType!
        }
        if self.textTaskId != nil {
            map["textTaskId"] = self.textTaskId!
        }
        if self.textThemes != nil {
            map["textThemes"] = self.textThemes!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.userNameCreate != nil {
            map["userNameCreate"] = self.userNameCreate!
        }
        if self.userNameModified != nil {
            map["userNameModified"] = self.userNameModified!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["agentName"] as? String {
            self.agentName = value
        }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["errMsg"] as? String {
            self.errMsg = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["illustrationTaskIdList"] as? [Int64] {
            self.illustrationTaskIdList = value
        }
        if let value = dict["publishStatus"] as? String {
            self.publishStatus = value
        }
        if let value = dict["textContent"] as? String {
            self.textContent = value
        }
        if let value = dict["textId"] as? Int64 {
            self.textId = value
        }
        if let value = dict["textIllustrationTag"] as? Bool {
            self.textIllustrationTag = value
        }
        if let value = dict["textModeType"] as? String {
            self.textModeType = value
        }
        if let value = dict["textStatus"] as? String {
            self.textStatus = value
        }
        if let value = dict["textStyleType"] as? String {
            self.textStyleType = value
        }
        if let value = dict["textTaskId"] as? Int64 {
            self.textTaskId = value
        }
        if let value = dict["textThemes"] as? [String] {
            self.textThemes = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["userNameCreate"] as? String {
            self.userNameCreate = value
        }
        if let value = dict["userNameModified"] as? String {
            self.userNameModified = value
        }
    }
}

public class TextQueryResult : Tea.TeaModel {
    public var requestId: String?

    public var texts: [Text]?

    public var total: Int32?

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
            map["requestId"] = self.requestId!
        }
        if self.texts != nil {
            var tmp : [Any] = []
            for k in self.texts! {
                tmp.append(k.toMap())
            }
            map["texts"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["texts"] as? [Any?] {
            var tmp : [Text] = []
            for v in value {
                if v != nil {
                    var model = Text()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.texts = tmp
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class TextResult : Tea.TeaModel {
    public var requestId: String?

    public var text: Text?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.text?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.text != nil {
            map["text"] = self.text?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["text"] as? [String: Any?] {
            var model = Text()
            model.fromMap(value)
            self.text = model
        }
    }
}

public class TextTask : Tea.TeaModel {
    public var agentId: String?

    public var agentName: String?

    public var contentRequirement: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var introduction: String?

    public var nums: Int32?

    public var point: String?

    public var referenceTag: ReferenceTag?

    public var relatedRagIds: [Int64]?

    public var style: String?

    public var target: String?

    public var textIds: [Int64]?

    public var textModeType: String?

    public var textTaskId: Int64?

    public var textTaskStatus: String?

    public var texts: [Text]?

    public var theme: String?

    public var themeDesc: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceTag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.agentName != nil {
            map["agentName"] = self.agentName!
        }
        if self.contentRequirement != nil {
            map["contentRequirement"] = self.contentRequirement!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.introduction != nil {
            map["introduction"] = self.introduction!
        }
        if self.nums != nil {
            map["nums"] = self.nums!
        }
        if self.point != nil {
            map["point"] = self.point!
        }
        if self.referenceTag != nil {
            map["referenceTag"] = self.referenceTag?.toMap()
        }
        if self.relatedRagIds != nil {
            map["relatedRagIds"] = self.relatedRagIds!
        }
        if self.style != nil {
            map["style"] = self.style!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.textIds != nil {
            map["textIds"] = self.textIds!
        }
        if self.textModeType != nil {
            map["textModeType"] = self.textModeType!
        }
        if self.textTaskId != nil {
            map["textTaskId"] = self.textTaskId!
        }
        if self.textTaskStatus != nil {
            map["textTaskStatus"] = self.textTaskStatus!
        }
        if self.texts != nil {
            var tmp : [Any] = []
            for k in self.texts! {
                tmp.append(k.toMap())
            }
            map["texts"] = tmp
        }
        if self.theme != nil {
            map["theme"] = self.theme!
        }
        if self.themeDesc != nil {
            map["themeDesc"] = self.themeDesc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["agentName"] as? String {
            self.agentName = value
        }
        if let value = dict["contentRequirement"] as? String {
            self.contentRequirement = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["introduction"] as? String {
            self.introduction = value
        }
        if let value = dict["nums"] as? Int32 {
            self.nums = value
        }
        if let value = dict["point"] as? String {
            self.point = value
        }
        if let value = dict["referenceTag"] as? [String: Any?] {
            var model = ReferenceTag()
            model.fromMap(value)
            self.referenceTag = model
        }
        if let value = dict["relatedRagIds"] as? [Int64] {
            self.relatedRagIds = value
        }
        if let value = dict["style"] as? String {
            self.style = value
        }
        if let value = dict["target"] as? String {
            self.target = value
        }
        if let value = dict["textIds"] as? [Int64] {
            self.textIds = value
        }
        if let value = dict["textModeType"] as? String {
            self.textModeType = value
        }
        if let value = dict["textTaskId"] as? Int64 {
            self.textTaskId = value
        }
        if let value = dict["textTaskStatus"] as? String {
            self.textTaskStatus = value
        }
        if let value = dict["texts"] as? [Any?] {
            var tmp : [Text] = []
            for v in value {
                if v != nil {
                    var model = Text()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.texts = tmp
        }
        if let value = dict["theme"] as? String {
            self.theme = value
        }
        if let value = dict["themeDesc"] as? String {
            self.themeDesc = value
        }
    }
}

public class TextTaskCreateCmd : Tea.TeaModel {
    public var agentId: String?

    public var contentRequirement: String?

    public var idempotentId: String?

    public var industry: String?

    public var introduction: String?

    public var number: Int32?

    public var point: String?

    public var referenceTag: ReferenceTag?

    public var relatedRagIds: [Int64]?

    public var streamApi: Bool?

    public var style: String?

    public var target: String?

    public var textModeType: String?

    public var theme: String?

    public var themes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.referenceTag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.contentRequirement != nil {
            map["contentRequirement"] = self.contentRequirement!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.introduction != nil {
            map["introduction"] = self.introduction!
        }
        if self.number != nil {
            map["number"] = self.number!
        }
        if self.point != nil {
            map["point"] = self.point!
        }
        if self.referenceTag != nil {
            map["referenceTag"] = self.referenceTag?.toMap()
        }
        if self.relatedRagIds != nil {
            map["relatedRagIds"] = self.relatedRagIds!
        }
        if self.streamApi != nil {
            map["streamApi"] = self.streamApi!
        }
        if self.style != nil {
            map["style"] = self.style!
        }
        if self.target != nil {
            map["target"] = self.target!
        }
        if self.textModeType != nil {
            map["textModeType"] = self.textModeType!
        }
        if self.theme != nil {
            map["theme"] = self.theme!
        }
        if self.themes != nil {
            map["themes"] = self.themes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["contentRequirement"] as? String {
            self.contentRequirement = value
        }
        if let value = dict["idempotentId"] as? String {
            self.idempotentId = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["introduction"] as? String {
            self.introduction = value
        }
        if let value = dict["number"] as? Int32 {
            self.number = value
        }
        if let value = dict["point"] as? String {
            self.point = value
        }
        if let value = dict["referenceTag"] as? [String: Any?] {
            var model = ReferenceTag()
            model.fromMap(value)
            self.referenceTag = model
        }
        if let value = dict["relatedRagIds"] as? [Int64] {
            self.relatedRagIds = value
        }
        if let value = dict["streamApi"] as? Bool {
            self.streamApi = value
        }
        if let value = dict["style"] as? String {
            self.style = value
        }
        if let value = dict["target"] as? String {
            self.target = value
        }
        if let value = dict["textModeType"] as? String {
            self.textModeType = value
        }
        if let value = dict["theme"] as? String {
            self.theme = value
        }
        if let value = dict["themes"] as? [String] {
            self.themes = value
        }
    }
}

public class TextTaskResult : Tea.TeaModel {
    public var textTask: TextTask?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.textTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.textTask != nil {
            map["textTask"] = self.textTask?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["textTask"] as? [String: Any?] {
            var model = TextTask()
            model.fromMap(value)
            self.textTask = model
        }
    }
}

public class TextTheme : Tea.TeaModel {
    public var desc: String?

    public var name: String?

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
            map["desc"] = self.desc!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
    }
}

public class TextThemeListResult : Tea.TeaModel {
    public var requestId: String?

    public var textThemeList: [TextTheme]?

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
            map["requestId"] = self.requestId!
        }
        if self.textThemeList != nil {
            var tmp : [Any] = []
            for k in self.textThemeList! {
                tmp.append(k.toMap())
            }
            map["textThemeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["textThemeList"] as? [Any?] {
            var tmp : [TextTheme] = []
            for v in value {
                if v != nil {
                    var model = TextTheme()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.textThemeList = tmp
        }
    }
}

public class UploadInfo : Tea.TeaModel {
    public var accessId: String?

    public var host: String?

    public var key: String?

    public var policy: String?

    public var policySignature: String?

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
        if self.accessId != nil {
            map["accessId"] = self.accessId!
        }
        if self.host != nil {
            map["host"] = self.host!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.policy != nil {
            map["policy"] = self.policy!
        }
        if self.policySignature != nil {
            map["policySignature"] = self.policySignature!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessId"] as? String {
            self.accessId = value
        }
        if let value = dict["host"] as? String {
            self.host = value
        }
        if let value = dict["key"] as? String {
            self.key = value
        }
        if let value = dict["policy"] as? String {
            self.policy = value
        }
        if let value = dict["policySignature"] as? String {
            self.policySignature = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class VoiceModelResponse : Tea.TeaModel {
    public var resourceTypeDesc: String?

    public var ttsVersion: Int32?

    public var useScene: String?

    public var voiceDesc: String?

    public var voiceGender: String?

    public var voiceId: Int64?

    public var voiceLanguage: String?

    public var voiceModel: String?

    public var voiceName: String?

    public var voiceType: String?

    public var voiceUrl: String?

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
        if self.resourceTypeDesc != nil {
            map["resourceTypeDesc"] = self.resourceTypeDesc!
        }
        if self.ttsVersion != nil {
            map["ttsVersion"] = self.ttsVersion!
        }
        if self.useScene != nil {
            map["useScene"] = self.useScene!
        }
        if self.voiceDesc != nil {
            map["voiceDesc"] = self.voiceDesc!
        }
        if self.voiceGender != nil {
            map["voiceGender"] = self.voiceGender!
        }
        if self.voiceId != nil {
            map["voiceId"] = self.voiceId!
        }
        if self.voiceLanguage != nil {
            map["voiceLanguage"] = self.voiceLanguage!
        }
        if self.voiceModel != nil {
            map["voiceModel"] = self.voiceModel!
        }
        if self.voiceName != nil {
            map["voiceName"] = self.voiceName!
        }
        if self.voiceType != nil {
            map["voiceType"] = self.voiceType!
        }
        if self.voiceUrl != nil {
            map["voiceUrl"] = self.voiceUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resourceTypeDesc"] as? String {
            self.resourceTypeDesc = value
        }
        if let value = dict["ttsVersion"] as? Int32 {
            self.ttsVersion = value
        }
        if let value = dict["useScene"] as? String {
            self.useScene = value
        }
        if let value = dict["voiceDesc"] as? String {
            self.voiceDesc = value
        }
        if let value = dict["voiceGender"] as? String {
            self.voiceGender = value
        }
        if let value = dict["voiceId"] as? Int64 {
            self.voiceId = value
        }
        if let value = dict["voiceLanguage"] as? String {
            self.voiceLanguage = value
        }
        if let value = dict["voiceModel"] as? String {
            self.voiceModel = value
        }
        if let value = dict["voiceName"] as? String {
            self.voiceName = value
        }
        if let value = dict["voiceType"] as? String {
            self.voiceType = value
        }
        if let value = dict["voiceUrl"] as? String {
            self.voiceUrl = value
        }
    }
}

public class AddTextFeedbackRequest : Tea.TeaModel {
    public var content: String?

    public var quality: Int32?

    public var textId: Int64?

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
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.quality != nil {
            map["quality"] = self.quality!
        }
        if self.textId != nil {
            map["textId"] = self.textId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["quality"] as? Int32 {
            self.quality = value
        }
        if let value = dict["textId"] as? Int64 {
            self.textId = value
        }
    }
}

public class AddTextFeedbackResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddTextFeedbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTextFeedbackResponseBody?

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
            var model = AddTextFeedbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchAddDocumentRequest : Tea.TeaModel {
    public var addDocumentInfos: [AddDocumentInfo]?

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
        if self.addDocumentInfos != nil {
            var tmp : [Any] = []
            for k in self.addDocumentInfos! {
                tmp.append(k.toMap())
            }
            map["addDocumentInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["addDocumentInfos"] as? [Any?] {
            var tmp : [AddDocumentInfo] = []
            for v in value {
                if v != nil {
                    var model = AddDocumentInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addDocumentInfos = tmp
        }
    }
}

public class BatchAddDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddDocumentResult?

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
            var model = BatchAddDocumentResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchCreateAICoachTaskRequest : Tea.TeaModel {
    public class StudentList : Tea.TeaModel {
        public var studentAudioUrl: String?

        public var studentId: String?

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
            if self.studentAudioUrl != nil {
                map["studentAudioUrl"] = self.studentAudioUrl!
            }
            if self.studentId != nil {
                map["studentId"] = self.studentId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["studentAudioUrl"] as? String {
                self.studentAudioUrl = value
            }
            if let value = dict["studentId"] as? String {
                self.studentId = value
            }
        }
    }
    public var requestId: String?

    public var scriptRecordId: String?

    public var studentIds: [String]?

    public var studentList: [BatchCreateAICoachTaskRequest.StudentList]?

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
            map["requestId"] = self.requestId!
        }
        if self.scriptRecordId != nil {
            map["scriptRecordId"] = self.scriptRecordId!
        }
        if self.studentIds != nil {
            map["studentIds"] = self.studentIds!
        }
        if self.studentList != nil {
            var tmp : [Any] = []
            for k in self.studentList! {
                tmp.append(k.toMap())
            }
            map["studentList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scriptRecordId"] as? String {
            self.scriptRecordId = value
        }
        if let value = dict["studentIds"] as? [String] {
            self.studentIds = value
        }
        if let value = dict["studentList"] as? [Any?] {
            var tmp : [BatchCreateAICoachTaskRequest.StudentList] = []
            for v in value {
                if v != nil {
                    var model = BatchCreateAICoachTaskRequest.StudentList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.studentList = tmp
        }
    }
}

public class BatchCreateAICoachTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskIds: [String]?

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
            map["requestId"] = self.requestId!
        }
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskIds"] as? [String] {
            self.taskIds = value
        }
    }
}

public class BatchCreateAICoachTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchCreateAICoachTaskResponseBody?

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
            var model = BatchCreateAICoachTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchDeletePracticeTaskRequest : Tea.TeaModel {
    public var idempotentId: String?

    public var taskIds: [String]?

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
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["idempotentId"] as? String {
            self.idempotentId = value
        }
        if let value = dict["taskIds"] as? [String] {
            self.taskIds = value
        }
    }
}

public class BatchDeletePracticeTaskShrinkRequest : Tea.TeaModel {
    public var idempotentId: String?

    public var taskIdsShrink: String?

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
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        if self.taskIdsShrink != nil {
            map["taskIds"] = self.taskIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["idempotentId"] as? String {
            self.idempotentId = value
        }
        if let value = dict["taskIds"] as? String {
            self.taskIdsShrink = value
        }
    }
}

public class BatchDeletePracticeTaskResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public var message: String?

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
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var results: [BatchDeletePracticeTaskResponseBody.Results]?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["results"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [BatchDeletePracticeTaskResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = BatchDeletePracticeTaskResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchDeletePracticeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeletePracticeTaskResponseBody?

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
            var model = BatchDeletePracticeTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetProjectTaskRequest : Tea.TeaModel {
    public var taskIdList: [String]?

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
        if self.taskIdList != nil {
            map["taskIdList"] = self.taskIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIdList"] as? [String] {
            self.taskIdList = value
        }
    }
}

public class BatchGetProjectTaskShrinkRequest : Tea.TeaModel {
    public var taskIdListShrink: String?

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
        if self.taskIdListShrink != nil {
            map["taskIdList"] = self.taskIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIdList"] as? String {
            self.taskIdListShrink = value
        }
    }
}

public class BatchGetProjectTaskResponseBody : Tea.TeaModel {
    public class ResultList : Tea.TeaModel {
        public var errorMsg: String?

        public var status: String?

        public var taskId: String?

        public var videoDownloadUrl: String?

        public var videoDuration: Int32?

        public var videoUrl: String?

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
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.videoDownloadUrl != nil {
                map["videoDownloadUrl"] = self.videoDownloadUrl!
            }
            if self.videoDuration != nil {
                map["videoDuration"] = self.videoDuration!
            }
            if self.videoUrl != nil {
                map["videoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["videoDownloadUrl"] as? String {
                self.videoDownloadUrl = value
            }
            if let value = dict["videoDuration"] as? Int32 {
                self.videoDuration = value
            }
            if let value = dict["videoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var requestId: String?

    public var resultList: [BatchGetProjectTaskResponseBody.ResultList]?

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
            map["requestId"] = self.requestId!
        }
        if self.resultList != nil {
            var tmp : [Any] = []
            for k in self.resultList! {
                tmp.append(k.toMap())
            }
            map["resultList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resultList"] as? [Any?] {
            var tmp : [BatchGetProjectTaskResponseBody.ResultList] = []
            for v in value {
                if v != nil {
                    var model = BatchGetProjectTaskResponseBody.ResultList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultList = tmp
        }
    }
}

public class BatchGetProjectTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetProjectTaskResponseBody?

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
            var model = BatchGetProjectTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetTrainTaskRequest : Tea.TeaModel {
    public var aliyunMainId: String?

    public var taskIdList: [String]?

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
        if self.aliyunMainId != nil {
            map["aliyunMainId"] = self.aliyunMainId!
        }
        if self.taskIdList != nil {
            map["taskIdList"] = self.taskIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliyunMainId"] as? String {
            self.aliyunMainId = value
        }
        if let value = dict["taskIdList"] as? [String] {
            self.taskIdList = value
        }
    }
}

public class BatchGetTrainTaskShrinkRequest : Tea.TeaModel {
    public var aliyunMainId: String?

    public var taskIdListShrink: String?

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
        if self.aliyunMainId != nil {
            map["aliyunMainId"] = self.aliyunMainId!
        }
        if self.taskIdListShrink != nil {
            map["taskIdList"] = self.taskIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliyunMainId"] as? String {
            self.aliyunMainId = value
        }
        if let value = dict["taskIdList"] as? String {
            self.taskIdListShrink = value
        }
    }
}

public class BatchGetTrainTaskResponseBody : Tea.TeaModel {
    public class VoiceList : Tea.TeaModel {
        public class VoiceMaterial : Tea.TeaModel {
            public var voiceId: Int64?

            public var voiceLanguage: String?

            public var voiceUrl: String?

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
                if self.voiceId != nil {
                    map["voiceId"] = self.voiceId!
                }
                if self.voiceLanguage != nil {
                    map["voiceLanguage"] = self.voiceLanguage!
                }
                if self.voiceUrl != nil {
                    map["voiceUrl"] = self.voiceUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["voiceId"] as? Int64 {
                    self.voiceId = value
                }
                if let value = dict["voiceLanguage"] as? String {
                    self.voiceLanguage = value
                }
                if let value = dict["voiceUrl"] as? String {
                    self.voiceUrl = value
                }
            }
        }
        public var aliyunSubId: String?

        public var auditFailMessage: String?

        public var auditStatus: String?

        public var createTime: String?

        public var gender: String?

        public var name: String?

        public var resSpecType: String?

        public var taskId: String?

        public var taskType: String?

        public var trainFailMessage: String?

        public var trainStatus: String?

        public var useScene: String?

        public var voiceMaterial: BatchGetTrainTaskResponseBody.VoiceList.VoiceMaterial?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.voiceMaterial?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunSubId != nil {
                map["aliyunSubId"] = self.aliyunSubId!
            }
            if self.auditFailMessage != nil {
                map["auditFailMessage"] = self.auditFailMessage!
            }
            if self.auditStatus != nil {
                map["auditStatus"] = self.auditStatus!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.gender != nil {
                map["gender"] = self.gender!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resSpecType != nil {
                map["resSpecType"] = self.resSpecType!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["taskType"] = self.taskType!
            }
            if self.trainFailMessage != nil {
                map["trainFailMessage"] = self.trainFailMessage!
            }
            if self.trainStatus != nil {
                map["trainStatus"] = self.trainStatus!
            }
            if self.useScene != nil {
                map["useScene"] = self.useScene!
            }
            if self.voiceMaterial != nil {
                map["voiceMaterial"] = self.voiceMaterial?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["aliyunSubId"] as? String {
                self.aliyunSubId = value
            }
            if let value = dict["auditFailMessage"] as? String {
                self.auditFailMessage = value
            }
            if let value = dict["auditStatus"] as? String {
                self.auditStatus = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["gender"] as? String {
                self.gender = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["resSpecType"] as? String {
                self.resSpecType = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskType"] as? String {
                self.taskType = value
            }
            if let value = dict["trainFailMessage"] as? String {
                self.trainFailMessage = value
            }
            if let value = dict["trainStatus"] as? String {
                self.trainStatus = value
            }
            if let value = dict["useScene"] as? String {
                self.useScene = value
            }
            if let value = dict["voiceMaterial"] as? [String: Any?] {
                var model = BatchGetTrainTaskResponseBody.VoiceList.VoiceMaterial()
                model.fromMap(value)
                self.voiceMaterial = model
            }
        }
    }
    public var requestId: String?

    public var voiceList: [BatchGetTrainTaskResponseBody.VoiceList]?

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
            map["requestId"] = self.requestId!
        }
        if self.voiceList != nil {
            var tmp : [Any] = []
            for k in self.voiceList! {
                tmp.append(k.toMap())
            }
            map["voiceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["voiceList"] as? [Any?] {
            var tmp : [BatchGetTrainTaskResponseBody.VoiceList] = []
            for v in value {
                if v != nil {
                    var model = BatchGetTrainTaskResponseBody.VoiceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.voiceList = tmp
        }
    }
}

public class BatchGetTrainTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetTrainTaskResponseBody?

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
            var model = BatchGetTrainTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetVideoClipTaskRequest : Tea.TeaModel {
    public var taskIdList: [String]?

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
        if self.taskIdList != nil {
            map["taskIdList"] = self.taskIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIdList"] as? [String] {
            self.taskIdList = value
        }
    }
}

public class BatchGetVideoClipTaskShrinkRequest : Tea.TeaModel {
    public var taskIdListShrink: String?

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
        if self.taskIdListShrink != nil {
            map["taskIdList"] = self.taskIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIdList"] as? String {
            self.taskIdListShrink = value
        }
    }
}

public class BatchGetVideoClipTaskResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public class VideoList : Tea.TeaModel {
            public var beginTime: Int32?

            public var description_: String?

            public var endTime: Int32?

            public var errorMsg: String?

            public var title: String?

            public var videoDownloadUrl: String?

            public var videoName: String?

            public var videoUrl: String?

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
                if self.beginTime != nil {
                    map["beginTime"] = self.beginTime!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.errorMsg != nil {
                    map["errorMsg"] = self.errorMsg!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.videoDownloadUrl != nil {
                    map["videoDownloadUrl"] = self.videoDownloadUrl!
                }
                if self.videoName != nil {
                    map["videoName"] = self.videoName!
                }
                if self.videoUrl != nil {
                    map["videoUrl"] = self.videoUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["beginTime"] as? Int32 {
                    self.beginTime = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["endTime"] as? Int32 {
                    self.endTime = value
                }
                if let value = dict["errorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["videoDownloadUrl"] as? String {
                    self.videoDownloadUrl = value
                }
                if let value = dict["videoName"] as? String {
                    self.videoName = value
                }
                if let value = dict["videoUrl"] as? String {
                    self.videoUrl = value
                }
            }
        }
        public var status: String?

        public var taskId: String?

        public var totalDuration: Double?

        public var totalToken: Int64?

        public var videoList: [BatchGetVideoClipTaskResponseBody.TaskList.VideoList]?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.totalDuration != nil {
                map["totalDuration"] = self.totalDuration!
            }
            if self.totalToken != nil {
                map["totalToken"] = self.totalToken!
            }
            if self.videoList != nil {
                var tmp : [Any] = []
                for k in self.videoList! {
                    tmp.append(k.toMap())
                }
                map["videoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["totalDuration"] as? Double {
                self.totalDuration = value
            }
            if let value = dict["totalToken"] as? Int64 {
                self.totalToken = value
            }
            if let value = dict["videoList"] as? [Any?] {
                var tmp : [BatchGetVideoClipTaskResponseBody.TaskList.VideoList] = []
                for v in value {
                    if v != nil {
                        var model = BatchGetVideoClipTaskResponseBody.TaskList.VideoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.videoList = tmp
            }
        }
    }
    public var requestId: String?

    public var taskList: [BatchGetVideoClipTaskResponseBody.TaskList]?

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
            map["requestId"] = self.requestId!
        }
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["taskList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskList"] as? [Any?] {
            var tmp : [BatchGetVideoClipTaskResponseBody.TaskList] = []
            for v in value {
                if v != nil {
                    var model = BatchGetVideoClipTaskResponseBody.TaskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskList = tmp
        }
    }
}

public class BatchGetVideoClipTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetVideoClipTaskResponseBody?

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
            var model = BatchGetVideoClipTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchQueryIndividuationTextRequest : Tea.TeaModel {
    public var textIdList: [String]?

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
        if self.textIdList != nil {
            map["textIdList"] = self.textIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["textIdList"] as? [String] {
            self.textIdList = value
        }
    }
}

public class BatchQueryIndividuationTextShrinkRequest : Tea.TeaModel {
    public var textIdListShrink: String?

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
        if self.textIdListShrink != nil {
            map["textIdList"] = self.textIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["textIdList"] as? String {
            self.textIdListShrink = value
        }
    }
}

public class BatchQueryIndividuationTextResponseBody : Tea.TeaModel {
    public class TextList : Tea.TeaModel {
        public var content: String?

        public var createTime: String?

        public var errorMsg: String?

        public var itemId: String?

        public var projectId: String?

        public var status: String?

        public var taskId: String?

        public var textId: String?

        public var updateTime: String?

        public var userId: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.itemId != nil {
                map["itemId"] = self.itemId!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.textId != nil {
                map["textId"] = self.textId!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["itemId"] as? String {
                self.itemId = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["textId"] as? String {
                self.textId = value
            }
            if let value = dict["updateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var requestId: String?

    public var textList: [BatchQueryIndividuationTextResponseBody.TextList]?

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
            map["requestId"] = self.requestId!
        }
        if self.textList != nil {
            var tmp : [Any] = []
            for k in self.textList! {
                tmp.append(k.toMap())
            }
            map["textList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["textList"] as? [Any?] {
            var tmp : [BatchQueryIndividuationTextResponseBody.TextList] = []
            for v in value {
                if v != nil {
                    var model = BatchQueryIndividuationTextResponseBody.TextList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.textList = tmp
        }
    }
}

public class BatchQueryIndividuationTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQueryIndividuationTextResponseBody?

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
            var model = BatchQueryIndividuationTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BuildAICoachScriptRecordRequest : Tea.TeaModel {
    public var scriptJsonUrl: String?

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
        if self.scriptJsonUrl != nil {
            map["scriptJsonUrl"] = self.scriptJsonUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scriptJsonUrl"] as? String {
            self.scriptJsonUrl = value
        }
    }
}

public class BuildAICoachScriptRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var scriptId: String?

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
            if self.scriptId != nil {
                map["scriptId"] = self.scriptId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["scriptId"] as? String {
                self.scriptId = value
            }
        }
    }
    public var data: BuildAICoachScriptRecordResponseBody.Data?

    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var scriptRecordId: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scriptRecordId != nil {
            map["scriptRecordId"] = self.scriptRecordId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = BuildAICoachScriptRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scriptRecordId"] as? String {
            self.scriptRecordId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class BuildAICoachScriptRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BuildAICoachScriptRecordResponseBody?

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
            var model = BuildAICoachScriptRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckSessionRequest : Tea.TeaModel {
    public var projectId: String?

    public var sessionId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class CheckSessionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CheckSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSessionResponseBody?

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
            var model = CheckSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloseAICoachTaskSessionRequest : Tea.TeaModel {
    public var sessionId: String?

    public var uid: String?

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
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class CloseAICoachTaskSessionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class CloseAICoachTaskSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseAICoachTaskSessionResponseBody?

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
            var model = CloseAICoachTaskSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CountTextRequest : Tea.TeaModel {
    public var generationSource: String?

    public var industry: String?

    public var publishStatus: String?

    public var style: String?

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
        if self.generationSource != nil {
            map["generationSource"] = self.generationSource!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.publishStatus != nil {
            map["publishStatus"] = self.publishStatus!
        }
        if self.style != nil {
            map["style"] = self.style!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["generationSource"] as? String {
            self.generationSource = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["publishStatus"] as? String {
            self.publishStatus = value
        }
        if let value = dict["style"] as? String {
            self.style = value
        }
    }
}

public class CountTextResponseBody : Tea.TeaModel {
    public class CountTextCmdList : Tea.TeaModel {
        public var count: Int64?

        public var theme: String?

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
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.theme != nil {
                map["theme"] = self.theme!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["count"] as? Int64 {
                self.count = value
            }
            if let value = dict["theme"] as? String {
                self.theme = value
            }
        }
    }
    public var requestId: String?

    public var countTextCmdList: [CountTextResponseBody.CountTextCmdList]?

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
        if self.countTextCmdList != nil {
            var tmp : [Any] = []
            for k in self.countTextCmdList! {
                tmp.append(k.toMap())
            }
            map["countTextCmdList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["countTextCmdList"] as? [Any?] {
            var tmp : [CountTextResponseBody.CountTextCmdList] = []
            for v in value {
                if v != nil {
                    var model = CountTextResponseBody.CountTextCmdList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.countTextCmdList = tmp
        }
    }
}

public class CountTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CountTextResponseBody?

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
            var model = CountTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAICoachTaskRequest : Tea.TeaModel {
    public var requestId: String?

    public var scriptRecordId: String?

    public var studentAudioUrl: String?

    public var studentId: String?

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
            map["requestId"] = self.requestId!
        }
        if self.scriptRecordId != nil {
            map["scriptRecordId"] = self.scriptRecordId!
        }
        if self.studentAudioUrl != nil {
            map["studentAudioUrl"] = self.studentAudioUrl!
        }
        if self.studentId != nil {
            map["studentId"] = self.studentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scriptRecordId"] as? String {
            self.scriptRecordId = value
        }
        if let value = dict["studentAudioUrl"] as? String {
            self.studentAudioUrl = value
        }
        if let value = dict["studentId"] as? String {
            self.studentId = value
        }
    }
}

public class CreateAICoachTaskResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateAICoachTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAICoachTaskResponseBody?

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
            var model = CreateAICoachTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAICoachTaskSessionRequest : Tea.TeaModel {
    public var taskId: String?

    public var uid: String?

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
            map["taskId"] = self.taskId!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class CreateAICoachTaskSessionResponseBody : Tea.TeaModel {
    public class ScriptInfo : Tea.TeaModel {
        public var agentIconUrl: String?

        public var characterName: String?

        public var dialogueTextFlag: Bool?

        public var dialogueTipFlag: Bool?

        public var initiator: String?

        public var inputTypeList: [String]?

        public var maxDuration: Int64?

        public var scriptDesc: String?

        public var scriptName: String?

        public var scriptRecordId: String?

        public var scriptType: Int64?

        public var sparringTipContent: String?

        public var sparringTipTitle: String?

        public var studentThinkTimeFlag: Bool?

        public var studentThinkTimeLimit: Int64?

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
            if self.agentIconUrl != nil {
                map["agentIconUrl"] = self.agentIconUrl!
            }
            if self.characterName != nil {
                map["characterName"] = self.characterName!
            }
            if self.dialogueTextFlag != nil {
                map["dialogueTextFlag"] = self.dialogueTextFlag!
            }
            if self.dialogueTipFlag != nil {
                map["dialogueTipFlag"] = self.dialogueTipFlag!
            }
            if self.initiator != nil {
                map["initiator"] = self.initiator!
            }
            if self.inputTypeList != nil {
                map["inputTypeList"] = self.inputTypeList!
            }
            if self.maxDuration != nil {
                map["maxDuration"] = self.maxDuration!
            }
            if self.scriptDesc != nil {
                map["scriptDesc"] = self.scriptDesc!
            }
            if self.scriptName != nil {
                map["scriptName"] = self.scriptName!
            }
            if self.scriptRecordId != nil {
                map["scriptRecordId"] = self.scriptRecordId!
            }
            if self.scriptType != nil {
                map["scriptType"] = self.scriptType!
            }
            if self.sparringTipContent != nil {
                map["sparringTipContent"] = self.sparringTipContent!
            }
            if self.sparringTipTitle != nil {
                map["sparringTipTitle"] = self.sparringTipTitle!
            }
            if self.studentThinkTimeFlag != nil {
                map["studentThinkTimeFlag"] = self.studentThinkTimeFlag!
            }
            if self.studentThinkTimeLimit != nil {
                map["studentThinkTimeLimit"] = self.studentThinkTimeLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentIconUrl"] as? String {
                self.agentIconUrl = value
            }
            if let value = dict["characterName"] as? String {
                self.characterName = value
            }
            if let value = dict["dialogueTextFlag"] as? Bool {
                self.dialogueTextFlag = value
            }
            if let value = dict["dialogueTipFlag"] as? Bool {
                self.dialogueTipFlag = value
            }
            if let value = dict["initiator"] as? String {
                self.initiator = value
            }
            if let value = dict["inputTypeList"] as? [String] {
                self.inputTypeList = value
            }
            if let value = dict["maxDuration"] as? Int64 {
                self.maxDuration = value
            }
            if let value = dict["scriptDesc"] as? String {
                self.scriptDesc = value
            }
            if let value = dict["scriptName"] as? String {
                self.scriptName = value
            }
            if let value = dict["scriptRecordId"] as? String {
                self.scriptRecordId = value
            }
            if let value = dict["scriptType"] as? Int64 {
                self.scriptType = value
            }
            if let value = dict["sparringTipContent"] as? String {
                self.sparringTipContent = value
            }
            if let value = dict["sparringTipTitle"] as? String {
                self.sparringTipTitle = value
            }
            if let value = dict["studentThinkTimeFlag"] as? Bool {
                self.studentThinkTimeFlag = value
            }
            if let value = dict["studentThinkTimeLimit"] as? Int64 {
                self.studentThinkTimeLimit = value
            }
        }
    }
    public var channelToken: String?

    public var requestId: String?

    public var scriptInfo: CreateAICoachTaskSessionResponseBody.ScriptInfo?

    public var sessionId: String?

    public var sessionStatus: Int64?

    public var token: String?

    public var webSocketUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.scriptInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelToken != nil {
            map["channelToken"] = self.channelToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scriptInfo != nil {
            map["scriptInfo"] = self.scriptInfo?.toMap()
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.sessionStatus != nil {
            map["sessionStatus"] = self.sessionStatus!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.webSocketUrl != nil {
            map["webSocketUrl"] = self.webSocketUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelToken"] as? String {
            self.channelToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scriptInfo"] as? [String: Any?] {
            var model = CreateAICoachTaskSessionResponseBody.ScriptInfo()
            model.fromMap(value)
            self.scriptInfo = model
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["sessionStatus"] as? Int64 {
            self.sessionStatus = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["webSocketUrl"] as? String {
            self.webSocketUrl = value
        }
    }
}

public class CreateAICoachTaskSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAICoachTaskSessionResponseBody?

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
            var model = CreateAICoachTaskSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgentRequest : Tea.TeaModel {
    public var agentIconUrl: String?

    public var agentName: String?

    public var agentScene: String?

    public var characterAgeStage: String?

    public var characterGender: String?

    public var characterName: String?

    public var extraDescription: String?

    public var industry: String?

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
        if self.agentIconUrl != nil {
            map["agentIconUrl"] = self.agentIconUrl!
        }
        if self.agentName != nil {
            map["agentName"] = self.agentName!
        }
        if self.agentScene != nil {
            map["agentScene"] = self.agentScene!
        }
        if self.characterAgeStage != nil {
            map["characterAgeStage"] = self.characterAgeStage!
        }
        if self.characterGender != nil {
            map["characterGender"] = self.characterGender!
        }
        if self.characterName != nil {
            map["characterName"] = self.characterName!
        }
        if self.extraDescription != nil {
            map["extraDescription"] = self.extraDescription!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentIconUrl"] as? String {
            self.agentIconUrl = value
        }
        if let value = dict["agentName"] as? String {
            self.agentName = value
        }
        if let value = dict["agentScene"] as? String {
            self.agentScene = value
        }
        if let value = dict["characterAgeStage"] as? String {
            self.characterAgeStage = value
        }
        if let value = dict["characterGender"] as? String {
            self.characterGender = value
        }
        if let value = dict["characterName"] as? String {
            self.characterName = value
        }
        if let value = dict["extraDescription"] as? String {
            self.extraDescription = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
    }
}

public class CreateAgentResponseBody : Tea.TeaModel {
    public var agentId: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgentResponseBody?

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
            var model = CreateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAnchorRequest : Tea.TeaModel {
    public var anchorCategory: String?

    public var anchorMaterialName: String?

    public var coverUrl: String?

    public var digitalHumanType: String?

    public var gender: String?

    public var useScene: String?

    public var videoOssKey: String?

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
        if self.anchorCategory != nil {
            map["anchorCategory"] = self.anchorCategory!
        }
        if self.anchorMaterialName != nil {
            map["anchorMaterialName"] = self.anchorMaterialName!
        }
        if self.coverUrl != nil {
            map["coverUrl"] = self.coverUrl!
        }
        if self.digitalHumanType != nil {
            map["digitalHumanType"] = self.digitalHumanType!
        }
        if self.gender != nil {
            map["gender"] = self.gender!
        }
        if self.useScene != nil {
            map["useScene"] = self.useScene!
        }
        if self.videoOssKey != nil {
            map["videoOssKey"] = self.videoOssKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["anchorCategory"] as? String {
            self.anchorCategory = value
        }
        if let value = dict["anchorMaterialName"] as? String {
            self.anchorMaterialName = value
        }
        if let value = dict["coverUrl"] as? String {
            self.coverUrl = value
        }
        if let value = dict["digitalHumanType"] as? String {
            self.digitalHumanType = value
        }
        if let value = dict["gender"] as? String {
            self.gender = value
        }
        if let value = dict["useScene"] as? String {
            self.useScene = value
        }
        if let value = dict["videoOssKey"] as? String {
            self.videoOssKey = value
        }
    }
}

public class CreateAnchorResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateAnchorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAnchorResponseBody?

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
            var model = CreateAnchorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIllustrationTaskRequest : Tea.TeaModel {
    public var body: IllustrationTaskCreateCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = IllustrationTaskCreateCmd()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIllustrationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IllustrationTaskResult?

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
            var model = IllustrationTaskResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIndividuationProjectRequest : Tea.TeaModel {
    public var projectInfo: String?

    public var projectName: String?

    public var purpose: String?

    public var sceneId: String?

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
        if self.projectInfo != nil {
            map["projectInfo"] = self.projectInfo!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.purpose != nil {
            map["purpose"] = self.purpose!
        }
        if self.sceneId != nil {
            map["sceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectInfo"] as? String {
            self.projectInfo = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["purpose"] as? String {
            self.purpose = value
        }
        if let value = dict["sceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class CreateIndividuationProjectResponseBody : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateIndividuationProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIndividuationProjectResponseBody?

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
            var model = CreateIndividuationProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIndividuationTextTaskRequest : Tea.TeaModel {
    public var crowdPack: [[String]]?

    public var projectId: String?

    public var taskName: String?

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
        if self.crowdPack != nil {
            map["crowdPack"] = self.crowdPack!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["crowdPack"] as? [[String]] {
            self.crowdPack = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
    }
}

public class CreateIndividuationTextTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateIndividuationTextTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIndividuationTextTaskResponseBody?

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
            var model = CreateIndividuationTextTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProductImageRequest : Tea.TeaModel {
    public var backgroundDescription: String?

    public var backgroundPriority: Int32?

    public var backgroundUrl: String?

    public var highlightText: String?

    public var imageCount: Int32?

    public var imageUrl: String?

    public var subTitle: String?

    public var title: String?

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
        if self.backgroundDescription != nil {
            map["backgroundDescription"] = self.backgroundDescription!
        }
        if self.backgroundPriority != nil {
            map["backgroundPriority"] = self.backgroundPriority!
        }
        if self.backgroundUrl != nil {
            map["backgroundUrl"] = self.backgroundUrl!
        }
        if self.highlightText != nil {
            map["highlightText"] = self.highlightText!
        }
        if self.imageCount != nil {
            map["imageCount"] = self.imageCount!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.subTitle != nil {
            map["subTitle"] = self.subTitle!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["backgroundDescription"] as? String {
            self.backgroundDescription = value
        }
        if let value = dict["backgroundPriority"] as? Int32 {
            self.backgroundPriority = value
        }
        if let value = dict["backgroundUrl"] as? String {
            self.backgroundUrl = value
        }
        if let value = dict["highlightText"] as? String {
            self.highlightText = value
        }
        if let value = dict["imageCount"] as? Int32 {
            self.imageCount = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["subTitle"] as? String {
            self.subTitle = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class CreateProductImageResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateProductImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductImageResponseBody?

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
            var model = CreateProductImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRealisticPortraitRequest : Tea.TeaModel {
    public var ages: [Int32]?

    public var cloth: Int32?

    public var color: Int32?

    public var custom: String?

    public var face: [Int32]?

    public var figure: Int32?

    public var gender: Int32?

    public var hairColor: Int32?

    public var hairstyle: Int32?

    public var height: Int32?

    public var imageUrl: String?

    public var numbers: Int32?

    public var ratio: String?

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
        if self.ages != nil {
            map["ages"] = self.ages!
        }
        if self.cloth != nil {
            map["cloth"] = self.cloth!
        }
        if self.color != nil {
            map["color"] = self.color!
        }
        if self.custom != nil {
            map["custom"] = self.custom!
        }
        if self.face != nil {
            map["face"] = self.face!
        }
        if self.figure != nil {
            map["figure"] = self.figure!
        }
        if self.gender != nil {
            map["gender"] = self.gender!
        }
        if self.hairColor != nil {
            map["hairColor"] = self.hairColor!
        }
        if self.hairstyle != nil {
            map["hairstyle"] = self.hairstyle!
        }
        if self.height != nil {
            map["height"] = self.height!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.numbers != nil {
            map["numbers"] = self.numbers!
        }
        if self.ratio != nil {
            map["ratio"] = self.ratio!
        }
        if self.width != nil {
            map["width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ages"] as? [Int32] {
            self.ages = value
        }
        if let value = dict["cloth"] as? Int32 {
            self.cloth = value
        }
        if let value = dict["color"] as? Int32 {
            self.color = value
        }
        if let value = dict["custom"] as? String {
            self.custom = value
        }
        if let value = dict["face"] as? [Int32] {
            self.face = value
        }
        if let value = dict["figure"] as? Int32 {
            self.figure = value
        }
        if let value = dict["gender"] as? Int32 {
            self.gender = value
        }
        if let value = dict["hairColor"] as? Int32 {
            self.hairColor = value
        }
        if let value = dict["hairstyle"] as? Int32 {
            self.hairstyle = value
        }
        if let value = dict["height"] as? Int32 {
            self.height = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["numbers"] as? Int32 {
            self.numbers = value
        }
        if let value = dict["ratio"] as? String {
            self.ratio = value
        }
        if let value = dict["width"] as? Int32 {
            self.width = value
        }
    }
}

public class CreateRealisticPortraitResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateRealisticPortraitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRealisticPortraitResponseBody?

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
            var model = CreateRealisticPortraitResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTextTaskRequest : Tea.TeaModel {
    public var body: TextTaskCreateCmd?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = TextTaskCreateCmd()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTextTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextTaskResult?

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
            var model = TextTaskResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrainTaskRequest : Tea.TeaModel {
    public var aliyunMainId: String?

    public var resSpecType: String?

    public var taskType: String?

    public var useScene: String?

    public var voiceGender: String?

    public var voiceLanguage: String?

    public var voiceName: String?

    public var voicePath: String?

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
        if self.aliyunMainId != nil {
            map["aliyunMainId"] = self.aliyunMainId!
        }
        if self.resSpecType != nil {
            map["resSpecType"] = self.resSpecType!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        if self.useScene != nil {
            map["useScene"] = self.useScene!
        }
        if self.voiceGender != nil {
            map["voiceGender"] = self.voiceGender!
        }
        if self.voiceLanguage != nil {
            map["voiceLanguage"] = self.voiceLanguage!
        }
        if self.voiceName != nil {
            map["voiceName"] = self.voiceName!
        }
        if self.voicePath != nil {
            map["voicePath"] = self.voicePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliyunMainId"] as? String {
            self.aliyunMainId = value
        }
        if let value = dict["resSpecType"] as? String {
            self.resSpecType = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
        }
        if let value = dict["useScene"] as? String {
            self.useScene = value
        }
        if let value = dict["voiceGender"] as? String {
            self.voiceGender = value
        }
        if let value = dict["voiceLanguage"] as? String {
            self.voiceLanguage = value
        }
        if let value = dict["voiceName"] as? String {
            self.voiceName = value
        }
        if let value = dict["voicePath"] as? String {
            self.voicePath = value
        }
    }
}

public class CreateTrainTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateTrainTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrainTaskResponseBody?

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
            var model = CreateTrainTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVideoClipTaskRequest : Tea.TeaModel {
    public var aliyunMainId: String?

    public var description_: String?

    public var ossKeys: [String]?

    public var requirement: String?

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
        if self.aliyunMainId != nil {
            map["aliyunMainId"] = self.aliyunMainId!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.ossKeys != nil {
            map["ossKeys"] = self.ossKeys!
        }
        if self.requirement != nil {
            map["requirement"] = self.requirement!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliyunMainId"] as? String {
            self.aliyunMainId = value
        }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["ossKeys"] as? [String] {
            self.ossKeys = value
        }
        if let value = dict["requirement"] as? String {
            self.requirement = value
        }
    }
}

public class CreateVideoClipTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateVideoClipTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoClipTaskResponseBody?

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
            var model = CreateVideoClipTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAICoachScriptRequest : Tea.TeaModel {
    public var scriptId: String?

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
        if self.scriptId != nil {
            map["scriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class DeleteAICoachScriptResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteAICoachScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAICoachScriptResponseBody?

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
            var model = DeleteAICoachScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAgentRequest : Tea.TeaModel {
    public var agentId: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
    }
}

public class DeleteAgentResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAgentResponseBody?

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
            var model = DeleteAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIndividuationProjectRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
    }
}

public class DeleteIndividuationProjectResponseBody : Tea.TeaModel {
    public var desc: String?

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
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteIndividuationProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndividuationProjectResponseBody?

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
            var model = DeleteIndividuationProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIndividuationTextRequest : Tea.TeaModel {
    public var textIdList: [String]?

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
        if self.textIdList != nil {
            map["textIdList"] = self.textIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["textIdList"] as? [String] {
            self.textIdList = value
        }
    }
}

public class DeleteIndividuationTextResponseBody : Tea.TeaModel {
    public var desc: String?

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
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["desc"] as? String {
            self.desc = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class DeleteIndividuationTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndividuationTextResponseBody?

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
            var model = DeleteIndividuationTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DocumentResult?

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
            var model = DocumentResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FinishAICoachTaskSessionRequest : Tea.TeaModel {
    public var sessionId: String?

    public var uid: String?

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
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class FinishAICoachTaskSessionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class FinishAICoachTaskSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FinishAICoachTaskSessionResponseBody?

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
            var model = FinishAICoachTaskSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAICoachAssessmentPointRequest : Tea.TeaModel {
    public var pointId: String?

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
        if self.pointId != nil {
            map["pointId"] = self.pointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pointId"] as? String {
            self.pointId = value
        }
    }
}

public class GetAICoachAssessmentPointResponseBody : Tea.TeaModel {
    public class AnswerList : Tea.TeaModel {
        public class AnswerValues : Tea.TeaModel {
            public class KeywordValues : Tea.TeaModel {
                public var name: String?

                public var weight: Int32?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.weight != nil {
                        map["weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["weight"] as? Int32 {
                        self.weight = value
                    }
                }
            }
            public class ScoringRules : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var answerName: String?

            public var answerWeight: Int32?

            public var keywordValues: [GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues.KeywordValues]?

            public var keywordWeight: Int32?

            public var scoringRules: [GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues.ScoringRules]?

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
                if self.answerName != nil {
                    map["answerName"] = self.answerName!
                }
                if self.answerWeight != nil {
                    map["answerWeight"] = self.answerWeight!
                }
                if self.keywordValues != nil {
                    var tmp : [Any] = []
                    for k in self.keywordValues! {
                        tmp.append(k.toMap())
                    }
                    map["keywordValues"] = tmp
                }
                if self.keywordWeight != nil {
                    map["keywordWeight"] = self.keywordWeight!
                }
                if self.scoringRules != nil {
                    var tmp : [Any] = []
                    for k in self.scoringRules! {
                        tmp.append(k.toMap())
                    }
                    map["scoringRules"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerName"] as? String {
                    self.answerName = value
                }
                if let value = dict["answerWeight"] as? Int32 {
                    self.answerWeight = value
                }
                if let value = dict["keywordValues"] as? [Any?] {
                    var tmp : [GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues.KeywordValues] = []
                    for v in value {
                        if v != nil {
                            var model = GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues.KeywordValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.keywordValues = tmp
                }
                if let value = dict["keywordWeight"] as? Int32 {
                    self.keywordWeight = value
                }
                if let value = dict["scoringRules"] as? [Any?] {
                    var tmp : [GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues.ScoringRules] = []
                    for v in value {
                        if v != nil {
                            var model = GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues.ScoringRules()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.scoringRules = tmp
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var name: String?

            public var value: String?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var answerValues: [GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues]?

        public var enabledKeyword: Bool?

        public var nameList: [String]?

        public var operators: String?

        public var parameters: [GetAICoachAssessmentPointResponseBody.AnswerList.Parameters]?

        public var type: String?

        public var weight: Int32?

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
            if self.answerValues != nil {
                var tmp : [Any] = []
                for k in self.answerValues! {
                    tmp.append(k.toMap())
                }
                map["answerValues"] = tmp
            }
            if self.enabledKeyword != nil {
                map["enabledKeyword"] = self.enabledKeyword!
            }
            if self.nameList != nil {
                map["nameList"] = self.nameList!
            }
            if self.operators != nil {
                map["operators"] = self.operators!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["parameters"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["answerValues"] as? [Any?] {
                var tmp : [GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachAssessmentPointResponseBody.AnswerList.AnswerValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.answerValues = tmp
            }
            if let value = dict["enabledKeyword"] as? Bool {
                self.enabledKeyword = value
            }
            if let value = dict["nameList"] as? [String] {
                self.nameList = value
            }
            if let value = dict["operators"] as? String {
                self.operators = value
            }
            if let value = dict["parameters"] as? [Any?] {
                var tmp : [GetAICoachAssessmentPointResponseBody.AnswerList.Parameters] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachAssessmentPointResponseBody.AnswerList.Parameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameters = tmp
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var answerList: [GetAICoachAssessmentPointResponseBody.AnswerList]?

    public var citations: Int32?

    public var documentId: String?

    public var documentName: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var kbId: String?

    public var kbType: String?

    public var knowledgeList: [String]?

    public var name: String?

    public var pointId: String?

    public var questionDescription: String?

    public var questionSample: String?

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
        if self.answerList != nil {
            var tmp : [Any] = []
            for k in self.answerList! {
                tmp.append(k.toMap())
            }
            map["answerList"] = tmp
        }
        if self.citations != nil {
            map["citations"] = self.citations!
        }
        if self.documentId != nil {
            map["documentId"] = self.documentId!
        }
        if self.documentName != nil {
            map["documentName"] = self.documentName!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.kbId != nil {
            map["kbId"] = self.kbId!
        }
        if self.kbType != nil {
            map["kbType"] = self.kbType!
        }
        if self.knowledgeList != nil {
            map["knowledgeList"] = self.knowledgeList!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pointId != nil {
            map["pointId"] = self.pointId!
        }
        if self.questionDescription != nil {
            map["questionDescription"] = self.questionDescription!
        }
        if self.questionSample != nil {
            map["questionSample"] = self.questionSample!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["answerList"] as? [Any?] {
            var tmp : [GetAICoachAssessmentPointResponseBody.AnswerList] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachAssessmentPointResponseBody.AnswerList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerList = tmp
        }
        if let value = dict["citations"] as? Int32 {
            self.citations = value
        }
        if let value = dict["documentId"] as? String {
            self.documentId = value
        }
        if let value = dict["documentName"] as? String {
            self.documentName = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["kbId"] as? String {
            self.kbId = value
        }
        if let value = dict["kbType"] as? String {
            self.kbType = value
        }
        if let value = dict["knowledgeList"] as? [String] {
            self.knowledgeList = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pointId"] as? String {
            self.pointId = value
        }
        if let value = dict["questionDescription"] as? String {
            self.questionDescription = value
        }
        if let value = dict["questionSample"] as? String {
            self.questionSample = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class GetAICoachAssessmentPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAICoachAssessmentPointResponseBody?

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
            var model = GetAICoachAssessmentPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAICoachCheatDetectionRequest : Tea.TeaModel {
    public var sessionId: String?

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
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetAICoachCheatDetectionResponseBody : Tea.TeaModel {
    public class ImageCheat : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["time"] = self.time!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["time"] as? String {
                    self.time = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var desc: String?

        public var list: [GetAICoachCheatDetectionResponseBody.ImageCheat.List]?

        public var status: Int32?

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
                map["desc"] = self.desc!
            }
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["list"] as? [Any?] {
                var tmp : [GetAICoachCheatDetectionResponseBody.ImageCheat.List] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachCheatDetectionResponseBody.ImageCheat.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
        }
    }
    public class VoiceCheat : Tea.TeaModel {
        public class ComparisonList : Tea.TeaModel {
            public var time: String?

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
                if self.time != nil {
                    map["time"] = self.time!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["time"] as? String {
                    self.time = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class OriginalList : Tea.TeaModel {
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
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public var comparisonList: [GetAICoachCheatDetectionResponseBody.VoiceCheat.ComparisonList]?

        public var desc: String?

        public var originalList: [GetAICoachCheatDetectionResponseBody.VoiceCheat.OriginalList]?

        public var status: Int32?

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
            if self.comparisonList != nil {
                var tmp : [Any] = []
                for k in self.comparisonList! {
                    tmp.append(k.toMap())
                }
                map["comparisonList"] = tmp
            }
            if self.desc != nil {
                map["desc"] = self.desc!
            }
            if self.originalList != nil {
                var tmp : [Any] = []
                for k in self.originalList! {
                    tmp.append(k.toMap())
                }
                map["originalList"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["comparisonList"] as? [Any?] {
                var tmp : [GetAICoachCheatDetectionResponseBody.VoiceCheat.ComparisonList] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachCheatDetectionResponseBody.VoiceCheat.ComparisonList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.comparisonList = tmp
            }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["originalList"] as? [Any?] {
                var tmp : [GetAICoachCheatDetectionResponseBody.VoiceCheat.OriginalList] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachCheatDetectionResponseBody.VoiceCheat.OriginalList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.originalList = tmp
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var cheatId: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var gmtCreate: String?

    public var imageCheat: GetAICoachCheatDetectionResponseBody.ImageCheat?

    public var requestId: String?

    public var status: Int32?

    public var success: Bool?

    public var voiceCheat: GetAICoachCheatDetectionResponseBody.VoiceCheat?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageCheat?.validate()
        try self.voiceCheat?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cheatId != nil {
            map["cheatId"] = self.cheatId!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.imageCheat != nil {
            map["imageCheat"] = self.imageCheat?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.voiceCheat != nil {
            map["voiceCheat"] = self.voiceCheat?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cheatId"] as? String {
            self.cheatId = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["imageCheat"] as? [String: Any?] {
            var model = GetAICoachCheatDetectionResponseBody.ImageCheat()
            model.fromMap(value)
            self.imageCheat = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["voiceCheat"] as? [String: Any?] {
            var model = GetAICoachCheatDetectionResponseBody.VoiceCheat()
            model.fromMap(value)
            self.voiceCheat = model
        }
    }
}

public class GetAICoachCheatDetectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAICoachCheatDetectionResponseBody?

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
            var model = GetAICoachCheatDetectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAICoachScriptRequest : Tea.TeaModel {
    public var scriptRecordId: String?

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
        if self.scriptRecordId != nil {
            map["scriptRecordId"] = self.scriptRecordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scriptRecordId"] as? String {
            self.scriptRecordId = value
        }
    }
}

public class GetAICoachScriptResponseBody : Tea.TeaModel {
    public class CheckCheatConfig : Tea.TeaModel {
        public var checkImage: Bool?

        public var checkVoice: Bool?

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
            if self.checkImage != nil {
                map["checkImage"] = self.checkImage!
            }
            if self.checkVoice != nil {
                map["checkVoice"] = self.checkVoice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkImage"] as? Bool {
                self.checkImage = value
            }
            if let value = dict["checkVoice"] as? Bool {
                self.checkVoice = value
            }
        }
    }
    public class CompleteStrategy : Tea.TeaModel {
        public var abnormalQuitSessionExpired: Int32?

        public var abnormalQuitSessionExpiredFlag: Bool?

        public var clickCompleteAutoEnd: Bool?

        public var duration: Int32?

        public var durationFlag: Bool?

        public var fullCoverageAutoEnd: Bool?

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
            if self.abnormalQuitSessionExpired != nil {
                map["abnormalQuitSessionExpired"] = self.abnormalQuitSessionExpired!
            }
            if self.abnormalQuitSessionExpiredFlag != nil {
                map["abnormalQuitSessionExpiredFlag"] = self.abnormalQuitSessionExpiredFlag!
            }
            if self.clickCompleteAutoEnd != nil {
                map["clickCompleteAutoEnd"] = self.clickCompleteAutoEnd!
            }
            if self.duration != nil {
                map["duration"] = self.duration!
            }
            if self.durationFlag != nil {
                map["durationFlag"] = self.durationFlag!
            }
            if self.fullCoverageAutoEnd != nil {
                map["fullCoverageAutoEnd"] = self.fullCoverageAutoEnd!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["abnormalQuitSessionExpired"] as? Int32 {
                self.abnormalQuitSessionExpired = value
            }
            if let value = dict["abnormalQuitSessionExpiredFlag"] as? Bool {
                self.abnormalQuitSessionExpiredFlag = value
            }
            if let value = dict["clickCompleteAutoEnd"] as? Bool {
                self.clickCompleteAutoEnd = value
            }
            if let value = dict["duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["durationFlag"] as? Bool {
                self.durationFlag = value
            }
            if let value = dict["fullCoverageAutoEnd"] as? Bool {
                self.fullCoverageAutoEnd = value
            }
        }
    }
    public class CustomReplyRules : Tea.TeaModel {
        public class Action : Tea.TeaModel {
            public class Parameters : Tea.TeaModel {
                public var assessPointId: String?

                public var customContent: String?

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
                    if self.assessPointId != nil {
                        map["assessPointId"] = self.assessPointId!
                    }
                    if self.customContent != nil {
                        map["customContent"] = self.customContent!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["assessPointId"] as? String {
                        self.assessPointId = value
                    }
                    if let value = dict["customContent"] as? String {
                        self.customContent = value
                    }
                }
            }
            public var parameters: GetAICoachScriptResponseBody.CustomReplyRules.Action.Parameters?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.parameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = GetAICoachScriptResponseBody.CustomReplyRules.Action.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class MainCondition : Tea.TeaModel {
            public class Parameters : Tea.TeaModel {
                public var assessPointId: String?

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
                    if self.assessPointId != nil {
                        map["assessPointId"] = self.assessPointId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["assessPointId"] as? String {
                        self.assessPointId = value
                    }
                }
            }
            public var parameters: GetAICoachScriptResponseBody.CustomReplyRules.MainCondition.Parameters?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.parameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = GetAICoachScriptResponseBody.CustomReplyRules.MainCondition.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public class SubCondition : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var action: GetAICoachScriptResponseBody.CustomReplyRules.Action?

        public var logic: String?

        public var mainCondition: GetAICoachScriptResponseBody.CustomReplyRules.MainCondition?

        public var priority: Int32?

        public var subCondition: GetAICoachScriptResponseBody.CustomReplyRules.SubCondition?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.action?.validate()
            try self.mainCondition?.validate()
            try self.subCondition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["action"] = self.action?.toMap()
            }
            if self.logic != nil {
                map["logic"] = self.logic!
            }
            if self.mainCondition != nil {
                map["mainCondition"] = self.mainCondition?.toMap()
            }
            if self.priority != nil {
                map["priority"] = self.priority!
            }
            if self.subCondition != nil {
                map["subCondition"] = self.subCondition?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["action"] as? [String: Any?] {
                var model = GetAICoachScriptResponseBody.CustomReplyRules.Action()
                model.fromMap(value)
                self.action = model
            }
            if let value = dict["logic"] as? String {
                self.logic = value
            }
            if let value = dict["mainCondition"] as? [String: Any?] {
                var model = GetAICoachScriptResponseBody.CustomReplyRules.MainCondition()
                model.fromMap(value)
                self.mainCondition = model
            }
            if let value = dict["priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["subCondition"] as? [String: Any?] {
                var model = GetAICoachScriptResponseBody.CustomReplyRules.SubCondition()
                model.fromMap(value)
                self.subCondition = model
            }
        }
    }
    public class ExpressivenessList : Tea.TeaModel {
        public var desc: String?

        public var enabled: Bool?

        public var expressivenessId: String?

        public var name: String?

        public var rule: String?

        public var type: String?

        public var weight: Int32?

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
                map["desc"] = self.desc!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.expressivenessId != nil {
                map["expressivenessId"] = self.expressivenessId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.rule != nil {
                map["rule"] = self.rule!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["desc"] as? String {
                self.desc = value
            }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["expressivenessId"] as? String {
                self.expressivenessId = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["rule"] as? String {
                self.rule = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public class PointDeductionRuleList : Tea.TeaModel {
        public var description_: String?

        public var punishmentTypes: [String]?

        public var ruleValue: String?

        public var weight: Int32?

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
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.punishmentTypes != nil {
                map["punishmentTypes"] = self.punishmentTypes!
            }
            if self.ruleValue != nil {
                map["ruleValue"] = self.ruleValue!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["punishmentTypes"] as? [String] {
                self.punishmentTypes = value
            }
            if let value = dict["ruleValue"] as? String {
                self.ruleValue = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public class Points : Tea.TeaModel {
        public class AnswerList : Tea.TeaModel {
            public class AnswerValues : Tea.TeaModel {
                public class KeywordValues : Tea.TeaModel {
                    public var name: String?

                    public var weight: Int32?

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
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.weight != nil {
                            map["weight"] = self.weight!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["weight"] as? Int32 {
                            self.weight = value
                        }
                    }
                }
                public class ScoringRules : Tea.TeaModel {
                    public var name: String?

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
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                    }
                }
                public var answerName: String?

                public var answerWeight: Int32?

                public var keywordValues: [GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues.KeywordValues]?

                public var keywordWeight: Int32?

                public var scoringRules: [GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues.ScoringRules]?

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
                    if self.answerName != nil {
                        map["answerName"] = self.answerName!
                    }
                    if self.answerWeight != nil {
                        map["answerWeight"] = self.answerWeight!
                    }
                    if self.keywordValues != nil {
                        var tmp : [Any] = []
                        for k in self.keywordValues! {
                            tmp.append(k.toMap())
                        }
                        map["keywordValues"] = tmp
                    }
                    if self.keywordWeight != nil {
                        map["keywordWeight"] = self.keywordWeight!
                    }
                    if self.scoringRules != nil {
                        var tmp : [Any] = []
                        for k in self.scoringRules! {
                            tmp.append(k.toMap())
                        }
                        map["scoringRules"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["answerName"] as? String {
                        self.answerName = value
                    }
                    if let value = dict["answerWeight"] as? Int32 {
                        self.answerWeight = value
                    }
                    if let value = dict["keywordValues"] as? [Any?] {
                        var tmp : [GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues.KeywordValues] = []
                        for v in value {
                            if v != nil {
                                var model = GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues.KeywordValues()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.keywordValues = tmp
                    }
                    if let value = dict["keywordWeight"] as? Int32 {
                        self.keywordWeight = value
                    }
                    if let value = dict["scoringRules"] as? [Any?] {
                        var tmp : [GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues.ScoringRules] = []
                        for v in value {
                            if v != nil {
                                var model = GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues.ScoringRules()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.scoringRules = tmp
                    }
                }
            }
            public class Parameters : Tea.TeaModel {
                public var name: String?

                public var value: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["value"] as? String {
                        self.value = value
                    }
                }
            }
            public var answerValues: [GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues]?

            public var enabledKeyword: Bool?

            public var name: String?

            public var nameList: [String]?

            public var operators: String?

            public var parameters: [GetAICoachScriptResponseBody.Points.AnswerList.Parameters]?

            public var type: String?

            public var weight: Int32?

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
                if self.answerValues != nil {
                    var tmp : [Any] = []
                    for k in self.answerValues! {
                        tmp.append(k.toMap())
                    }
                    map["answerValues"] = tmp
                }
                if self.enabledKeyword != nil {
                    map["enabledKeyword"] = self.enabledKeyword!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nameList != nil {
                    map["nameList"] = self.nameList!
                }
                if self.operators != nil {
                    map["operators"] = self.operators!
                }
                if self.parameters != nil {
                    var tmp : [Any] = []
                    for k in self.parameters! {
                        tmp.append(k.toMap())
                    }
                    map["parameters"] = tmp
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.weight != nil {
                    map["weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answerValues"] as? [Any?] {
                    var tmp : [GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues] = []
                    for v in value {
                        if v != nil {
                            var model = GetAICoachScriptResponseBody.Points.AnswerList.AnswerValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.answerValues = tmp
                }
                if let value = dict["enabledKeyword"] as? Bool {
                    self.enabledKeyword = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["nameList"] as? [String] {
                    self.nameList = value
                }
                if let value = dict["operators"] as? String {
                    self.operators = value
                }
                if let value = dict["parameters"] as? [Any?] {
                    var tmp : [GetAICoachScriptResponseBody.Points.AnswerList.Parameters] = []
                    for v in value {
                        if v != nil {
                            var model = GetAICoachScriptResponseBody.Points.AnswerList.Parameters()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.parameters = tmp
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var answerList: [GetAICoachScriptResponseBody.Points.AnswerList]?

        public var knowledgeList: [String]?

        public var name: String?

        public var pointId: String?

        public var questionDescription: String?

        public var sortNo: Int32?

        public var weight: Int32?

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
            if self.answerList != nil {
                var tmp : [Any] = []
                for k in self.answerList! {
                    tmp.append(k.toMap())
                }
                map["answerList"] = tmp
            }
            if self.knowledgeList != nil {
                map["knowledgeList"] = self.knowledgeList!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.pointId != nil {
                map["pointId"] = self.pointId!
            }
            if self.questionDescription != nil {
                map["questionDescription"] = self.questionDescription!
            }
            if self.sortNo != nil {
                map["sortNo"] = self.sortNo!
            }
            if self.weight != nil {
                map["weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["answerList"] as? [Any?] {
                var tmp : [GetAICoachScriptResponseBody.Points.AnswerList] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachScriptResponseBody.Points.AnswerList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.answerList = tmp
            }
            if let value = dict["knowledgeList"] as? [String] {
                self.knowledgeList = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["pointId"] as? String {
                self.pointId = value
            }
            if let value = dict["questionDescription"] as? String {
                self.questionDescription = value
            }
            if let value = dict["sortNo"] as? Int32 {
                self.sortNo = value
            }
            if let value = dict["weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public class SampleDialogueList : Tea.TeaModel {
        public var message: String?

        public var role: String?

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
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public class ScoreConfig : Tea.TeaModel {
        public class Levels : Tea.TeaModel {
            public var max: Int32?

            public var min: Int32?

            public var name: String?

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
                if self.max != nil {
                    map["max"] = self.max!
                }
                if self.min != nil {
                    map["min"] = self.min!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["max"] as? Int32 {
                    self.max = value
                }
                if let value = dict["min"] as? Int32 {
                    self.min = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
            }
        }
        public var enabled: Bool?

        public var levelEnabled: Bool?

        public var levels: [GetAICoachScriptResponseBody.ScoreConfig.Levels]?

        public var passScore: String?

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
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.levelEnabled != nil {
                map["levelEnabled"] = self.levelEnabled!
            }
            if self.levels != nil {
                var tmp : [Any] = []
                for k in self.levels! {
                    tmp.append(k.toMap())
                }
                map["levels"] = tmp
            }
            if self.passScore != nil {
                map["passScore"] = self.passScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["levelEnabled"] as? Bool {
                self.levelEnabled = value
            }
            if let value = dict["levels"] as? [Any?] {
                var tmp : [GetAICoachScriptResponseBody.ScoreConfig.Levels] = []
                for v in value {
                    if v != nil {
                        var model = GetAICoachScriptResponseBody.ScoreConfig.Levels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.levels = tmp
            }
            if let value = dict["passScore"] as? String {
                self.passScore = value
            }
        }
    }
    public class Weights : Tea.TeaModel {
        public var abilityEvaluation: Int32?

        public var abilityEvaluationEnabled: Bool?

        public var assessmentPoint: Int32?

        public var assessmentPointEnabled: Bool?

        public var customReplyRuleEnabled: Bool?

        public var expressiveness: Int32?

        public var expressivenessEnabled: Bool?

        public var pointDeductionRule: Int32?

        public var pointDeductionRuleEnabled: Bool?

        public var similarPronunciationScoringEnabled: Bool?

        public var standard: Int32?

        public var standardEnabled: Bool?

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
            if self.abilityEvaluation != nil {
                map["abilityEvaluation"] = self.abilityEvaluation!
            }
            if self.abilityEvaluationEnabled != nil {
                map["abilityEvaluationEnabled"] = self.abilityEvaluationEnabled!
            }
            if self.assessmentPoint != nil {
                map["assessmentPoint"] = self.assessmentPoint!
            }
            if self.assessmentPointEnabled != nil {
                map["assessmentPointEnabled"] = self.assessmentPointEnabled!
            }
            if self.customReplyRuleEnabled != nil {
                map["customReplyRuleEnabled"] = self.customReplyRuleEnabled!
            }
            if self.expressiveness != nil {
                map["expressiveness"] = self.expressiveness!
            }
            if self.expressivenessEnabled != nil {
                map["expressivenessEnabled"] = self.expressivenessEnabled!
            }
            if self.pointDeductionRule != nil {
                map["pointDeductionRule"] = self.pointDeductionRule!
            }
            if self.pointDeductionRuleEnabled != nil {
                map["pointDeductionRuleEnabled"] = self.pointDeductionRuleEnabled!
            }
            if self.similarPronunciationScoringEnabled != nil {
                map["similarPronunciationScoringEnabled"] = self.similarPronunciationScoringEnabled!
            }
            if self.standard != nil {
                map["standard"] = self.standard!
            }
            if self.standardEnabled != nil {
                map["standardEnabled"] = self.standardEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["abilityEvaluation"] as? Int32 {
                self.abilityEvaluation = value
            }
            if let value = dict["abilityEvaluationEnabled"] as? Bool {
                self.abilityEvaluationEnabled = value
            }
            if let value = dict["assessmentPoint"] as? Int32 {
                self.assessmentPoint = value
            }
            if let value = dict["assessmentPointEnabled"] as? Bool {
                self.assessmentPointEnabled = value
            }
            if let value = dict["customReplyRuleEnabled"] as? Bool {
                self.customReplyRuleEnabled = value
            }
            if let value = dict["expressiveness"] as? Int32 {
                self.expressiveness = value
            }
            if let value = dict["expressivenessEnabled"] as? Bool {
                self.expressivenessEnabled = value
            }
            if let value = dict["pointDeductionRule"] as? Int32 {
                self.pointDeductionRule = value
            }
            if let value = dict["pointDeductionRuleEnabled"] as? Bool {
                self.pointDeductionRuleEnabled = value
            }
            if let value = dict["similarPronunciationScoringEnabled"] as? Bool {
                self.similarPronunciationScoringEnabled = value
            }
            if let value = dict["standard"] as? Int32 {
                self.standard = value
            }
            if let value = dict["standardEnabled"] as? Bool {
                self.standardEnabled = value
            }
        }
    }
    public var agentId: String?

    public var appendQuestionFlag: Bool?

    public var assessmentScope: String?

    public var checkCheatConfig: GetAICoachScriptResponseBody.CheckCheatConfig?

    public var closingRemarks: String?

    public var completeStrategy: GetAICoachScriptResponseBody.CompleteStrategy?

    public var coverUrl: String?

    public var customReplyRules: [GetAICoachScriptResponseBody.CustomReplyRules]?

    public var dialogueInputTextLimit: Int32?

    public var dialogueTextFlag: Bool?

    public var dialogueTipFlag: Bool?

    public var dialogueVoiceLimit: Int32?

    public var evaluateReportFlag: Bool?

    public var expressiveness: [String: Int32]?

    public var expressivenessList: [GetAICoachScriptResponseBody.ExpressivenessList]?

    public var gifDynamicUrl: String?

    public var gifStaticUrl: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var initiator: String?

    public var interactionInputTypes: [String]?

    public var interactionType: Int32?

    public var introduce: String?

    public var name: String?

    public var openingRemarks: String?

    public var orderAckFlag: Bool?

    public var pointDeductionRuleList: [GetAICoachScriptResponseBody.PointDeductionRuleList]?

    public var points: [GetAICoachScriptResponseBody.Points]?

    public var requestId: String?

    public var sampleDialogueList: [GetAICoachScriptResponseBody.SampleDialogueList]?

    public var scoreConfig: GetAICoachScriptResponseBody.ScoreConfig?

    public var scriptRecordId: String?

    public var sparringTipContent: String?

    public var sparringTipTitle: String?

    public var status: Int32?

    public var studentThinkTimeFlag: Bool?

    public var studentThinkTimeLimit: Int32?

    public var type: Int32?

    public var voiceId: String?

    public var voiceLanguage: String?

    public var weights: GetAICoachScriptResponseBody.Weights?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.checkCheatConfig?.validate()
        try self.completeStrategy?.validate()
        try self.scoreConfig?.validate()
        try self.weights?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.appendQuestionFlag != nil {
            map["appendQuestionFlag"] = self.appendQuestionFlag!
        }
        if self.assessmentScope != nil {
            map["assessmentScope"] = self.assessmentScope!
        }
        if self.checkCheatConfig != nil {
            map["checkCheatConfig"] = self.checkCheatConfig?.toMap()
        }
        if self.closingRemarks != nil {
            map["closingRemarks"] = self.closingRemarks!
        }
        if self.completeStrategy != nil {
            map["completeStrategy"] = self.completeStrategy?.toMap()
        }
        if self.coverUrl != nil {
            map["coverUrl"] = self.coverUrl!
        }
        if self.customReplyRules != nil {
            var tmp : [Any] = []
            for k in self.customReplyRules! {
                tmp.append(k.toMap())
            }
            map["customReplyRules"] = tmp
        }
        if self.dialogueInputTextLimit != nil {
            map["dialogueInputTextLimit"] = self.dialogueInputTextLimit!
        }
        if self.dialogueTextFlag != nil {
            map["dialogueTextFlag"] = self.dialogueTextFlag!
        }
        if self.dialogueTipFlag != nil {
            map["dialogueTipFlag"] = self.dialogueTipFlag!
        }
        if self.dialogueVoiceLimit != nil {
            map["dialogueVoiceLimit"] = self.dialogueVoiceLimit!
        }
        if self.evaluateReportFlag != nil {
            map["evaluateReportFlag"] = self.evaluateReportFlag!
        }
        if self.expressiveness != nil {
            map["expressiveness"] = self.expressiveness!
        }
        if self.expressivenessList != nil {
            var tmp : [Any] = []
            for k in self.expressivenessList! {
                tmp.append(k.toMap())
            }
            map["expressivenessList"] = tmp
        }
        if self.gifDynamicUrl != nil {
            map["gifDynamicUrl"] = self.gifDynamicUrl!
        }
        if self.gifStaticUrl != nil {
            map["gifStaticUrl"] = self.gifStaticUrl!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["gmtModified"] = self.gmtModified!
        }
        if self.initiator != nil {
            map["initiator"] = self.initiator!
        }
        if self.interactionInputTypes != nil {
            map["interactionInputTypes"] = self.interactionInputTypes!
        }
        if self.interactionType != nil {
            map["interactionType"] = self.interactionType!
        }
        if self.introduce != nil {
            map["introduce"] = self.introduce!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.openingRemarks != nil {
            map["openingRemarks"] = self.openingRemarks!
        }
        if self.orderAckFlag != nil {
            map["orderAckFlag"] = self.orderAckFlag!
        }
        if self.pointDeductionRuleList != nil {
            var tmp : [Any] = []
            for k in self.pointDeductionRuleList! {
                tmp.append(k.toMap())
            }
            map["pointDeductionRuleList"] = tmp
        }
        if self.points != nil {
            var tmp : [Any] = []
            for k in self.points! {
                tmp.append(k.toMap())
            }
            map["points"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sampleDialogueList != nil {
            var tmp : [Any] = []
            for k in self.sampleDialogueList! {
                tmp.append(k.toMap())
            }
            map["sampleDialogueList"] = tmp
        }
        if self.scoreConfig != nil {
            map["scoreConfig"] = self.scoreConfig?.toMap()
        }
        if self.scriptRecordId != nil {
            map["scriptRecordId"] = self.scriptRecordId!
        }
        if self.sparringTipContent != nil {
            map["sparringTipContent"] = self.sparringTipContent!
        }
        if self.sparringTipTitle != nil {
            map["sparringTipTitle"] = self.sparringTipTitle!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.studentThinkTimeFlag != nil {
            map["studentThinkTimeFlag"] = self.studentThinkTimeFlag!
        }
        if self.studentThinkTimeLimit != nil {
            map["studentThinkTimeLimit"] = self.studentThinkTimeLimit!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.voiceId != nil {
            map["voiceId"] = self.voiceId!
        }
        if self.voiceLanguage != nil {
            map["voiceLanguage"] = self.voiceLanguage!
        }
        if self.weights != nil {
            map["weights"] = self.weights?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["appendQuestionFlag"] as? Bool {
            self.appendQuestionFlag = value
        }
        if let value = dict["assessmentScope"] as? String {
            self.assessmentScope = value
        }
        if let value = dict["checkCheatConfig"] as? [String: Any?] {
            var model = GetAICoachScriptResponseBody.CheckCheatConfig()
            model.fromMap(value)
            self.checkCheatConfig = model
        }
        if let value = dict["closingRemarks"] as? String {
            self.closingRemarks = value
        }
        if let value = dict["completeStrategy"] as? [String: Any?] {
            var model = GetAICoachScriptResponseBody.CompleteStrategy()
            model.fromMap(value)
            self.completeStrategy = model
        }
        if let value = dict["coverUrl"] as? String {
            self.coverUrl = value
        }
        if let value = dict["customReplyRules"] as? [Any?] {
            var tmp : [GetAICoachScriptResponseBody.CustomReplyRules] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachScriptResponseBody.CustomReplyRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customReplyRules = tmp
        }
        if let value = dict["dialogueInputTextLimit"] as? Int32 {
            self.dialogueInputTextLimit = value
        }
        if let value = dict["dialogueTextFlag"] as? Bool {
            self.dialogueTextFlag = value
        }
        if let value = dict["dialogueTipFlag"] as? Bool {
            self.dialogueTipFlag = value
        }
        if let value = dict["dialogueVoiceLimit"] as? Int32 {
            self.dialogueVoiceLimit = value
        }
        if let value = dict["evaluateReportFlag"] as? Bool {
            self.evaluateReportFlag = value
        }
        if let value = dict["expressiveness"] as? [String: Int32] {
            self.expressiveness = value
        }
        if let value = dict["expressivenessList"] as? [Any?] {
            var tmp : [GetAICoachScriptResponseBody.ExpressivenessList] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachScriptResponseBody.ExpressivenessList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.expressivenessList = tmp
        }
        if let value = dict["gifDynamicUrl"] as? String {
            self.gifDynamicUrl = value
        }
        if let value = dict["gifStaticUrl"] as? String {
            self.gifStaticUrl = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["gmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["initiator"] as? String {
            self.initiator = value
        }
        if let value = dict["interactionInputTypes"] as? [String] {
            self.interactionInputTypes = value
        }
        if let value = dict["interactionType"] as? Int32 {
            self.interactionType = value
        }
        if let value = dict["introduce"] as? String {
            self.introduce = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["openingRemarks"] as? String {
            self.openingRemarks = value
        }
        if let value = dict["orderAckFlag"] as? Bool {
            self.orderAckFlag = value
        }
        if let value = dict["pointDeductionRuleList"] as? [Any?] {
            var tmp : [GetAICoachScriptResponseBody.PointDeductionRuleList] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachScriptResponseBody.PointDeductionRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pointDeductionRuleList = tmp
        }
        if let value = dict["points"] as? [Any?] {
            var tmp : [GetAICoachScriptResponseBody.Points] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachScriptResponseBody.Points()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.points = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sampleDialogueList"] as? [Any?] {
            var tmp : [GetAICoachScriptResponseBody.SampleDialogueList] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachScriptResponseBody.SampleDialogueList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sampleDialogueList = tmp
        }
        if let value = dict["scoreConfig"] as? [String: Any?] {
            var model = GetAICoachScriptResponseBody.ScoreConfig()
            model.fromMap(value)
            self.scoreConfig = model
        }
        if let value = dict["scriptRecordId"] as? String {
            self.scriptRecordId = value
        }
        if let value = dict["sparringTipContent"] as? String {
            self.sparringTipContent = value
        }
        if let value = dict["sparringTipTitle"] as? String {
            self.sparringTipTitle = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["studentThinkTimeFlag"] as? Bool {
            self.studentThinkTimeFlag = value
        }
        if let value = dict["studentThinkTimeLimit"] as? Int32 {
            self.studentThinkTimeLimit = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
        if let value = dict["voiceId"] as? String {
            self.voiceId = value
        }
        if let value = dict["voiceLanguage"] as? String {
            self.voiceLanguage = value
        }
        if let value = dict["weights"] as? [String: Any?] {
            var model = GetAICoachScriptResponseBody.Weights()
            model.fromMap(value)
            self.weights = model
        }
    }
}

public class GetAICoachScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAICoachScriptResponseBody?

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
            var model = GetAICoachScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAICoachTaskSessionHistoryRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sessionId: String?

    public var uid: String?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class GetAICoachTaskSessionHistoryResponseBody : Tea.TeaModel {
    public class ConversationList : Tea.TeaModel {
        public var audioUrl: String?

        public var dateLabel: String?

        public var evaluationFeedback: String?

        public var evaluationResult: String?

        public var message: String?

        public var recordId: String?

        public var role: String?

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
            if self.audioUrl != nil {
                map["audioUrl"] = self.audioUrl!
            }
            if self.dateLabel != nil {
                map["dateLabel"] = self.dateLabel!
            }
            if self.evaluationFeedback != nil {
                map["evaluationFeedback"] = self.evaluationFeedback!
            }
            if self.evaluationResult != nil {
                map["evaluationResult"] = self.evaluationResult!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.recordId != nil {
                map["recordId"] = self.recordId!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["audioUrl"] as? String {
                self.audioUrl = value
            }
            if let value = dict["dateLabel"] as? String {
                self.dateLabel = value
            }
            if let value = dict["evaluationFeedback"] as? String {
                self.evaluationFeedback = value
            }
            if let value = dict["evaluationResult"] as? String {
                self.evaluationResult = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["recordId"] as? String {
                self.recordId = value
            }
            if let value = dict["role"] as? String {
                self.role = value
            }
        }
    }
    public var conversationList: [GetAICoachTaskSessionHistoryResponseBody.ConversationList]?

    public var duration: Int64?

    public var endTime: String?

    public var pauseDuration: Int64?

    public var requestId: String?

    public var scriptName: String?

    public var startTime: String?

    public var status: String?

    public var total: Int32?

    public var uid: String?

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
        if self.conversationList != nil {
            var tmp : [Any] = []
            for k in self.conversationList! {
                tmp.append(k.toMap())
            }
            map["conversationList"] = tmp
        }
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pauseDuration != nil {
            map["pauseDuration"] = self.pauseDuration!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scriptName != nil {
            map["scriptName"] = self.scriptName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["conversationList"] as? [Any?] {
            var tmp : [GetAICoachTaskSessionHistoryResponseBody.ConversationList] = []
            for v in value {
                if v != nil {
                    var model = GetAICoachTaskSessionHistoryResponseBody.ConversationList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversationList = tmp
        }
        if let value = dict["duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["pauseDuration"] as? Int64 {
            self.pauseDuration = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scriptName"] as? String {
            self.scriptName = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class GetAICoachTaskSessionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAICoachTaskSessionHistoryResponseBody?

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
            var model = GetAICoachTaskSessionHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAICoachTaskSessionReportRequest : Tea.TeaModel {
    public var sessionId: String?

    public var uid: String?

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
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class GetAICoachTaskSessionReportResponseBody : Tea.TeaModel {
    public var duration: Int64?

    public var endTime: String?

    public var evaluationRating: String?

    public var evaluationResult: String?

    public var feedback: Bool?

    public var requestId: String?

    public var scriptName: String?

    public var startTime: String?

    public var status: String?

    public var uid: String?

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
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.evaluationRating != nil {
            map["evaluationRating"] = self.evaluationRating!
        }
        if self.evaluationResult != nil {
            map["evaluationResult"] = self.evaluationResult!
        }
        if self.feedback != nil {
            map["feedback"] = self.feedback!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scriptName != nil {
            map["scriptName"] = self.scriptName!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["duration"] as? Int64 {
            self.duration = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["evaluationRating"] as? String {
            self.evaluationRating = value
        }
        if let value = dict["evaluationResult"] as? String {
            self.evaluationResult = value
        }
        if let value = dict["feedback"] as? Bool {
            self.feedback = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scriptName"] as? String {
            self.scriptName = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["uid"] as? String {
            self.uid = value
        }
    }
}

public class GetAICoachTaskSessionReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAICoachTaskSessionReportResponseBody?

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
            var model = GetAICoachTaskSessionReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAICoachTaskSessionResourceUsageRequest : Tea.TeaModel {
    public var sessionId: String?

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
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetAICoachTaskSessionResourceUsageResponseBody : Tea.TeaModel {
    public var audioUsage: Int32?

    public var deductionStatus: Int32?

    public var errorCode: String?

    public var errorMessage: String?

    public var requestId: String?

    public var success: Bool?

    public var tokenUsage: Int32?

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
        if self.audioUsage != nil {
            map["audioUsage"] = self.audioUsage!
        }
        if self.deductionStatus != nil {
            map["deductionStatus"] = self.deductionStatus!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.tokenUsage != nil {
            map["tokenUsage"] = self.tokenUsage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["audioUsage"] as? Int32 {
            self.audioUsage = value
        }
        if let value = dict["deductionStatus"] as? Int32 {
            self.deductionStatus = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["tokenUsage"] as? Int32 {
            self.tokenUsage = value
        }
    }
}

public class GetAICoachTaskSessionResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAICoachTaskSessionResourceUsageResponseBody?

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
            var model = GetAICoachTaskSessionResourceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIllustrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IllustrationResult?

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
            var model = IllustrationResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIllustrationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IllustrationTaskResult?

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
            var model = IllustrationTaskResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOssUploadTokenRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileType: String?

    public var uploadType: Int32?

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
            map["fileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["fileType"] = self.fileType!
        }
        if self.uploadType != nil {
            map["uploadType"] = self.uploadType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileType"] as? String {
            self.fileType = value
        }
        if let value = dict["uploadType"] as? Int32 {
            self.uploadType = value
        }
    }
}

public class GetOssUploadTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOssUploadTokenResult?

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
            var model = GetOssUploadTokenResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProjectTaskRequest : Tea.TeaModel {
    public var idempotentId: String?

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
        if self.idempotentId != nil {
            map["IdempotentId"] = self.idempotentId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdempotentId"] as? String {
            self.idempotentId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetProjectTaskResponseBody : Tea.TeaModel {
    public var errorMsg: String?

    public var requestId: String?

    public var status: String?

    public var videoDownloadUrl: String?

    public var videoDuration: Int32?

    public var videoUrl: String?

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
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.videoDownloadUrl != nil {
            map["videoDownloadUrl"] = self.videoDownloadUrl!
        }
        if self.videoDuration != nil {
            map["videoDuration"] = self.videoDuration!
        }
        if self.videoUrl != nil {
            map["videoUrl"] = self.videoUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["videoDownloadUrl"] as? String {
            self.videoDownloadUrl = value
        }
        if let value = dict["videoDuration"] as? Int32 {
            self.videoDuration = value
        }
        if let value = dict["videoUrl"] as? String {
            self.videoUrl = value
        }
    }
}

public class GetProjectTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectTaskResponseBody?

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
            var model = GetProjectTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextResult?

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
            var model = TextResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextTaskResult?

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
            var model = TextTaskResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTextTemplateRequest : Tea.TeaModel {
    public var industry: String?

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
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
    }
}

public class GetTextTemplateResponseBody : Tea.TeaModel {
    public class AvailableIndustry : Tea.TeaModel {
        public class TextModeTypes : Tea.TeaModel {
            public class TextStyles : Tea.TeaModel {
                public var desc: String?

                public var disabled: Bool?

                public var name: String?

                public var templateKey: String?

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
                        map["desc"] = self.desc!
                    }
                    if self.disabled != nil {
                        map["disabled"] = self.disabled!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.templateKey != nil {
                        map["templateKey"] = self.templateKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["desc"] as? String {
                        self.desc = value
                    }
                    if let value = dict["disabled"] as? Bool {
                        self.disabled = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                    if let value = dict["templateKey"] as? String {
                        self.templateKey = value
                    }
                }
            }
            public var name: String?

            public var textStyles: [GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes.TextStyles]?

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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.textStyles != nil {
                    var tmp : [Any] = []
                    for k in self.textStyles! {
                        tmp.append(k.toMap())
                    }
                    map["textStyles"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["textStyles"] as? [Any?] {
                    var tmp : [GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes.TextStyles] = []
                    for v in value {
                        if v != nil {
                            var model = GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes.TextStyles()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.textStyles = tmp
                }
            }
        }
        public var name: String?

        public var textModeTypes: [GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes]?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.textModeTypes != nil {
                var tmp : [Any] = []
                for k in self.textModeTypes! {
                    tmp.append(k.toMap())
                }
                map["textModeTypes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["textModeTypes"] as? [Any?] {
                var tmp : [GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes] = []
                for v in value {
                    if v != nil {
                        var model = GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.textModeTypes = tmp
            }
        }
    }
    public var availableIndustry: GetTextTemplateResponseBody.AvailableIndustry?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableIndustry?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableIndustry != nil {
            map["availableIndustry"] = self.availableIndustry?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["availableIndustry"] as? [String: Any?] {
            var model = GetTextTemplateResponseBody.AvailableIndustry()
            model.fromMap(value)
            self.availableIndustry = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetTextTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTextTemplateResponseBody?

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
            var model = GetTextTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InteractTextRequest : Tea.TeaModel {
    public var agentId: String?

    public var content: String?

    public var sessionId: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.content != nil {
            map["content"] = self.content!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["content"] as? String {
            self.content = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class InteractTextResponseBody : Tea.TeaModel {
    public var end: Bool?

    public var index: Int32?

    public var message: String?

    public var relatedImages: [String]?

    public var relatedVideos: [String]?

    public var sessionId: String?

    public var type: Int32?

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
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.index != nil {
            map["index"] = self.index!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.relatedImages != nil {
            map["relatedImages"] = self.relatedImages!
        }
        if self.relatedVideos != nil {
            map["relatedVideos"] = self.relatedVideos!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["index"] as? Int32 {
            self.index = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["relatedImages"] as? [String] {
            self.relatedImages = value
        }
        if let value = dict["relatedVideos"] as? [String] {
            self.relatedVideos = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class InteractTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InteractTextResponseBody?

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
            var model = InteractTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAICoachScriptPageRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var type: Int32?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class ListAICoachScriptPageResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class CompleteStrategy : Tea.TeaModel {
            public var clickCompleteAutoEnd: Bool?

            public var duration: Int32?

            public var fullCoverageAutoEnd: Bool?

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
                if self.clickCompleteAutoEnd != nil {
                    map["clickCompleteAutoEnd"] = self.clickCompleteAutoEnd!
                }
                if self.duration != nil {
                    map["duration"] = self.duration!
                }
                if self.fullCoverageAutoEnd != nil {
                    map["fullCoverageAutoEnd"] = self.fullCoverageAutoEnd!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["clickCompleteAutoEnd"] as? Bool {
                    self.clickCompleteAutoEnd = value
                }
                if let value = dict["duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["fullCoverageAutoEnd"] as? Bool {
                    self.fullCoverageAutoEnd = value
                }
            }
        }
        public class CustomReplyRules : Tea.TeaModel {
            public class Action : Tea.TeaModel {
                public class Parameters : Tea.TeaModel {
                    public var assessPoint: String?

                    public var customContent: String?

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
                        if self.assessPoint != nil {
                            map["assessPoint"] = self.assessPoint!
                        }
                        if self.customContent != nil {
                            map["customContent"] = self.customContent!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["assessPoint"] as? String {
                            self.assessPoint = value
                        }
                        if let value = dict["customContent"] as? String {
                            self.customContent = value
                        }
                    }
                }
                public var parameters: ListAICoachScriptPageResponseBody.List.CustomReplyRules.Action.Parameters?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.parameters?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.parameters != nil {
                        map["parameters"] = self.parameters?.toMap()
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["parameters"] as? [String: Any?] {
                        var model = ListAICoachScriptPageResponseBody.List.CustomReplyRules.Action.Parameters()
                        model.fromMap(value)
                        self.parameters = model
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public class MainCondition : Tea.TeaModel {
                public class Parameters : Tea.TeaModel {
                    public var assessPoint: String?

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
                        if self.assessPoint != nil {
                            map["assessPoint"] = self.assessPoint!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["assessPoint"] as? String {
                            self.assessPoint = value
                        }
                    }
                }
                public var parameters: ListAICoachScriptPageResponseBody.List.CustomReplyRules.MainCondition.Parameters?

                public var type: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.parameters?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.parameters != nil {
                        map["parameters"] = self.parameters?.toMap()
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["parameters"] as? [String: Any?] {
                        var model = ListAICoachScriptPageResponseBody.List.CustomReplyRules.MainCondition.Parameters()
                        model.fromMap(value)
                        self.parameters = model
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public class SubCondition : Tea.TeaModel {
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
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public var action: ListAICoachScriptPageResponseBody.List.CustomReplyRules.Action?

            public var logic: String?

            public var mainCondition: ListAICoachScriptPageResponseBody.List.CustomReplyRules.MainCondition?

            public var priority: Int32?

            public var sortNo: Int32?

            public var subCondition: ListAICoachScriptPageResponseBody.List.CustomReplyRules.SubCondition?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.action?.validate()
                try self.mainCondition?.validate()
                try self.subCondition?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["action"] = self.action?.toMap()
                }
                if self.logic != nil {
                    map["logic"] = self.logic!
                }
                if self.mainCondition != nil {
                    map["mainCondition"] = self.mainCondition?.toMap()
                }
                if self.priority != nil {
                    map["priority"] = self.priority!
                }
                if self.sortNo != nil {
                    map["sortNo"] = self.sortNo!
                }
                if self.subCondition != nil {
                    map["subCondition"] = self.subCondition?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["action"] as? [String: Any?] {
                    var model = ListAICoachScriptPageResponseBody.List.CustomReplyRules.Action()
                    model.fromMap(value)
                    self.action = model
                }
                if let value = dict["logic"] as? String {
                    self.logic = value
                }
                if let value = dict["mainCondition"] as? [String: Any?] {
                    var model = ListAICoachScriptPageResponseBody.List.CustomReplyRules.MainCondition()
                    model.fromMap(value)
                    self.mainCondition = model
                }
                if let value = dict["priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["sortNo"] as? Int32 {
                    self.sortNo = value
                }
                if let value = dict["subCondition"] as? [String: Any?] {
                    var model = ListAICoachScriptPageResponseBody.List.CustomReplyRules.SubCondition()
                    model.fromMap(value)
                    self.subCondition = model
                }
            }
        }
        public class SampleDialogueList : Tea.TeaModel {
            public var message: String?

            public var role: String?

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
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["message"] as? String {
                    self.message = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
            }
        }
        public class ScoreConfig : Tea.TeaModel {
            public class Levels : Tea.TeaModel {
                public var max: Int32?

                public var min: Int32?

                public var name: String?

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
                    if self.max != nil {
                        map["max"] = self.max!
                    }
                    if self.min != nil {
                        map["min"] = self.min!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["max"] as? Int32 {
                        self.max = value
                    }
                    if let value = dict["min"] as? Int32 {
                        self.min = value
                    }
                    if let value = dict["name"] as? String {
                        self.name = value
                    }
                }
            }
            public var enabled: Bool?

            public var levelEnabled: Bool?

            public var levels: [ListAICoachScriptPageResponseBody.List.ScoreConfig.Levels]?

            public var passScore: Int32?

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
                if self.enabled != nil {
                    map["enabled"] = self.enabled!
                }
                if self.levelEnabled != nil {
                    map["levelEnabled"] = self.levelEnabled!
                }
                if self.levels != nil {
                    var tmp : [Any] = []
                    for k in self.levels! {
                        tmp.append(k.toMap())
                    }
                    map["levels"] = tmp
                }
                if self.passScore != nil {
                    map["passScore"] = self.passScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enabled"] as? Bool {
                    self.enabled = value
                }
                if let value = dict["levelEnabled"] as? Bool {
                    self.levelEnabled = value
                }
                if let value = dict["levels"] as? [Any?] {
                    var tmp : [ListAICoachScriptPageResponseBody.List.ScoreConfig.Levels] = []
                    for v in value {
                        if v != nil {
                            var model = ListAICoachScriptPageResponseBody.List.ScoreConfig.Levels()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.levels = tmp
                }
                if let value = dict["passScore"] as? Int32 {
                    self.passScore = value
                }
            }
        }
        public class Weights : Tea.TeaModel {
            public var assessmentPoint: Int32?

            public var assessmentPointEnabled: Bool?

            public var customReplyRuleEnabled: Bool?

            public var expressiveness: Int32?

            public var expressivenessEnabled: Bool?

            public var pointDeductionRule: Int32?

            public var pointDeductionRuleEnabled: Bool?

            public var similarPronunciationScoringEnabled: Bool?

            public var standard: Int32?

            public var standardEnabled: Bool?

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
                if self.assessmentPoint != nil {
                    map["assessmentPoint"] = self.assessmentPoint!
                }
                if self.assessmentPointEnabled != nil {
                    map["assessmentPointEnabled"] = self.assessmentPointEnabled!
                }
                if self.customReplyRuleEnabled != nil {
                    map["customReplyRuleEnabled"] = self.customReplyRuleEnabled!
                }
                if self.expressiveness != nil {
                    map["expressiveness"] = self.expressiveness!
                }
                if self.expressivenessEnabled != nil {
                    map["expressivenessEnabled"] = self.expressivenessEnabled!
                }
                if self.pointDeductionRule != nil {
                    map["pointDeductionRule"] = self.pointDeductionRule!
                }
                if self.pointDeductionRuleEnabled != nil {
                    map["pointDeductionRuleEnabled"] = self.pointDeductionRuleEnabled!
                }
                if self.similarPronunciationScoringEnabled != nil {
                    map["similarPronunciationScoringEnabled"] = self.similarPronunciationScoringEnabled!
                }
                if self.standard != nil {
                    map["standard"] = self.standard!
                }
                if self.standardEnabled != nil {
                    map["standardEnabled"] = self.standardEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assessmentPoint"] as? Int32 {
                    self.assessmentPoint = value
                }
                if let value = dict["assessmentPointEnabled"] as? Bool {
                    self.assessmentPointEnabled = value
                }
                if let value = dict["customReplyRuleEnabled"] as? Bool {
                    self.customReplyRuleEnabled = value
                }
                if let value = dict["expressiveness"] as? Int32 {
                    self.expressiveness = value
                }
                if let value = dict["expressivenessEnabled"] as? Bool {
                    self.expressivenessEnabled = value
                }
                if let value = dict["pointDeductionRule"] as? Int32 {
                    self.pointDeductionRule = value
                }
                if let value = dict["pointDeductionRuleEnabled"] as? Bool {
                    self.pointDeductionRuleEnabled = value
                }
                if let value = dict["similarPronunciationScoringEnabled"] as? Bool {
                    self.similarPronunciationScoringEnabled = value
                }
                if let value = dict["standard"] as? Int32 {
                    self.standard = value
                }
                if let value = dict["standardEnabled"] as? Bool {
                    self.standardEnabled = value
                }
            }
        }
        public var appendQuestionFlag: String?

        public var assessmentScope: String?

        public var closingRemarks: String?

        public var completeStrategy: ListAICoachScriptPageResponseBody.List.CompleteStrategy?

        public var coverUrl: String?

        public var customReplyRules: [ListAICoachScriptPageResponseBody.List.CustomReplyRules]?

        public var dialogueTextFlag: Bool?

        public var dialogueTipFlag: Bool?

        public var evaluateReportFlag: Bool?

        public var expressiveness: [String: String]?

        public var gifDynamicUrl: String?

        public var gifStaticUrl: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var initiator: String?

        public var interactionType: String?

        public var introduce: String?

        public var name: String?

        public var openingRemarks: String?

        public var orderAckFlag: Bool?

        public var sampleDialogueList: [ListAICoachScriptPageResponseBody.List.SampleDialogueList]?

        public var scoreConfig: ListAICoachScriptPageResponseBody.List.ScoreConfig?

        public var scriptRecordId: String?

        public var sparringTipContent: String?

        public var sparringTipTitle: String?

        public var status: Int32?

        public var studentThinkTimeFlag: Bool?

        public var type: Int32?

        public var weights: ListAICoachScriptPageResponseBody.List.Weights?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.completeStrategy?.validate()
            try self.scoreConfig?.validate()
            try self.weights?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appendQuestionFlag != nil {
                map["appendQuestionFlag"] = self.appendQuestionFlag!
            }
            if self.assessmentScope != nil {
                map["assessmentScope"] = self.assessmentScope!
            }
            if self.closingRemarks != nil {
                map["closingRemarks"] = self.closingRemarks!
            }
            if self.completeStrategy != nil {
                map["completeStrategy"] = self.completeStrategy?.toMap()
            }
            if self.coverUrl != nil {
                map["coverUrl"] = self.coverUrl!
            }
            if self.customReplyRules != nil {
                var tmp : [Any] = []
                for k in self.customReplyRules! {
                    tmp.append(k.toMap())
                }
                map["customReplyRules"] = tmp
            }
            if self.dialogueTextFlag != nil {
                map["dialogueTextFlag"] = self.dialogueTextFlag!
            }
            if self.dialogueTipFlag != nil {
                map["dialogueTipFlag"] = self.dialogueTipFlag!
            }
            if self.evaluateReportFlag != nil {
                map["evaluateReportFlag"] = self.evaluateReportFlag!
            }
            if self.expressiveness != nil {
                map["expressiveness"] = self.expressiveness!
            }
            if self.gifDynamicUrl != nil {
                map["gifDynamicUrl"] = self.gifDynamicUrl!
            }
            if self.gifStaticUrl != nil {
                map["gifStaticUrl"] = self.gifStaticUrl!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.initiator != nil {
                map["initiator"] = self.initiator!
            }
            if self.interactionType != nil {
                map["interactionType"] = self.interactionType!
            }
            if self.introduce != nil {
                map["introduce"] = self.introduce!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.openingRemarks != nil {
                map["openingRemarks"] = self.openingRemarks!
            }
            if self.orderAckFlag != nil {
                map["orderAckFlag"] = self.orderAckFlag!
            }
            if self.sampleDialogueList != nil {
                var tmp : [Any] = []
                for k in self.sampleDialogueList! {
                    tmp.append(k.toMap())
                }
                map["sampleDialogueList"] = tmp
            }
            if self.scoreConfig != nil {
                map["scoreConfig"] = self.scoreConfig?.toMap()
            }
            if self.scriptRecordId != nil {
                map["scriptRecordId"] = self.scriptRecordId!
            }
            if self.sparringTipContent != nil {
                map["sparringTipContent"] = self.sparringTipContent!
            }
            if self.sparringTipTitle != nil {
                map["sparringTipTitle"] = self.sparringTipTitle!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.studentThinkTimeFlag != nil {
                map["studentThinkTimeFlag"] = self.studentThinkTimeFlag!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.weights != nil {
                map["weights"] = self.weights?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appendQuestionFlag"] as? String {
                self.appendQuestionFlag = value
            }
            if let value = dict["assessmentScope"] as? String {
                self.assessmentScope = value
            }
            if let value = dict["closingRemarks"] as? String {
                self.closingRemarks = value
            }
            if let value = dict["completeStrategy"] as? [String: Any?] {
                var model = ListAICoachScriptPageResponseBody.List.CompleteStrategy()
                model.fromMap(value)
                self.completeStrategy = model
            }
            if let value = dict["coverUrl"] as? String {
                self.coverUrl = value
            }
            if let value = dict["customReplyRules"] as? [Any?] {
                var tmp : [ListAICoachScriptPageResponseBody.List.CustomReplyRules] = []
                for v in value {
                    if v != nil {
                        var model = ListAICoachScriptPageResponseBody.List.CustomReplyRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customReplyRules = tmp
            }
            if let value = dict["dialogueTextFlag"] as? Bool {
                self.dialogueTextFlag = value
            }
            if let value = dict["dialogueTipFlag"] as? Bool {
                self.dialogueTipFlag = value
            }
            if let value = dict["evaluateReportFlag"] as? Bool {
                self.evaluateReportFlag = value
            }
            if let value = dict["expressiveness"] as? [String: String] {
                self.expressiveness = value
            }
            if let value = dict["gifDynamicUrl"] as? String {
                self.gifDynamicUrl = value
            }
            if let value = dict["gifStaticUrl"] as? String {
                self.gifStaticUrl = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["initiator"] as? String {
                self.initiator = value
            }
            if let value = dict["interactionType"] as? String {
                self.interactionType = value
            }
            if let value = dict["introduce"] as? String {
                self.introduce = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["openingRemarks"] as? String {
                self.openingRemarks = value
            }
            if let value = dict["orderAckFlag"] as? Bool {
                self.orderAckFlag = value
            }
            if let value = dict["sampleDialogueList"] as? [Any?] {
                var tmp : [ListAICoachScriptPageResponseBody.List.SampleDialogueList] = []
                for v in value {
                    if v != nil {
                        var model = ListAICoachScriptPageResponseBody.List.SampleDialogueList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sampleDialogueList = tmp
            }
            if let value = dict["scoreConfig"] as? [String: Any?] {
                var model = ListAICoachScriptPageResponseBody.List.ScoreConfig()
                model.fromMap(value)
                self.scoreConfig = model
            }
            if let value = dict["scriptRecordId"] as? String {
                self.scriptRecordId = value
            }
            if let value = dict["sparringTipContent"] as? String {
                self.sparringTipContent = value
            }
            if let value = dict["sparringTipTitle"] as? String {
                self.sparringTipTitle = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["studentThinkTimeFlag"] as? Bool {
                self.studentThinkTimeFlag = value
            }
            if let value = dict["type"] as? Int32 {
                self.type = value
            }
            if let value = dict["weights"] as? [String: Any?] {
                var model = ListAICoachScriptPageResponseBody.List.Weights()
                model.fromMap(value)
                self.weights = model
            }
        }
    }
    public var errorCode: String?

    public var errorMessage: String?

    public var list: [ListAICoachScriptPageResponseBody.List]?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["list"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["list"] as? [Any?] {
            var tmp : [ListAICoachScriptPageResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListAICoachScriptPageResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAICoachScriptPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAICoachScriptPageResponseBody?

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
            var model = ListAICoachScriptPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAICoachTaskPageRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: String?

    public var status: String?

    public var studentId: String?

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
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.studentId != nil {
            map["studentId"] = self.studentId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["studentId"] as? String {
            self.studentId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListAICoachTaskPageResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public var finishTime: String?

        public var gmtCreate: String?

        public var status: String?

        public var studentId: String?

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
            if self.finishTime != nil {
                map["finishTime"] = self.finishTime!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.studentId != nil {
                map["studentId"] = self.studentId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["finishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["studentId"] as? String {
                self.studentId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var taskList: [ListAICoachTaskPageResponseBody.TaskList]?

    public var total: Int64?

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
            map["requestId"] = self.requestId!
        }
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["taskList"] = tmp
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskList"] as? [Any?] {
            var tmp : [ListAICoachTaskPageResponseBody.TaskList] = []
            for v in value {
                if v != nil {
                    var model = ListAICoachTaskPageResponseBody.TaskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskList = tmp
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListAICoachTaskPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAICoachTaskPageResponseBody?

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
            var model = ListAICoachTaskPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAgentsRequest : Tea.TeaModel {
    public var agentId: String?

    public var agentScene: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var status: Int32?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.agentScene != nil {
            map["agentScene"] = self.agentScene!
        }
        if self.owner != nil {
            map["owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["agentScene"] as? String {
            self.agentScene = value
        }
        if let value = dict["owner"] as? String {
            self.owner = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
    }
}

public class ListAgentsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var agentId: String?

        public var agentName: String?

        public var agentScene: String?

        public var charactersDescription: String?

        public var enableInteraction: Int32?

        public var industry: String?

        public var onlineSearch: Bool?

        public var owner: String?

        public var referenceUrl: String?

        public var status: Int32?

        public var textStyle: String?

        public var viewer: String?

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
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.agentName != nil {
                map["agentName"] = self.agentName!
            }
            if self.agentScene != nil {
                map["agentScene"] = self.agentScene!
            }
            if self.charactersDescription != nil {
                map["charactersDescription"] = self.charactersDescription!
            }
            if self.enableInteraction != nil {
                map["enableInteraction"] = self.enableInteraction!
            }
            if self.industry != nil {
                map["industry"] = self.industry!
            }
            if self.onlineSearch != nil {
                map["onlineSearch"] = self.onlineSearch!
            }
            if self.owner != nil {
                map["owner"] = self.owner!
            }
            if self.referenceUrl != nil {
                map["referenceUrl"] = self.referenceUrl!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.textStyle != nil {
                map["textStyle"] = self.textStyle!
            }
            if self.viewer != nil {
                map["viewer"] = self.viewer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["agentName"] as? String {
                self.agentName = value
            }
            if let value = dict["agentScene"] as? String {
                self.agentScene = value
            }
            if let value = dict["charactersDescription"] as? String {
                self.charactersDescription = value
            }
            if let value = dict["enableInteraction"] as? Int32 {
                self.enableInteraction = value
            }
            if let value = dict["industry"] as? String {
                self.industry = value
            }
            if let value = dict["onlineSearch"] as? Bool {
                self.onlineSearch = value
            }
            if let value = dict["owner"] as? String {
                self.owner = value
            }
            if let value = dict["referenceUrl"] as? String {
                self.referenceUrl = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["textStyle"] as? String {
                self.textStyle = value
            }
            if let value = dict["viewer"] as? String {
                self.viewer = value
            }
        }
    }
    public var list: [ListAgentsResponseBody.List]?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["list"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["list"] as? [Any?] {
            var tmp : [ListAgentsResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListAgentsResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAgentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAgentsResponseBody?

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
            var model = ListAgentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAnchorRequest : Tea.TeaModel {
    public var anchorCategory: String?

    public var anchorId: String?

    public var anchorType: String?

    public var coverRate: String?

    public var digitalHumanType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resSpecType: String?

    public var useScene: String?

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
        if self.anchorCategory != nil {
            map["anchorCategory"] = self.anchorCategory!
        }
        if self.anchorId != nil {
            map["anchorId"] = self.anchorId!
        }
        if self.anchorType != nil {
            map["anchorType"] = self.anchorType!
        }
        if self.coverRate != nil {
            map["coverRate"] = self.coverRate!
        }
        if self.digitalHumanType != nil {
            map["digitalHumanType"] = self.digitalHumanType!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resSpecType != nil {
            map["resSpecType"] = self.resSpecType!
        }
        if self.useScene != nil {
            map["useScene"] = self.useScene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["anchorCategory"] as? String {
            self.anchorCategory = value
        }
        if let value = dict["anchorId"] as? String {
            self.anchorId = value
        }
        if let value = dict["anchorType"] as? String {
            self.anchorType = value
        }
        if let value = dict["coverRate"] as? String {
            self.coverRate = value
        }
        if let value = dict["digitalHumanType"] as? String {
            self.digitalHumanType = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resSpecType"] as? String {
            self.resSpecType = value
        }
        if let value = dict["useScene"] as? String {
            self.useScene = value
        }
    }
}

public class ListAnchorResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var list: [AnchorResponse]?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
            map["code"] = self.code!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["list"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["list"] as? [Any?] {
            var tmp : [AnchorResponse] = []
            for v in value {
                if v != nil {
                    var model = AnchorResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListAnchorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAnchorResponseBody?

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
            var model = ListAnchorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAvatarProjectRequest : Tea.TeaModel {
    public var projectIdList: [String]?

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
        if self.projectIdList != nil {
            map["projectIdList"] = self.projectIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectIdList"] as? [String] {
            self.projectIdList = value
        }
    }
}

public class ListAvatarProjectShrinkRequest : Tea.TeaModel {
    public var projectIdListShrink: String?

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
        if self.projectIdListShrink != nil {
            map["projectIdList"] = self.projectIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectIdList"] as? String {
            self.projectIdListShrink = value
        }
    }
}

public class ListAvatarProjectResponseBody : Tea.TeaModel {
    public class QueryAvatarProjectResultList : Tea.TeaModel {
        public var agentId: String?

        public var errorMsg: String?

        public var projectId: String?

        public var projectName: String?

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
            if self.agentId != nil {
                map["agentId"] = self.agentId!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.projectName != nil {
                map["projectName"] = self.projectName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["agentId"] as? String {
                self.agentId = value
            }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["projectId"] as? String {
                self.projectId = value
            }
            if let value = dict["projectName"] as? String {
                self.projectName = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var queryAvatarProjectResultList: [ListAvatarProjectResponseBody.QueryAvatarProjectResultList]?

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
        if self.queryAvatarProjectResultList != nil {
            var tmp : [Any] = []
            for k in self.queryAvatarProjectResultList! {
                tmp.append(k.toMap())
            }
            map["queryAvatarProjectResultList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryAvatarProjectResultList"] as? [Any?] {
            var tmp : [ListAvatarProjectResponseBody.QueryAvatarProjectResultList] = []
            for v in value {
                if v != nil {
                    var model = ListAvatarProjectResponseBody.QueryAvatarProjectResultList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryAvatarProjectResultList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvatarProjectResponseBody?

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
            var model = ListAvatarProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKnowledgeBaseRequest : Tea.TeaModel {
    public var knowledgeBaseId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.knowledgeBaseId != nil {
            map["knowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["knowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KnowledgeBaseListResult?

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
            var model = KnowledgeBaseListResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextThemesRequest : Tea.TeaModel {
    public var industry: String?

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
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
    }
}

public class ListTextThemesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextThemeListResult?

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
            var model = TextThemeListResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTextsRequest : Tea.TeaModel {
    public var generationSource: String?

    public var industry: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var publishStatus: String?

    public var textStyleType: String?

    public var textTheme: String?

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
        if self.generationSource != nil {
            map["generationSource"] = self.generationSource!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.keyword != nil {
            map["keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.publishStatus != nil {
            map["publishStatus"] = self.publishStatus!
        }
        if self.textStyleType != nil {
            map["textStyleType"] = self.textStyleType!
        }
        if self.textTheme != nil {
            map["textTheme"] = self.textTheme!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["generationSource"] as? String {
            self.generationSource = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["publishStatus"] as? String {
            self.publishStatus = value
        }
        if let value = dict["textStyleType"] as? String {
            self.textStyleType = value
        }
        if let value = dict["textTheme"] as? String {
            self.textTheme = value
        }
    }
}

public class ListTextsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TextQueryResult?

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
            var model = TextQueryResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVoiceModelsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resSpecType: String?

    public var useScene: String?

    public var voiceLanguage: String?

    public var voiceType: String?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resSpecType != nil {
            map["resSpecType"] = self.resSpecType!
        }
        if self.useScene != nil {
            map["useScene"] = self.useScene!
        }
        if self.voiceLanguage != nil {
            map["voiceLanguage"] = self.voiceLanguage!
        }
        if self.voiceType != nil {
            map["voiceType"] = self.voiceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resSpecType"] as? String {
            self.resSpecType = value
        }
        if let value = dict["useScene"] as? String {
            self.useScene = value
        }
        if let value = dict["voiceLanguage"] as? String {
            self.voiceLanguage = value
        }
        if let value = dict["voiceType"] as? String {
            self.voiceType = value
        }
    }
}

public class ListVoiceModelsResponseBody : Tea.TeaModel {
    public var code: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var list: [VoiceModelResponse]?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

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
            map["code"] = self.code!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["list"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["list"] as? [Any?] {
            var tmp : [VoiceModelResponse] = []
            for v in value {
                if v != nil {
                    var model = VoiceModelResponse()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListVoiceModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVoiceModelsResponseBody?

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
            var model = ListVoiceModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OfflineAICoachScriptRequest : Tea.TeaModel {
    public var scriptId: String?

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
        if self.scriptId != nil {
            map["scriptId"] = self.scriptId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["scriptId"] as? String {
            self.scriptId = value
        }
    }
}

public class OfflineAICoachScriptResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class OfflineAICoachScriptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineAICoachScriptResponseBody?

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
            var model = OfflineAICoachScriptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateAvatarProjectRequest : Tea.TeaModel {
    public var operateType: String?

    public var projectId: String?

    public var resChannelNumber: Int32?

    public var resType: String?

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
        if self.operateType != nil {
            map["operateType"] = self.operateType!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.resChannelNumber != nil {
            map["resChannelNumber"] = self.resChannelNumber!
        }
        if self.resType != nil {
            map["resType"] = self.resType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["operateType"] as? String {
            self.operateType = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["resChannelNumber"] as? Int32 {
            self.resChannelNumber = value
        }
        if let value = dict["resType"] as? String {
            self.resType = value
        }
    }
}

public class OperateAvatarProjectResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class OperateAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateAvatarProjectResponseBody?

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
            var model = OperateAvatarProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAvatarProjectRequest : Tea.TeaModel {
    public var projectId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
    }
}

public class QueryAvatarProjectResponseBody : Tea.TeaModel {
    public class Frames : Tea.TeaModel {
        public class Layers : Tea.TeaModel {
            public class Material : Tea.TeaModel {
                public var format: String?

                public var id: String?

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
                    if self.format != nil {
                        map["format"] = self.format!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["format"] as? String {
                        self.format = value
                    }
                    if let value = dict["id"] as? String {
                        self.id = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public var height: Int32?

            public var index: Int32?

            public var material: QueryAvatarProjectResponseBody.Frames.Layers.Material?

            public var positionX: Int32?

            public var positionY: Int32?

            public var type: String?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.material?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["height"] = self.height!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.material != nil {
                    map["material"] = self.material?.toMap()
                }
                if self.positionX != nil {
                    map["positionX"] = self.positionX!
                }
                if self.positionY != nil {
                    map["positionY"] = self.positionY!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.width != nil {
                    map["width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
                if let value = dict["material"] as? [String: Any?] {
                    var model = QueryAvatarProjectResponseBody.Frames.Layers.Material()
                    model.fromMap(value)
                    self.material = model
                }
                if let value = dict["positionX"] as? Int32 {
                    self.positionX = value
                }
                if let value = dict["positionY"] as? Int32 {
                    self.positionY = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class VideoScript : Tea.TeaModel {
            public var emotion: String?

            public var pitchRate: String?

            public var speedRate: String?

            public var textContent: String?

            public var voiceLanguage: String?

            public var voiceTemplateId: String?

            public var volume: Int32?

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
                if self.emotion != nil {
                    map["emotion"] = self.emotion!
                }
                if self.pitchRate != nil {
                    map["pitchRate"] = self.pitchRate!
                }
                if self.speedRate != nil {
                    map["speedRate"] = self.speedRate!
                }
                if self.textContent != nil {
                    map["textContent"] = self.textContent!
                }
                if self.voiceLanguage != nil {
                    map["voiceLanguage"] = self.voiceLanguage!
                }
                if self.voiceTemplateId != nil {
                    map["voiceTemplateId"] = self.voiceTemplateId!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["emotion"] as? String {
                    self.emotion = value
                }
                if let value = dict["pitchRate"] as? String {
                    self.pitchRate = value
                }
                if let value = dict["speedRate"] as? String {
                    self.speedRate = value
                }
                if let value = dict["textContent"] as? String {
                    self.textContent = value
                }
                if let value = dict["voiceLanguage"] as? String {
                    self.voiceLanguage = value
                }
                if let value = dict["voiceTemplateId"] as? String {
                    self.voiceTemplateId = value
                }
                if let value = dict["volume"] as? Int32 {
                    self.volume = value
                }
            }
        }
        public var index: Int32?

        public var layers: [QueryAvatarProjectResponseBody.Frames.Layers]?

        public var videoScript: QueryAvatarProjectResponseBody.Frames.VideoScript?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.videoScript?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.layers != nil {
                var tmp : [Any] = []
                for k in self.layers! {
                    tmp.append(k.toMap())
                }
                map["layers"] = tmp
            }
            if self.videoScript != nil {
                map["videoScript"] = self.videoScript?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["index"] as? Int32 {
                self.index = value
            }
            if let value = dict["layers"] as? [Any?] {
                var tmp : [QueryAvatarProjectResponseBody.Frames.Layers] = []
                for v in value {
                    if v != nil {
                        var model = QueryAvatarProjectResponseBody.Frames.Layers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.layers = tmp
            }
            if let value = dict["videoScript"] as? [String: Any?] {
                var model = QueryAvatarProjectResponseBody.Frames.VideoScript()
                model.fromMap(value)
                self.videoScript = model
            }
        }
    }
    public var agentId: String?

    public var errorMsg: String?

    public var frames: [QueryAvatarProjectResponseBody.Frames]?

    public var projectName: String?

    public var requestId: String?

    public var resSpecType: String?

    public var scaleType: String?

    public var scriptModelTag: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.frames != nil {
            var tmp : [Any] = []
            for k in self.frames! {
                tmp.append(k.toMap())
            }
            map["frames"] = tmp
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resSpecType != nil {
            map["resSpecType"] = self.resSpecType!
        }
        if self.scaleType != nil {
            map["scaleType"] = self.scaleType!
        }
        if self.scriptModelTag != nil {
            map["scriptModelTag"] = self.scriptModelTag!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["errorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["frames"] as? [Any?] {
            var tmp : [QueryAvatarProjectResponseBody.Frames] = []
            for v in value {
                if v != nil {
                    var model = QueryAvatarProjectResponseBody.Frames()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.frames = tmp
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resSpecType"] as? String {
            self.resSpecType = value
        }
        if let value = dict["scaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["scriptModelTag"] as? String {
            self.scriptModelTag = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class QueryAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvatarProjectResponseBody?

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
            var model = QueryAvatarProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAvatarResourceRequest : Tea.TeaModel {
    public var idempotentId: String?

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
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["idempotentId"] as? String {
            self.idempotentId = value
        }
    }
}

public class QueryAvatarResourceResponseBody : Tea.TeaModel {
    public class QueryResourceInfoList : Tea.TeaModel {
        public var resourceId: String?

        public var type: String?

        public var validPeriodTime: String?

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
            if self.resourceId != nil {
                map["resourceId"] = self.resourceId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.validPeriodTime != nil {
                map["validPeriodTime"] = self.validPeriodTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["resourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["validPeriodTime"] as? String {
                self.validPeriodTime = value
            }
        }
    }
    public var queryResourceInfoList: [QueryAvatarResourceResponseBody.QueryResourceInfoList]?

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
        if self.queryResourceInfoList != nil {
            var tmp : [Any] = []
            for k in self.queryResourceInfoList! {
                tmp.append(k.toMap())
            }
            map["queryResourceInfoList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryResourceInfoList"] as? [Any?] {
            var tmp : [QueryAvatarResourceResponseBody.QueryResourceInfoList] = []
            for v in value {
                if v != nil {
                    var model = QueryAvatarResourceResponseBody.QueryResourceInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryResourceInfoList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAvatarResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvatarResourceResponseBody?

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
            var model = QueryAvatarResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryImageToVideoTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class QueryImageToVideoTaskResponseBody : Tea.TeaModel {
    public var message: String?

    public var originUrl: String?

    public var requestId: String?

    public var status: Int32?

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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.originUrl != nil {
            map["originUrl"] = self.originUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["originUrl"] as? String {
            self.originUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class QueryImageToVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryImageToVideoTaskResponseBody?

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
            var model = QueryImageToVideoTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryIndividuationTextTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class QueryIndividuationTextTaskResponseBody : Tea.TeaModel {
    public class TextList : Tea.TeaModel {
        public var status: Int32?

        public var textId: String?

        public var userId: String?

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
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.textId != nil {
                map["textId"] = self.textId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["textId"] as? String {
                self.textId = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var createTime: String?

    public var requestId: String?

    public var status: Int32?

    public var textList: [QueryIndividuationTextTaskResponseBody.TextList]?

    public var updateTime: String?

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
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.textList != nil {
            var tmp : [Any] = []
            for k in self.textList! {
                tmp.append(k.toMap())
            }
            map["textList"] = tmp
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["textList"] as? [Any?] {
            var tmp : [QueryIndividuationTextTaskResponseBody.TextList] = []
            for v in value {
                if v != nil {
                    var model = QueryIndividuationTextTaskResponseBody.TextList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.textList = tmp
        }
        if let value = dict["updateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class QueryIndividuationTextTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryIndividuationTextTaskResponseBody?

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
            var model = QueryIndividuationTextTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySessionInfoRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var statusList: [String]?

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
        if self.pageNo != nil {
            map["pageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.statusList != nil {
            map["statusList"] = self.statusList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["statusList"] as? [String] {
            self.statusList = value
        }
    }
}

public class QuerySessionInfoShrinkRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var projectId: String?

    public var statusListShrink: String?

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
        if self.pageNo != nil {
            map["pageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.statusListShrink != nil {
            map["statusList"] = self.statusListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["statusList"] as? String {
            self.statusListShrink = value
        }
    }
}

public class QuerySessionInfoResponseBody : Tea.TeaModel {
    public class QueryResourceInfoList : Tea.TeaModel {
        public var sessionId: String?

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
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var queryResourceInfoList: [QuerySessionInfoResponseBody.QueryResourceInfoList]?

    public var requestId: String?

    public var total: Int64?

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
        if self.queryResourceInfoList != nil {
            var tmp : [Any] = []
            for k in self.queryResourceInfoList! {
                tmp.append(k.toMap())
            }
            map["queryResourceInfoList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["queryResourceInfoList"] as? [Any?] {
            var tmp : [QuerySessionInfoResponseBody.QueryResourceInfoList] = []
            for v in value {
                if v != nil {
                    var model = QuerySessionInfoResponseBody.QueryResourceInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryResourceInfoList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class QuerySessionInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySessionInfoResponseBody?

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
            var model = QuerySessionInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTextStreamResponseBody : Tea.TeaModel {
    public var end: Bool?

    public var index: Int32?

    public var message: String?

    public var type: Int32?

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
        if self.end != nil {
            map["end"] = self.end!
        }
        if self.index != nil {
            map["index"] = self.index!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["end"] as? Bool {
            self.end = value
        }
        if let value = dict["index"] as? Int32 {
            self.index = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class QueryTextStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTextStreamResponseBody?

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
            var model = QueryTextStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseAgentRequest : Tea.TeaModel {
    public var agentId: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
    }
}

public class ReleaseAgentResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ReleaseAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseAgentResponseBody?

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
            var model = ReleaseAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveAvatarProjectRequest : Tea.TeaModel {
    public class Frames : Tea.TeaModel {
        public class Layers : Tea.TeaModel {
            public class Material : Tea.TeaModel {
                public var format: String?

                public var id: String?

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
                    if self.format != nil {
                        map["format"] = self.format!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["format"] as? String {
                        self.format = value
                    }
                    if let value = dict["id"] as? String {
                        self.id = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                }
            }
            public var height: Int32?

            public var index: Int32?

            public var material: SaveAvatarProjectRequest.Frames.Layers.Material?

            public var positionX: Int32?

            public var positionY: Int32?

            public var type: String?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.material?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["height"] = self.height!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.material != nil {
                    map["material"] = self.material?.toMap()
                }
                if self.positionX != nil {
                    map["positionX"] = self.positionX!
                }
                if self.positionY != nil {
                    map["positionY"] = self.positionY!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.width != nil {
                    map["width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
                if let value = dict["material"] as? [String: Any?] {
                    var model = SaveAvatarProjectRequest.Frames.Layers.Material()
                    model.fromMap(value)
                    self.material = model
                }
                if let value = dict["positionX"] as? Int32 {
                    self.positionX = value
                }
                if let value = dict["positionY"] as? Int32 {
                    self.positionY = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class VideoScript : Tea.TeaModel {
            public var emotion: String?

            public var pitchRate: String?

            public var speedRate: String?

            public var textContent: String?

            public var voiceLanguage: String?

            public var voiceTemplateId: String?

            public var volume: String?

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
                if self.emotion != nil {
                    map["emotion"] = self.emotion!
                }
                if self.pitchRate != nil {
                    map["pitchRate"] = self.pitchRate!
                }
                if self.speedRate != nil {
                    map["speedRate"] = self.speedRate!
                }
                if self.textContent != nil {
                    map["textContent"] = self.textContent!
                }
                if self.voiceLanguage != nil {
                    map["voiceLanguage"] = self.voiceLanguage!
                }
                if self.voiceTemplateId != nil {
                    map["voiceTemplateId"] = self.voiceTemplateId!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["emotion"] as? String {
                    self.emotion = value
                }
                if let value = dict["pitchRate"] as? String {
                    self.pitchRate = value
                }
                if let value = dict["speedRate"] as? String {
                    self.speedRate = value
                }
                if let value = dict["textContent"] as? String {
                    self.textContent = value
                }
                if let value = dict["voiceLanguage"] as? String {
                    self.voiceLanguage = value
                }
                if let value = dict["voiceTemplateId"] as? String {
                    self.voiceTemplateId = value
                }
                if let value = dict["volume"] as? String {
                    self.volume = value
                }
            }
        }
        public var index: Int32?

        public var layers: [SaveAvatarProjectRequest.Frames.Layers]?

        public var videoScript: SaveAvatarProjectRequest.Frames.VideoScript?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.videoScript?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.layers != nil {
                var tmp : [Any] = []
                for k in self.layers! {
                    tmp.append(k.toMap())
                }
                map["layers"] = tmp
            }
            if self.videoScript != nil {
                map["videoScript"] = self.videoScript?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["index"] as? Int32 {
                self.index = value
            }
            if let value = dict["layers"] as? [Any?] {
                var tmp : [SaveAvatarProjectRequest.Frames.Layers] = []
                for v in value {
                    if v != nil {
                        var model = SaveAvatarProjectRequest.Frames.Layers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.layers = tmp
            }
            if let value = dict["videoScript"] as? [String: Any?] {
                var model = SaveAvatarProjectRequest.Frames.VideoScript()
                model.fromMap(value)
                self.videoScript = model
            }
        }
    }
    public var agentId: String?

    public var bitRate: String?

    public var frameRate: String?

    public var frames: [SaveAvatarProjectRequest.Frames]?

    public var operateType: String?

    public var projectId: String?

    public var projectName: String?

    public var resSpecType: String?

    public var resolution: String?

    public var scaleType: String?

    public var scriptModelTag: String?

    public var synchronizedDisplay: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.bitRate != nil {
            map["bitRate"] = self.bitRate!
        }
        if self.frameRate != nil {
            map["frameRate"] = self.frameRate!
        }
        if self.frames != nil {
            var tmp : [Any] = []
            for k in self.frames! {
                tmp.append(k.toMap())
            }
            map["frames"] = tmp
        }
        if self.operateType != nil {
            map["operateType"] = self.operateType!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.resSpecType != nil {
            map["resSpecType"] = self.resSpecType!
        }
        if self.resolution != nil {
            map["resolution"] = self.resolution!
        }
        if self.scaleType != nil {
            map["scaleType"] = self.scaleType!
        }
        if self.scriptModelTag != nil {
            map["scriptModelTag"] = self.scriptModelTag!
        }
        if self.synchronizedDisplay != nil {
            map["synchronizedDisplay"] = self.synchronizedDisplay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["bitRate"] as? String {
            self.bitRate = value
        }
        if let value = dict["frameRate"] as? String {
            self.frameRate = value
        }
        if let value = dict["frames"] as? [Any?] {
            var tmp : [SaveAvatarProjectRequest.Frames] = []
            for v in value {
                if v != nil {
                    var model = SaveAvatarProjectRequest.Frames()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.frames = tmp
        }
        if let value = dict["operateType"] as? String {
            self.operateType = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["resSpecType"] as? String {
            self.resSpecType = value
        }
        if let value = dict["resolution"] as? String {
            self.resolution = value
        }
        if let value = dict["scaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["scriptModelTag"] as? String {
            self.scriptModelTag = value
        }
        if let value = dict["synchronizedDisplay"] as? String {
            self.synchronizedDisplay = value
        }
    }
}

public class SaveAvatarProjectResponseBody : Tea.TeaModel {
    public var agentId: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var errorMsg: String?

    public var projectId: String?

    public var projectName: String?

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
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.errorMsg != nil {
            map["errorMsg"] = self.errorMsg!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.projectName != nil {
            map["projectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["errorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["projectName"] as? String {
            self.projectName = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class SaveAvatarProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveAvatarProjectResponseBody?

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
            var model = SaveAvatarProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SelectImageTaskResponseBody : Tea.TeaModel {
    public class ImageInfos : Tea.TeaModel {
        public var customImageUrl: String?

        public var gmtCreate: String?

        public var imageH: String?

        public var imageW: String?

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
            if self.customImageUrl != nil {
                map["customImageUrl"] = self.customImageUrl!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.imageH != nil {
                map["imageH"] = self.imageH!
            }
            if self.imageW != nil {
                map["imageW"] = self.imageW!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["customImageUrl"] as? String {
                self.customImageUrl = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["imageH"] as? String {
                self.imageH = value
            }
            if let value = dict["imageW"] as? String {
                self.imageW = value
            }
        }
    }
    public var errorMessage: String?

    public var failed: String?

    public var generationSource: String?

    public var gmtCreate: String?

    public var imageInfos: [SelectImageTaskResponseBody.ImageInfos]?

    public var requestId: String?

    public var scene: String?

    public var status: String?

    public var subtaskProcessing: String?

    public var success: String?

    public var total: String?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.failed != nil {
            map["failed"] = self.failed!
        }
        if self.generationSource != nil {
            map["generationSource"] = self.generationSource!
        }
        if self.gmtCreate != nil {
            map["gmtCreate"] = self.gmtCreate!
        }
        if self.imageInfos != nil {
            var tmp : [Any] = []
            for k in self.imageInfos! {
                tmp.append(k.toMap())
            }
            map["imageInfos"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scene != nil {
            map["scene"] = self.scene!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.subtaskProcessing != nil {
            map["subtaskProcessing"] = self.subtaskProcessing!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["failed"] as? String {
            self.failed = value
        }
        if let value = dict["generationSource"] as? String {
            self.generationSource = value
        }
        if let value = dict["gmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["imageInfos"] as? [Any?] {
            var tmp : [SelectImageTaskResponseBody.ImageInfos] = []
            for v in value {
                if v != nil {
                    var model = SelectImageTaskResponseBody.ImageInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageInfos = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scene"] as? String {
            self.scene = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["subtaskProcessing"] as? String {
            self.subtaskProcessing = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
        if let value = dict["total"] as? String {
            self.total = value
        }
    }
}

public class SelectImageTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectImageTaskResponseBody?

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
            var model = SelectImageTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SelectResourceRequest : Tea.TeaModel {
    public var idempotentId: String?

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
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["idempotentId"] as? String {
            self.idempotentId = value
        }
    }
}

public class SelectResourceResponseBody : Tea.TeaModel {
    public class ResourceInfoList : Tea.TeaModel {
        public var expireTime: String?

        public var lastExpire: Int32?

        public var remainCount: Int32?

        public var resourceType: Int32?

        public var unit: String?

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
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.lastExpire != nil {
                map["lastExpire"] = self.lastExpire!
            }
            if self.remainCount != nil {
                map["remainCount"] = self.remainCount!
            }
            if self.resourceType != nil {
                map["resourceType"] = self.resourceType!
            }
            if self.unit != nil {
                map["unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["expireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["lastExpire"] as? Int32 {
                self.lastExpire = value
            }
            if let value = dict["remainCount"] as? Int32 {
                self.remainCount = value
            }
            if let value = dict["resourceType"] as? Int32 {
                self.resourceType = value
            }
            if let value = dict["unit"] as? String {
                self.unit = value
            }
        }
    }
    public var aliyunUid: String?

    public var requestId: String?

    public var resourceInfoList: [SelectResourceResponseBody.ResourceInfoList]?

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
        if self.aliyunUid != nil {
            map["aliyunUid"] = self.aliyunUid!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.resourceInfoList != nil {
            var tmp : [Any] = []
            for k in self.resourceInfoList! {
                tmp.append(k.toMap())
            }
            map["resourceInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aliyunUid"] as? String {
            self.aliyunUid = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["resourceInfoList"] as? [Any?] {
            var tmp : [SelectResourceResponseBody.ResourceInfoList] = []
            for v in value {
                if v != nil {
                    var model = SelectResourceResponseBody.ResourceInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceInfoList = tmp
        }
    }
}

public class SelectResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectResourceResponseBody?

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
            var model = SelectResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendSdkMessageRequest : Tea.TeaModel {
    public var data: String?

    public var header: String?

    public var moduleName: String?

    public var operationName: String?

    public var userId: String?

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
            map["data"] = self.data!
        }
        if self.header != nil {
            map["header"] = self.header!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.operationName != nil {
            map["operationName"] = self.operationName!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["header"] as? String {
            self.header = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["operationName"] as? String {
            self.operationName = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class SendSdkMessageResponseBody : Tea.TeaModel {
    public var data: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SendSdkMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendSdkMessageResponseBody?

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
            var model = SendSdkMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendSdkStreamMessageRequest : Tea.TeaModel {
    public var data: String?

    public var header: String?

    public var moduleName: String?

    public var operationName: String?

    public var userId: String?

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
            map["data"] = self.data!
        }
        if self.header != nil {
            map["header"] = self.header!
        }
        if self.moduleName != nil {
            map["moduleName"] = self.moduleName!
        }
        if self.operationName != nil {
            map["operationName"] = self.operationName!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["header"] as? String {
            self.header = value
        }
        if let value = dict["moduleName"] as? String {
            self.moduleName = value
        }
        if let value = dict["operationName"] as? String {
            self.operationName = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class SendSdkStreamMessageResponseBody : Tea.TeaModel {
    public var commonStreamMessage: String?

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
        if self.commonStreamMessage != nil {
            map["commonStreamMessage"] = self.commonStreamMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonStreamMessage"] as? String {
            self.commonStreamMessage = value
        }
    }
}

public class SendSdkStreamMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendSdkStreamMessageResponseBody?

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
            var model = SendSdkStreamMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendTextMsgRequest : Tea.TeaModel {
    public var projectId: String?

    public var requestId: String?

    public var sessionId: String?

    public var text: String?

    public var type: Int32?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class SendTextMsgResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class SendTextMsgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendTextMsgResponseBody?

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
            var model = SendTextMsgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartAvatarSessionRequest : Tea.TeaModel {
    public var channelToken: String?

    public var customPushUrl: String?

    public var customUserId: String?

    public var projectId: String?

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
        if self.channelToken != nil {
            map["channelToken"] = self.channelToken!
        }
        if self.customPushUrl != nil {
            map["customPushUrl"] = self.customPushUrl!
        }
        if self.customUserId != nil {
            map["customUserId"] = self.customUserId!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelToken"] as? String {
            self.channelToken = value
        }
        if let value = dict["customPushUrl"] as? String {
            self.customPushUrl = value
        }
        if let value = dict["customUserId"] as? String {
            self.customUserId = value
        }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartAvatarSessionResponseBody : Tea.TeaModel {
    public var channelToken: String?

    public var requestId: String?

    public var sessionId: String?

    public var token: String?

    public var webSocketUrl: String?

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
        if self.channelToken != nil {
            map["channelToken"] = self.channelToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.webSocketUrl != nil {
            map["webSocketUrl"] = self.webSocketUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelToken"] as? String {
            self.channelToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["token"] as? String {
            self.token = value
        }
        if let value = dict["webSocketUrl"] as? String {
            self.webSocketUrl = value
        }
    }
}

public class StartAvatarSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAvatarSessionResponseBody?

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
            var model = StartAvatarSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopAvatarSessionRequest : Tea.TeaModel {
    public var projectId: String?

    public var sessionId: String?

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
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["projectId"] as? String {
            self.projectId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class StopAvatarSessionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class StopAvatarSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAvatarSessionResponseBody?

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
            var model = StopAvatarSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopProjectTaskRequest : Tea.TeaModel {
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class StopProjectTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class StopProjectTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopProjectTaskResponseBody?

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
            var model = StopProjectTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitImageToVideoTaskRequest : Tea.TeaModel {
    public var imageUrl: String?

    public var posPrompt: String?

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
            map["imageUrl"] = self.imageUrl!
        }
        if self.posPrompt != nil {
            map["posPrompt"] = self.posPrompt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["posPrompt"] as? String {
            self.posPrompt = value
        }
    }
}

public class SubmitImageToVideoTaskResponseBody : Tea.TeaModel {
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
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class SubmitImageToVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitImageToVideoTaskResponseBody?

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
            var model = SubmitImageToVideoTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitProjectTaskRequest : Tea.TeaModel {
    public class Frames : Tea.TeaModel {
        public class Layers : Tea.TeaModel {
            public class Material : Tea.TeaModel {
                public class Mask : Tea.TeaModel {
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
                            map["url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["url"] as? String {
                            self.url = value
                        }
                    }
                }
                public var anchorStyleLevel: String?

                public var format: String?

                public var id: String?

                public var mask: SubmitProjectTaskRequest.Frames.Layers.Material.Mask?

                public var speed: String?

                public var url: String?

                public var volume: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.mask?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.anchorStyleLevel != nil {
                        map["anchorStyleLevel"] = self.anchorStyleLevel!
                    }
                    if self.format != nil {
                        map["format"] = self.format!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.mask != nil {
                        map["mask"] = self.mask?.toMap()
                    }
                    if self.speed != nil {
                        map["speed"] = self.speed!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    if self.volume != nil {
                        map["volume"] = self.volume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["anchorStyleLevel"] as? String {
                        self.anchorStyleLevel = value
                    }
                    if let value = dict["format"] as? String {
                        self.format = value
                    }
                    if let value = dict["id"] as? String {
                        self.id = value
                    }
                    if let value = dict["mask"] as? [String: Any?] {
                        var model = SubmitProjectTaskRequest.Frames.Layers.Material.Mask()
                        model.fromMap(value)
                        self.mask = model
                    }
                    if let value = dict["speed"] as? String {
                        self.speed = value
                    }
                    if let value = dict["url"] as? String {
                        self.url = value
                    }
                    if let value = dict["volume"] as? Int32 {
                        self.volume = value
                    }
                }
            }
            public var height: Int32?

            public var index: Int32?

            public var material: SubmitProjectTaskRequest.Frames.Layers.Material?

            public var positionX: Int32?

            public var positionY: Int32?

            public var type: String?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.material?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["height"] = self.height!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.material != nil {
                    map["material"] = self.material?.toMap()
                }
                if self.positionX != nil {
                    map["positionX"] = self.positionX!
                }
                if self.positionY != nil {
                    map["positionY"] = self.positionY!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.width != nil {
                    map["width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["height"] as? Int32 {
                    self.height = value
                }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
                if let value = dict["material"] as? [String: Any?] {
                    var model = SubmitProjectTaskRequest.Frames.Layers.Material()
                    model.fromMap(value)
                    self.material = model
                }
                if let value = dict["positionX"] as? Int32 {
                    self.positionX = value
                }
                if let value = dict["positionY"] as? Int32 {
                    self.positionY = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["width"] as? Int32 {
                    self.width = value
                }
            }
        }
        public class Subtitle : Tea.TeaModel {
            public var alignment: String?

            public var backgroundColor: String?

            public var font: String?

            public var fontColor: String?

            public var fontSize: Int32?

            public var maxCharLength: Int32?

            public var positionX: Int32?

            public var positionY: Int32?

            public var textHeight: Int32?

            public var textWidth: Int32?

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
                if self.alignment != nil {
                    map["alignment"] = self.alignment!
                }
                if self.backgroundColor != nil {
                    map["backgroundColor"] = self.backgroundColor!
                }
                if self.font != nil {
                    map["font"] = self.font!
                }
                if self.fontColor != nil {
                    map["fontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["fontSize"] = self.fontSize!
                }
                if self.maxCharLength != nil {
                    map["maxCharLength"] = self.maxCharLength!
                }
                if self.positionX != nil {
                    map["positionX"] = self.positionX!
                }
                if self.positionY != nil {
                    map["positionY"] = self.positionY!
                }
                if self.textHeight != nil {
                    map["textHeight"] = self.textHeight!
                }
                if self.textWidth != nil {
                    map["textWidth"] = self.textWidth!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["alignment"] as? String {
                    self.alignment = value
                }
                if let value = dict["backgroundColor"] as? String {
                    self.backgroundColor = value
                }
                if let value = dict["font"] as? String {
                    self.font = value
                }
                if let value = dict["fontColor"] as? String {
                    self.fontColor = value
                }
                if let value = dict["fontSize"] as? Int32 {
                    self.fontSize = value
                }
                if let value = dict["maxCharLength"] as? Int32 {
                    self.maxCharLength = value
                }
                if let value = dict["positionX"] as? Int32 {
                    self.positionX = value
                }
                if let value = dict["positionY"] as? Int32 {
                    self.positionY = value
                }
                if let value = dict["textHeight"] as? Int32 {
                    self.textHeight = value
                }
                if let value = dict["textWidth"] as? Int32 {
                    self.textWidth = value
                }
            }
        }
        public class VideoScript : Tea.TeaModel {
            public var audioUrl: String?

            public var emotion: String?

            public var pitchRate: String?

            public var speechOpen: Bool?

            public var speedRate: String?

            public var textContent: String?

            public var type: String?

            public var voiceLanguage: String?

            public var voiceTemplateId: Int64?

            public var volume: Int32?

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
                if self.audioUrl != nil {
                    map["audioUrl"] = self.audioUrl!
                }
                if self.emotion != nil {
                    map["emotion"] = self.emotion!
                }
                if self.pitchRate != nil {
                    map["pitchRate"] = self.pitchRate!
                }
                if self.speechOpen != nil {
                    map["speechOpen"] = self.speechOpen!
                }
                if self.speedRate != nil {
                    map["speedRate"] = self.speedRate!
                }
                if self.textContent != nil {
                    map["textContent"] = self.textContent!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.voiceLanguage != nil {
                    map["voiceLanguage"] = self.voiceLanguage!
                }
                if self.voiceTemplateId != nil {
                    map["voiceTemplateId"] = self.voiceTemplateId!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audioUrl"] as? String {
                    self.audioUrl = value
                }
                if let value = dict["emotion"] as? String {
                    self.emotion = value
                }
                if let value = dict["pitchRate"] as? String {
                    self.pitchRate = value
                }
                if let value = dict["speechOpen"] as? Bool {
                    self.speechOpen = value
                }
                if let value = dict["speedRate"] as? String {
                    self.speedRate = value
                }
                if let value = dict["textContent"] as? String {
                    self.textContent = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["voiceLanguage"] as? String {
                    self.voiceLanguage = value
                }
                if let value = dict["voiceTemplateId"] as? Int64 {
                    self.voiceTemplateId = value
                }
                if let value = dict["volume"] as? Int32 {
                    self.volume = value
                }
            }
        }
        public var index: Int32?

        public var layers: [SubmitProjectTaskRequest.Frames.Layers]?

        public var subtitle: SubmitProjectTaskRequest.Frames.Subtitle?

        public var videoScript: SubmitProjectTaskRequest.Frames.VideoScript?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.subtitle?.validate()
            try self.videoScript?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.layers != nil {
                var tmp : [Any] = []
                for k in self.layers! {
                    tmp.append(k.toMap())
                }
                map["layers"] = tmp
            }
            if self.subtitle != nil {
                map["subtitle"] = self.subtitle?.toMap()
            }
            if self.videoScript != nil {
                map["videoScript"] = self.videoScript?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["index"] as? Int32 {
                self.index = value
            }
            if let value = dict["layers"] as? [Any?] {
                var tmp : [SubmitProjectTaskRequest.Frames.Layers] = []
                for v in value {
                    if v != nil {
                        var model = SubmitProjectTaskRequest.Frames.Layers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.layers = tmp
            }
            if let value = dict["subtitle"] as? [String: Any?] {
                var model = SubmitProjectTaskRequest.Frames.Subtitle()
                model.fromMap(value)
                self.subtitle = model
            }
            if let value = dict["videoScript"] as? [String: Any?] {
                var model = SubmitProjectTaskRequest.Frames.VideoScript()
                model.fromMap(value)
                self.videoScript = model
            }
        }
    }
    public var frames: [SubmitProjectTaskRequest.Frames]?

    public var scaleType: String?

    public var subtitleTag: Int32?

    public var transparentBackground: Int32?

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
            map["frames"] = tmp
        }
        if self.scaleType != nil {
            map["scaleType"] = self.scaleType!
        }
        if self.subtitleTag != nil {
            map["subtitleTag"] = self.subtitleTag!
        }
        if self.transparentBackground != nil {
            map["transparentBackground"] = self.transparentBackground!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["frames"] as? [Any?] {
            var tmp : [SubmitProjectTaskRequest.Frames] = []
            for v in value {
                if v != nil {
                    var model = SubmitProjectTaskRequest.Frames()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.frames = tmp
        }
        if let value = dict["scaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["subtitleTag"] as? Int32 {
            self.subtitleTag = value
        }
        if let value = dict["transparentBackground"] as? Int32 {
            self.transparentBackground = value
        }
    }
}

public class SubmitProjectTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class SubmitProjectTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitProjectTaskResponseBody?

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
            var model = SubmitProjectTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TransferPortraitStyleRequest : Tea.TeaModel {
    public var height: Int32?

    public var imageUrl: String?

    public var numbers: Int32?

    public var redrawAmplitude: Int32?

    public var style: Int32?

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
            map["height"] = self.height!
        }
        if self.imageUrl != nil {
            map["imageUrl"] = self.imageUrl!
        }
        if self.numbers != nil {
            map["numbers"] = self.numbers!
        }
        if self.redrawAmplitude != nil {
            map["redrawAmplitude"] = self.redrawAmplitude!
        }
        if self.style != nil {
            map["style"] = self.style!
        }
        if self.width != nil {
            map["width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["height"] as? Int32 {
            self.height = value
        }
        if let value = dict["imageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["numbers"] as? Int32 {
            self.numbers = value
        }
        if let value = dict["redrawAmplitude"] as? Int32 {
            self.redrawAmplitude = value
        }
        if let value = dict["style"] as? Int32 {
            self.style = value
        }
        if let value = dict["width"] as? Int32 {
            self.width = value
        }
    }
}

public class TransferPortraitStyleResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class TransferPortraitStyleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferPortraitStyleResponseBody?

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
            var model = TransferPortraitStyleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgentRequest : Tea.TeaModel {
    public var agentIconUrl: String?

    public var agentId: String?

    public var agentName: String?

    public var characterAgeStage: String?

    public var characterGender: String?

    public var characterName: String?

    public var extraDescription: String?

    public var industry: String?

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
        if self.agentIconUrl != nil {
            map["agentIconUrl"] = self.agentIconUrl!
        }
        if self.agentId != nil {
            map["agentId"] = self.agentId!
        }
        if self.agentName != nil {
            map["agentName"] = self.agentName!
        }
        if self.characterAgeStage != nil {
            map["characterAgeStage"] = self.characterAgeStage!
        }
        if self.characterGender != nil {
            map["characterGender"] = self.characterGender!
        }
        if self.characterName != nil {
            map["characterName"] = self.characterName!
        }
        if self.extraDescription != nil {
            map["extraDescription"] = self.extraDescription!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentIconUrl"] as? String {
            self.agentIconUrl = value
        }
        if let value = dict["agentId"] as? String {
            self.agentId = value
        }
        if let value = dict["agentName"] as? String {
            self.agentName = value
        }
        if let value = dict["characterAgeStage"] as? String {
            self.characterAgeStage = value
        }
        if let value = dict["characterGender"] as? String {
            self.characterGender = value
        }
        if let value = dict["characterName"] as? String {
            self.characterName = value
        }
        if let value = dict["extraDescription"] as? String {
            self.extraDescription = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
    }
}

public class UpdateAgentResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class UpdateAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgentResponseBody?

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
            var model = UpdateAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
