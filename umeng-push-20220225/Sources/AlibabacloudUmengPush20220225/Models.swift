import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Alert : Tea.TeaModel {
    public var body: String?

    public var subtitle: String?

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
        if self.body != nil {
            map["body"] = self.body!
        }
        if self.subtitle != nil {
            map["subtitle"] = self.subtitle!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.body = value
        }
        if let value = dict["subtitle"] as? String {
            self.subtitle = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class AndroidPayload : Tea.TeaModel {
    public var body: Body?

    public var displayType: String?

    public var extra: [String: Any]?

    public var message2ThirdChannel: Message2ThirdChannel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
        try self.message2ThirdChannel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        if self.displayType != nil {
            map["displayType"] = self.displayType!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        if self.message2ThirdChannel != nil {
            map["message2ThirdChannel"] = self.message2ThirdChannel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["displayType"] as? String {
            self.displayType = value
        }
        if let value = dict["extra"] as? [String: Any] {
            self.extra = value
        }
        if let value = dict["message2ThirdChannel"] as? [String: Any?] {
            var model = Message2ThirdChannel()
            model.fromMap(value)
            self.message2ThirdChannel = model
        }
    }
}

public class AndroidShortPayload : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var custom: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.custom != nil {
                map["custom"] = self.custom!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["custom"] as? String {
                self.custom = value
            }
        }
    }
    public var body: AndroidShortPayload.Body?

    public var extra: [String: Any]?

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
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = AndroidShortPayload.Body()
            model.fromMap(value)
            self.body = model
        }
        if let value = dict["extra"] as? [String: Any] {
            self.extra = value
        }
    }
}

public class Aps : Tea.TeaModel {
    public var alert: Alert?

    public var badge: String?

    public var category: String?

    public var contentAvailable: Int32?

    public var interruptionLevel: String?

    public var sound: String?

