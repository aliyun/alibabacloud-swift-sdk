import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BroadcastTemplate : Tea.TeaModel {
    public var createTime: String?

    public var id: String?

    public var modifiedTime: String?

    public var name: String?

    public var variables: [TemplateVariable]?

    public override init() {
        super.init()
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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.modifiedTime != nil {
            map["modifiedTime"] = self.modifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["modifiedTime"] as? String {
            self.modifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [TemplateVariable] = []
            for v in value {
                if v != nil {
                    var model = TemplateVariable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
        }
    }
}

public class BroadcastVideo : Tea.TeaModel {
    public var alignmentFileURL: String?

    public var captionURL: String?

    public var coverURL: String?

    public var createTime: String?

    public var id: String?

    public var modifiedTime: String?

    public var name: String?

    public var status: String?

    public var videoURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alignmentFileURL != nil {
            map["alignmentFileURL"] = self.alignmentFileURL!
        }
        if self.captionURL != nil {
            map["captionURL"] = self.captionURL!
        }
        if self.coverURL != nil {
            map["coverURL"] = self.coverURL!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.modifiedTime != nil {
            map["modifiedTime"] = self.modifiedTime!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.videoURL != nil {
            map["videoURL"] = self.videoURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alignmentFileURL"] as? String {
            self.alignmentFileURL = value
        }
        if let value = dict["captionURL"] as? String {
            self.captionURL = value
        }
        if let value = dict["coverURL"] as? String {
            self.coverURL = value
        }
        if let value = dict["createTime"] as? String {
            self.createTime = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["modifiedTime"] as? String {
            self.modifiedTime = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["videoURL"] as? String {
            self.videoURL = value
        }
    }
}

public class ChatSessionInfo : Tea.TeaModel {
    public var createdAt: Int64?

    public var mainAccountId: Int64?

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
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.mainAccountId != nil {
            map["mainAccountId"] = self.mainAccountId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["createdAt"] as? Int64 {
            self.createdAt = value
        }
        if let value = dict["mainAccountId"] as? Int64 {
            self.mainAccountId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class TemplateVariable : Tea.TeaModel {
    public var name: String?

    public var properties: Any?

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
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.properties != nil {
            map["properties"] = self.properties!
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
        if let value = dict["properties"] as? Any {
            self.properties = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CloseChatInstanceSessionsRequest : Tea.TeaModel {
    public var sessionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIds != nil {
            map["sessionIds"] = self.sessionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? [String] {
            self.sessionIds = value
        }
    }
}

public class CloseChatInstanceSessionsShrinkRequest : Tea.TeaModel {
    public var sessionIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIdsShrink != nil {
            map["sessionIds"] = self.sessionIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? String {
            self.sessionIdsShrink = value
        }
    }
}

public class CloseChatInstanceSessionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [ChatSessionInfo]?

    public var httpStatusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ChatSessionInfo] = []
            for v in value {
                if v != nil {
                    var model = ChatSessionInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CloseChatInstanceSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseChatInstanceSessionsResponseBody?

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
            var model = CloseChatInstanceSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfirmTrainPicAvatarRequest : Tea.TeaModel {
    public var avatarId: String?

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
        if self.avatarId != nil {
            map["avatarId"] = self.avatarId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avatarId"] as? String {
            self.avatarId = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
    }
}

public class ConfirmTrainPicAvatarResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ConfirmTrainPicAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmTrainPicAvatarResponseBody?

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
            var model = ConfirmTrainPicAvatarResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBackgroundPicRequest : Tea.TeaModel {
    public var filename: String?

    public var ossKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filename != nil {
            map["filename"] = self.filename!
        }
        if self.ossKey != nil {
            map["ossKey"] = self.ossKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filename"] as? String {
            self.filename = value
        }
        if let value = dict["ossKey"] as? String {
            self.ossKey = value
        }
    }
}

public class CreateBackgroundPicResponseBody : Tea.TeaModel {
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
                map["id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: CreateBackgroundPicResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateBackgroundPicResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateBackgroundPicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackgroundPicResponseBody?

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
            var model = CreateBackgroundPicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBroadcastStickerRequest : Tea.TeaModel {
    public var fileName: String?

    public var ossKey: String?

    public override init() {
        super.init()
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
        if self.ossKey != nil {
            map["ossKey"] = self.ossKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["ossKey"] as? String {
            self.ossKey = value
        }
    }
}

public class CreateBroadcastStickerResponseBody : Tea.TeaModel {
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
                map["id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: CreateBroadcastStickerResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateBroadcastStickerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateBroadcastStickerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBroadcastStickerResponseBody?

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
            var model = CreateBroadcastStickerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBroadcastVideoFromTemplateRequest : Tea.TeaModel {
    public class VideoOptions : Tea.TeaModel {
        public var fps: Int32?

        public var resolution: String?

        public var watermark: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fps != nil {
                map["fps"] = self.fps!
            }
            if self.resolution != nil {
                map["resolution"] = self.resolution!
            }
            if self.watermark != nil {
                map["watermark"] = self.watermark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fps"] as? Int32 {
                self.fps = value
            }
            if let value = dict["resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["watermark"] as? Bool {
                self.watermark = value
            }
        }
    }
    public var name: String?

    public var templateId: String?

    public var variables: [TemplateVariable]?

    public var videoOptions: CreateBroadcastVideoFromTemplateRequest.VideoOptions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.videoOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        if self.variables != nil {
            var tmp : [Any] = []
            for k in self.variables! {
                tmp.append(k.toMap())
            }
            map["variables"] = tmp
        }
        if self.videoOptions != nil {
            map["videoOptions"] = self.videoOptions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
        if let value = dict["variables"] as? [Any?] {
            var tmp : [TemplateVariable] = []
            for v in value {
                if v != nil {
                    var model = TemplateVariable()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.variables = tmp
        }
        if let value = dict["videoOptions"] as? [String: Any?] {
            var model = CreateBroadcastVideoFromTemplateRequest.VideoOptions()
            model.fromMap(value)
            self.videoOptions = model
        }
    }
}

public class CreateBroadcastVideoFromTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: BroadcastVideo?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = BroadcastVideo()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateBroadcastVideoFromTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBroadcastVideoFromTemplateResponseBody?

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
            var model = CreateBroadcastVideoFromTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatConfigRequest : Tea.TeaModel {
    public var avatarId: String?

    public var backgroundId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avatarId != nil {
            map["avatarId"] = self.avatarId!
        }
        if self.backgroundId != nil {
            map["backgroundId"] = self.backgroundId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avatarId"] as? String {
            self.avatarId = value
        }
        if let value = dict["backgroundId"] as? String {
            self.backgroundId = value
        }
    }
}

public class CreateChatConfigResponseBody : Tea.TeaModel {
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
                map["id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? String {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: CreateChatConfigResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateChatConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateChatConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatConfigResponseBody?

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
            var model = CreateChatConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatSessionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var license: String?

    public var platform: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.license != nil {
            map["license"] = self.license!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["license"] as? String {
            self.license = value
        }
        if let value = dict["platform"] as? String {
            self.platform = value
        }
    }
}

public class CreateChatSessionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AvatarAssets : Tea.TeaModel {
            public var md5: String?

            public var minRequiredVersion: String?

            public var secret: String?

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
                    map["md5"] = self.md5!
                }
                if self.minRequiredVersion != nil {
                    map["minRequiredVersion"] = self.minRequiredVersion!
                }
                if self.secret != nil {
                    map["secret"] = self.secret!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["md5"] as? String {
                    self.md5 = value
                }
                if let value = dict["minRequiredVersion"] as? String {
                    self.minRequiredVersion = value
                }
                if let value = dict["secret"] as? String {
                    self.secret = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class RtcParams : Tea.TeaModel {
            public var appId: String?

            public var avatarUserId: String?

            public var channel: String?

            public var clientUserId: String?

            public var gslb: String?

            public var nonce: String?

            public var serverUserId: String?

            public var timestamp: Int64?

            public var token: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["appId"] = self.appId!
                }
                if self.avatarUserId != nil {
                    map["avatarUserId"] = self.avatarUserId!
                }
                if self.channel != nil {
                    map["channel"] = self.channel!
                }
                if self.clientUserId != nil {
                    map["clientUserId"] = self.clientUserId!
                }
                if self.gslb != nil {
                    map["gslb"] = self.gslb!
                }
                if self.nonce != nil {
                    map["nonce"] = self.nonce!
                }
                if self.serverUserId != nil {
                    map["serverUserId"] = self.serverUserId!
                }
                if self.timestamp != nil {
                    map["timestamp"] = self.timestamp!
                }
                if self.token != nil {
                    map["token"] = self.token!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["appId"] as? String {
                    self.appId = value
                }
                if let value = dict["avatarUserId"] as? String {
                    self.avatarUserId = value
                }
                if let value = dict["channel"] as? String {
                    self.channel = value
                }
                if let value = dict["clientUserId"] as? String {
                    self.clientUserId = value
                }
                if let value = dict["gslb"] as? String {
                    self.gslb = value
                }
                if let value = dict["nonce"] as? String {
                    self.nonce = value
                }
                if let value = dict["serverUserId"] as? String {
                    self.serverUserId = value
                }
                if let value = dict["timestamp"] as? Int64 {
                    self.timestamp = value
                }
                if let value = dict["token"] as? String {
                    self.token = value
                }
            }
        }
        public var avatarAssets: CreateChatSessionResponseBody.Data.AvatarAssets?

        public var rtcParams: CreateChatSessionResponseBody.Data.RtcParams?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.avatarAssets?.validate()
            try self.rtcParams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatarAssets != nil {
                map["avatarAssets"] = self.avatarAssets?.toMap()
            }
            if self.rtcParams != nil {
                map["rtcParams"] = self.rtcParams?.toMap()
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avatarAssets"] as? [String: Any?] {
                var model = CreateChatSessionResponseBody.Data.AvatarAssets()
                model.fromMap(value)
                self.avatarAssets = model
            }
            if let value = dict["rtcParams"] as? [String: Any?] {
                var model = CreateChatSessionResponseBody.Data.RtcParams()
                model.fromMap(value)
                self.rtcParams = model
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var code: String?

    public var data: CreateChatSessionResponseBody.Data?

    public var httpStatusCode: Int64?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateChatSessionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateChatSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatSessionResponseBody?

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
            var model = CreateChatSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNoTrainPicAvatarRequest : Tea.TeaModel {
    public var expressiveness: String?

    public var gender: String?

    public var generateAssets: Bool?

    public var imageOssPath: String?

    public var jwtToken: String?

    public var name: String?

    public var transparent: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expressiveness != nil {
            map["expressiveness"] = self.expressiveness!
        }
        if self.gender != nil {
            map["gender"] = self.gender!
        }
        if self.generateAssets != nil {
            map["generateAssets"] = self.generateAssets!
        }
        if self.imageOssPath != nil {
            map["imageOssPath"] = self.imageOssPath!
        }
        if self.jwtToken != nil {
            map["jwtToken"] = self.jwtToken!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.transparent != nil {
            map["transparent"] = self.transparent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["expressiveness"] as? String {
            self.expressiveness = value
        }
        if let value = dict["gender"] as? String {
            self.gender = value
        }
        if let value = dict["generateAssets"] as? Bool {
            self.generateAssets = value
        }
        if let value = dict["imageOssPath"] as? String {
            self.imageOssPath = value
        }
        if let value = dict["jwtToken"] as? String {
            self.jwtToken = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["transparent"] as? Bool {
            self.transparent = value
        }
    }
}

public class CreateNoTrainPicAvatarResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avatarId: String?

        public var pass: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatarId != nil {
                map["avatarId"] = self.avatarId!
            }
            if self.pass != nil {
                map["pass"] = self.pass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avatarId"] as? String {
                self.avatarId = value
            }
            if let value = dict["pass"] as? Bool {
                self.pass = value
            }
        }
    }
    public var code: String?

    public var data: CreateNoTrainPicAvatarResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateNoTrainPicAvatarResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateNoTrainPicAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNoTrainPicAvatarResponseBody?

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
            var model = CreateNoTrainPicAvatarResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTTSVoiceCustomRequest : Tea.TeaModel {
    public var fileName: String?

    public var gender: String?

    public var name: String?

    public var ossKey: String?

    public override init() {
        super.init()
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
        if self.gender != nil {
            map["gender"] = self.gender!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.ossKey != nil {
            map["ossKey"] = self.ossKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["gender"] as? String {
            self.gender = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["ossKey"] as? String {
            self.ossKey = value
        }
    }
}

public class CreateTTSVoiceCustomResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var audioURL: String?

        public var censorStatus: String?

        public var common: Bool?

        public var createTime: String?

        public var description_: String?

        public var errorDetail: String?

        public var gender: String?

        public var id: String?

        public var language: String?

        public var modifiedTime: String?

        public var name: String?

        public var pitchRate: Double?

        public var remainSeconds: Int64?

        public var speechRate: Double?

        public var status: String?

        public var text: String?

        public var voiceKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioURL != nil {
                map["audioURL"] = self.audioURL!
            }
            if self.censorStatus != nil {
                map["censorStatus"] = self.censorStatus!
            }
            if self.common != nil {
                map["common"] = self.common!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.errorDetail != nil {
                map["errorDetail"] = self.errorDetail!
            }
            if self.gender != nil {
                map["gender"] = self.gender!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.language != nil {
                map["language"] = self.language!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.pitchRate != nil {
                map["pitchRate"] = self.pitchRate!
            }
            if self.remainSeconds != nil {
                map["remainSeconds"] = self.remainSeconds!
            }
            if self.speechRate != nil {
                map["speechRate"] = self.speechRate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            if self.voiceKey != nil {
                map["voiceKey"] = self.voiceKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["audioURL"] as? String {
                self.audioURL = value
            }
            if let value = dict["censorStatus"] as? String {
                self.censorStatus = value
            }
            if let value = dict["common"] as? Bool {
                self.common = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["errorDetail"] as? String {
                self.errorDetail = value
            }
            if let value = dict["gender"] as? String {
                self.gender = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["language"] as? String {
                self.language = value
            }
            if let value = dict["modifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["pitchRate"] as? Double {
                self.pitchRate = value
            }
            if let value = dict["remainSeconds"] as? Int64 {
                self.remainSeconds = value
            }
            if let value = dict["speechRate"] as? Double {
                self.speechRate = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
            if let value = dict["voiceKey"] as? String {
                self.voiceKey = value
            }
        }
    }
    public var code: String?

    public var data: CreateTTSVoiceCustomResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateTTSVoiceCustomResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTTSVoiceCustomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTTSVoiceCustomResponseBody?

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
            var model = CreateTTSVoiceCustomResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrainPicAvatarRequest : Tea.TeaModel {
    public var bizType: String?

    public var gender: String?

    public var generateAssets: Bool?

    public var imageOssPath: String?

    public var name: String?

    public var templateId: String?

    public var transparent: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["bizType"] = self.bizType!
        }
        if self.gender != nil {
            map["gender"] = self.gender!
        }
        if self.generateAssets != nil {
            map["generateAssets"] = self.generateAssets!
        }
        if self.imageOssPath != nil {
            map["imageOssPath"] = self.imageOssPath!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        if self.transparent != nil {
            map["transparent"] = self.transparent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizType"] as? String {
            self.bizType = value
        }
        if let value = dict["gender"] as? String {
            self.gender = value
        }
        if let value = dict["generateAssets"] as? Bool {
            self.generateAssets = value
        }
        if let value = dict["imageOssPath"] as? String {
            self.imageOssPath = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
        if let value = dict["transparent"] as? Bool {
            self.transparent = value
        }
    }
}

public class CreateTrainPicAvatarResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avatarId: String?

        public var expectedCompletionTime: Int32?

        public var pass: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatarId != nil {
                map["avatarId"] = self.avatarId!
            }
            if self.expectedCompletionTime != nil {
                map["expectedCompletionTime"] = self.expectedCompletionTime!
            }
            if self.pass != nil {
                map["pass"] = self.pass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avatarId"] as? String {
                self.avatarId = value
            }
            if let value = dict["expectedCompletionTime"] as? Int32 {
                self.expectedCompletionTime = value
            }
            if let value = dict["pass"] as? Bool {
                self.pass = value
            }
        }
    }
    public var code: String?

    public var data: CreateTrainPicAvatarResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateTrainPicAvatarResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTrainPicAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrainPicAvatarResponseBody?

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
            var model = CreateTrainPicAvatarResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBroadcastTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetBroadcastTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: BroadcastTemplate?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = BroadcastTemplate()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetBroadcastTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBroadcastTemplateResponseBody?

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
            var model = GetBroadcastTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTTSVoiceByIdCustomRequest : Tea.TeaModel {
    public var voiceId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["voiceId"] as? String {
            self.voiceId = value
        }
    }
}

public class GetTTSVoiceByIdCustomResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var audioURL: String?

        public var censorStatus: String?

        public var common: Bool?

        public var createTime: String?

        public var description_: String?

        public var errorCode: String?

        public var errorDetail: String?

        public var gender: String?

        public var id: String?

        public var language: String?

        public var modifiedTime: String?

        public var name: String?

        public var remainSeconds: Int64?

        public var status: String?

        public var text: String?

        public var voiceKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioURL != nil {
                map["audioURL"] = self.audioURL!
            }
            if self.censorStatus != nil {
                map["censorStatus"] = self.censorStatus!
            }
            if self.common != nil {
                map["common"] = self.common!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.errorCode != nil {
                map["errorCode"] = self.errorCode!
            }
            if self.errorDetail != nil {
                map["errorDetail"] = self.errorDetail!
            }
            if self.gender != nil {
                map["gender"] = self.gender!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.language != nil {
                map["language"] = self.language!
            }
            if self.modifiedTime != nil {
                map["modifiedTime"] = self.modifiedTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.remainSeconds != nil {
                map["remainSeconds"] = self.remainSeconds!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.text != nil {
                map["text"] = self.text!
            }
            if self.voiceKey != nil {
                map["voiceKey"] = self.voiceKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["audioURL"] as? String {
                self.audioURL = value
            }
            if let value = dict["censorStatus"] as? String {
                self.censorStatus = value
            }
            if let value = dict["common"] as? Bool {
                self.common = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["errorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["errorDetail"] as? String {
                self.errorDetail = value
            }
            if let value = dict["gender"] as? String {
                self.gender = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["language"] as? String {
                self.language = value
            }
            if let value = dict["modifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["remainSeconds"] as? Int64 {
                self.remainSeconds = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["text"] as? String {
                self.text = value
            }
            if let value = dict["voiceKey"] as? String {
                self.voiceKey = value
            }
        }
    }
    public var code: String?

    public var data: GetTTSVoiceByIdCustomResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTTSVoiceByIdCustomResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTTSVoiceByIdCustomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTTSVoiceByIdCustomResponseBody?

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
            var model = GetTTSVoiceByIdCustomResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrainPicAvatarStatusRequest : Tea.TeaModel {
    public var avatarId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avatarId != nil {
            map["avatarId"] = self.avatarId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["avatarId"] as? String {
            self.avatarId = value
        }
    }
}

public class GetTrainPicAvatarStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avatarId: String?

        public var previewURL: String?

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
            if self.avatarId != nil {
                map["avatarId"] = self.avatarId!
            }
            if self.previewURL != nil {
                map["previewURL"] = self.previewURL!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["avatarId"] as? String {
                self.avatarId = value
            }
            if let value = dict["previewURL"] as? String {
                self.previewURL = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetTrainPicAvatarStatusResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTrainPicAvatarStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetTrainPicAvatarStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrainPicAvatarStatusResponseBody?

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
            var model = GetTrainPicAvatarStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUploadPolicyRequest : Tea.TeaModel {
    public var jwtToken: String?

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
        if self.jwtToken != nil {
            map["jwtToken"] = self.jwtToken!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jwtToken"] as? String {
            self.jwtToken = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class GetUploadPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OssPolicy : Tea.TeaModel {
            public var accessId: String?

            public var dir: String?

            public var expire: String?

            public var host: String?

            public var policy: String?

            public var signature: String?

            public override init() {
                super.init()
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
                if self.dir != nil {
                    map["dir"] = self.dir!
                }
                if self.expire != nil {
                    map["expire"] = self.expire!
                }
                if self.host != nil {
                    map["host"] = self.host!
                }
                if self.policy != nil {
                    map["policy"] = self.policy!
                }
                if self.signature != nil {
                    map["signature"] = self.signature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["accessId"] as? String {
                    self.accessId = value
                }
                if let value = dict["dir"] as? String {
                    self.dir = value
                }
                if let value = dict["expire"] as? String {
                    self.expire = value
                }
                if let value = dict["host"] as? String {
                    self.host = value
                }
                if let value = dict["policy"] as? String {
                    self.policy = value
                }
                if let value = dict["signature"] as? String {
                    self.signature = value
                }
            }
        }
        public var ossKey: String?

        public var ossPolicy: GetUploadPolicyResponseBody.Data.OssPolicy?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ossPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ossKey != nil {
                map["ossKey"] = self.ossKey!
            }
            if self.ossPolicy != nil {
                map["ossPolicy"] = self.ossPolicy?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ossKey"] as? String {
                self.ossKey = value
            }
            if let value = dict["ossPolicy"] as? [String: Any?] {
                var model = GetUploadPolicyResponseBody.Data.OssPolicy()
                model.fromMap(value)
                self.ossPolicy = model
            }
        }
    }
    public var code: String?

    public var data: GetUploadPolicyResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetUploadPolicyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUploadPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUploadPolicyResponseBody?

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
            var model = GetUploadPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBroadcastTemplatesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int32?

    public var size: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
    }
}

public class ListBroadcastTemplatesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [BroadcastTemplate]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var page: Int32?

    public var requestId: String?

    public var size: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [BroadcastTemplate] = []
            for v in value {
                if v != nil {
                    var model = BroadcastTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListBroadcastTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBroadcastTemplatesResponseBody?

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
            var model = ListBroadcastTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBroadcastVideosByIdRequest : Tea.TeaModel {
    public var videoIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoIds != nil {
            map["videoIds"] = self.videoIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["videoIds"] as? [String] {
            self.videoIds = value
        }
    }
}

public class ListBroadcastVideosByIdShrinkRequest : Tea.TeaModel {
    public var videoIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.videoIdsShrink != nil {
            map["videoIds"] = self.videoIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["videoIds"] as? String {
            self.videoIdsShrink = value
        }
    }
}

public class ListBroadcastVideosByIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [BroadcastVideo]?

    public var httpStatusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [BroadcastVideo] = []
            for v in value {
                if v != nil {
                    var model = BroadcastVideo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListBroadcastVideosByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBroadcastVideosByIdResponseBody?

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
            var model = ListBroadcastVideosByIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPrivateTTSVoicesCustomRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var pageIndex: Int32?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["name"] as? String {
            self.name = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListPrivateTTSVoicesCustomResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var audioURL: String?

            public var censorStatus: String?

            public var common: Bool?

            public var createTime: String?

            public var description_: String?

            public var errorCode: String?

            public var errorDetail: String?

            public var gender: String?

            public var id: String?

            public var language: String?

            public var modifiedTime: String?

            public var name: String?

            public var remainSeconds: Int64?

            public var status: String?

            public var text: String?

            public var voiceKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioURL != nil {
                    map["audioURL"] = self.audioURL!
                }
                if self.censorStatus != nil {
                    map["censorStatus"] = self.censorStatus!
                }
                if self.common != nil {
                    map["common"] = self.common!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.errorCode != nil {
                    map["errorCode"] = self.errorCode!
                }
                if self.errorDetail != nil {
                    map["errorDetail"] = self.errorDetail!
                }
                if self.gender != nil {
                    map["gender"] = self.gender!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.language != nil {
                    map["language"] = self.language!
                }
                if self.modifiedTime != nil {
                    map["modifiedTime"] = self.modifiedTime!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.remainSeconds != nil {
                    map["remainSeconds"] = self.remainSeconds!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                if self.voiceKey != nil {
                    map["voiceKey"] = self.voiceKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["audioURL"] as? String {
                    self.audioURL = value
                }
                if let value = dict["censorStatus"] as? String {
                    self.censorStatus = value
                }
                if let value = dict["common"] as? Bool {
                    self.common = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["errorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["errorDetail"] as? String {
                    self.errorDetail = value
                }
                if let value = dict["gender"] as? String {
                    self.gender = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["language"] as? String {
                    self.language = value
                }
                if let value = dict["modifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["remainSeconds"] as? Int64 {
                    self.remainSeconds = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
                if let value = dict["voiceKey"] as? String {
                    self.voiceKey = value
                }
            }
        }
        public var data: [ListPrivateTTSVoicesCustomResponseBody.Data.Data]?

        public var page: Int32?

        public var pages: Int32?

        public var size: Int32?

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
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.pages != nil {
                map["pages"] = self.pages!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [ListPrivateTTSVoicesCustomResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListPrivateTTSVoicesCustomResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["page"] as? Int32 {
                self.page = value
            }
            if let value = dict["pages"] as? Int32 {
                self.pages = value
            }
            if let value = dict["size"] as? Int32 {
                self.size = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: ListPrivateTTSVoicesCustomResponseBody.Data?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ListPrivateTTSVoicesCustomResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListPrivateTTSVoicesCustomResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPrivateTTSVoicesCustomResponseBody?

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
            var model = ListPrivateTTSVoicesCustomResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplateMaterialRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int32?

    public var size: Int32?

    public var templateIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.templateIds != nil {
            map["templateIds"] = self.templateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["templateIds"] as? String {
            self.templateIds = value
        }
    }
}

public class ListTemplateMaterialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizType: String?

        public var templateId: String?

        public var templateName: String?

        public var templateURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizType != nil {
                map["bizType"] = self.bizType!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["templateName"] = self.templateName!
            }
            if self.templateURL != nil {
                map["templateURL"] = self.templateURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bizType"] as? String {
                self.bizType = value
            }
            if let value = dict["templateId"] as? String {
                self.templateId = value
            }
            if let value = dict["templateName"] as? String {
                self.templateName = value
            }
            if let value = dict["templateURL"] as? String {
                self.templateURL = value
            }
        }
    }
    public var code: String?

    public var data: [ListTemplateMaterialResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var page: Int64?

    public var requestId: String?

    public var size: Int64?

    public var success: Bool?

    public var total: Int64?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListTemplateMaterialResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListTemplateMaterialResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["page"] as? Int64 {
            self.page = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["size"] as? Int64 {
            self.size = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTemplateMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplateMaterialResponseBody?

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
            var model = ListTemplateMaterialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryChatInstanceSessionsRequest : Tea.TeaModel {
    public var sessionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIds != nil {
            map["sessionIds"] = self.sessionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? [String] {
            self.sessionIds = value
        }
    }
}

public class QueryChatInstanceSessionsShrinkRequest : Tea.TeaModel {
    public var sessionIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionIdsShrink != nil {
            map["sessionIds"] = self.sessionIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionIds"] as? String {
            self.sessionIdsShrink = value
        }
    }
}

public class QueryChatInstanceSessionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [ChatSessionInfo]?

    public var httpStatusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ChatSessionInfo] = []
            for v in value {
                if v != nil {
                    var model = ChatSessionInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryChatInstanceSessionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChatInstanceSessionsResponseBody?

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
            var model = QueryChatInstanceSessionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
