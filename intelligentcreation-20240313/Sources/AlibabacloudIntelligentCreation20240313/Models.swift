import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public var relatedRagId: Int32?

    public var style: String?

    public var target: String?

    public var textIds: [Int64]?

    public var textModeType: String?

    public var textTaskId: Int64?

    public var textTaskStatus: String?

    public var texts: Text?

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
        try self.texts?.validate()
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
        if self.relatedRagId != nil {
            map["relatedRagId"] = self.relatedRagId!
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
            map["texts"] = self.texts?.toMap()
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
        if dict.keys.contains("relatedRagId") {
            self.relatedRagId = dict["relatedRagId"] as! Int32
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
            var model = Text()
            model.fromMap(dict["texts"] as! [String: Any])
            self.texts = model
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