    public var threadID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.alert?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alert != nil {
            map["alert"] = self.alert?.toMap()
        }
        if self.badge != nil {
            map["badge"] = self.badge!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.contentAvailable != nil {
            map["contentAvailable"] = self.contentAvailable!
        }
        if self.interruptionLevel != nil {
            map["interruptionLevel"] = self.interruptionLevel!
        }
        if self.sound != nil {
            map["sound"] = self.sound!
        }
        if self.threadID != nil {
            map["threadID"] = self.threadID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["alert"] as? [String: Any?] {
            var model = Alert()
            model.fromMap(value)
            self.alert = model
        }
        if let value = dict["badge"] as? String {
            self.badge = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["contentAvailable"] as? Int32 {
            self.contentAvailable = value
        }
        if let value = dict["interruptionLevel"] as? String {
            self.interruptionLevel = value
        }
        if let value = dict["sound"] as? String {
            self.sound = value
        }
        if let value = dict["threadID"] as? String {
            self.threadID = value
        }
    }
}

public class Body : Tea.TeaModel {
    public var activity: String?

    public var addBadge: Int32?

    public var afterOpen: String?

    public var builderId: Int64?

    public var custom: String?

    public var expandImage: String?

    public var icon: String?

    public var img: String?

    public var playLights: Bool?

    public var playSound: Bool?

    public var playVibrate: Bool?

    public var rePop: Int32?

    public var setBadge: Int32?

    public var sound: String?

    public var text: String?

    public var title: String?

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
        if self.activity != nil {
            map["activity"] = self.activity!
        }
        if self.addBadge != nil {
            map["addBadge"] = self.addBadge!
        }
        if self.afterOpen != nil {
            map["afterOpen"] = self.afterOpen!
        }
        if self.builderId != nil {
            map["builderId"] = self.builderId!
        }
        if self.custom != nil {
            map["custom"] = self.custom!
        }
        if self.expandImage != nil {
            map["expandImage"] = self.expandImage!
        }
        if self.icon != nil {
            map["icon"] = self.icon!
        }
        if self.img != nil {
            map["img"] = self.img!
        }
        if self.playLights != nil {
            map["playLights"] = self.playLights!
        }
        if self.playSound != nil {
            map["playSound"] = self.playSound!
        }
        if self.playVibrate != nil {
            map["playVibrate"] = self.playVibrate!
        }
        if self.rePop != nil {
            map["rePop"] = self.rePop!
        }
        if self.setBadge != nil {
            map["setBadge"] = self.setBadge!
        }
        if self.sound != nil {
            map["sound"] = self.sound!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["activity"] as? String {
            self.activity = value
        }
        if let value = dict["addBadge"] as? Int32 {
            self.addBadge = value
        }
        if let value = dict["afterOpen"] as? String {
            self.afterOpen = value
        }
        if let value = dict["builderId"] as? Int64 {
            self.builderId = value
        }
        if let value = dict["custom"] as? String {
            self.custom = value
        }
        if let value = dict["expandImage"] as? String {
            self.expandImage = value
        }
        if let value = dict["icon"] as? String {
            self.icon = value
        }
        if let value = dict["img"] as? String {
            self.img = value
        }
        if let value = dict["playLights"] as? Bool {
            self.playLights = value
        }
        if let value = dict["playSound"] as? Bool {
            self.playSound = value
        }
        if let value = dict["playVibrate"] as? Bool {
            self.playVibrate = value
        }
        if let value = dict["rePop"] as? Int32 {
            self.rePop = value
        }
        if let value = dict["setBadge"] as? Int32 {
            self.setBadge = value
        }
        if let value = dict["sound"] as? String {
            self.sound = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class ChannelProperties : Tea.TeaModel {
    public var channelActivity: String?

    public var channelFcm: String?

    public var harmonyChannelCategory: String?

    public var huaweiChannelCategory: String?

    public var huaweiChannelImportance: String?

    public var huaweiMessageUrgency: String?

    public var mainActivity: String?

    public var oppoCategory: String?

    public var oppoChannelId: String?

    public var oppoNotifyLevel: String?

    public var useHuaweiMessage: String?

    public var useHuaweiPlainMessage: String?

    public var vivoAddBadge: String?

    public var vivoCategory: String?

    public var vivoPushMode: String?

    public var xiaomiChannelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelActivity != nil {
            map["channelActivity"] = self.channelActivity!
        }
        if self.channelFcm != nil {
            map["channelFcm"] = self.channelFcm!
        }
        if self.harmonyChannelCategory != nil {
            map["harmonyChannelCategory"] = self.harmonyChannelCategory!
        }
        if self.huaweiChannelCategory != nil {
            map["huaweiChannelCategory"] = self.huaweiChannelCategory!
        }
        if self.huaweiChannelImportance != nil {
            map["huaweiChannelImportance"] = self.huaweiChannelImportance!
        }
        if self.huaweiMessageUrgency != nil {
            map["huaweiMessageUrgency"] = self.huaweiMessageUrgency!
        }
        if self.mainActivity != nil {
            map["mainActivity"] = self.mainActivity!
        }
        if self.oppoCategory != nil {
            map["oppoCategory"] = self.oppoCategory!
        }
        if self.oppoChannelId != nil {
            map["oppoChannelId"] = self.oppoChannelId!
        }
        if self.oppoNotifyLevel != nil {
            map["oppoNotifyLevel"] = self.oppoNotifyLevel!
        }
        if self.useHuaweiMessage != nil {
            map["useHuaweiMessage"] = self.useHuaweiMessage!
        }
        if self.useHuaweiPlainMessage != nil {
            map["useHuaweiPlainMessage"] = self.useHuaweiPlainMessage!
        }
        if self.vivoAddBadge != nil {
            map["vivoAddBadge"] = self.vivoAddBadge!
        }
        if self.vivoCategory != nil {
            map["vivoCategory"] = self.vivoCategory!
        }
        if self.vivoPushMode != nil {
            map["vivoPushMode"] = self.vivoPushMode!
        }
        if self.xiaomiChannelId != nil {
            map["xiaomiChannelId"] = self.xiaomiChannelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelActivity"] as? String {
            self.channelActivity = value
        }
        if let value = dict["channelFcm"] as? String {
            self.channelFcm = value
        }
        if let value = dict["harmonyChannelCategory"] as? String {
            self.harmonyChannelCategory = value
        }
        if let value = dict["huaweiChannelCategory"] as? String {
            self.huaweiChannelCategory = value
        }
        if let value = dict["huaweiChannelImportance"] as? String {
            self.huaweiChannelImportance = value
        }
        if let value = dict["huaweiMessageUrgency"] as? String {
            self.huaweiMessageUrgency = value
        }
        if let value = dict["mainActivity"] as? String {
            self.mainActivity = value
        }
        if let value = dict["oppoCategory"] as? String {
            self.oppoCategory = value
        }
        if let value = dict["oppoChannelId"] as? String {
            self.oppoChannelId = value
        }
        if let value = dict["oppoNotifyLevel"] as? String {
            self.oppoNotifyLevel = value
        }
        if let value = dict["useHuaweiMessage"] as? String {
            self.useHuaweiMessage = value
        }
        if let value = dict["useHuaweiPlainMessage"] as? String {
            self.useHuaweiPlainMessage = value
        }
        if let value = dict["vivoAddBadge"] as? String {
            self.vivoAddBadge = value
        }
        if let value = dict["vivoCategory"] as? String {
            self.vivoCategory = value
        }
        if let value = dict["vivoPushMode"] as? String {
            self.vivoPushMode = value
        }
        if let value = dict["xiaomiChannelId"] as? String {
            self.xiaomiChannelId = value
        }
    }
}

public class HarmonyBody : Tea.TeaModel {
    public var action: String?

    public var addBadge: Int32?

    public var afterOpen: String?

    public var bigBody: String?

    public var custom: String?

    public var img: String?

    public var largeIcon: String?

    public var text: String?

    public var title: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.addBadge != nil {
            map["addBadge"] = self.addBadge!
        }
        if self.afterOpen != nil {
            map["afterOpen"] = self.afterOpen!
        }
        if self.bigBody != nil {
            map["bigBody"] = self.bigBody!
        }
        if self.custom != nil {
            map["custom"] = self.custom!
        }
        if self.img != nil {
            map["img"] = self.img!
        }
        if self.largeIcon != nil {
            map["largeIcon"] = self.largeIcon!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        if self.uri != nil {
            map["uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["action"] as? String {
            self.action = value
        }
        if let value = dict["addBadge"] as? Int32 {
            self.addBadge = value
        }
        if let value = dict["afterOpen"] as? String {
            self.afterOpen = value
        }
        if let value = dict["bigBody"] as? String {
            self.bigBody = value
        }
        if let value = dict["custom"] as? String {
            self.custom = value
        }
        if let value = dict["img"] as? String {
            self.img = value
        }
        if let value = dict["largeIcon"] as? String {
            self.largeIcon = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
        if let value = dict["uri"] as? String {
            self.uri = value
        }
    }
}

public class HarmonyPayload : Tea.TeaModel {
    public var displayType: String?

    public var extra: [String: Any]?

    public var harmonyBody: HarmonyBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.harmonyBody?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayType != nil {
            map["displayType"] = self.displayType!
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        if self.harmonyBody != nil {
            map["harmonyBody"] = self.harmonyBody?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["displayType"] as? String {
            self.displayType = value
        }
        if let value = dict["extra"] as? [String: Any] {
            self.extra = value
        }
        if let value = dict["harmonyBody"] as? [String: Any?] {
            var model = HarmonyBody()
            model.fromMap(value)
            self.harmonyBody = model
        }
    }
}

public class IosPayload : Tea.TeaModel {
    public var aps: Aps?

    public var extra: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aps != nil {
            map["aps"] = self.aps?.toMap()
        }
        if self.extra != nil {
            map["extra"] = self.extra!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["aps"] as? [String: Any?] {
            var model = Aps()
            model.fromMap(value)
            self.aps = model
        }
        if let value = dict["extra"] as? [String: Any] {
            self.extra = value
        }
    }
}

public class Message2ThirdChannel : Tea.TeaModel {
    public var setBadge: Int64?

    public var addBadge: Int64?

    public var bigBody: String?

    public var bigTitle: String?

    public var expandImage: String?

    public var img: String?

    public var sound: String?

    public var text: String?

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
        if self.setBadge != nil {
            map["SetBadge"] = self.setBadge!
        }
        if self.addBadge != nil {
            map["addBadge"] = self.addBadge!
        }
        if self.bigBody != nil {
            map["bigBody"] = self.bigBody!
        }
        if self.bigTitle != nil {
            map["bigTitle"] = self.bigTitle!
        }
        if self.expandImage != nil {
            map["expandImage"] = self.expandImage!
        }
        if self.img != nil {
            map["img"] = self.img!
        }
        if self.sound != nil {
            map["sound"] = self.sound!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SetBadge"] as? Int64 {
            self.setBadge = value
        }
        if let value = dict["addBadge"] as? Int64 {
            self.addBadge = value
        }
        if let value = dict["bigBody"] as? String {
            self.bigBody = value
        }
        if let value = dict["bigTitle"] as? String {
            self.bigTitle = value
        }
        if let value = dict["expandImage"] as? String {
            self.expandImage = value
        }
        if let value = dict["img"] as? String {
            self.img = value
        }
        if let value = dict["sound"] as? String {
            self.sound = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class Policy : Tea.TeaModel {
    public var channelStrategy: [String: String]?

    public var expireTime: String?

    public var outerBizNo: String?

    public var speed: Int32?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelStrategy != nil {
            map["channelStrategy"] = self.channelStrategy!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.outerBizNo != nil {
            map["outerBizNo"] = self.outerBizNo!
        }
        if self.speed != nil {
            map["speed"] = self.speed!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channelStrategy"] as? [String: String] {
            self.channelStrategy = value
        }
        if let value = dict["expireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["outerBizNo"] as? String {
            self.outerBizNo = value
        }
        if let value = dict["speed"] as? Int32 {
            self.speed = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
    }
}

public class CancelByMsgIdRequest : Tea.TeaModel {
    public var msgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
    }
}

public class CancelByMsgIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: CancelByMsgIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CancelByMsgIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelByMsgIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelByMsgIdResponseBody?

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
            var model = CancelByMsgIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMsgStatRequest : Tea.TeaModel {
    public var msgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
    }
}

public class QueryMsgStatResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accept: Int64?

        public var arrive: Int64?

        public var closePush: Int64?

        public var dismiss: Int64?

        public var msgId: String?

        public var open_: Int64?

        public var sent: Int64?

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
            if self.accept != nil {
                map["Accept"] = self.accept!
            }
            if self.arrive != nil {
                map["Arrive"] = self.arrive!
            }
            if self.closePush != nil {
                map["ClosePush"] = self.closePush!
            }
            if self.dismiss != nil {
                map["Dismiss"] = self.dismiss!
            }
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            if self.open_ != nil {
                map["Open"] = self.open_!
            }
            if self.sent != nil {
                map["Sent"] = self.sent!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Accept"] as? Int64 {
                self.accept = value
            }
            if let value = dict["Arrive"] as? Int64 {
                self.arrive = value
            }
            if let value = dict["ClosePush"] as? Int64 {
                self.closePush = value
            }
            if let value = dict["Dismiss"] as? Int64 {
                self.dismiss = value
            }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
            if let value = dict["Open"] as? Int64 {
                self.open_ = value
            }
            if let value = dict["Sent"] as? Int64 {
                self.sent = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: QueryMsgStatResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryMsgStatResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryMsgStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMsgStatResponseBody?

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
            var model = QueryMsgStatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendByAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var aliasType: String?

    public var androidPayload: AndroidPayload?

    public var androidShortPayload: AndroidShortPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var harmonyPayload: HarmonyPayload?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.androidShortPayload?.validate()
        try self.channelProperties?.validate()
        try self.harmonyPayload?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.aliasType != nil {
            map["AliasType"] = self.aliasType!
        }
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.harmonyPayload != nil {
            map["HarmonyPayload"] = self.harmonyPayload?.toMap()
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["AliasType"] as? String {
            self.aliasType = value
        }
        if let value = dict["AndroidPayload"] as? [String: Any?] {
            var model = AndroidPayload()
            model.fromMap(value)
            self.androidPayload = model
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? [String: Any?] {
            var model = ChannelProperties()
            model.fromMap(value)
            self.channelProperties = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HarmonyPayload"] as? [String: Any?] {
            var model = HarmonyPayload()
            model.fromMap(value)
            self.harmonyPayload = model
        }
        if let value = dict["IosPayload"] as? [String: Any?] {
            var model = IosPayload()
            model.fromMap(value)
            self.iosPayload = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByAliasShrinkRequest : Tea.TeaModel {
    public var alias: String?

    public var aliasType: String?

    public var androidPayloadShrink: String?

    public var androidShortPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var harmonyPayloadShrink: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.aliasType != nil {
            map["AliasType"] = self.aliasType!
        }
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.androidShortPayloadShrink != nil {
            map["AndroidShortPayload"] = self.androidShortPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.harmonyPayloadShrink != nil {
            map["HarmonyPayload"] = self.harmonyPayloadShrink!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["AliasType"] as? String {
            self.aliasType = value
        }
        if let value = dict["AndroidPayload"] as? String {
            self.androidPayloadShrink = value
        }
        if let value = dict["AndroidShortPayload"] as? String {
            self.androidShortPayloadShrink = value
        }
        if let value = dict["ChannelProperties"] as? String {
            self.channelPropertiesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HarmonyPayload"] as? String {
            self.harmonyPayloadShrink = value
        }
        if let value = dict["IosPayload"] as? String {
            self.iosPayloadShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByAliasResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: SendByAliasResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendByAliasResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendByAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByAliasResponseBody?

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
            var model = SendByAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendByAliasFileIdRequest : Tea.TeaModel {
    public var aliasType: String?

    public var androidPayload: AndroidPayload?

    public var androidShortPayload: AndroidShortPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var fileId: String?

    public var harmonyPayload: HarmonyPayload?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.androidShortPayload?.validate()
        try self.channelProperties?.validate()
        try self.harmonyPayload?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasType != nil {
            map["AliasType"] = self.aliasType!
        }
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.harmonyPayload != nil {
            map["HarmonyPayload"] = self.harmonyPayload?.toMap()
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasType"] as? String {
            self.aliasType = value
        }
        if let value = dict["AndroidPayload"] as? [String: Any?] {
            var model = AndroidPayload()
            model.fromMap(value)
            self.androidPayload = model
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? [String: Any?] {
            var model = ChannelProperties()
            model.fromMap(value)
            self.channelProperties = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["HarmonyPayload"] as? [String: Any?] {
            var model = HarmonyPayload()
            model.fromMap(value)
            self.harmonyPayload = model
        }
        if let value = dict["IosPayload"] as? [String: Any?] {
            var model = IosPayload()
            model.fromMap(value)
            self.iosPayload = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByAliasFileIdShrinkRequest : Tea.TeaModel {
    public var aliasType: String?

    public var androidPayloadShrink: String?

    public var androidShortPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var fileId: String?

    public var harmonyPayloadShrink: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasType != nil {
            map["AliasType"] = self.aliasType!
        }
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.androidShortPayloadShrink != nil {
            map["AndroidShortPayload"] = self.androidShortPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.harmonyPayloadShrink != nil {
            map["HarmonyPayload"] = self.harmonyPayloadShrink!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasType"] as? String {
            self.aliasType = value
        }
        if let value = dict["AndroidPayload"] as? String {
            self.androidPayloadShrink = value
        }
        if let value = dict["AndroidShortPayload"] as? String {
            self.androidShortPayloadShrink = value
        }
        if let value = dict["ChannelProperties"] as? String {
            self.channelPropertiesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["HarmonyPayload"] as? String {
            self.harmonyPayloadShrink = value
        }
        if let value = dict["IosPayload"] as? String {
            self.iosPayloadShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByAliasFileIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: SendByAliasFileIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendByAliasFileIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendByAliasFileIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByAliasFileIdResponseBody?

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
            var model = SendByAliasFileIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendByAppRequest : Tea.TeaModel {
    public var androidPayload: AndroidPayload?

    public var androidShortPayload: AndroidShortPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var harmonyPayload: HarmonyPayload?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.androidShortPayload?.validate()
        try self.channelProperties?.validate()
        try self.harmonyPayload?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.harmonyPayload != nil {
            map["HarmonyPayload"] = self.harmonyPayload?.toMap()
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? [String: Any?] {
            var model = AndroidPayload()
            model.fromMap(value)
            self.androidPayload = model
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? [String: Any?] {
            var model = ChannelProperties()
            model.fromMap(value)
            self.channelProperties = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HarmonyPayload"] as? [String: Any?] {
            var model = HarmonyPayload()
            model.fromMap(value)
            self.harmonyPayload = model
        }
        if let value = dict["IosPayload"] as? [String: Any?] {
            var model = IosPayload()
            model.fromMap(value)
            self.iosPayload = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByAppShrinkRequest : Tea.TeaModel {
    public var androidPayloadShrink: String?

    public var androidShortPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var harmonyPayloadShrink: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.androidShortPayloadShrink != nil {
            map["AndroidShortPayload"] = self.androidShortPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.harmonyPayloadShrink != nil {
            map["HarmonyPayload"] = self.harmonyPayloadShrink!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? String {
            self.androidPayloadShrink = value
        }
        if let value = dict["AndroidShortPayload"] as? String {
            self.androidShortPayloadShrink = value
        }
        if let value = dict["ChannelProperties"] as? String {
            self.channelPropertiesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HarmonyPayload"] as? String {
            self.harmonyPayloadShrink = value
        }
        if let value = dict["IosPayload"] as? String {
            self.iosPayloadShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByAppResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: SendByAppResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendByAppResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByAppResponseBody?

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
            var model = SendByAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendByDeviceRequest : Tea.TeaModel {
    public var androidPayload: AndroidPayload?

    public var androidShortPayload: AndroidShortPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var deviceTokens: String?

    public var harmonyPayload: HarmonyPayload?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.androidShortPayload?.validate()
        try self.channelProperties?.validate()
        try self.harmonyPayload?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceTokens != nil {
            map["DeviceTokens"] = self.deviceTokens!
        }
        if self.harmonyPayload != nil {
            map["HarmonyPayload"] = self.harmonyPayload?.toMap()
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? [String: Any?] {
            var model = AndroidPayload()
            model.fromMap(value)
            self.androidPayload = model
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? [String: Any?] {
            var model = ChannelProperties()
            model.fromMap(value)
            self.channelProperties = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceTokens"] as? String {
            self.deviceTokens = value
        }
        if let value = dict["HarmonyPayload"] as? [String: Any?] {
            var model = HarmonyPayload()
            model.fromMap(value)
            self.harmonyPayload = model
        }
        if let value = dict["IosPayload"] as? [String: Any?] {
            var model = IosPayload()
            model.fromMap(value)
            self.iosPayload = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByDeviceShrinkRequest : Tea.TeaModel {
    public var androidPayloadShrink: String?

    public var androidShortPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var deviceTokens: String?

    public var harmonyPayloadShrink: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.androidShortPayloadShrink != nil {
            map["AndroidShortPayload"] = self.androidShortPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.deviceTokens != nil {
            map["DeviceTokens"] = self.deviceTokens!
        }
        if self.harmonyPayloadShrink != nil {
            map["HarmonyPayload"] = self.harmonyPayloadShrink!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? String {
            self.androidPayloadShrink = value
        }
        if let value = dict["AndroidShortPayload"] as? String {
            self.androidShortPayloadShrink = value
        }
        if let value = dict["ChannelProperties"] as? String {
            self.channelPropertiesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DeviceTokens"] as? String {
            self.deviceTokens = value
        }
        if let value = dict["HarmonyPayload"] as? String {
            self.harmonyPayloadShrink = value
        }
        if let value = dict["IosPayload"] as? String {
            self.iosPayloadShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: SendByDeviceResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendByDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendByDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByDeviceResponseBody?

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
            var model = SendByDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendByDeviceFileIdRequest : Tea.TeaModel {
    public var androidPayload: AndroidPayload?

    public var androidShortPayload: AndroidShortPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var fileId: String?

    public var harmonyPayload: HarmonyPayload?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.androidShortPayload?.validate()
        try self.channelProperties?.validate()
        try self.harmonyPayload?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.harmonyPayload != nil {
            map["HarmonyPayload"] = self.harmonyPayload?.toMap()
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? [String: Any?] {
            var model = AndroidPayload()
            model.fromMap(value)
            self.androidPayload = model
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? [String: Any?] {
            var model = ChannelProperties()
            model.fromMap(value)
            self.channelProperties = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["HarmonyPayload"] as? [String: Any?] {
            var model = HarmonyPayload()
            model.fromMap(value)
            self.harmonyPayload = model
        }
        if let value = dict["IosPayload"] as? [String: Any?] {
            var model = IosPayload()
            model.fromMap(value)
            self.iosPayload = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByDeviceFileIdShrinkRequest : Tea.TeaModel {
    public var androidPayloadShrink: String?

    public var androidShortPayloadShrink: String?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var fileId: String?

    public var harmonyPayloadShrink: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.androidShortPayloadShrink != nil {
            map["AndroidShortPayload"] = self.androidShortPayloadShrink!
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.harmonyPayloadShrink != nil {
            map["HarmonyPayload"] = self.harmonyPayloadShrink!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? String {
            self.androidPayloadShrink = value
        }
        if let value = dict["AndroidShortPayload"] as? String {
            self.androidShortPayloadShrink = value
        }
        if let value = dict["ChannelProperties"] as? String {
            self.channelPropertiesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileId"] as? String {
            self.fileId = value
        }
        if let value = dict["HarmonyPayload"] as? String {
            self.harmonyPayloadShrink = value
        }
        if let value = dict["IosPayload"] as? String {
            self.iosPayloadShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByDeviceFileIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: SendByDeviceFileIdResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendByDeviceFileIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendByDeviceFileIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByDeviceFileIdResponseBody?

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
            var model = SendByDeviceFileIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendByFilterRequest : Tea.TeaModel {
    public var androidPayload: AndroidPayload?

    public var androidShortPayload: AndroidShortPayload?

    public var channelProperties: ChannelProperties?

    public var description_: String?

    public var filter: String?

    public var harmonyPayload: HarmonyPayload?

    public var iosPayload: IosPayload?

    public var policy: Policy?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidPayload?.validate()
        try self.androidShortPayload?.validate()
        try self.channelProperties?.validate()
        try self.harmonyPayload?.validate()
        try self.iosPayload?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayload != nil {
            map["AndroidPayload"] = self.androidPayload?.toMap()
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelProperties != nil {
            map["ChannelProperties"] = self.channelProperties?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.harmonyPayload != nil {
            map["HarmonyPayload"] = self.harmonyPayload?.toMap()
        }
        if self.iosPayload != nil {
            map["IosPayload"] = self.iosPayload?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? [String: Any?] {
            var model = AndroidPayload()
            model.fromMap(value)
            self.androidPayload = model
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? [String: Any?] {
            var model = ChannelProperties()
            model.fromMap(value)
            self.channelProperties = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["HarmonyPayload"] as? [String: Any?] {
            var model = HarmonyPayload()
            model.fromMap(value)
            self.harmonyPayload = model
        }
        if let value = dict["IosPayload"] as? [String: Any?] {
            var model = IosPayload()
            model.fromMap(value)
            self.iosPayload = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByFilterShrinkRequest : Tea.TeaModel {
    public var androidPayloadShrink: String?

    public var androidShortPayload: AndroidShortPayload?

    public var channelPropertiesShrink: String?

    public var description_: String?

    public var filter: String?

    public var harmonyPayloadShrink: String?

    public var iosPayloadShrink: String?

    public var policyShrink: String?

    public var productionMode: Bool?

    public var receiptType: Int32?

    public var receiptUrl: String?

    public var thirdPartyId: String?

    public var callbackParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.androidShortPayload?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPayloadShrink != nil {
            map["AndroidPayload"] = self.androidPayloadShrink!
        }
        if self.androidShortPayload != nil {
            map["AndroidShortPayload"] = self.androidShortPayload?.toMap()
        }
        if self.channelPropertiesShrink != nil {
            map["ChannelProperties"] = self.channelPropertiesShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.harmonyPayloadShrink != nil {
            map["HarmonyPayload"] = self.harmonyPayloadShrink!
        }
        if self.iosPayloadShrink != nil {
            map["IosPayload"] = self.iosPayloadShrink!
        }
        if self.policyShrink != nil {
            map["Policy"] = self.policyShrink!
        }
        if self.productionMode != nil {
            map["ProductionMode"] = self.productionMode!
        }
        if self.receiptType != nil {
            map["ReceiptType"] = self.receiptType!
        }
        if self.receiptUrl != nil {
            map["ReceiptUrl"] = self.receiptUrl!
        }
        if self.thirdPartyId != nil {
            map["ThirdPartyId"] = self.thirdPartyId!
        }
        if self.callbackParams != nil {
            map["callbackParams"] = self.callbackParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidPayload"] as? String {
            self.androidPayloadShrink = value
        }
        if let value = dict["AndroidShortPayload"] as? [String: Any?] {
            var model = AndroidShortPayload()
            model.fromMap(value)
            self.androidShortPayload = model
        }
        if let value = dict["ChannelProperties"] as? String {
            self.channelPropertiesShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["HarmonyPayload"] as? String {
            self.harmonyPayloadShrink = value
        }
        if let value = dict["IosPayload"] as? String {
            self.iosPayloadShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policyShrink = value
        }
        if let value = dict["ProductionMode"] as? Bool {
            self.productionMode = value
        }
        if let value = dict["ReceiptType"] as? Int32 {
            self.receiptType = value
        }
        if let value = dict["ReceiptUrl"] as? String {
            self.receiptUrl = value
        }
        if let value = dict["ThirdPartyId"] as? String {
            self.thirdPartyId = value
        }
        if let value = dict["callbackParams"] as? String {
            self.callbackParams = value
        }
    }
}

public class SendByFilterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var msgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.msgId != nil {
                map["MsgId"] = self.msgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MsgId"] as? String {
                self.msgId = value
            }
        }
    }
    public var code: String?

    public var data: SendByFilterResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendByFilterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendByFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendByFilterResponseBody?

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
            var model = SendByFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadDeviceRequest : Tea.TeaModel {
    public var deviceTokens: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceTokens != nil {
            map["DeviceTokens"] = self.deviceTokens!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceTokens"] as? String {
            self.deviceTokens = value
        }
    }
}

public class UploadDeviceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
        }
    }
    public var code: String?

    public var data: UploadDeviceResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = UploadDeviceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UploadDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadDeviceResponseBody?

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
            var model = UploadDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
