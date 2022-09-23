import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddRecordTemplateRequest : Tea.TeaModel {
    public class Backgrounds : Tea.TeaModel {
        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class ClockWidgets : Tea.TeaModel {
        public var fontColor: Int32?

        public var fontSize: Int32?

        public var fontType: Int32?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor!
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.fontType != nil {
                map["FontType"] = self.fontType!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FontColor") {
                self.fontColor = dict["FontColor"] as! Int32
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("FontType") {
                self.fontType = dict["FontType"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class Watermarks : Tea.TeaModel {
        public var alpha: Double?

        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public var appId: String?

    public var backgroundColor: Int32?

    public var backgrounds: [AddRecordTemplateRequest.Backgrounds]?

    public var clockWidgets: [AddRecordTemplateRequest.ClockWidgets]?

    public var delayStopTime: Int32?

    public var enableM3u8DateTime: Bool?

    public var fileSplitInterval: Int32?

    public var formats: [String]?

    public var httpCallbackUrl: String?

    public var layoutIds: [Int64]?

    public var mediaEncode: Int32?

    public var mnsQueue: String?

    public var name: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var ossFilePrefix: String?

    public var ownerId: Int64?

    public var taskProfile: String?

    public var watermarks: [AddRecordTemplateRequest.Watermarks]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.backgroundColor != nil {
            map["BackgroundColor"] = self.backgroundColor!
        }
        if self.backgrounds != nil {
            var tmp : [Any] = []
            for k in self.backgrounds! {
                tmp.append(k.toMap())
            }
            map["Backgrounds"] = tmp
        }
        if self.clockWidgets != nil {
            var tmp : [Any] = []
            for k in self.clockWidgets! {
                tmp.append(k.toMap())
            }
            map["ClockWidgets"] = tmp
        }
        if self.delayStopTime != nil {
            map["DelayStopTime"] = self.delayStopTime!
        }
        if self.enableM3u8DateTime != nil {
            map["EnableM3u8DateTime"] = self.enableM3u8DateTime!
        }
        if self.fileSplitInterval != nil {
            map["FileSplitInterval"] = self.fileSplitInterval!
        }
        if self.formats != nil {
            map["Formats"] = self.formats!
        }
        if self.httpCallbackUrl != nil {
            map["HttpCallbackUrl"] = self.httpCallbackUrl!
        }
        if self.layoutIds != nil {
            map["LayoutIds"] = self.layoutIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.mnsQueue != nil {
            map["MnsQueue"] = self.mnsQueue!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossFilePrefix != nil {
            map["OssFilePrefix"] = self.ossFilePrefix!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskProfile != nil {
            map["TaskProfile"] = self.taskProfile!
        }
        if self.watermarks != nil {
            var tmp : [Any] = []
            for k in self.watermarks! {
                tmp.append(k.toMap())
            }
            map["Watermarks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BackgroundColor") {
            self.backgroundColor = dict["BackgroundColor"] as! Int32
        }
        if dict.keys.contains("Backgrounds") {
            self.backgrounds = dict["Backgrounds"] as! [AddRecordTemplateRequest.Backgrounds]
        }
        if dict.keys.contains("ClockWidgets") {
            self.clockWidgets = dict["ClockWidgets"] as! [AddRecordTemplateRequest.ClockWidgets]
        }
        if dict.keys.contains("DelayStopTime") {
            self.delayStopTime = dict["DelayStopTime"] as! Int32
        }
        if dict.keys.contains("EnableM3u8DateTime") {
            self.enableM3u8DateTime = dict["EnableM3u8DateTime"] as! Bool
        }
        if dict.keys.contains("FileSplitInterval") {
            self.fileSplitInterval = dict["FileSplitInterval"] as! Int32
        }
        if dict.keys.contains("Formats") {
            self.formats = dict["Formats"] as! [String]
        }
        if dict.keys.contains("HttpCallbackUrl") {
            self.httpCallbackUrl = dict["HttpCallbackUrl"] as! String
        }
        if dict.keys.contains("LayoutIds") {
            self.layoutIds = dict["LayoutIds"] as! [Int64]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("MnsQueue") {
            self.mnsQueue = dict["MnsQueue"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssEndpoint") {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("OssFilePrefix") {
            self.ossFilePrefix = dict["OssFilePrefix"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TaskProfile") {
            self.taskProfile = dict["TaskProfile"] as! String
        }
        if dict.keys.contains("Watermarks") {
            self.watermarks = dict["Watermarks"] as! [AddRecordTemplateRequest.Watermarks]
        }
    }
}

public class AddRecordTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class AddRecordTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddRecordTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AddRecordTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAutoLiveStreamRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var callBack: String?

    public var channelIdPrefixes: [String]?

    public var channelIds: [String]?

    public var mediaEncode: Int32?

    public var ownerId: Int64?

    public var playDomain: String?

    public var ruleName: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.callBack != nil {
            map["CallBack"] = self.callBack!
        }
        if self.channelIdPrefixes != nil {
            map["ChannelIdPrefixes"] = self.channelIdPrefixes!
        }
        if self.channelIds != nil {
            map["ChannelIds"] = self.channelIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CallBack") {
            self.callBack = dict["CallBack"] as! String
        }
        if dict.keys.contains("ChannelIdPrefixes") {
            self.channelIdPrefixes = dict["ChannelIdPrefixes"] as! [String]
        }
        if dict.keys.contains("ChannelIds") {
            self.channelIds = dict["ChannelIds"] as! [String]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
    }
}

public class CreateAutoLiveStreamRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class CreateAutoLiveStreamRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAutoLiveStreamRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateAutoLiveStreamRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEventSubscribeRequest : Tea.TeaModel {
    public var appId: String?

    public var callbackUrl: String?

    public var channelId: String?

    public var clientToken: String?

    public var events: [String]?

    public var needCallbackAuth: Bool?

    public var ownerId: Int64?

    public var role: Int64?

    public var users: [String]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.events != nil {
            map["Events"] = self.events!
        }
        if self.needCallbackAuth != nil {
            map["NeedCallbackAuth"] = self.needCallbackAuth!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [String]
        }
        if dict.keys.contains("NeedCallbackAuth") {
            self.needCallbackAuth = dict["NeedCallbackAuth"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! Int64
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class CreateEventSubscribeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var subscribeId: String?

    public override init() {
        super.init()
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
        if self.subscribeId != nil {
            map["SubscribeId"] = self.subscribeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubscribeId") {
            self.subscribeId = dict["SubscribeId"] as! String
        }
    }
}

public class CreateEventSubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEventSubscribeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateEventSubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMPULayoutRequest : Tea.TeaModel {
    public class Panes : Tea.TeaModel {
        public var height: Double?

        public var majorPane: Int32?

        public var paneId: Int32?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
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
                map["Height"] = self.height!
            }
            if self.majorPane != nil {
                map["MajorPane"] = self.majorPane!
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("MajorPane") {
                self.majorPane = dict["MajorPane"] as! Int32
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public var appId: String?

    public var audioMixCount: Int32?

    public var name: String?

    public var ownerId: Int64?

    public var panes: [CreateMPULayoutRequest.Panes]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.audioMixCount != nil {
            map["AudioMixCount"] = self.audioMixCount!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.panes != nil {
            var tmp : [Any] = []
            for k in self.panes! {
                tmp.append(k.toMap())
            }
            map["Panes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AudioMixCount") {
            self.audioMixCount = dict["AudioMixCount"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Panes") {
            self.panes = dict["Panes"] as! [CreateMPULayoutRequest.Panes]
        }
    }
}

public class CreateMPULayoutResponseBody : Tea.TeaModel {
    public var layoutId: Int64?

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
        if self.layoutId != nil {
            map["LayoutId"] = self.layoutId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LayoutId") {
            self.layoutId = dict["LayoutId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMPULayoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMPULayoutResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateMPULayoutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAutoLiveStreamRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DeleteAutoLiveStreamRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAutoLiveStreamRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoLiveStreamRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteAutoLiveStreamRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteChannelRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteChannelResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEventSubscribeRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public var subscribeId: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.subscribeId != nil {
            map["SubscribeId"] = self.subscribeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SubscribeId") {
            self.subscribeId = dict["SubscribeId"] as! String
        }
    }
}

public class DeleteEventSubscribeResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEventSubscribeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEventSubscribeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteEventSubscribeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMPULayoutRequest : Tea.TeaModel {
    public var appId: String?

    public var layoutId: Int64?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.layoutId != nil {
            map["LayoutId"] = self.layoutId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LayoutId") {
            self.layoutId = dict["LayoutId"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DeleteMPULayoutResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteMPULayoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMPULayoutResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteMPULayoutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRecordTemplateRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class DeleteRecordTemplateResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteRecordTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRecordTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteRecordTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppKeyRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeAppKeyResponseBody : Tea.TeaModel {
    public var appKey: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAppKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeAppKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsRequest : Tea.TeaModel {
    public var appId: String?

    public var order: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeAppsResponseBody : Tea.TeaModel {
    public class AppList : Tea.TeaModel {
        public class App : Tea.TeaModel {
            public class ServiceAreas : Tea.TeaModel {
                public var serviceArea: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serviceArea != nil {
                        map["ServiceArea"] = self.serviceArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServiceArea") {
                        self.serviceArea = dict["ServiceArea"] as! [String]
                    }
                }
            }
            public var appId: String?

            public var appName: String?

            public var appType: String?

            public var billType: String?

            public var createTime: String?

            public var region: String?

            public var serviceAreas: DescribeAppsResponseBody.AppList.App.ServiceAreas?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serviceAreas?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.billType != nil {
                    map["BillType"] = self.billType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                if self.serviceAreas != nil {
                    map["ServiceAreas"] = self.serviceAreas?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppType") {
                    self.appType = dict["AppType"] as! String
                }
                if dict.keys.contains("BillType") {
                    self.billType = dict["BillType"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
                if dict.keys.contains("ServiceAreas") {
                    var model = DescribeAppsResponseBody.AppList.App.ServiceAreas()
                    model.fromMap(dict["ServiceAreas"] as! [String: Any])
                    self.serviceAreas = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var app: [DescribeAppsResponseBody.AppList.App]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.app != nil {
                var tmp : [Any] = []
                for k in self.app! {
                    tmp.append(k.toMap())
                }
                map["App"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("App") {
                self.app = dict["App"] as! [DescribeAppsResponseBody.AppList.App]
            }
        }
    }
    public var appList: DescribeAppsResponseBody.AppList?

    public var requestId: String?

    public var totalNum: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appList != nil {
            map["AppList"] = self.appList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppList") {
            var model = DescribeAppsResponseBody.AppList()
            model.fromMap(dict["AppList"] as! [String: Any])
            self.appList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
    }
}

public class DescribeAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAutoLiveStreamRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeAutoLiveStreamRuleResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var callBack: String?

        public var channelIdPrefixes: [String]?

        public var channelIds: [String]?

        public var createTime: String?

        public var mediaEncode: Int32?

        public var playDomain: String?

        public var ruleId: Int64?

        public var ruleName: String?

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
            if self.callBack != nil {
                map["CallBack"] = self.callBack!
            }
            if self.channelIdPrefixes != nil {
                map["ChannelIdPrefixes"] = self.channelIdPrefixes!
            }
            if self.channelIds != nil {
                map["ChannelIds"] = self.channelIds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.mediaEncode != nil {
                map["MediaEncode"] = self.mediaEncode!
            }
            if self.playDomain != nil {
                map["PlayDomain"] = self.playDomain!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallBack") {
                self.callBack = dict["CallBack"] as! String
            }
            if dict.keys.contains("ChannelIdPrefixes") {
                self.channelIdPrefixes = dict["ChannelIdPrefixes"] as! [String]
            }
            if dict.keys.contains("ChannelIds") {
                self.channelIds = dict["ChannelIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MediaEncode") {
                self.mediaEncode = dict["MediaEncode"] as! Int32
            }
            if dict.keys.contains("PlayDomain") {
                self.playDomain = dict["PlayDomain"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var rules: [DescribeAutoLiveStreamRuleResponseBody.Rules]?

    public override init() {
        super.init()
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
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
            self.rules = dict["Rules"] as! [DescribeAutoLiveStreamRuleResponseBody.Rules]
        }
    }
}

public class DescribeAutoLiveStreamRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoLiveStreamRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeAutoLiveStreamRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelParticipantsRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var order: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeChannelParticipantsResponseBody : Tea.TeaModel {
    public class UserList : Tea.TeaModel {
        public var user: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                map["User"] = self.user!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                self.user = dict["User"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var timestamp: Int32?

    public var totalNum: Int32?

    public var totalPage: Int32?

    public var userList: DescribeChannelParticipantsResponseBody.UserList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        if self.userList != nil {
            map["UserList"] = self.userList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int32
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
        }
        if dict.keys.contains("UserList") {
            var model = DescribeChannelParticipantsResponseBody.UserList()
            model.fromMap(dict["UserList"] as! [String: Any])
            self.userList = model
        }
    }
}

public class DescribeChannelParticipantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelParticipantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeChannelParticipantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelUsersRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeChannelUsersResponseBody : Tea.TeaModel {
    public var channelProfile: Int32?

    public var commTotalNum: Int32?

    public var interactiveUserList: [String]?

    public var interactiveUserNum: Int32?

    public var isChannelExist: Bool?

    public var liveUserList: [String]?

    public var liveUserNum: Int32?

    public var requestId: String?

    public var timestamp: Int32?

    public var userList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelProfile != nil {
            map["ChannelProfile"] = self.channelProfile!
        }
        if self.commTotalNum != nil {
            map["CommTotalNum"] = self.commTotalNum!
        }
        if self.interactiveUserList != nil {
            map["InteractiveUserList"] = self.interactiveUserList!
        }
        if self.interactiveUserNum != nil {
            map["InteractiveUserNum"] = self.interactiveUserNum!
        }
        if self.isChannelExist != nil {
            map["IsChannelExist"] = self.isChannelExist!
        }
        if self.liveUserList != nil {
            map["LiveUserList"] = self.liveUserList!
        }
        if self.liveUserNum != nil {
            map["LiveUserNum"] = self.liveUserNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.userList != nil {
            map["UserList"] = self.userList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelProfile") {
            self.channelProfile = dict["ChannelProfile"] as! Int32
        }
        if dict.keys.contains("CommTotalNum") {
            self.commTotalNum = dict["CommTotalNum"] as! Int32
        }
        if dict.keys.contains("InteractiveUserList") {
            self.interactiveUserList = dict["InteractiveUserList"] as! [String]
        }
        if dict.keys.contains("InteractiveUserNum") {
            self.interactiveUserNum = dict["InteractiveUserNum"] as! Int32
        }
        if dict.keys.contains("IsChannelExist") {
            self.isChannelExist = dict["IsChannelExist"] as! Bool
        }
        if dict.keys.contains("LiveUserList") {
            self.liveUserList = dict["LiveUserList"] as! [String]
        }
        if dict.keys.contains("LiveUserNum") {
            self.liveUserNum = dict["LiveUserNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int32
        }
        if dict.keys.contains("UserList") {
            self.userList = dict["UserList"] as! [String]
        }
    }
}

public class DescribeChannelUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeChannelUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMPULayoutInfoListRequest : Tea.TeaModel {
    public var appId: String?

    public var layoutId: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.layoutId != nil {
            map["LayoutId"] = self.layoutId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("LayoutId") {
            self.layoutId = dict["LayoutId"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class DescribeMPULayoutInfoListResponseBody : Tea.TeaModel {
    public class Layouts : Tea.TeaModel {
        public class Layout : Tea.TeaModel {
            public class Panes : Tea.TeaModel {
                public class Panes : Tea.TeaModel {
                    public var height: Double?

                    public var majorPane: Int32?

                    public var paneId: Int32?

                    public var width: Double?

                    public var x: Double?

                    public var y: Double?

                    public var ZOrder: Int32?

                    public override init() {
                        super.init()
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
                            map["Height"] = self.height!
                        }
                        if self.majorPane != nil {
                            map["MajorPane"] = self.majorPane!
                        }
                        if self.paneId != nil {
                            map["PaneId"] = self.paneId!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        if self.ZOrder != nil {
                            map["ZOrder"] = self.ZOrder!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Double
                        }
                        if dict.keys.contains("MajorPane") {
                            self.majorPane = dict["MajorPane"] as! Int32
                        }
                        if dict.keys.contains("PaneId") {
                            self.paneId = dict["PaneId"] as! Int32
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Double
                        }
                        if dict.keys.contains("X") {
                            self.x = dict["X"] as! Double
                        }
                        if dict.keys.contains("Y") {
                            self.y = dict["Y"] as! Double
                        }
                        if dict.keys.contains("ZOrder") {
                            self.ZOrder = dict["ZOrder"] as! Int32
                        }
                    }
                }
                public var panes: [DescribeMPULayoutInfoListResponseBody.Layouts.Layout.Panes.Panes]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.panes != nil {
                        var tmp : [Any] = []
                        for k in self.panes! {
                            tmp.append(k.toMap())
                        }
                        map["Panes"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Panes") {
                        self.panes = dict["Panes"] as! [DescribeMPULayoutInfoListResponseBody.Layouts.Layout.Panes.Panes]
                    }
                }
            }
            public var audioMixCount: Int32?

            public var layoutId: Int64?

            public var name: String?

            public var panes: DescribeMPULayoutInfoListResponseBody.Layouts.Layout.Panes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.panes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioMixCount != nil {
                    map["AudioMixCount"] = self.audioMixCount!
                }
                if self.layoutId != nil {
                    map["LayoutId"] = self.layoutId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.panes != nil {
                    map["Panes"] = self.panes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AudioMixCount") {
                    self.audioMixCount = dict["AudioMixCount"] as! Int32
                }
                if dict.keys.contains("LayoutId") {
                    self.layoutId = dict["LayoutId"] as! Int64
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Panes") {
                    var model = DescribeMPULayoutInfoListResponseBody.Layouts.Layout.Panes()
                    model.fromMap(dict["Panes"] as! [String: Any])
                    self.panes = model
                }
            }
        }
        public var layout: [DescribeMPULayoutInfoListResponseBody.Layouts.Layout]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.layout != nil {
                var tmp : [Any] = []
                for k in self.layout! {
                    tmp.append(k.toMap())
                }
                map["Layout"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Layout") {
                self.layout = dict["Layout"] as! [DescribeMPULayoutInfoListResponseBody.Layouts.Layout]
            }
        }
    }
    public var layouts: DescribeMPULayoutInfoListResponseBody.Layouts?

    public var requestId: String?

    public var totalNum: Int64?

    public var totalPage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.layouts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.layouts != nil {
            map["Layouts"] = self.layouts?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Layouts") {
            var model = DescribeMPULayoutInfoListResponseBody.Layouts()
            model.fromMap(dict["Layouts"] as! [String: Any])
            self.layouts = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class DescribeMPULayoutInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMPULayoutInfoListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeMPULayoutInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecordFilesRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startTime: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskIds != nil {
            map["TaskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TaskIds") {
            self.taskIds = dict["TaskIds"] as! [String]
        }
    }
}

public class DescribeRecordFilesResponseBody : Tea.TeaModel {
    public class RecordFiles : Tea.TeaModel {
        public var appId: String?

        public var channelId: String?

        public var createTime: String?

        public var duration: Double?

        public var startTime: String?

        public var stopTime: String?

        public var taskId: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.stopTime != nil {
                map["StopTime"] = self.stopTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Double
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StopTime") {
                self.stopTime = dict["StopTime"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var recordFiles: [DescribeRecordFilesResponseBody.RecordFiles]?

    public var requestId: String?

    public var totalNum: Int64?

    public var totalPage: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordFiles != nil {
            var tmp : [Any] = []
            for k in self.recordFiles! {
                tmp.append(k.toMap())
            }
            map["RecordFiles"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RecordFiles") {
            self.recordFiles = dict["RecordFiles"] as! [DescribeRecordFilesResponseBody.RecordFiles]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class DescribeRecordFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecordFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRecordFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRecordTemplatesRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var templateIds: [String]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateIds != nil {
            map["TemplateIds"] = self.templateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TemplateIds") {
            self.templateIds = dict["TemplateIds"] as! [String]
        }
    }
}

public class DescribeRecordTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public class Backgrounds : Tea.TeaModel {
            public var display: Int32?

            public var height: Double?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Display") {
                    self.display = dict["Display"] as! Int32
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public class ClockWidgets : Tea.TeaModel {
            public var fontColor: Int32?

            public var fontSize: Int32?

            public var fontType: Int32?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.fontType != nil {
                    map["FontType"] = self.fontType!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FontColor") {
                    self.fontColor = dict["FontColor"] as! Int32
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("FontType") {
                    self.fontType = dict["FontType"] as! Int32
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public class Watermarks : Tea.TeaModel {
            public var alpha: Double?

            public var display: Int32?

            public var height: Double?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("Display") {
                    self.display = dict["Display"] as! Int32
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public var backgroundColor: Int32?

        public var backgrounds: [DescribeRecordTemplatesResponseBody.Templates.Backgrounds]?

        public var clockWidgets: [DescribeRecordTemplatesResponseBody.Templates.ClockWidgets]?

        public var createTime: String?

        public var delayStopTime: Int32?

        public var enableM3u8DateTime: Bool?

        public var fileSplitInterval: Int32?

        public var formats: [String]?

        public var httpCallbackUrl: String?

        public var layoutIds: [Int64]?

        public var mediaEncode: Int32?

        public var mnsQueue: String?

        public var name: String?

        public var ossBucket: String?

        public var ossFilePrefix: String?

        public var taskProfile: String?

        public var templateId: String?

        public var watermarks: [DescribeRecordTemplatesResponseBody.Templates.Watermarks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backgroundColor != nil {
                map["BackgroundColor"] = self.backgroundColor!
            }
            if self.backgrounds != nil {
                var tmp : [Any] = []
                for k in self.backgrounds! {
                    tmp.append(k.toMap())
                }
                map["Backgrounds"] = tmp
            }
            if self.clockWidgets != nil {
                var tmp : [Any] = []
                for k in self.clockWidgets! {
                    tmp.append(k.toMap())
                }
                map["ClockWidgets"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.delayStopTime != nil {
                map["DelayStopTime"] = self.delayStopTime!
            }
            if self.enableM3u8DateTime != nil {
                map["EnableM3u8DateTime"] = self.enableM3u8DateTime!
            }
            if self.fileSplitInterval != nil {
                map["FileSplitInterval"] = self.fileSplitInterval!
            }
            if self.formats != nil {
                map["Formats"] = self.formats!
            }
            if self.httpCallbackUrl != nil {
                map["HttpCallbackUrl"] = self.httpCallbackUrl!
            }
            if self.layoutIds != nil {
                map["LayoutIds"] = self.layoutIds!
            }
            if self.mediaEncode != nil {
                map["MediaEncode"] = self.mediaEncode!
            }
            if self.mnsQueue != nil {
                map["MnsQueue"] = self.mnsQueue!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossBucket != nil {
                map["OssBucket"] = self.ossBucket!
            }
            if self.ossFilePrefix != nil {
                map["OssFilePrefix"] = self.ossFilePrefix!
            }
            if self.taskProfile != nil {
                map["TaskProfile"] = self.taskProfile!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.watermarks != nil {
                var tmp : [Any] = []
                for k in self.watermarks! {
                    tmp.append(k.toMap())
                }
                map["Watermarks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackgroundColor") {
                self.backgroundColor = dict["BackgroundColor"] as! Int32
            }
            if dict.keys.contains("Backgrounds") {
                self.backgrounds = dict["Backgrounds"] as! [DescribeRecordTemplatesResponseBody.Templates.Backgrounds]
            }
            if dict.keys.contains("ClockWidgets") {
                self.clockWidgets = dict["ClockWidgets"] as! [DescribeRecordTemplatesResponseBody.Templates.ClockWidgets]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DelayStopTime") {
                self.delayStopTime = dict["DelayStopTime"] as! Int32
            }
            if dict.keys.contains("EnableM3u8DateTime") {
                self.enableM3u8DateTime = dict["EnableM3u8DateTime"] as! Bool
            }
            if dict.keys.contains("FileSplitInterval") {
                self.fileSplitInterval = dict["FileSplitInterval"] as! Int32
            }
            if dict.keys.contains("Formats") {
                self.formats = dict["Formats"] as! [String]
            }
            if dict.keys.contains("HttpCallbackUrl") {
                self.httpCallbackUrl = dict["HttpCallbackUrl"] as! String
            }
            if dict.keys.contains("LayoutIds") {
                self.layoutIds = dict["LayoutIds"] as! [Int64]
            }
            if dict.keys.contains("MediaEncode") {
                self.mediaEncode = dict["MediaEncode"] as! Int32
            }
            if dict.keys.contains("MnsQueue") {
                self.mnsQueue = dict["MnsQueue"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssBucket") {
                self.ossBucket = dict["OssBucket"] as! String
            }
            if dict.keys.contains("OssFilePrefix") {
                self.ossFilePrefix = dict["OssFilePrefix"] as! String
            }
            if dict.keys.contains("TaskProfile") {
                self.taskProfile = dict["TaskProfile"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
            if dict.keys.contains("Watermarks") {
                self.watermarks = dict["Watermarks"] as! [DescribeRecordTemplatesResponseBody.Templates.Watermarks]
            }
        }
    }
    public var requestId: String?

    public var templates: [DescribeRecordTemplatesResponseBody.Templates]?

    public var totalNum: Int64?

    public var totalPage: Int64?

    public override init() {
        super.init()
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
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            self.templates = dict["Templates"] as! [DescribeRecordTemplatesResponseBody.Templates]
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class DescribeRecordTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecordTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRecordTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRtcChannelListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var serviceArea: String?

    public var sortType: String?

    public var timePoint: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.timePoint != nil {
            map["TimePoint"] = self.timePoint!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ServiceArea") {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
        if dict.keys.contains("TimePoint") {
            self.timePoint = dict["TimePoint"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeRtcChannelListResponseBody : Tea.TeaModel {
    public class ChannelList : Tea.TeaModel {
        public class ChannelList : Tea.TeaModel {
            public class CallArea : Tea.TeaModel {
                public var callArea: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.callArea != nil {
                        map["CallArea"] = self.callArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CallArea") {
                        self.callArea = dict["CallArea"] as! [String]
                    }
                }
            }
            public var callArea: DescribeRtcChannelListResponseBody.ChannelList.ChannelList.CallArea?

            public var channelId: String?

            public var endTime: String?

            public var startTime: String?

            public var totalUserCnt: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.callArea?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callArea != nil {
                    map["CallArea"] = self.callArea?.toMap()
                }
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.totalUserCnt != nil {
                    map["TotalUserCnt"] = self.totalUserCnt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CallArea") {
                    var model = DescribeRtcChannelListResponseBody.ChannelList.ChannelList.CallArea()
                    model.fromMap(dict["CallArea"] as! [String: Any])
                    self.callArea = model
                }
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("TotalUserCnt") {
                    self.totalUserCnt = dict["TotalUserCnt"] as! Int64
                }
            }
        }
        public var channelList: [DescribeRtcChannelListResponseBody.ChannelList.ChannelList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelList != nil {
                var tmp : [Any] = []
                for k in self.channelList! {
                    tmp.append(k.toMap())
                }
                map["ChannelList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelList") {
                self.channelList = dict["ChannelList"] as! [DescribeRtcChannelListResponseBody.ChannelList.ChannelList]
            }
        }
    }
    public var channelList: DescribeRtcChannelListResponseBody.ChannelList?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalCnt: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.channelList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelList != nil {
            map["ChannelList"] = self.channelList?.toMap()
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCnt != nil {
            map["TotalCnt"] = self.totalCnt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelList") {
            var model = DescribeRtcChannelListResponseBody.ChannelList()
            model.fromMap(dict["ChannelList"] as! [String: Any])
            self.channelList = model
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCnt") {
            self.totalCnt = dict["TotalCnt"] as! Int64
        }
    }
}

public class DescribeRtcChannelListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRtcChannelListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRtcChannelListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRtcChannelMetricRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var ownerId: Int64?

    public var timePoint: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.timePoint != nil {
            map["TimePoint"] = self.timePoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TimePoint") {
            self.timePoint = dict["TimePoint"] as! String
        }
    }
}

public class DescribeRtcChannelMetricResponseBody : Tea.TeaModel {
    public class ChannelMetricInfo : Tea.TeaModel {
        public class ChannelMetric : Tea.TeaModel {
            public var channelId: String?

            public var endTime: String?

            public var pubUserCount: Int32?

            public var startTime: String?

            public var subUserCount: Int32?

            public var userCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.pubUserCount != nil {
                    map["PubUserCount"] = self.pubUserCount!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.subUserCount != nil {
                    map["SubUserCount"] = self.subUserCount!
                }
                if self.userCount != nil {
                    map["UserCount"] = self.userCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChannelId") {
                    self.channelId = dict["ChannelId"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("PubUserCount") {
                    self.pubUserCount = dict["PubUserCount"] as! Int32
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("SubUserCount") {
                    self.subUserCount = dict["SubUserCount"] as! Int32
                }
                if dict.keys.contains("UserCount") {
                    self.userCount = dict["UserCount"] as! Int32
                }
            }
        }
        public class Duration : Tea.TeaModel {
            public class PubDuration : Tea.TeaModel {
                public var audio: Int32?

                public var content: Int32?

                public var video1080: Int32?

                public var video360: Int32?

                public var video720: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.audio != nil {
                        map["Audio"] = self.audio!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.video1080 != nil {
                        map["Video1080"] = self.video1080!
                    }
                    if self.video360 != nil {
                        map["Video360"] = self.video360!
                    }
                    if self.video720 != nil {
                        map["Video720"] = self.video720!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Audio") {
                        self.audio = dict["Audio"] as! Int32
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! Int32
                    }
                    if dict.keys.contains("Video1080") {
                        self.video1080 = dict["Video1080"] as! Int32
                    }
                    if dict.keys.contains("Video360") {
                        self.video360 = dict["Video360"] as! Int32
                    }
                    if dict.keys.contains("Video720") {
                        self.video720 = dict["Video720"] as! Int32
                    }
                }
            }
            public class SubDuration : Tea.TeaModel {
                public var audio: Int32?

                public var content: Int32?

                public var video1080: Int32?

                public var video360: Int32?

                public var video720: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.audio != nil {
                        map["Audio"] = self.audio!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.video1080 != nil {
                        map["Video1080"] = self.video1080!
                    }
                    if self.video360 != nil {
                        map["Video360"] = self.video360!
                    }
                    if self.video720 != nil {
                        map["Video720"] = self.video720!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Audio") {
                        self.audio = dict["Audio"] as! Int32
                    }
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! Int32
                    }
                    if dict.keys.contains("Video1080") {
                        self.video1080 = dict["Video1080"] as! Int32
                    }
                    if dict.keys.contains("Video360") {
                        self.video360 = dict["Video360"] as! Int32
                    }
                    if dict.keys.contains("Video720") {
                        self.video720 = dict["Video720"] as! Int32
                    }
                }
            }
            public var pubDuration: DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.Duration.PubDuration?

            public var subDuration: DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.Duration.SubDuration?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.pubDuration?.validate()
                try self.subDuration?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pubDuration != nil {
                    map["PubDuration"] = self.pubDuration?.toMap()
                }
                if self.subDuration != nil {
                    map["SubDuration"] = self.subDuration?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PubDuration") {
                    var model = DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.Duration.PubDuration()
                    model.fromMap(dict["PubDuration"] as! [String: Any])
                    self.pubDuration = model
                }
                if dict.keys.contains("SubDuration") {
                    var model = DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.Duration.SubDuration()
                    model.fromMap(dict["SubDuration"] as! [String: Any])
                    self.subDuration = model
                }
            }
        }
        public var channelMetric: DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.ChannelMetric?

        public var duration: DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.Duration?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channelMetric?.validate()
            try self.duration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channelMetric != nil {
                map["ChannelMetric"] = self.channelMetric?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelMetric") {
                var model = DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.ChannelMetric()
                model.fromMap(dict["ChannelMetric"] as! [String: Any])
                self.channelMetric = model
            }
            if dict.keys.contains("Duration") {
                var model = DescribeRtcChannelMetricResponseBody.ChannelMetricInfo.Duration()
                model.fromMap(dict["Duration"] as! [String: Any])
                self.duration = model
            }
        }
    }
    public var channelMetricInfo: DescribeRtcChannelMetricResponseBody.ChannelMetricInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.channelMetricInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelMetricInfo != nil {
            map["ChannelMetricInfo"] = self.channelMetricInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelMetricInfo") {
            var model = DescribeRtcChannelMetricResponseBody.ChannelMetricInfo()
            model.fromMap(dict["ChannelMetricInfo"] as! [String: Any])
            self.channelMetricInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRtcChannelMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRtcChannelMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRtcChannelMetricResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRtcDurationDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTime: String?

    public var interval: String?

    public var ownerId: Int64?

    public var serviceArea: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ServiceArea") {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeRtcDurationDataResponseBody : Tea.TeaModel {
    public class DurationDataPerInterval : Tea.TeaModel {
        public class DurationModule : Tea.TeaModel {
            public var audioDuration: Int64?

            public var contentDuration: Int64?

            public var timeStamp: String?

            public var totalDuration: Int64?

            public var v1080Duration: Int64?

            public var v360Duration: Int64?

            public var v720Duration: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioDuration != nil {
                    map["AudioDuration"] = self.audioDuration!
                }
                if self.contentDuration != nil {
                    map["ContentDuration"] = self.contentDuration!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.v1080Duration != nil {
                    map["V1080Duration"] = self.v1080Duration!
                }
                if self.v360Duration != nil {
                    map["V360Duration"] = self.v360Duration!
                }
                if self.v720Duration != nil {
                    map["V720Duration"] = self.v720Duration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AudioDuration") {
                    self.audioDuration = dict["AudioDuration"] as! Int64
                }
                if dict.keys.contains("ContentDuration") {
                    self.contentDuration = dict["ContentDuration"] as! Int64
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("TotalDuration") {
                    self.totalDuration = dict["TotalDuration"] as! Int64
                }
                if dict.keys.contains("V1080Duration") {
                    self.v1080Duration = dict["V1080Duration"] as! Int64
                }
                if dict.keys.contains("V360Duration") {
                    self.v360Duration = dict["V360Duration"] as! Int64
                }
                if dict.keys.contains("V720Duration") {
                    self.v720Duration = dict["V720Duration"] as! Int64
                }
            }
        }
        public var durationModule: [DescribeRtcDurationDataResponseBody.DurationDataPerInterval.DurationModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.durationModule != nil {
                var tmp : [Any] = []
                for k in self.durationModule! {
                    tmp.append(k.toMap())
                }
                map["DurationModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DurationModule") {
                self.durationModule = dict["DurationModule"] as! [DescribeRtcDurationDataResponseBody.DurationDataPerInterval.DurationModule]
            }
        }
    }
    public var durationDataPerInterval: DescribeRtcDurationDataResponseBody.DurationDataPerInterval?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.durationDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.durationDataPerInterval != nil {
            map["DurationDataPerInterval"] = self.durationDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DurationDataPerInterval") {
            var model = DescribeRtcDurationDataResponseBody.DurationDataPerInterval()
            model.fromMap(dict["DurationDataPerInterval"] as! [String: Any])
            self.durationDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRtcDurationDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRtcDurationDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRtcDurationDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRtcPeakChannelCntDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTime: String?

    public var interval: String?

    public var ownerId: Int64?

    public var serviceArea: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ServiceArea") {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeRtcPeakChannelCntDataResponseBody : Tea.TeaModel {
    public class PeakChannelCntDataPerInterval : Tea.TeaModel {
        public class PeakChannelCntModule : Tea.TeaModel {
            public var activeChannelPeak: Int64?

            public var activeChannelPeakTime: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeChannelPeak != nil {
                    map["ActiveChannelPeak"] = self.activeChannelPeak!
                }
                if self.activeChannelPeakTime != nil {
                    map["ActiveChannelPeakTime"] = self.activeChannelPeakTime!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveChannelPeak") {
                    self.activeChannelPeak = dict["ActiveChannelPeak"] as! Int64
                }
                if dict.keys.contains("ActiveChannelPeakTime") {
                    self.activeChannelPeakTime = dict["ActiveChannelPeakTime"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var peakChannelCntModule: [DescribeRtcPeakChannelCntDataResponseBody.PeakChannelCntDataPerInterval.PeakChannelCntModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.peakChannelCntModule != nil {
                var tmp : [Any] = []
                for k in self.peakChannelCntModule! {
                    tmp.append(k.toMap())
                }
                map["PeakChannelCntModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PeakChannelCntModule") {
                self.peakChannelCntModule = dict["PeakChannelCntModule"] as! [DescribeRtcPeakChannelCntDataResponseBody.PeakChannelCntDataPerInterval.PeakChannelCntModule]
            }
        }
    }
    public var peakChannelCntDataPerInterval: DescribeRtcPeakChannelCntDataResponseBody.PeakChannelCntDataPerInterval?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.peakChannelCntDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.peakChannelCntDataPerInterval != nil {
            map["PeakChannelCntDataPerInterval"] = self.peakChannelCntDataPerInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PeakChannelCntDataPerInterval") {
            var model = DescribeRtcPeakChannelCntDataResponseBody.PeakChannelCntDataPerInterval()
            model.fromMap(dict["PeakChannelCntDataPerInterval"] as! [String: Any])
            self.peakChannelCntDataPerInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRtcPeakChannelCntDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRtcPeakChannelCntDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRtcPeakChannelCntDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRtcUserCntDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTime: String?

    public var interval: String?

    public var ownerId: Int64?

    public var serviceArea: String?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.serviceArea != nil {
            map["ServiceArea"] = self.serviceArea!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ServiceArea") {
            self.serviceArea = dict["ServiceArea"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeRtcUserCntDataResponseBody : Tea.TeaModel {
    public class UserCntDataPerInterval : Tea.TeaModel {
        public class UserCntModule : Tea.TeaModel {
            public var activeUserCnt: Int64?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeUserCnt != nil {
                    map["ActiveUserCnt"] = self.activeUserCnt!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveUserCnt") {
                    self.activeUserCnt = dict["ActiveUserCnt"] as! Int64
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var userCntModule: [DescribeRtcUserCntDataResponseBody.UserCntDataPerInterval.UserCntModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userCntModule != nil {
                var tmp : [Any] = []
                for k in self.userCntModule! {
                    tmp.append(k.toMap())
                }
                map["UserCntModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserCntModule") {
                self.userCntModule = dict["UserCntModule"] as! [DescribeRtcUserCntDataResponseBody.UserCntDataPerInterval.UserCntModule]
            }
        }
    }
    public var requestId: String?

    public var userCntDataPerInterval: DescribeRtcUserCntDataResponseBody.UserCntDataPerInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userCntDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userCntDataPerInterval != nil {
            map["UserCntDataPerInterval"] = self.userCntDataPerInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserCntDataPerInterval") {
            var model = DescribeRtcUserCntDataResponseBody.UserCntDataPerInterval()
            model.fromMap(dict["UserCntDataPerInterval"] as! [String: Any])
            self.userCntDataPerInterval = model
        }
    }
}

public class DescribeRtcUserCntDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRtcUserCntDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeRtcUserCntDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserInfoInChannelRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var ownerId: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeUserInfoInChannelResponseBody : Tea.TeaModel {
    public class Property : Tea.TeaModel {
        public var join: Int32?

        public var role: Int32?

        public var session: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.join != nil {
                map["Join"] = self.join!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.session != nil {
                map["Session"] = self.session!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Join") {
                self.join = dict["Join"] as! Int32
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! Int32
            }
            if dict.keys.contains("Session") {
                self.session = dict["Session"] as! String
            }
        }
    }
    public var isChannelExist: Bool?

    public var isInChannel: Bool?

    public var property: [DescribeUserInfoInChannelResponseBody.Property]?

    public var requestId: String?

    public var timestamp: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isChannelExist != nil {
            map["IsChannelExist"] = self.isChannelExist!
        }
        if self.isInChannel != nil {
            map["IsInChannel"] = self.isInChannel!
        }
        if self.property != nil {
            var tmp : [Any] = []
            for k in self.property! {
                tmp.append(k.toMap())
            }
            map["Property"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsChannelExist") {
            self.isChannelExist = dict["IsChannelExist"] as! Bool
        }
        if dict.keys.contains("IsInChannel") {
            self.isInChannel = dict["IsInChannel"] as! Bool
        }
        if dict.keys.contains("Property") {
            self.property = dict["Property"] as! [DescribeUserInfoInChannelResponseBody.Property]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Timestamp") {
            self.timestamp = dict["Timestamp"] as! Int32
        }
    }
}

public class DescribeUserInfoInChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserInfoInChannelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DescribeUserInfoInChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableAutoLiveStreamRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DisableAutoLiveStreamRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableAutoLiveStreamRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAutoLiveStreamRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DisableAutoLiveStreamRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableAutoLiveStreamRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

    public var ruleId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class EnableAutoLiveStreamRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EnableAutoLiveStreamRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAutoLiveStreamRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = EnableAutoLiveStreamRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMPUTaskStatusRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetMPUTaskStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class GetMPUTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMPUTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetMPUTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAppRequest : Tea.TeaModel {
    public var appId: String?

    public var appName: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class ModifyAppResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ModifyAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMPULayoutRequest : Tea.TeaModel {
    public class Panes : Tea.TeaModel {
        public var height: Double?

        public var majorPane: Int32?

        public var paneId: Int32?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
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
                map["Height"] = self.height!
            }
            if self.majorPane != nil {
                map["MajorPane"] = self.majorPane!
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("MajorPane") {
                self.majorPane = dict["MajorPane"] as! Int32
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public var appId: String?

    public var audioMixCount: Int32?

    public var layoutId: Int64?

    public var name: String?

    public var ownerId: Int64?

    public var panes: [ModifyMPULayoutRequest.Panes]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.audioMixCount != nil {
            map["AudioMixCount"] = self.audioMixCount!
        }
        if self.layoutId != nil {
            map["LayoutId"] = self.layoutId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.panes != nil {
            var tmp : [Any] = []
            for k in self.panes! {
                tmp.append(k.toMap())
            }
            map["Panes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AudioMixCount") {
            self.audioMixCount = dict["AudioMixCount"] as! Int32
        }
        if dict.keys.contains("LayoutId") {
            self.layoutId = dict["LayoutId"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Panes") {
            self.panes = dict["Panes"] as! [ModifyMPULayoutRequest.Panes]
        }
    }
}

public class ModifyMPULayoutResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyMPULayoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMPULayoutResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ModifyMPULayoutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTerminalsRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var ownerId: Int64?

    public var terminalIds: [String]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.terminalIds != nil {
            map["TerminalIds"] = self.terminalIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TerminalIds") {
            self.terminalIds = dict["TerminalIds"] as! [String]
        }
    }
}

public class RemoveTerminalsResponseBody : Tea.TeaModel {
    public class Terminals : Tea.TeaModel {
        public class Terminal : Tea.TeaModel {
            public var code: Int32?

            public var id: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
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
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
            }
        }
        public var terminal: [RemoveTerminalsResponseBody.Terminals.Terminal]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.terminal != nil {
                var tmp : [Any] = []
                for k in self.terminal! {
                    tmp.append(k.toMap())
                }
                map["Terminal"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Terminal") {
                self.terminal = dict["Terminal"] as! [RemoveTerminalsResponseBody.Terminals.Terminal]
            }
        }
    }
    public var requestId: String?

    public var terminals: RemoveTerminalsResponseBody.Terminals?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.terminals?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.terminals != nil {
            map["Terminals"] = self.terminals?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Terminals") {
            var model = RemoveTerminalsResponseBody.Terminals()
            model.fromMap(dict["Terminals"] as! [String: Any])
            self.terminals = model
        }
    }
}

public class RemoveTerminalsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTerminalsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = RemoveTerminalsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartMPUTaskRequest : Tea.TeaModel {
    public class Backgrounds : Tea.TeaModel {
        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class ClockWidgets : Tea.TeaModel {
        public var alpha: Double?

        public var borderColor: Int64?

        public var borderWidth: Int32?

        public var box: Bool?

        public var boxBorderWidth: Int32?

        public var boxColor: Int64?

        public var fontColor: Int32?

        public var fontSize: Int32?

        public var fontType: Int32?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.borderColor != nil {
                map["BorderColor"] = self.borderColor!
            }
            if self.borderWidth != nil {
                map["BorderWidth"] = self.borderWidth!
            }
            if self.box != nil {
                map["Box"] = self.box!
            }
            if self.boxBorderWidth != nil {
                map["BoxBorderWidth"] = self.boxBorderWidth!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor!
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.fontType != nil {
                map["FontType"] = self.fontType!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BorderColor") {
                self.borderColor = dict["BorderColor"] as! Int64
            }
            if dict.keys.contains("BorderWidth") {
                self.borderWidth = dict["BorderWidth"] as! Int32
            }
            if dict.keys.contains("Box") {
                self.box = dict["Box"] as! Bool
            }
            if dict.keys.contains("BoxBorderWidth") {
                self.boxBorderWidth = dict["BoxBorderWidth"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                self.boxColor = dict["BoxColor"] as! Int64
            }
            if dict.keys.contains("FontColor") {
                self.fontColor = dict["FontColor"] as! Int32
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("FontType") {
                self.fontType = dict["FontType"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class EnhancedParam : Tea.TeaModel {
        public var enablePortraitSegmentation: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enablePortraitSegmentation != nil {
                map["EnablePortraitSegmentation"] = self.enablePortraitSegmentation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnablePortraitSegmentation") {
                self.enablePortraitSegmentation = dict["EnablePortraitSegmentation"] as! Bool
            }
        }
    }
    public class UserPanes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var display: Int32?

            public var height: Double?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Display") {
                    self.display = dict["Display"] as! Int32
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public class Texts : Tea.TeaModel {
            public var alpha: Double?

            public var borderColor: Int64?

            public var borderWidth: Int32?

            public var box: Bool?

            public var boxBorderWidth: Int32?

            public var boxColor: Int64?

            public var fontColor: Int32?

            public var fontSize: Int32?

            public var fontType: Int32?

            public var text: String?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.borderColor != nil {
                    map["BorderColor"] = self.borderColor!
                }
                if self.borderWidth != nil {
                    map["BorderWidth"] = self.borderWidth!
                }
                if self.box != nil {
                    map["Box"] = self.box!
                }
                if self.boxBorderWidth != nil {
                    map["BoxBorderWidth"] = self.boxBorderWidth!
                }
                if self.boxColor != nil {
                    map["BoxColor"] = self.boxColor!
                }
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.fontType != nil {
                    map["FontType"] = self.fontType!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("BorderColor") {
                    self.borderColor = dict["BorderColor"] as! Int64
                }
                if dict.keys.contains("BorderWidth") {
                    self.borderWidth = dict["BorderWidth"] as! Int32
                }
                if dict.keys.contains("Box") {
                    self.box = dict["Box"] as! Bool
                }
                if dict.keys.contains("BoxBorderWidth") {
                    self.boxBorderWidth = dict["BoxBorderWidth"] as! Int32
                }
                if dict.keys.contains("BoxColor") {
                    self.boxColor = dict["BoxColor"] as! Int64
                }
                if dict.keys.contains("FontColor") {
                    self.fontColor = dict["FontColor"] as! Int32
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("FontType") {
                    self.fontType = dict["FontType"] as! Int32
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public var images: [StartMPUTaskRequest.UserPanes.Images]?

        public var paneId: Int32?

        public var segmentType: Int32?

        public var sourceType: String?

        public var texts: [StartMPUTaskRequest.UserPanes.Texts]?

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
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["Images"] = tmp
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.segmentType != nil {
                map["SegmentType"] = self.segmentType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.texts != nil {
                var tmp : [Any] = []
                for k in self.texts! {
                    tmp.append(k.toMap())
                }
                map["Texts"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [StartMPUTaskRequest.UserPanes.Images]
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("SegmentType") {
                self.segmentType = dict["SegmentType"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                self.texts = dict["Texts"] as! [StartMPUTaskRequest.UserPanes.Texts]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public class Watermarks : Tea.TeaModel {
        public var alpha: Double?

        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public var appId: String?

    public var backgroundColor: Int32?

    public var backgrounds: [StartMPUTaskRequest.Backgrounds]?

    public var channelId: String?

    public var clockWidgets: [StartMPUTaskRequest.ClockWidgets]?

    public var cropMode: Int32?

    public var enhancedParam: StartMPUTaskRequest.EnhancedParam?

    public var layoutIds: [Int64]?

    public var mediaEncode: Int32?

    public var mixMode: Int32?

    public var ownerId: Int64?

    public var payloadType: Int32?

    public var reportVad: Int32?

    public var rtpExtInfo: Int32?

    public var sourceType: String?

    public var streamType: Int32?

    public var streamURL: String?

    public var subSpecAudioUsers: [String]?

    public var subSpecCameraUsers: [String]?

    public var subSpecShareScreenUsers: [String]?

    public var subSpecUsers: [String]?

    public var taskId: String?

    public var taskType: Int32?

    public var timeStampRef: Int64?

    public var unsubSpecAudioUsers: [String]?

    public var unsubSpecCameraUsers: [String]?

    public var unsubSpecShareScreenUsers: [String]?

    public var userPanes: [StartMPUTaskRequest.UserPanes]?

    public var vadInterval: Int64?

    public var watermarks: [StartMPUTaskRequest.Watermarks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.enhancedParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.backgroundColor != nil {
            map["BackgroundColor"] = self.backgroundColor!
        }
        if self.backgrounds != nil {
            var tmp : [Any] = []
            for k in self.backgrounds! {
                tmp.append(k.toMap())
            }
            map["Backgrounds"] = tmp
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.clockWidgets != nil {
            var tmp : [Any] = []
            for k in self.clockWidgets! {
                tmp.append(k.toMap())
            }
            map["ClockWidgets"] = tmp
        }
        if self.cropMode != nil {
            map["CropMode"] = self.cropMode!
        }
        if self.enhancedParam != nil {
            map["EnhancedParam"] = self.enhancedParam?.toMap()
        }
        if self.layoutIds != nil {
            map["LayoutIds"] = self.layoutIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.mixMode != nil {
            map["MixMode"] = self.mixMode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payloadType != nil {
            map["PayloadType"] = self.payloadType!
        }
        if self.reportVad != nil {
            map["ReportVad"] = self.reportVad!
        }
        if self.rtpExtInfo != nil {
            map["RtpExtInfo"] = self.rtpExtInfo!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        if self.streamURL != nil {
            map["StreamURL"] = self.streamURL!
        }
        if self.subSpecAudioUsers != nil {
            map["SubSpecAudioUsers"] = self.subSpecAudioUsers!
        }
        if self.subSpecCameraUsers != nil {
            map["SubSpecCameraUsers"] = self.subSpecCameraUsers!
        }
        if self.subSpecShareScreenUsers != nil {
            map["SubSpecShareScreenUsers"] = self.subSpecShareScreenUsers!
        }
        if self.subSpecUsers != nil {
            map["SubSpecUsers"] = self.subSpecUsers!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.timeStampRef != nil {
            map["TimeStampRef"] = self.timeStampRef!
        }
        if self.unsubSpecAudioUsers != nil {
            map["UnsubSpecAudioUsers"] = self.unsubSpecAudioUsers!
        }
        if self.unsubSpecCameraUsers != nil {
            map["UnsubSpecCameraUsers"] = self.unsubSpecCameraUsers!
        }
        if self.unsubSpecShareScreenUsers != nil {
            map["UnsubSpecShareScreenUsers"] = self.unsubSpecShareScreenUsers!
        }
        if self.userPanes != nil {
            var tmp : [Any] = []
            for k in self.userPanes! {
                tmp.append(k.toMap())
            }
            map["UserPanes"] = tmp
        }
        if self.vadInterval != nil {
            map["VadInterval"] = self.vadInterval!
        }
        if self.watermarks != nil {
            var tmp : [Any] = []
            for k in self.watermarks! {
                tmp.append(k.toMap())
            }
            map["Watermarks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BackgroundColor") {
            self.backgroundColor = dict["BackgroundColor"] as! Int32
        }
        if dict.keys.contains("Backgrounds") {
            self.backgrounds = dict["Backgrounds"] as! [StartMPUTaskRequest.Backgrounds]
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("ClockWidgets") {
            self.clockWidgets = dict["ClockWidgets"] as! [StartMPUTaskRequest.ClockWidgets]
        }
        if dict.keys.contains("CropMode") {
            self.cropMode = dict["CropMode"] as! Int32
        }
        if dict.keys.contains("EnhancedParam") {
            var model = StartMPUTaskRequest.EnhancedParam()
            model.fromMap(dict["EnhancedParam"] as! [String: Any])
            self.enhancedParam = model
        }
        if dict.keys.contains("LayoutIds") {
            self.layoutIds = dict["LayoutIds"] as! [Int64]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("MixMode") {
            self.mixMode = dict["MixMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PayloadType") {
            self.payloadType = dict["PayloadType"] as! Int32
        }
        if dict.keys.contains("ReportVad") {
            self.reportVad = dict["ReportVad"] as! Int32
        }
        if dict.keys.contains("RtpExtInfo") {
            self.rtpExtInfo = dict["RtpExtInfo"] as! Int32
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StreamType") {
            self.streamType = dict["StreamType"] as! Int32
        }
        if dict.keys.contains("StreamURL") {
            self.streamURL = dict["StreamURL"] as! String
        }
        if dict.keys.contains("SubSpecAudioUsers") {
            self.subSpecAudioUsers = dict["SubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecCameraUsers") {
            self.subSpecCameraUsers = dict["SubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecShareScreenUsers") {
            self.subSpecShareScreenUsers = dict["SubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecUsers") {
            self.subSpecUsers = dict["SubSpecUsers"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! Int32
        }
        if dict.keys.contains("TimeStampRef") {
            self.timeStampRef = dict["TimeStampRef"] as! Int64
        }
        if dict.keys.contains("UnsubSpecAudioUsers") {
            self.unsubSpecAudioUsers = dict["UnsubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecCameraUsers") {
            self.unsubSpecCameraUsers = dict["UnsubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecShareScreenUsers") {
            self.unsubSpecShareScreenUsers = dict["UnsubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("UserPanes") {
            self.userPanes = dict["UserPanes"] as! [StartMPUTaskRequest.UserPanes]
        }
        if dict.keys.contains("VadInterval") {
            self.vadInterval = dict["VadInterval"] as! Int64
        }
        if dict.keys.contains("Watermarks") {
            self.watermarks = dict["Watermarks"] as! [StartMPUTaskRequest.Watermarks]
        }
    }
}

public class StartMPUTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartMPUTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartMPUTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = StartMPUTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartRecordTaskRequest : Tea.TeaModel {
    public class UserPanes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var display: Int32?

            public var height: Double?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Display") {
                    self.display = dict["Display"] as! Int32
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public class Texts : Tea.TeaModel {
            public var fontColor: Int32?

            public var fontSize: Int32?

            public var fontType: Int32?

            public var text: String?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.fontType != nil {
                    map["FontType"] = self.fontType!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FontColor") {
                    self.fontColor = dict["FontColor"] as! Int32
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("FontType") {
                    self.fontType = dict["FontType"] as! Int32
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public var images: [StartRecordTaskRequest.UserPanes.Images]?

        public var paneId: Int32?

        public var sourceType: String?

        public var texts: [StartRecordTaskRequest.UserPanes.Texts]?

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
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["Images"] = tmp
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.texts != nil {
                var tmp : [Any] = []
                for k in self.texts! {
                    tmp.append(k.toMap())
                }
                map["Texts"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [StartRecordTaskRequest.UserPanes.Images]
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                self.texts = dict["Texts"] as! [StartRecordTaskRequest.UserPanes.Texts]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var cropMode: Int64?

    public var layoutIds: [Int64]?

    public var mediaEncode: Int32?

    public var mixMode: Int32?

    public var ownerId: Int64?

    public var sourceType: String?

    public var streamType: Int32?

    public var subSpecAudioUsers: [String]?

    public var subSpecCameraUsers: [String]?

    public var subSpecShareScreenUsers: [String]?

    public var subSpecUsers: [String]?

    public var taskId: String?

    public var taskProfile: String?

    public var templateId: String?

    public var unsubSpecAudioUsers: [String]?

    public var unsubSpecCameraUsers: [String]?

    public var unsubSpecShareScreenUsers: [String]?

    public var userPanes: [StartRecordTaskRequest.UserPanes]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.cropMode != nil {
            map["CropMode"] = self.cropMode!
        }
        if self.layoutIds != nil {
            map["LayoutIds"] = self.layoutIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.mixMode != nil {
            map["MixMode"] = self.mixMode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        if self.subSpecAudioUsers != nil {
            map["SubSpecAudioUsers"] = self.subSpecAudioUsers!
        }
        if self.subSpecCameraUsers != nil {
            map["SubSpecCameraUsers"] = self.subSpecCameraUsers!
        }
        if self.subSpecShareScreenUsers != nil {
            map["SubSpecShareScreenUsers"] = self.subSpecShareScreenUsers!
        }
        if self.subSpecUsers != nil {
            map["SubSpecUsers"] = self.subSpecUsers!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskProfile != nil {
            map["TaskProfile"] = self.taskProfile!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.unsubSpecAudioUsers != nil {
            map["UnsubSpecAudioUsers"] = self.unsubSpecAudioUsers!
        }
        if self.unsubSpecCameraUsers != nil {
            map["UnsubSpecCameraUsers"] = self.unsubSpecCameraUsers!
        }
        if self.unsubSpecShareScreenUsers != nil {
            map["UnsubSpecShareScreenUsers"] = self.unsubSpecShareScreenUsers!
        }
        if self.userPanes != nil {
            var tmp : [Any] = []
            for k in self.userPanes! {
                tmp.append(k.toMap())
            }
            map["UserPanes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CropMode") {
            self.cropMode = dict["CropMode"] as! Int64
        }
        if dict.keys.contains("LayoutIds") {
            self.layoutIds = dict["LayoutIds"] as! [Int64]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("MixMode") {
            self.mixMode = dict["MixMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StreamType") {
            self.streamType = dict["StreamType"] as! Int32
        }
        if dict.keys.contains("SubSpecAudioUsers") {
            self.subSpecAudioUsers = dict["SubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecCameraUsers") {
            self.subSpecCameraUsers = dict["SubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecShareScreenUsers") {
            self.subSpecShareScreenUsers = dict["SubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecUsers") {
            self.subSpecUsers = dict["SubSpecUsers"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskProfile") {
            self.taskProfile = dict["TaskProfile"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("UnsubSpecAudioUsers") {
            self.unsubSpecAudioUsers = dict["UnsubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecCameraUsers") {
            self.unsubSpecCameraUsers = dict["UnsubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecShareScreenUsers") {
            self.unsubSpecShareScreenUsers = dict["UnsubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("UserPanes") {
            self.userPanes = dict["UserPanes"] as! [StartRecordTaskRequest.UserPanes]
        }
    }
}

public class StartRecordTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartRecordTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRecordTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = StartRecordTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopMPUTaskRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopMPUTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopMPUTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMPUTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = StopMPUTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopRecordTaskRequest : Tea.TeaModel {
    public var appId: String?

    public var ownerId: Int64?

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
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopRecordTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopRecordTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopRecordTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = StopRecordTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAutoLiveStreamRuleRequest : Tea.TeaModel {
    public var appId: String?

    public var callBack: String?

    public var channelIdPrefixes: [String]?

    public var channelIds: [String]?

    public var mediaEncode: Int32?

    public var ownerId: Int64?

    public var playDomain: String?

    public var ruleId: Int32?

    public var ruleName: String?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.callBack != nil {
            map["CallBack"] = self.callBack!
        }
        if self.channelIdPrefixes != nil {
            map["ChannelIdPrefixes"] = self.channelIdPrefixes!
        }
        if self.channelIds != nil {
            map["ChannelIds"] = self.channelIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.playDomain != nil {
            map["PlayDomain"] = self.playDomain!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("CallBack") {
            self.callBack = dict["CallBack"] as! String
        }
        if dict.keys.contains("ChannelIdPrefixes") {
            self.channelIdPrefixes = dict["ChannelIdPrefixes"] as! [String]
        }
        if dict.keys.contains("ChannelIds") {
            self.channelIds = dict["ChannelIds"] as! [String]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PlayDomain") {
            self.playDomain = dict["PlayDomain"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int32
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
    }
}

public class UpdateAutoLiveStreamRuleResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAutoLiveStreamRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAutoLiveStreamRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateAutoLiveStreamRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMPUTaskRequest : Tea.TeaModel {
    public class Backgrounds : Tea.TeaModel {
        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class ClockWidgets : Tea.TeaModel {
        public var alpha: Double?

        public var borderColor: Int64?

        public var borderWidth: Int32?

        public var box: Bool?

        public var boxBorderWidth: Int32?

        public var boxColor: Int64?

        public var fontColor: Int32?

        public var fontSize: Int32?

        public var fontType: Int32?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.borderColor != nil {
                map["BorderColor"] = self.borderColor!
            }
            if self.borderWidth != nil {
                map["BorderWidth"] = self.borderWidth!
            }
            if self.box != nil {
                map["Box"] = self.box!
            }
            if self.boxBorderWidth != nil {
                map["BoxBorderWidth"] = self.boxBorderWidth!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor!
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.fontType != nil {
                map["FontType"] = self.fontType!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BorderColor") {
                self.borderColor = dict["BorderColor"] as! Int64
            }
            if dict.keys.contains("BorderWidth") {
                self.borderWidth = dict["BorderWidth"] as! Int32
            }
            if dict.keys.contains("Box") {
                self.box = dict["Box"] as! Bool
            }
            if dict.keys.contains("BoxBorderWidth") {
                self.boxBorderWidth = dict["BoxBorderWidth"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                self.boxColor = dict["BoxColor"] as! Int64
            }
            if dict.keys.contains("FontColor") {
                self.fontColor = dict["FontColor"] as! Int32
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("FontType") {
                self.fontType = dict["FontType"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class UserPanes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var display: Int32?

            public var height: Double?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Display") {
                    self.display = dict["Display"] as! Int32
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public class Texts : Tea.TeaModel {
            public var alpha: Double?

            public var borderColor: Int64?

            public var borderWidth: Int32?

            public var box: Bool?

            public var boxBorderWidth: Int32?

            public var boxColor: Int64?

            public var fontColor: Int32?

            public var fontSize: Int32?

            public var fontType: Int32?

            public var text: String?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.borderColor != nil {
                    map["BorderColor"] = self.borderColor!
                }
                if self.borderWidth != nil {
                    map["BorderWidth"] = self.borderWidth!
                }
                if self.box != nil {
                    map["Box"] = self.box!
                }
                if self.boxBorderWidth != nil {
                    map["BoxBorderWidth"] = self.boxBorderWidth!
                }
                if self.boxColor != nil {
                    map["BoxColor"] = self.boxColor!
                }
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.fontType != nil {
                    map["FontType"] = self.fontType!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("BorderColor") {
                    self.borderColor = dict["BorderColor"] as! Int64
                }
                if dict.keys.contains("BorderWidth") {
                    self.borderWidth = dict["BorderWidth"] as! Int32
                }
                if dict.keys.contains("Box") {
                    self.box = dict["Box"] as! Bool
                }
                if dict.keys.contains("BoxBorderWidth") {
                    self.boxBorderWidth = dict["BoxBorderWidth"] as! Int32
                }
                if dict.keys.contains("BoxColor") {
                    self.boxColor = dict["BoxColor"] as! Int64
                }
                if dict.keys.contains("FontColor") {
                    self.fontColor = dict["FontColor"] as! Int32
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("FontType") {
                    self.fontType = dict["FontType"] as! Int32
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public var images: [UpdateMPUTaskRequest.UserPanes.Images]?

        public var paneId: Int32?

        public var segmentType: Int32?

        public var sourceType: String?

        public var texts: [UpdateMPUTaskRequest.UserPanes.Texts]?

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
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["Images"] = tmp
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.segmentType != nil {
                map["SegmentType"] = self.segmentType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.texts != nil {
                var tmp : [Any] = []
                for k in self.texts! {
                    tmp.append(k.toMap())
                }
                map["Texts"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [UpdateMPUTaskRequest.UserPanes.Images]
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("SegmentType") {
                self.segmentType = dict["SegmentType"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                self.texts = dict["Texts"] as! [UpdateMPUTaskRequest.UserPanes.Texts]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public class Watermarks : Tea.TeaModel {
        public var alpha: Double?

        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public var appId: String?

    public var backgroundColor: Int32?

    public var backgrounds: [UpdateMPUTaskRequest.Backgrounds]?

    public var clockWidgets: [UpdateMPUTaskRequest.ClockWidgets]?

    public var cropMode: Int32?

    public var layoutIds: [Int64]?

    public var mediaEncode: Int32?

    public var mixMode: Int32?

    public var ownerId: Int64?

    public var sourceType: String?

    public var streamType: Int32?

    public var subSpecAudioUsers: [String]?

    public var subSpecCameraUsers: [String]?

    public var subSpecShareScreenUsers: [String]?

    public var subSpecUsers: [String]?

    public var taskId: String?

    public var unsubSpecAudioUsers: [String]?

    public var unsubSpecCameraUsers: [String]?

    public var unsubSpecShareScreenUsers: [String]?

    public var userPanes: [UpdateMPUTaskRequest.UserPanes]?

    public var watermarks: [UpdateMPUTaskRequest.Watermarks]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.backgroundColor != nil {
            map["BackgroundColor"] = self.backgroundColor!
        }
        if self.backgrounds != nil {
            var tmp : [Any] = []
            for k in self.backgrounds! {
                tmp.append(k.toMap())
            }
            map["Backgrounds"] = tmp
        }
        if self.clockWidgets != nil {
            var tmp : [Any] = []
            for k in self.clockWidgets! {
                tmp.append(k.toMap())
            }
            map["ClockWidgets"] = tmp
        }
        if self.cropMode != nil {
            map["CropMode"] = self.cropMode!
        }
        if self.layoutIds != nil {
            map["LayoutIds"] = self.layoutIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.mixMode != nil {
            map["MixMode"] = self.mixMode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.streamType != nil {
            map["StreamType"] = self.streamType!
        }
        if self.subSpecAudioUsers != nil {
            map["SubSpecAudioUsers"] = self.subSpecAudioUsers!
        }
        if self.subSpecCameraUsers != nil {
            map["SubSpecCameraUsers"] = self.subSpecCameraUsers!
        }
        if self.subSpecShareScreenUsers != nil {
            map["SubSpecShareScreenUsers"] = self.subSpecShareScreenUsers!
        }
        if self.subSpecUsers != nil {
            map["SubSpecUsers"] = self.subSpecUsers!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.unsubSpecAudioUsers != nil {
            map["UnsubSpecAudioUsers"] = self.unsubSpecAudioUsers!
        }
        if self.unsubSpecCameraUsers != nil {
            map["UnsubSpecCameraUsers"] = self.unsubSpecCameraUsers!
        }
        if self.unsubSpecShareScreenUsers != nil {
            map["UnsubSpecShareScreenUsers"] = self.unsubSpecShareScreenUsers!
        }
        if self.userPanes != nil {
            var tmp : [Any] = []
            for k in self.userPanes! {
                tmp.append(k.toMap())
            }
            map["UserPanes"] = tmp
        }
        if self.watermarks != nil {
            var tmp : [Any] = []
            for k in self.watermarks! {
                tmp.append(k.toMap())
            }
            map["Watermarks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BackgroundColor") {
            self.backgroundColor = dict["BackgroundColor"] as! Int32
        }
        if dict.keys.contains("Backgrounds") {
            self.backgrounds = dict["Backgrounds"] as! [UpdateMPUTaskRequest.Backgrounds]
        }
        if dict.keys.contains("ClockWidgets") {
            self.clockWidgets = dict["ClockWidgets"] as! [UpdateMPUTaskRequest.ClockWidgets]
        }
        if dict.keys.contains("CropMode") {
            self.cropMode = dict["CropMode"] as! Int32
        }
        if dict.keys.contains("LayoutIds") {
            self.layoutIds = dict["LayoutIds"] as! [Int64]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("MixMode") {
            self.mixMode = dict["MixMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StreamType") {
            self.streamType = dict["StreamType"] as! Int32
        }
        if dict.keys.contains("SubSpecAudioUsers") {
            self.subSpecAudioUsers = dict["SubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecCameraUsers") {
            self.subSpecCameraUsers = dict["SubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecShareScreenUsers") {
            self.subSpecShareScreenUsers = dict["SubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecUsers") {
            self.subSpecUsers = dict["SubSpecUsers"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("UnsubSpecAudioUsers") {
            self.unsubSpecAudioUsers = dict["UnsubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecCameraUsers") {
            self.unsubSpecCameraUsers = dict["UnsubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecShareScreenUsers") {
            self.unsubSpecShareScreenUsers = dict["UnsubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("UserPanes") {
            self.userPanes = dict["UserPanes"] as! [UpdateMPUTaskRequest.UserPanes]
        }
        if dict.keys.contains("Watermarks") {
            self.watermarks = dict["Watermarks"] as! [UpdateMPUTaskRequest.Watermarks]
        }
    }
}

public class UpdateMPUTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateMPUTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMPUTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateMPUTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRecordTaskRequest : Tea.TeaModel {
    public class UserPanes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var display: Int32?

            public var height: Double?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.display != nil {
                    map["Display"] = self.display!
                }
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Display") {
                    self.display = dict["Display"] as! Int32
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public class Texts : Tea.TeaModel {
            public var fontColor: Int32?

            public var fontSize: Int32?

            public var fontType: Int32?

            public var text: String?

            public var x: Double?

            public var y: Double?

            public var ZOrder: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor!
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.fontType != nil {
                    map["FontType"] = self.fontType!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                if self.ZOrder != nil {
                    map["ZOrder"] = self.ZOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FontColor") {
                    self.fontColor = dict["FontColor"] as! Int32
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("FontType") {
                    self.fontType = dict["FontType"] as! Int32
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
                if dict.keys.contains("ZOrder") {
                    self.ZOrder = dict["ZOrder"] as! Int32
                }
            }
        }
        public var images: [UpdateRecordTaskRequest.UserPanes.Images]?

        public var paneId: Int32?

        public var sourceType: String?

        public var texts: [UpdateRecordTaskRequest.UserPanes.Texts]?

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
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["Images"] = tmp
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.texts != nil {
                var tmp : [Any] = []
                for k in self.texts! {
                    tmp.append(k.toMap())
                }
                map["Texts"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [UpdateRecordTaskRequest.UserPanes.Images]
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                self.texts = dict["Texts"] as! [UpdateRecordTaskRequest.UserPanes.Texts]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var cropMode: Int64?

    public var layoutIds: [Int64]?

    public var mediaEncode: Int64?

    public var ownerId: Int64?

    public var subSpecAudioUsers: [String]?

    public var subSpecCameraUsers: [String]?

    public var subSpecShareScreenUsers: [String]?

    public var subSpecUsers: [String]?

    public var taskId: String?

    public var taskProfile: String?

    public var templateId: String?

    public var unsubSpecAudioUsers: [String]?

    public var unsubSpecCameraUsers: [String]?

    public var unsubSpecShareScreenUsers: [String]?

    public var userPanes: [UpdateRecordTaskRequest.UserPanes]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.cropMode != nil {
            map["CropMode"] = self.cropMode!
        }
        if self.layoutIds != nil {
            map["LayoutIds"] = self.layoutIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.subSpecAudioUsers != nil {
            map["SubSpecAudioUsers"] = self.subSpecAudioUsers!
        }
        if self.subSpecCameraUsers != nil {
            map["SubSpecCameraUsers"] = self.subSpecCameraUsers!
        }
        if self.subSpecShareScreenUsers != nil {
            map["SubSpecShareScreenUsers"] = self.subSpecShareScreenUsers!
        }
        if self.subSpecUsers != nil {
            map["SubSpecUsers"] = self.subSpecUsers!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskProfile != nil {
            map["TaskProfile"] = self.taskProfile!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.unsubSpecAudioUsers != nil {
            map["UnsubSpecAudioUsers"] = self.unsubSpecAudioUsers!
        }
        if self.unsubSpecCameraUsers != nil {
            map["UnsubSpecCameraUsers"] = self.unsubSpecCameraUsers!
        }
        if self.unsubSpecShareScreenUsers != nil {
            map["UnsubSpecShareScreenUsers"] = self.unsubSpecShareScreenUsers!
        }
        if self.userPanes != nil {
            var tmp : [Any] = []
            for k in self.userPanes! {
                tmp.append(k.toMap())
            }
            map["UserPanes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("CropMode") {
            self.cropMode = dict["CropMode"] as! Int64
        }
        if dict.keys.contains("LayoutIds") {
            self.layoutIds = dict["LayoutIds"] as! [Int64]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SubSpecAudioUsers") {
            self.subSpecAudioUsers = dict["SubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecCameraUsers") {
            self.subSpecCameraUsers = dict["SubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecShareScreenUsers") {
            self.subSpecShareScreenUsers = dict["SubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("SubSpecUsers") {
            self.subSpecUsers = dict["SubSpecUsers"] as! [String]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskProfile") {
            self.taskProfile = dict["TaskProfile"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("UnsubSpecAudioUsers") {
            self.unsubSpecAudioUsers = dict["UnsubSpecAudioUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecCameraUsers") {
            self.unsubSpecCameraUsers = dict["UnsubSpecCameraUsers"] as! [String]
        }
        if dict.keys.contains("UnsubSpecShareScreenUsers") {
            self.unsubSpecShareScreenUsers = dict["UnsubSpecShareScreenUsers"] as! [String]
        }
        if dict.keys.contains("UserPanes") {
            self.userPanes = dict["UserPanes"] as! [UpdateRecordTaskRequest.UserPanes]
        }
    }
}

public class UpdateRecordTaskResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateRecordTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecordTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateRecordTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRecordTemplateRequest : Tea.TeaModel {
    public class Backgrounds : Tea.TeaModel {
        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class ClockWidgets : Tea.TeaModel {
        public var fontColor: Int32?

        public var fontSize: Int32?

        public var fontType: Int32?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor!
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.fontType != nil {
                map["FontType"] = self.fontType!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FontColor") {
                self.fontColor = dict["FontColor"] as! Int32
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("FontType") {
                self.fontType = dict["FontType"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public class Watermarks : Tea.TeaModel {
        public var alpha: Double?

        public var display: Int32?

        public var height: Double?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public var ZOrder: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.display != nil {
                map["Display"] = self.display!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.ZOrder != nil {
                map["ZOrder"] = self.ZOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Display") {
                self.display = dict["Display"] as! Int32
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
            if dict.keys.contains("Width") {
                self.width = dict["Width"] as! Double
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("ZOrder") {
                self.ZOrder = dict["ZOrder"] as! Int32
            }
        }
    }
    public var appId: String?

    public var backgroundColor: Int32?

    public var backgrounds: [UpdateRecordTemplateRequest.Backgrounds]?

    public var clockWidgets: [UpdateRecordTemplateRequest.ClockWidgets]?

    public var delayStopTime: Int32?

    public var enableM3u8DateTime: Bool?

    public var fileSplitInterval: Int32?

    public var formats: [String]?

    public var httpCallbackUrl: String?

    public var layoutIds: [Int64]?

    public var mediaEncode: Int32?

    public var mnsQueue: String?

    public var name: String?

    public var ossBucket: String?

    public var ossEndpoint: String?

    public var ossFilePrefix: String?

    public var ownerId: Int64?

    public var taskProfile: String?

    public var templateId: String?

    public var watermarks: [UpdateRecordTemplateRequest.Watermarks]?

    public override init() {
        super.init()
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
            map["AppId"] = self.appId!
        }
        if self.backgroundColor != nil {
            map["BackgroundColor"] = self.backgroundColor!
        }
        if self.backgrounds != nil {
            var tmp : [Any] = []
            for k in self.backgrounds! {
                tmp.append(k.toMap())
            }
            map["Backgrounds"] = tmp
        }
        if self.clockWidgets != nil {
            var tmp : [Any] = []
            for k in self.clockWidgets! {
                tmp.append(k.toMap())
            }
            map["ClockWidgets"] = tmp
        }
        if self.delayStopTime != nil {
            map["DelayStopTime"] = self.delayStopTime!
        }
        if self.enableM3u8DateTime != nil {
            map["EnableM3u8DateTime"] = self.enableM3u8DateTime!
        }
        if self.fileSplitInterval != nil {
            map["FileSplitInterval"] = self.fileSplitInterval!
        }
        if self.formats != nil {
            map["Formats"] = self.formats!
        }
        if self.httpCallbackUrl != nil {
            map["HttpCallbackUrl"] = self.httpCallbackUrl!
        }
        if self.layoutIds != nil {
            map["LayoutIds"] = self.layoutIds!
        }
        if self.mediaEncode != nil {
            map["MediaEncode"] = self.mediaEncode!
        }
        if self.mnsQueue != nil {
            map["MnsQueue"] = self.mnsQueue!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucket != nil {
            map["OssBucket"] = self.ossBucket!
        }
        if self.ossEndpoint != nil {
            map["OssEndpoint"] = self.ossEndpoint!
        }
        if self.ossFilePrefix != nil {
            map["OssFilePrefix"] = self.ossFilePrefix!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.taskProfile != nil {
            map["TaskProfile"] = self.taskProfile!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.watermarks != nil {
            var tmp : [Any] = []
            for k in self.watermarks! {
                tmp.append(k.toMap())
            }
            map["Watermarks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BackgroundColor") {
            self.backgroundColor = dict["BackgroundColor"] as! Int32
        }
        if dict.keys.contains("Backgrounds") {
            self.backgrounds = dict["Backgrounds"] as! [UpdateRecordTemplateRequest.Backgrounds]
        }
        if dict.keys.contains("ClockWidgets") {
            self.clockWidgets = dict["ClockWidgets"] as! [UpdateRecordTemplateRequest.ClockWidgets]
        }
        if dict.keys.contains("DelayStopTime") {
            self.delayStopTime = dict["DelayStopTime"] as! Int32
        }
        if dict.keys.contains("EnableM3u8DateTime") {
            self.enableM3u8DateTime = dict["EnableM3u8DateTime"] as! Bool
        }
        if dict.keys.contains("FileSplitInterval") {
            self.fileSplitInterval = dict["FileSplitInterval"] as! Int32
        }
        if dict.keys.contains("Formats") {
            self.formats = dict["Formats"] as! [String]
        }
        if dict.keys.contains("HttpCallbackUrl") {
            self.httpCallbackUrl = dict["HttpCallbackUrl"] as! String
        }
        if dict.keys.contains("LayoutIds") {
            self.layoutIds = dict["LayoutIds"] as! [Int64]
        }
        if dict.keys.contains("MediaEncode") {
            self.mediaEncode = dict["MediaEncode"] as! Int32
        }
        if dict.keys.contains("MnsQueue") {
            self.mnsQueue = dict["MnsQueue"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucket") {
            self.ossBucket = dict["OssBucket"] as! String
        }
        if dict.keys.contains("OssEndpoint") {
            self.ossEndpoint = dict["OssEndpoint"] as! String
        }
        if dict.keys.contains("OssFilePrefix") {
            self.ossFilePrefix = dict["OssFilePrefix"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("TaskProfile") {
            self.taskProfile = dict["TaskProfile"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Watermarks") {
            self.watermarks = dict["Watermarks"] as! [UpdateRecordTemplateRequest.Watermarks]
        }
    }
}

public class UpdateRecordTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class UpdateRecordTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRecordTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateRecordTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
