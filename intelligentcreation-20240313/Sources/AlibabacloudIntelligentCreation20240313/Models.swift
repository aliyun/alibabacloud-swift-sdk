import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("anchorCategory") {
            self.anchorCategory = dict["anchorCategory"] as! String
        }
        if dict.keys.contains("anchorId") {
            self.anchorId = dict["anchorId"] as! String
        }
        if dict.keys.contains("anchorMaterialName") {
            self.anchorMaterialName = dict["anchorMaterialName"] as! String
        }
        if dict.keys.contains("anchorType") {
            self.anchorType = dict["anchorType"] as! String
        }
        if dict.keys.contains("coverHeight") {
            self.coverHeight = dict["coverHeight"] as! Int32
        }
        if dict.keys.contains("coverRate") {
            self.coverRate = dict["coverRate"] as! String
        }
        if dict.keys.contains("coverThumbnailUrl") {
            self.coverThumbnailUrl = dict["coverThumbnailUrl"] as! String
        }
        if dict.keys.contains("coverUrl") {
            self.coverUrl = dict["coverUrl"] as! String
        }
        if dict.keys.contains("coverWeight") {
            self.coverWeight = dict["coverWeight"] as! Int32
        }
        if dict.keys.contains("digitalHumanType") {
            self.digitalHumanType = dict["digitalHumanType"] as! String
        }
        if dict.keys.contains("gender") {
            self.gender = dict["gender"] as! String
        }
        if dict.keys.contains("resourceTypeDesc") {
            self.resourceTypeDesc = dict["resourceTypeDesc"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("supportBgChange") {
            self.supportBgChange = dict["supportBgChange"] as! Int32
        }
        if dict.keys.contains("useScene") {
            self.useScene = dict["useScene"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("uploadInfo") {
            var model = UploadInfo()
            model.fromMap(dict["uploadInfo"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("illustrationId") {
            self.illustrationId = dict["illustrationId"] as! Int64
        }
        if dict.keys.contains("oss") {
            self.oss = dict["oss"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("illustration") {
            var model = Illustration()
            model.fromMap(dict["illustration"] as! [String: Any])
            self.illustration = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("illustrationIds") {
            self.illustrationIds = dict["illustrationIds"] as! [Int64]
        }
        if dict.keys.contains("illustrationTaskId") {
            self.illustrationTaskId = dict["illustrationTaskId"] as! Int64
        }
        if dict.keys.contains("taskStatus") {
            self.taskStatus = dict["taskStatus"] as! String
        }
        if dict.keys.contains("textId") {
            self.textId = dict["textId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("backgroundType") {
            self.backgroundType = dict["backgroundType"] as! Int32
        }
        if dict.keys.contains("dstHeight") {
            self.dstHeight = dict["dstHeight"] as! Int32
        }
        if dict.keys.contains("dstWidth") {
            self.dstWidth = dict["dstWidth"] as! Int32
        }
        if dict.keys.contains("idempotentId") {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("imageUrls") {
            self.imageUrls = dict["imageUrls"] as! [String]
        }
        if dict.keys.contains("nums") {
            self.nums = dict["nums"] as! Int32
        }
        if dict.keys.contains("ossPaths") {
            self.ossPaths = dict["ossPaths"] as! [String]
        }
        if dict.keys.contains("stickerText") {
            self.stickerText = dict["stickerText"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("illustrationTask") {
            var model = IllustrationTask()
            model.fromMap(dict["illustrationTask"] as! [String: Any])
            self.illustrationTask = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("referenceContent") {
            self.referenceContent = dict["referenceContent"] as! String
        }
        if dict.keys.contains("referenceTitle") {
            self.referenceTitle = dict["referenceTitle"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("agentName") {
            self.agentName = dict["agentName"] as! String
        }
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("errMsg") {
            self.errMsg = dict["errMsg"] as! String
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("illustrationTaskIdList") {
            self.illustrationTaskIdList = dict["illustrationTaskIdList"] as! [Int64]
        }
        if dict.keys.contains("publishStatus") {
            self.publishStatus = dict["publishStatus"] as! String
        }
        if dict.keys.contains("textContent") {
            self.textContent = dict["textContent"] as! String
        }
        if dict.keys.contains("textId") {
            self.textId = dict["textId"] as! Int64
        }
        if dict.keys.contains("textIllustrationTag") {
            self.textIllustrationTag = dict["textIllustrationTag"] as! Bool
        }
        if dict.keys.contains("textModeType") {
            self.textModeType = dict["textModeType"] as! String
        }
        if dict.keys.contains("textStatus") {
            self.textStatus = dict["textStatus"] as! String
        }
        if dict.keys.contains("textStyleType") {
            self.textStyleType = dict["textStyleType"] as! String
        }
        if dict.keys.contains("textTaskId") {
            self.textTaskId = dict["textTaskId"] as! Int64
        }
        if dict.keys.contains("textThemes") {
            self.textThemes = dict["textThemes"] as! [String]
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("userNameCreate") {
            self.userNameCreate = dict["userNameCreate"] as! String
        }
        if dict.keys.contains("userNameModified") {
            self.userNameModified = dict["userNameModified"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("texts") {
            var tmp : [Text] = []
            for v in dict["texts"] as! [Any] {
                var model = Text()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.texts = tmp
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("text") {
            var model = Text()
            model.fromMap(dict["text"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("agentName") {
            self.agentName = dict["agentName"] as! String
        }
        if dict.keys.contains("contentRequirement") {
            self.contentRequirement = dict["contentRequirement"] as! String
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("introduction") {
            self.introduction = dict["introduction"] as! String
        }
        if dict.keys.contains("nums") {
            self.nums = dict["nums"] as! Int32
        }
        if dict.keys.contains("point") {
            self.point = dict["point"] as! String
        }
        if dict.keys.contains("referenceTag") {
            var model = ReferenceTag()
            model.fromMap(dict["referenceTag"] as! [String: Any])
            self.referenceTag = model
        }
        if dict.keys.contains("relatedRagIds") {
            self.relatedRagIds = dict["relatedRagIds"] as! [Int64]
        }
        if dict.keys.contains("style") {
            self.style = dict["style"] as! String
        }
        if dict.keys.contains("target") {
            self.target = dict["target"] as! String
        }
        if dict.keys.contains("textIds") {
            self.textIds = dict["textIds"] as! [Int64]
        }
        if dict.keys.contains("textModeType") {
            self.textModeType = dict["textModeType"] as! String
        }
        if dict.keys.contains("textTaskId") {
            self.textTaskId = dict["textTaskId"] as! Int64
        }
        if dict.keys.contains("textTaskStatus") {
            self.textTaskStatus = dict["textTaskStatus"] as! String
        }
        if dict.keys.contains("texts") {
            var tmp : [Text] = []
            for v in dict["texts"] as! [Any] {
                var model = Text()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.texts = tmp
        }
        if dict.keys.contains("theme") {
            self.theme = dict["theme"] as! String
        }
        if dict.keys.contains("themeDesc") {
            self.themeDesc = dict["themeDesc"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("contentRequirement") {
            self.contentRequirement = dict["contentRequirement"] as! String
        }
        if dict.keys.contains("idempotentId") {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
        }
        if dict.keys.contains("introduction") {
            self.introduction = dict["introduction"] as! String
        }
        if dict.keys.contains("number") {
            self.number = dict["number"] as! Int32
        }
        if dict.keys.contains("point") {
            self.point = dict["point"] as! String
        }
        if dict.keys.contains("referenceTag") {
            var model = ReferenceTag()
            model.fromMap(dict["referenceTag"] as! [String: Any])
            self.referenceTag = model
        }
        if dict.keys.contains("relatedRagIds") {
            self.relatedRagIds = dict["relatedRagIds"] as! [Int64]
        }
        if dict.keys.contains("streamApi") {
            self.streamApi = dict["streamApi"] as! Bool
        }
        if dict.keys.contains("style") {
            self.style = dict["style"] as! String
        }
        if dict.keys.contains("target") {
            self.target = dict["target"] as! String
        }
        if dict.keys.contains("textModeType") {
            self.textModeType = dict["textModeType"] as! String
        }
        if dict.keys.contains("theme") {
            self.theme = dict["theme"] as! String
        }
        if dict.keys.contains("themes") {
            self.themes = dict["themes"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("textTask") {
            var model = TextTask()
            model.fromMap(dict["textTask"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("textThemeList") {
            var tmp : [TextTheme] = []
            for v in dict["textThemeList"] as! [Any] {
                var model = TextTheme()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessId") {
            self.accessId = dict["accessId"] as! String
        }
        if dict.keys.contains("host") {
            self.host = dict["host"] as! String
        }
        if dict.keys.contains("key") {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("policy") {
            self.policy = dict["policy"] as! String
        }
        if dict.keys.contains("policySignature") {
            self.policySignature = dict["policySignature"] as! String
        }
        if dict.keys.contains("url") {
            self.url = dict["url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("resourceTypeDesc") {
            self.resourceTypeDesc = dict["resourceTypeDesc"] as! String
        }
        if dict.keys.contains("ttsVersion") {
            self.ttsVersion = dict["ttsVersion"] as! Int32
        }
        if dict.keys.contains("useScene") {
            self.useScene = dict["useScene"] as! String
        }
        if dict.keys.contains("voiceDesc") {
            self.voiceDesc = dict["voiceDesc"] as! String
        }
        if dict.keys.contains("voiceGender") {
            self.voiceGender = dict["voiceGender"] as! String
        }
        if dict.keys.contains("voiceId") {
            self.voiceId = dict["voiceId"] as! Int64
        }
        if dict.keys.contains("voiceLanguage") {
            self.voiceLanguage = dict["voiceLanguage"] as! String
        }
        if dict.keys.contains("voiceModel") {
            self.voiceModel = dict["voiceModel"] as! String
        }
        if dict.keys.contains("voiceName") {
            self.voiceName = dict["voiceName"] as! String
        }
        if dict.keys.contains("voiceType") {
            self.voiceType = dict["voiceType"] as! String
        }
        if dict.keys.contains("voiceUrl") {
            self.voiceUrl = dict["voiceUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("quality") {
            self.quality = dict["quality"] as! Int32
        }
        if dict.keys.contains("textId") {
            self.textId = dict["textId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddTextFeedbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchCreateAICoachTaskRequest : Tea.TeaModel {
    public var requestId: String?

    public var scriptRecordId: String?

    public var studentIds: [String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("scriptRecordId") {
            self.scriptRecordId = dict["scriptRecordId"] as! String
        }
        if dict.keys.contains("studentIds") {
            self.studentIds = dict["studentIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskIds") {
            self.taskIds = dict["taskIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchCreateAICoachTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskIdList") {
            self.taskIdList = dict["taskIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskIdList") {
            self.taskIdListShrink = dict["taskIdList"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("errorMsg") {
                self.errorMsg = dict["errorMsg"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("videoDownloadUrl") {
                self.videoDownloadUrl = dict["videoDownloadUrl"] as! String
            }
            if dict.keys.contains("videoDuration") {
                self.videoDuration = dict["videoDuration"] as! Int32
            }
            if dict.keys.contains("videoUrl") {
                self.videoUrl = dict["videoUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resultList") {
            var tmp : [BatchGetProjectTaskResponseBody.ResultList] = []
            for v in dict["resultList"] as! [Any] {
                var model = BatchGetProjectTaskResponseBody.ResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchGetProjectTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("textIdList") {
            self.textIdList = dict["textIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("textIdList") {
            self.textIdListShrink = dict["textIdList"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! String
            }
            if dict.keys.contains("errorMsg") {
                self.errorMsg = dict["errorMsg"] as! String
            }
            if dict.keys.contains("itemId") {
                self.itemId = dict["itemId"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
            if dict.keys.contains("textId") {
                self.textId = dict["textId"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("textList") {
            var tmp : [BatchQueryIndividuationTextResponseBody.TextList] = []
            for v in dict["textList"] as! [Any] {
                var model = BatchQueryIndividuationTextResponseBody.TextList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchQueryIndividuationTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloseAICoachTaskSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generationSource") {
            self.generationSource = dict["generationSource"] as! String
        }
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
        }
        if dict.keys.contains("publishStatus") {
            self.publishStatus = dict["publishStatus"] as! String
        }
        if dict.keys.contains("style") {
            self.style = dict["style"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") {
                self.count = dict["count"] as! Int64
            }
            if dict.keys.contains("theme") {
                self.theme = dict["theme"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("countTextCmdList") {
            var tmp : [CountTextResponseBody.CountTextCmdList] = []
            for v in dict["countTextCmdList"] as! [Any] {
                var model = CountTextResponseBody.CountTextCmdList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CountTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAICoachTaskRequest : Tea.TeaModel {
    public var requestId: String?

    public var scriptRecordId: String?

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
        if self.studentId != nil {
            map["studentId"] = self.studentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("scriptRecordId") {
            self.scriptRecordId = dict["scriptRecordId"] as! String
        }
        if dict.keys.contains("studentId") {
            self.studentId = dict["studentId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAICoachTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class CreateAICoachTaskSessionResponseBody : Tea.TeaModel {
    public class ScriptInfo : Tea.TeaModel {
        public var initiator: String?

        public var maxDuration: Int64?

        public var scriptDesc: String?

        public var scriptName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.initiator != nil {
                map["initiator"] = self.initiator!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("initiator") {
                self.initiator = dict["initiator"] as! String
            }
            if dict.keys.contains("maxDuration") {
                self.maxDuration = dict["maxDuration"] as! Int64
            }
            if dict.keys.contains("scriptDesc") {
                self.scriptDesc = dict["scriptDesc"] as! String
            }
            if dict.keys.contains("scriptName") {
                self.scriptName = dict["scriptName"] as! String
            }
        }
    }
    public var channelToken: String?

    public var requestId: String?

    public var scriptInfo: CreateAICoachTaskSessionResponseBody.ScriptInfo?

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
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.webSocketUrl != nil {
            map["webSocketUrl"] = self.webSocketUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channelToken") {
            self.channelToken = dict["channelToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("scriptInfo") {
            var model = CreateAICoachTaskSessionResponseBody.ScriptInfo()
            model.fromMap(dict["scriptInfo"] as! [String: Any])
            self.scriptInfo = model
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("webSocketUrl") {
            self.webSocketUrl = dict["webSocketUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAICoachTaskSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAnchorRequest : Tea.TeaModel {
    public var anchorMaterialName: String?

    public var coverUrl: String?

    public var digitalHumanType: String?

    public var gender: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("anchorMaterialName") {
            self.anchorMaterialName = dict["anchorMaterialName"] as! String
        }
        if dict.keys.contains("coverUrl") {
            self.coverUrl = dict["coverUrl"] as! String
        }
        if dict.keys.contains("digitalHumanType") {
            self.digitalHumanType = dict["digitalHumanType"] as! String
        }
        if dict.keys.contains("gender") {
            self.gender = dict["gender"] as! String
        }
        if dict.keys.contains("useScene") {
            self.useScene = dict["useScene"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAnchorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = IllustrationTaskCreateCmd()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IllustrationTaskResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectInfo") {
            self.projectInfo = dict["projectInfo"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("purpose") {
            self.purpose = dict["purpose"] as! String
        }
        if dict.keys.contains("sceneId") {
            self.sceneId = dict["sceneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIndividuationProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("crowdPack") {
            self.crowdPack = dict["crowdPack"] as! [[String]]
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("taskName") {
            self.taskName = dict["taskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateIndividuationTextTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ages") {
            self.ages = dict["ages"] as! [Int32]
        }
        if dict.keys.contains("cloth") {
            self.cloth = dict["cloth"] as! Int32
        }
        if dict.keys.contains("color") {
            self.color = dict["color"] as! Int32
        }
        if dict.keys.contains("custom") {
            self.custom = dict["custom"] as! String
        }
        if dict.keys.contains("face") {
            self.face = dict["face"] as! [Int32]
        }
        if dict.keys.contains("figure") {
            self.figure = dict["figure"] as! Int32
        }
        if dict.keys.contains("gender") {
            self.gender = dict["gender"] as! Int32
        }
        if dict.keys.contains("hairColor") {
            self.hairColor = dict["hairColor"] as! Int32
        }
        if dict.keys.contains("hairstyle") {
            self.hairstyle = dict["hairstyle"] as! Int32
        }
        if dict.keys.contains("height") {
            self.height = dict["height"] as! Int32
        }
        if dict.keys.contains("imageUrl") {
            self.imageUrl = dict["imageUrl"] as! String
        }
        if dict.keys.contains("numbers") {
            self.numbers = dict["numbers"] as! Int32
        }
        if dict.keys.contains("ratio") {
            self.ratio = dict["ratio"] as! String
        }
        if dict.keys.contains("width") {
            self.width = dict["width"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRealisticPortraitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            var model = TextTaskCreateCmd()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TextTaskResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteIndividuationProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("textIdList") {
            self.textIdList = dict["textIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("desc") {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteIndividuationTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = FinishAICoachTaskSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
        }
    }
}

public class GetAICoachTaskSessionHistoryResponseBody : Tea.TeaModel {
    public class ConversationList : Tea.TeaModel {
        public var audioUrl: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("audioUrl") {
                self.audioUrl = dict["audioUrl"] as! String
            }
            if dict.keys.contains("evaluationResult") {
                self.evaluationResult = dict["evaluationResult"] as! String
            }
            if dict.keys.contains("message") {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("recordId") {
                self.recordId = dict["recordId"] as! String
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public var conversationList: [GetAICoachTaskSessionHistoryResponseBody.ConversationList]?

    public var duration: Int64?

    public var endTime: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conversationList") {
            var tmp : [GetAICoachTaskSessionHistoryResponseBody.ConversationList] = []
            for v in dict["conversationList"] as! [Any] {
                var model = GetAICoachTaskSessionHistoryResponseBody.ConversationList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversationList = tmp
        }
        if dict.keys.contains("duration") {
            self.duration = dict["duration"] as! Int64
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("scriptName") {
            self.scriptName = dict["scriptName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAICoachTaskSessionHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("duration") {
            self.duration = dict["duration"] as! Int64
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("evaluationRating") {
            self.evaluationRating = dict["evaluationRating"] as! String
        }
        if dict.keys.contains("evaluationResult") {
            self.evaluationResult = dict["evaluationResult"] as! String
        }
        if dict.keys.contains("feedback") {
            self.feedback = dict["feedback"] as! Bool
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("scriptName") {
            self.scriptName = dict["scriptName"] as! String
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("uid") {
            self.uid = dict["uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAICoachTaskSessionReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IllustrationResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IllustrationTaskResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOssUploadTokenRequest : Tea.TeaModel {
    public var fileName: String?

    public var fileType: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileType") {
            self.fileType = dict["fileType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOssUploadTokenResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdempotentId") {
            self.idempotentId = dict["IdempotentId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("videoDownloadUrl") {
            self.videoDownloadUrl = dict["videoDownloadUrl"] as! String
        }
        if dict.keys.contains("videoDuration") {
            self.videoDuration = dict["videoDuration"] as! Int32
        }
        if dict.keys.contains("videoUrl") {
            self.videoUrl = dict["videoUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetProjectTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TextResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TextTaskResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("desc") {
                        self.desc = dict["desc"] as! String
                    }
                    if dict.keys.contains("disabled") {
                        self.disabled = dict["disabled"] as! Bool
                    }
                    if dict.keys.contains("name") {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("templateKey") {
                        self.templateKey = dict["templateKey"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("textStyles") {
                    var tmp : [GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes.TextStyles] = []
                    for v in dict["textStyles"] as! [Any] {
                        var model = GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes.TextStyles()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("textModeTypes") {
                var tmp : [GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes] = []
                for v in dict["textModeTypes"] as! [Any] {
                    var model = GetTextTemplateResponseBody.AvailableIndustry.TextModeTypes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("availableIndustry") {
            var model = GetTextTemplateResponseBody.AvailableIndustry()
            model.fromMap(dict["availableIndustry"] as! [String: Any])
            self.availableIndustry = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetTextTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("index") {
            self.index = dict["index"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("relatedImages") {
            self.relatedImages = dict["relatedImages"] as! [String]
        }
        if dict.keys.contains("relatedVideos") {
            self.relatedVideos = dict["relatedVideos"] as! [String]
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InteractTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clickCompleteAutoEnd") {
                    self.clickCompleteAutoEnd = dict["clickCompleteAutoEnd"] as! Bool
                }
                if dict.keys.contains("duration") {
                    self.duration = dict["duration"] as! Int32
                }
                if dict.keys.contains("fullCoverageAutoEnd") {
                    self.fullCoverageAutoEnd = dict["fullCoverageAutoEnd"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("message") {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
            }
        }
        public class ScoreConfig : Tea.TeaModel {
            public var enabled: Bool?

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
                if self.passScore != nil {
                    map["passScore"] = self.passScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enabled") {
                    self.enabled = dict["enabled"] as! Bool
                }
                if dict.keys.contains("passScore") {
                    self.passScore = dict["passScore"] as! Int32
                }
            }
        }
        public class Weights : Tea.TeaModel {
            public var assessmentPoint: Int32?

            public var expressiveness: Int32?

            public var expressivenessEnabled: Bool?

            public var pointDeductionRule: Int32?

            public var pointDeductionRuleEnabled: Bool?

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
                if self.standard != nil {
                    map["standard"] = self.standard!
                }
                if self.standardEnabled != nil {
                    map["standardEnabled"] = self.standardEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("assessmentPoint") {
                    self.assessmentPoint = dict["assessmentPoint"] as! Int32
                }
                if dict.keys.contains("expressiveness") {
                    self.expressiveness = dict["expressiveness"] as! Int32
                }
                if dict.keys.contains("expressivenessEnabled") {
                    self.expressivenessEnabled = dict["expressivenessEnabled"] as! Bool
                }
                if dict.keys.contains("pointDeductionRule") {
                    self.pointDeductionRule = dict["pointDeductionRule"] as! Int32
                }
                if dict.keys.contains("pointDeductionRuleEnabled") {
                    self.pointDeductionRuleEnabled = dict["pointDeductionRuleEnabled"] as! Bool
                }
                if dict.keys.contains("standard") {
                    self.standard = dict["standard"] as! Int32
                }
                if dict.keys.contains("standardEnabled") {
                    self.standardEnabled = dict["standardEnabled"] as! Bool
                }
            }
        }
        public var appendQuestionFlag: String?

        public var assessmentScope: String?

        public var completeStrategy: ListAICoachScriptPageResponseBody.List.CompleteStrategy?

        public var coverUrl: String?

        public var dialogueTextFlag: Bool?

        public var dialogueTipFlag: Bool?

        public var evaluateReportFlag: Bool?

        public var expressiveness: [String: String]?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var initiator: String?

        public var interactionType: String?

        public var introduce: String?

        public var name: String?

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
            if self.completeStrategy != nil {
                map["completeStrategy"] = self.completeStrategy?.toMap()
            }
            if self.coverUrl != nil {
                map["coverUrl"] = self.coverUrl!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appendQuestionFlag") {
                self.appendQuestionFlag = dict["appendQuestionFlag"] as! String
            }
            if dict.keys.contains("assessmentScope") {
                self.assessmentScope = dict["assessmentScope"] as! String
            }
            if dict.keys.contains("completeStrategy") {
                var model = ListAICoachScriptPageResponseBody.List.CompleteStrategy()
                model.fromMap(dict["completeStrategy"] as! [String: Any])
                self.completeStrategy = model
            }
            if dict.keys.contains("coverUrl") {
                self.coverUrl = dict["coverUrl"] as! String
            }
            if dict.keys.contains("dialogueTextFlag") {
                self.dialogueTextFlag = dict["dialogueTextFlag"] as! Bool
            }
            if dict.keys.contains("dialogueTipFlag") {
                self.dialogueTipFlag = dict["dialogueTipFlag"] as! Bool
            }
            if dict.keys.contains("evaluateReportFlag") {
                self.evaluateReportFlag = dict["evaluateReportFlag"] as! Bool
            }
            if dict.keys.contains("expressiveness") {
                self.expressiveness = dict["expressiveness"] as! [String: String]
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("initiator") {
                self.initiator = dict["initiator"] as! String
            }
            if dict.keys.contains("interactionType") {
                self.interactionType = dict["interactionType"] as! String
            }
            if dict.keys.contains("introduce") {
                self.introduce = dict["introduce"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("orderAckFlag") {
                self.orderAckFlag = dict["orderAckFlag"] as! Bool
            }
            if dict.keys.contains("sampleDialogueList") {
                var tmp : [ListAICoachScriptPageResponseBody.List.SampleDialogueList] = []
                for v in dict["sampleDialogueList"] as! [Any] {
                    var model = ListAICoachScriptPageResponseBody.List.SampleDialogueList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sampleDialogueList = tmp
            }
            if dict.keys.contains("scoreConfig") {
                var model = ListAICoachScriptPageResponseBody.List.ScoreConfig()
                model.fromMap(dict["scoreConfig"] as! [String: Any])
                self.scoreConfig = model
            }
            if dict.keys.contains("scriptRecordId") {
                self.scriptRecordId = dict["scriptRecordId"] as! String
            }
            if dict.keys.contains("sparringTipContent") {
                self.sparringTipContent = dict["sparringTipContent"] as! String
            }
            if dict.keys.contains("sparringTipTitle") {
                self.sparringTipTitle = dict["sparringTipTitle"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("studentThinkTimeFlag") {
                self.studentThinkTimeFlag = dict["studentThinkTimeFlag"] as! Bool
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("weights") {
                var model = ListAICoachScriptPageResponseBody.List.Weights()
                model.fromMap(dict["weights"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("list") {
            var tmp : [ListAICoachScriptPageResponseBody.List] = []
            for v in dict["list"] as! [Any] {
                var model = ListAICoachScriptPageResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAICoachScriptPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAICoachTaskPageRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("studentId") {
            self.studentId = dict["studentId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class ListAICoachTaskPageResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public var finishTime: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("finishTime") {
                self.finishTime = dict["finishTime"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("studentId") {
                self.studentId = dict["studentId"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var requestId: String?

    public var taskList: [ListAICoachTaskPageResponseBody.TaskList]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskList") {
            var tmp : [ListAICoachTaskPageResponseBody.TaskList] = []
            for v in dict["taskList"] as! [Any] {
                var model = ListAICoachTaskPageResponseBody.TaskList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskList = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAICoachTaskPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAnchorRequest : Tea.TeaModel {
    public var anchorCategory: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("anchorCategory") {
            self.anchorCategory = dict["anchorCategory"] as! String
        }
        if dict.keys.contains("anchorType") {
            self.anchorType = dict["anchorType"] as! String
        }
        if dict.keys.contains("coverRate") {
            self.coverRate = dict["coverRate"] as! String
        }
        if dict.keys.contains("digitalHumanType") {
            self.digitalHumanType = dict["digitalHumanType"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resSpecType") {
            self.resSpecType = dict["resSpecType"] as! String
        }
        if dict.keys.contains("useScene") {
            self.useScene = dict["useScene"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("list") {
            var tmp : [AnchorResponse] = []
            for v in dict["list"] as! [Any] {
                var model = AnchorResponse()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAnchorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectIdList") {
            self.projectIdList = dict["projectIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectIdList") {
            self.projectIdListShrink = dict["projectIdList"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("agentId") {
                self.agentId = dict["agentId"] as! String
            }
            if dict.keys.contains("errorMsg") {
                self.errorMsg = dict["errorMsg"] as! String
            }
            if dict.keys.contains("projectId") {
                self.projectId = dict["projectId"] as! String
            }
            if dict.keys.contains("projectName") {
                self.projectName = dict["projectName"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queryAvatarProjectResultList") {
            var tmp : [ListAvatarProjectResponseBody.QueryAvatarProjectResultList] = []
            for v in dict["queryAvatarProjectResultList"] as! [Any] {
                var model = ListAvatarProjectResponseBody.QueryAvatarProjectResultList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queryAvatarProjectResultList = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TextThemeListResult()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("generationSource") {
            self.generationSource = dict["generationSource"] as! String
        }
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
        }
        if dict.keys.contains("keyword") {
            self.keyword = dict["keyword"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("publishStatus") {
            self.publishStatus = dict["publishStatus"] as! String
        }
        if dict.keys.contains("textStyleType") {
            self.textStyleType = dict["textStyleType"] as! String
        }
        if dict.keys.contains("textTheme") {
            self.textTheme = dict["textTheme"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TextQueryResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVoiceModelsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resSpecType: String?

    public var useScene: String?

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
        if self.voiceType != nil {
            map["voiceType"] = self.voiceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("resSpecType") {
            self.resSpecType = dict["resSpecType"] as! String
        }
        if dict.keys.contains("useScene") {
            self.useScene = dict["useScene"] as! String
        }
        if dict.keys.contains("voiceType") {
            self.voiceType = dict["voiceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("list") {
            var tmp : [VoiceModelResponse] = []
            for v in dict["list"] as! [Any] {
                var model = VoiceModelResponse()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListVoiceModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("operateType") {
            self.operateType = dict["operateType"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("resChannelNumber") {
            self.resChannelNumber = dict["resChannelNumber"] as! Int32
        }
        if dict.keys.contains("resType") {
            self.resType = dict["resType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OperateAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("format") {
                        self.format = dict["format"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("url") {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public var height: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("height") {
                    self.height = dict["height"] as! Int32
                }
                if dict.keys.contains("material") {
                    var model = QueryAvatarProjectResponseBody.Frames.Layers.Material()
                    model.fromMap(dict["material"] as! [String: Any])
                    self.material = model
                }
                if dict.keys.contains("positionX") {
                    self.positionX = dict["positionX"] as! Int32
                }
                if dict.keys.contains("positionY") {
                    self.positionY = dict["positionY"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("width") {
                    self.width = dict["width"] as! Int32
                }
            }
        }
        public class VideoScript : Tea.TeaModel {
            public var speedRate: String?

            public var voiceTemplateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.speedRate != nil {
                    map["speedRate"] = self.speedRate!
                }
                if self.voiceTemplateId != nil {
                    map["voiceTemplateId"] = self.voiceTemplateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("speedRate") {
                    self.speedRate = dict["speedRate"] as! String
                }
                if dict.keys.contains("voiceTemplateId") {
                    self.voiceTemplateId = dict["voiceTemplateId"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("layers") {
                var tmp : [QueryAvatarProjectResponseBody.Frames.Layers] = []
                for v in dict["layers"] as! [Any] {
                    var model = QueryAvatarProjectResponseBody.Frames.Layers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.layers = tmp
            }
            if dict.keys.contains("videoScript") {
                var model = QueryAvatarProjectResponseBody.Frames.VideoScript()
                model.fromMap(dict["videoScript"] as! [String: Any])
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
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("frames") {
            var tmp : [QueryAvatarProjectResponseBody.Frames] = []
            for v in dict["frames"] as! [Any] {
                var model = QueryAvatarProjectResponseBody.Frames()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.frames = tmp
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resSpecType") {
            self.resSpecType = dict["resSpecType"] as! String
        }
        if dict.keys.contains("scaleType") {
            self.scaleType = dict["scaleType"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("idempotentId") {
            self.idempotentId = dict["idempotentId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resourceId") {
                self.resourceId = dict["resourceId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("validPeriodTime") {
                self.validPeriodTime = dict["validPeriodTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queryResourceInfoList") {
            var tmp : [QueryAvatarResourceResponseBody.QueryResourceInfoList] = []
            for v in dict["queryResourceInfoList"] as! [Any] {
                var model = QueryAvatarResourceResponseBody.QueryResourceInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queryResourceInfoList = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAvatarResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("status") {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("textId") {
                self.textId = dict["textId"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("textList") {
            var tmp : [QueryIndividuationTextTaskResponseBody.TextList] = []
            for v in dict["textList"] as! [Any] {
                var model = QueryIndividuationTextTaskResponseBody.TextList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.textList = tmp
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryIndividuationTextTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNo") {
            self.pageNo = dict["pageNo"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("statusList") {
            self.statusList = dict["statusList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNo") {
            self.pageNo = dict["pageNo"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("statusList") {
            self.statusListShrink = dict["statusList"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("queryResourceInfoList") {
            var tmp : [QuerySessionInfoResponseBody.QueryResourceInfoList] = []
            for v in dict["queryResourceInfoList"] as! [Any] {
                var model = QuerySessionInfoResponseBody.QueryResourceInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queryResourceInfoList = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySessionInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("end") {
            self.end = dict["end"] as! Bool
        }
        if dict.keys.contains("index") {
            self.index = dict["index"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryTextStreamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("format") {
                        self.format = dict["format"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("url") {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public var height: Int32?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("height") {
                    self.height = dict["height"] as! Int32
                }
                if dict.keys.contains("material") {
                    var model = SaveAvatarProjectRequest.Frames.Layers.Material()
                    model.fromMap(dict["material"] as! [String: Any])
                    self.material = model
                }
                if dict.keys.contains("positionX") {
                    self.positionX = dict["positionX"] as! Int32
                }
                if dict.keys.contains("positionY") {
                    self.positionY = dict["positionY"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("width") {
                    self.width = dict["width"] as! Int32
                }
            }
        }
        public class VideoScript : Tea.TeaModel {
            public var speedRate: String?

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
                if self.speedRate != nil {
                    map["speedRate"] = self.speedRate!
                }
                if self.voiceTemplateId != nil {
                    map["voiceTemplateId"] = self.voiceTemplateId!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("speedRate") {
                    self.speedRate = dict["speedRate"] as! String
                }
                if dict.keys.contains("voiceTemplateId") {
                    self.voiceTemplateId = dict["voiceTemplateId"] as! String
                }
                if dict.keys.contains("volume") {
                    self.volume = dict["volume"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("layers") {
                var tmp : [SaveAvatarProjectRequest.Frames.Layers] = []
                for v in dict["layers"] as! [Any] {
                    var model = SaveAvatarProjectRequest.Frames.Layers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.layers = tmp
            }
            if dict.keys.contains("videoScript") {
                var model = SaveAvatarProjectRequest.Frames.VideoScript()
                model.fromMap(dict["videoScript"] as! [String: Any])
                self.videoScript = model
            }
        }
    }
    public var agentId: String?

    public var frames: [SaveAvatarProjectRequest.Frames]?

    public var operateType: String?

    public var projectId: String?

    public var projectName: String?

    public var resSpecType: String?

    public var resolution: String?

    public var scaleType: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("frames") {
            var tmp : [SaveAvatarProjectRequest.Frames] = []
            for v in dict["frames"] as! [Any] {
                var model = SaveAvatarProjectRequest.Frames()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.frames = tmp
        }
        if dict.keys.contains("operateType") {
            self.operateType = dict["operateType"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("resSpecType") {
            self.resSpecType = dict["resSpecType"] as! String
        }
        if dict.keys.contains("resolution") {
            self.resolution = dict["resolution"] as! String
        }
        if dict.keys.contains("scaleType") {
            self.scaleType = dict["scaleType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("agentId") {
            self.agentId = dict["agentId"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("errorMsg") {
            self.errorMsg = dict["errorMsg"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("projectName") {
            self.projectName = dict["projectName"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveAvatarProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("customImageUrl") {
                self.customImageUrl = dict["customImageUrl"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("imageH") {
                self.imageH = dict["imageH"] as! String
            }
            if dict.keys.contains("imageW") {
                self.imageW = dict["imageW"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("failed") {
            self.failed = dict["failed"] as! String
        }
        if dict.keys.contains("generationSource") {
            self.generationSource = dict["generationSource"] as! String
        }
        if dict.keys.contains("gmtCreate") {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("imageInfos") {
            var tmp : [SelectImageTaskResponseBody.ImageInfos] = []
            for v in dict["imageInfos"] as! [Any] {
                var model = SelectImageTaskResponseBody.ImageInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.imageInfos = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("scene") {
            self.scene = dict["scene"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("subtaskProcessing") {
            self.subtaskProcessing = dict["subtaskProcessing"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SelectImageTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("idempotentId") {
            self.idempotentId = dict["idempotentId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expireTime") {
                self.expireTime = dict["expireTime"] as! String
            }
            if dict.keys.contains("lastExpire") {
                self.lastExpire = dict["lastExpire"] as! Int32
            }
            if dict.keys.contains("remainCount") {
                self.remainCount = dict["remainCount"] as! Int32
            }
            if dict.keys.contains("resourceType") {
                self.resourceType = dict["resourceType"] as! Int32
            }
            if dict.keys.contains("unit") {
                self.unit = dict["unit"] as! String
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("resourceInfoList") {
            var tmp : [SelectResourceResponseBody.ResourceInfoList] = []
            for v in dict["resourceInfoList"] as! [Any] {
                var model = SelectResourceResponseBody.ResourceInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SelectResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendSdkMessageRequest : Tea.TeaModel {
    public var data: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("moduleName") {
            self.moduleName = dict["moduleName"] as! String
        }
        if dict.keys.contains("operationName") {
            self.operationName = dict["operationName"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("errorCode") {
            self.errorCode = dict["errorCode"] as! String
        }
        if dict.keys.contains("errorMessage") {
            self.errorMessage = dict["errorMessage"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendSdkMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("text") {
            self.text = dict["text"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SendTextMsgResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channelToken") {
            self.channelToken = dict["channelToken"] as! String
        }
        if dict.keys.contains("customPushUrl") {
            self.customPushUrl = dict["customPushUrl"] as! String
        }
        if dict.keys.contains("customUserId") {
            self.customUserId = dict["customUserId"] as! String
        }
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channelToken") {
            self.channelToken = dict["channelToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("webSocketUrl") {
            self.webSocketUrl = dict["webSocketUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartAvatarSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("projectId") {
            self.projectId = dict["projectId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopAvatarSessionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopProjectTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitProjectTaskRequest : Tea.TeaModel {
    public class Frames : Tea.TeaModel {
        public class Layers : Tea.TeaModel {
            public class Material : Tea.TeaModel {
                public var anchorStyleLevel: String?

                public var format: String?

                public var id: String?

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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("anchorStyleLevel") {
                        self.anchorStyleLevel = dict["anchorStyleLevel"] as! String
                    }
                    if dict.keys.contains("format") {
                        self.format = dict["format"] as! String
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("speed") {
                        self.speed = dict["speed"] as! String
                    }
                    if dict.keys.contains("url") {
                        self.url = dict["url"] as! String
                    }
                    if dict.keys.contains("volume") {
                        self.volume = dict["volume"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("height") {
                    self.height = dict["height"] as! Int32
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! Int32
                }
                if dict.keys.contains("material") {
                    var model = SubmitProjectTaskRequest.Frames.Layers.Material()
                    model.fromMap(dict["material"] as! [String: Any])
                    self.material = model
                }
                if dict.keys.contains("positionX") {
                    self.positionX = dict["positionX"] as! Int32
                }
                if dict.keys.contains("positionY") {
                    self.positionY = dict["positionY"] as! Int32
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("width") {
                    self.width = dict["width"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alignment") {
                    self.alignment = dict["alignment"] as! String
                }
                if dict.keys.contains("backgroundColor") {
                    self.backgroundColor = dict["backgroundColor"] as! String
                }
                if dict.keys.contains("font") {
                    self.font = dict["font"] as! String
                }
                if dict.keys.contains("fontColor") {
                    self.fontColor = dict["fontColor"] as! String
                }
                if dict.keys.contains("fontSize") {
                    self.fontSize = dict["fontSize"] as! Int32
                }
                if dict.keys.contains("maxCharLength") {
                    self.maxCharLength = dict["maxCharLength"] as! Int32
                }
                if dict.keys.contains("positionX") {
                    self.positionX = dict["positionX"] as! Int32
                }
                if dict.keys.contains("positionY") {
                    self.positionY = dict["positionY"] as! Int32
                }
                if dict.keys.contains("textHeight") {
                    self.textHeight = dict["textHeight"] as! Int32
                }
                if dict.keys.contains("textWidth") {
                    self.textWidth = dict["textWidth"] as! Int32
                }
            }
        }
        public class VideoScript : Tea.TeaModel {
            public var audioUrl: String?

            public var speechOpen: Bool?

            public var speedRate: String?

            public var textContent: String?

            public var type: String?

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
                if self.voiceTemplateId != nil {
                    map["voiceTemplateId"] = self.voiceTemplateId!
                }
                if self.volume != nil {
                    map["volume"] = self.volume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("audioUrl") {
                    self.audioUrl = dict["audioUrl"] as! String
                }
                if dict.keys.contains("speechOpen") {
                    self.speechOpen = dict["speechOpen"] as! Bool
                }
                if dict.keys.contains("speedRate") {
                    self.speedRate = dict["speedRate"] as! String
                }
                if dict.keys.contains("textContent") {
                    self.textContent = dict["textContent"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("voiceTemplateId") {
                    self.voiceTemplateId = dict["voiceTemplateId"] as! Int64
                }
                if dict.keys.contains("volume") {
                    self.volume = dict["volume"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("index") {
                self.index = dict["index"] as! Int32
            }
            if dict.keys.contains("layers") {
                var tmp : [SubmitProjectTaskRequest.Frames.Layers] = []
                for v in dict["layers"] as! [Any] {
                    var model = SubmitProjectTaskRequest.Frames.Layers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.layers = tmp
            }
            if dict.keys.contains("subtitle") {
                var model = SubmitProjectTaskRequest.Frames.Subtitle()
                model.fromMap(dict["subtitle"] as! [String: Any])
                self.subtitle = model
            }
            if dict.keys.contains("videoScript") {
                var model = SubmitProjectTaskRequest.Frames.VideoScript()
                model.fromMap(dict["videoScript"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("frames") {
            var tmp : [SubmitProjectTaskRequest.Frames] = []
            for v in dict["frames"] as! [Any] {
                var model = SubmitProjectTaskRequest.Frames()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.frames = tmp
        }
        if dict.keys.contains("scaleType") {
            self.scaleType = dict["scaleType"] as! String
        }
        if dict.keys.contains("subtitleTag") {
            self.subtitleTag = dict["subtitleTag"] as! Int32
        }
        if dict.keys.contains("transparentBackground") {
            self.transparentBackground = dict["transparentBackground"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitProjectTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("height") {
            self.height = dict["height"] as! Int32
        }
        if dict.keys.contains("imageUrl") {
            self.imageUrl = dict["imageUrl"] as! String
        }
        if dict.keys.contains("numbers") {
            self.numbers = dict["numbers"] as! Int32
        }
        if dict.keys.contains("redrawAmplitude") {
            self.redrawAmplitude = dict["redrawAmplitude"] as! Int32
        }
        if dict.keys.contains("style") {
            self.style = dict["style"] as! Int32
        }
        if dict.keys.contains("width") {
            self.width = dict["width"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TransferPortraitStyleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
