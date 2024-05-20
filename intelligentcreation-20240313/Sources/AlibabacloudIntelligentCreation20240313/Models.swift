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
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("uploadInfo") && dict["uploadInfo"] != nil {
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
        if dict.keys.contains("illustrationId") && dict["illustrationId"] != nil {
            self.illustrationId = dict["illustrationId"] as! Int64
        }
        if dict.keys.contains("oss") && dict["oss"] != nil {
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
        if dict.keys.contains("illustration") && dict["illustration"] != nil {
            var model = Illustration()
            model.fromMap(dict["illustration"] as! [String: Any])
            self.illustration = model
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
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
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("illustrationIds") && dict["illustrationIds"] != nil {
            self.illustrationIds = dict["illustrationIds"] as! [Int64]
        }
        if dict.keys.contains("illustrationTaskId") && dict["illustrationTaskId"] != nil {
            self.illustrationTaskId = dict["illustrationTaskId"] as! Int64
        }
        if dict.keys.contains("taskStatus") && dict["taskStatus"] != nil {
            self.taskStatus = dict["taskStatus"] as! String
        }
        if dict.keys.contains("textId") && dict["textId"] != nil {
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
        if dict.keys.contains("backgroundType") && dict["backgroundType"] != nil {
            self.backgroundType = dict["backgroundType"] as! Int32
        }
        if dict.keys.contains("dstHeight") && dict["dstHeight"] != nil {
            self.dstHeight = dict["dstHeight"] as! Int32
        }
        if dict.keys.contains("dstWidth") && dict["dstWidth"] != nil {
            self.dstWidth = dict["dstWidth"] as! Int32
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("nums") && dict["nums"] != nil {
            self.nums = dict["nums"] as! Int32
        }
        if dict.keys.contains("ossPaths") && dict["ossPaths"] != nil {
            self.ossPaths = dict["ossPaths"] as! [String]
        }
        if dict.keys.contains("stickerText") && dict["stickerText"] != nil {
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
        if dict.keys.contains("illustrationTask") && dict["illustrationTask"] != nil {
            var model = IllustrationTask()
            model.fromMap(dict["illustrationTask"] as! [String: Any])
            self.illustrationTask = model
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
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
        if dict.keys.contains("referenceContent") && dict["referenceContent"] != nil {
            self.referenceContent = dict["referenceContent"] as! String
        }
        if dict.keys.contains("referenceTitle") && dict["referenceTitle"] != nil {
            self.referenceTitle = dict["referenceTitle"] as! String
        }
    }
}

public class Text : Tea.TeaModel {
    public var desc: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var illustrationTaskIdList: [Int64]?

    public var textContent: String?

    public var textId: Int64?

    public var textIllustrationTag: Bool?

    public var textModeType: String?

    public var textStatus: String?

    public var textTaskId: Int64?

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
        if self.textTaskId != nil {
            map["textTaskId"] = self.textTaskId!
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
        if dict.keys.contains("desc") && dict["desc"] != nil {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("illustrationTaskIdList") && dict["illustrationTaskIdList"] != nil {
            self.illustrationTaskIdList = dict["illustrationTaskIdList"] as! [Int64]
        }
        if dict.keys.contains("textContent") && dict["textContent"] != nil {
            self.textContent = dict["textContent"] as! String
        }
        if dict.keys.contains("textId") && dict["textId"] != nil {
            self.textId = dict["textId"] as! Int64
        }
        if dict.keys.contains("textIllustrationTag") && dict["textIllustrationTag"] != nil {
            self.textIllustrationTag = dict["textIllustrationTag"] as! Bool
        }
        if dict.keys.contains("textModeType") && dict["textModeType"] != nil {
            self.textModeType = dict["textModeType"] as! String
        }
        if dict.keys.contains("textStatus") && dict["textStatus"] != nil {
            self.textStatus = dict["textStatus"] as! String
        }
        if dict.keys.contains("textTaskId") && dict["textTaskId"] != nil {
            self.textTaskId = dict["textTaskId"] as! Int64
        }
        if dict.keys.contains("title") && dict["title"] != nil {
            self.title = dict["title"] as! String
        }
        if dict.keys.contains("userNameCreate") && dict["userNameCreate"] != nil {
            self.userNameCreate = dict["userNameCreate"] as! String
        }
        if dict.keys.contains("userNameModified") && dict["userNameModified"] != nil {
            self.userNameModified = dict["userNameModified"] as! String
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
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("text") && dict["text"] != nil {
            var model = Text()
            model.fromMap(dict["text"] as! [String: Any])
            self.text = model
        }
    }
}

public class TextTask : Tea.TeaModel {
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
        if self.theme != nil {
            map["theme"] = self.theme!
        }
        if self.themeDesc != nil {
            map["themeDesc"] = self.themeDesc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contentRequirement") && dict["contentRequirement"] != nil {
            self.contentRequirement = dict["contentRequirement"] as! String
        }
        if dict.keys.contains("gmtCreate") && dict["gmtCreate"] != nil {
            self.gmtCreate = dict["gmtCreate"] as! String
        }
        if dict.keys.contains("gmtModified") && dict["gmtModified"] != nil {
            self.gmtModified = dict["gmtModified"] as! String
        }
        if dict.keys.contains("introduction") && dict["introduction"] != nil {
            self.introduction = dict["introduction"] as! String
        }
        if dict.keys.contains("nums") && dict["nums"] != nil {
            self.nums = dict["nums"] as! Int32
        }
        if dict.keys.contains("point") && dict["point"] != nil {
            self.point = dict["point"] as! String
        }
        if dict.keys.contains("referenceTag") && dict["referenceTag"] != nil {
            var model = ReferenceTag()
            model.fromMap(dict["referenceTag"] as! [String: Any])
            self.referenceTag = model
        }
        if dict.keys.contains("relatedRagId") && dict["relatedRagId"] != nil {
            self.relatedRagId = dict["relatedRagId"] as! Int32
        }
        if dict.keys.contains("style") && dict["style"] != nil {
            self.style = dict["style"] as! String
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            self.target = dict["target"] as! String
        }
        if dict.keys.contains("textIds") && dict["textIds"] != nil {
            self.textIds = dict["textIds"] as! [Int64]
        }
        if dict.keys.contains("textModeType") && dict["textModeType"] != nil {
            self.textModeType = dict["textModeType"] as! String
        }
        if dict.keys.contains("textTaskId") && dict["textTaskId"] != nil {
            self.textTaskId = dict["textTaskId"] as! Int64
        }
        if dict.keys.contains("textTaskStatus") && dict["textTaskStatus"] != nil {
            self.textTaskStatus = dict["textTaskStatus"] as! String
        }
        if dict.keys.contains("theme") && dict["theme"] != nil {
            self.theme = dict["theme"] as! String
        }
        if dict.keys.contains("themeDesc") && dict["themeDesc"] != nil {
            self.themeDesc = dict["themeDesc"] as! String
        }
    }
}

public class TextTaskCreateCmd : Tea.TeaModel {
    public var contentRequirement: String?

    public var idempotentId: String?

    public var introduction: String?

    public var number: Int32?

    public var point: String?

    public var referenceTag: ReferenceTag?

    public var relatedRagIds: [Int64]?

    public var style: String?

    public var target: String?

    public var textModeType: String?

    public var theme: String?

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
        if self.contentRequirement != nil {
            map["contentRequirement"] = self.contentRequirement!
        }
        if self.idempotentId != nil {
            map["idempotentId"] = self.idempotentId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contentRequirement") && dict["contentRequirement"] != nil {
            self.contentRequirement = dict["contentRequirement"] as! String
        }
        if dict.keys.contains("idempotentId") && dict["idempotentId"] != nil {
            self.idempotentId = dict["idempotentId"] as! String
        }
        if dict.keys.contains("introduction") && dict["introduction"] != nil {
            self.introduction = dict["introduction"] as! String
        }
        if dict.keys.contains("number") && dict["number"] != nil {
            self.number = dict["number"] as! Int32
        }
        if dict.keys.contains("point") && dict["point"] != nil {
            self.point = dict["point"] as! String
        }
        if dict.keys.contains("referenceTag") && dict["referenceTag"] != nil {
            var model = ReferenceTag()
            model.fromMap(dict["referenceTag"] as! [String: Any])
            self.referenceTag = model
        }
        if dict.keys.contains("relatedRagIds") && dict["relatedRagIds"] != nil {
            self.relatedRagIds = dict["relatedRagIds"] as! [Int64]
        }
        if dict.keys.contains("style") && dict["style"] != nil {
            self.style = dict["style"] as! String
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            self.target = dict["target"] as! String
        }
        if dict.keys.contains("textModeType") && dict["textModeType"] != nil {
            self.textModeType = dict["textModeType"] as! String
        }
        if dict.keys.contains("theme") && dict["theme"] != nil {
            self.theme = dict["theme"] as! String
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
        if dict.keys.contains("textTask") && dict["textTask"] != nil {
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
        if dict.keys.contains("desc") && dict["desc"] != nil {
            self.desc = dict["desc"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
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
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("textThemeList") && dict["textThemeList"] != nil {
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
        if dict.keys.contains("accessId") && dict["accessId"] != nil {
            self.accessId = dict["accessId"] as! String
        }
        if dict.keys.contains("host") && dict["host"] != nil {
            self.host = dict["host"] as! String
        }
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("policy") && dict["policy"] != nil {
            self.policy = dict["policy"] as! String
        }
        if dict.keys.contains("policySignature") && dict["policySignature"] != nil {
            self.policySignature = dict["policySignature"] as! String
        }
        if dict.keys.contains("url") && dict["url"] != nil {
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
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("fileName") && dict["fileName"] != nil {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileType") && dict["fileType"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TextTaskResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TextThemeListResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
