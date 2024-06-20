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
            var tmp : [AddRecordTemplateRequest.Backgrounds] = []
            for v in dict["Backgrounds"] as! [Any] {
                var model = AddRecordTemplateRequest.Backgrounds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.backgrounds = tmp
        }
        if dict.keys.contains("ClockWidgets") {
            var tmp : [AddRecordTemplateRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = AddRecordTemplateRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
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
            var tmp : [AddRecordTemplateRequest.Watermarks] = []
            for v in dict["Watermarks"] as! [Any] {
                var model = AddRecordTemplateRequest.Watermarks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.watermarks = tmp
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

public class CreateAppStreamingOutTemplateRequest : Tea.TeaModel {
    public class StreamingOutTemplate : Tea.TeaModel {
        public var layoutIds: [String]?

        public var mediaEncode: Int32?

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
            if self.layoutIds != nil {
                map["LayoutIds"] = self.layoutIds!
            }
            if self.mediaEncode != nil {
                map["MediaEncode"] = self.mediaEncode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LayoutIds") {
                self.layoutIds = dict["LayoutIds"] as! [String]
            }
            if dict.keys.contains("MediaEncode") {
                self.mediaEncode = dict["MediaEncode"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var appId: String?

    public var streamingOutTemplate: CreateAppStreamingOutTemplateRequest.StreamingOutTemplate?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.streamingOutTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.streamingOutTemplate != nil {
            map["StreamingOutTemplate"] = self.streamingOutTemplate?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("StreamingOutTemplate") {
            var model = CreateAppStreamingOutTemplateRequest.StreamingOutTemplate()
            model.fromMap(dict["StreamingOutTemplate"] as! [String: Any])
            self.streamingOutTemplate = model
        }
    }
}

public class CreateAppStreamingOutTemplateShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var streamingOutTemplateShrink: String?

    public override init() {
        super.init()
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
        if self.streamingOutTemplateShrink != nil {
            map["StreamingOutTemplate"] = self.streamingOutTemplateShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("StreamingOutTemplate") {
            self.streamingOutTemplateShrink = dict["StreamingOutTemplate"] as! String
        }
    }
}

public class CreateAppStreamingOutTemplateResponseBody : Tea.TeaModel {
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

public class CreateAppStreamingOutTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppStreamingOutTemplateResponseBody?

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
            var model = CreateAppStreamingOutTemplateResponseBody()
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
            var tmp : [CreateMPULayoutRequest.Panes] = []
            for v in dict["Panes"] as! [Any] {
                var model = CreateMPULayoutRequest.Panes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.panes = tmp
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

public class DeleteAppStreamingOutTemplateRequest : Tea.TeaModel {
    public class StreamingOutTemplate : Tea.TeaModel {
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
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var appId: String?

    public var streamingOutTemplate: DeleteAppStreamingOutTemplateRequest.StreamingOutTemplate?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.streamingOutTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.streamingOutTemplate != nil {
            map["StreamingOutTemplate"] = self.streamingOutTemplate?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("StreamingOutTemplate") {
            var model = DeleteAppStreamingOutTemplateRequest.StreamingOutTemplate()
            model.fromMap(dict["StreamingOutTemplate"] as! [String: Any])
            self.streamingOutTemplate = model
        }
    }
}

public class DeleteAppStreamingOutTemplateShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var streamingOutTemplateShrink: String?

    public override init() {
        super.init()
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
        if self.streamingOutTemplateShrink != nil {
            map["StreamingOutTemplate"] = self.streamingOutTemplateShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("StreamingOutTemplate") {
            self.streamingOutTemplateShrink = dict["StreamingOutTemplate"] as! String
        }
    }
}

public class DeleteAppStreamingOutTemplateResponseBody : Tea.TeaModel {
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

public class DeleteAppStreamingOutTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppStreamingOutTemplateResponseBody?

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
            var model = DeleteAppStreamingOutTemplateResponseBody()
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

public class DescribeAppStreamingOutTemplatesRequest : Tea.TeaModel {
    public class Condition : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var appId: String?

    public var condition: DescribeAppStreamingOutTemplatesRequest.Condition?

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
        try self.condition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.condition != nil {
            map["Condition"] = self.condition?.toMap()
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
        if dict.keys.contains("Condition") {
            var model = DescribeAppStreamingOutTemplatesRequest.Condition()
            model.fromMap(dict["Condition"] as! [String: Any])
            self.condition = model
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAppStreamingOutTemplatesShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var conditionShrink: String?

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
        if self.conditionShrink != nil {
            map["Condition"] = self.conditionShrink!
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
        if dict.keys.contains("Condition") {
            self.conditionShrink = dict["Condition"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class DescribeAppStreamingOutTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public var createTime: String?

        public var layoutIds: [String]?

        public var mediaEncode: Int32?

        public var name: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.layoutIds != nil {
                map["LayoutIds"] = self.layoutIds!
            }
            if self.mediaEncode != nil {
                map["MediaEncode"] = self.mediaEncode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("LayoutIds") {
                self.layoutIds = dict["LayoutIds"] as! [String]
            }
            if dict.keys.contains("MediaEncode") {
                self.mediaEncode = dict["MediaEncode"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var requestId: String?

    public var templates: [DescribeAppStreamingOutTemplatesResponseBody.Templates]?

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
            var tmp : [DescribeAppStreamingOutTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = DescribeAppStreamingOutTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int64
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int64
        }
    }
}

public class DescribeAppStreamingOutTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAppStreamingOutTemplatesResponseBody?

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
            var model = DescribeAppStreamingOutTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAppsRequest : Tea.TeaModel {
    public var appId: String?

    public var appVersion: String?

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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
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
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
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

            public var serviceAreas: DescribeAppsResponseBody.AppList.App.ServiceAreas?

            public var status: Int32?

            public var version: String?

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
                if self.serviceAreas != nil {
                    map["ServiceAreas"] = self.serviceAreas?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
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
                if dict.keys.contains("ServiceAreas") {
                    var model = DescribeAppsResponseBody.AppList.App.ServiceAreas()
                    model.fromMap(dict["ServiceAreas"] as! [String: Any])
                    self.serviceAreas = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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
                var tmp : [DescribeAppsResponseBody.AppList.App] = []
                for v in dict["App"] as! [Any] {
                    var model = DescribeAppsResponseBody.AppList.App()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.app = tmp
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
            var tmp : [DescribeAutoLiveStreamRuleResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = DescribeAutoLiveStreamRuleResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
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

public class DescribeCallRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var extDataType: String?

    public var queryExpInfo: Bool?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.extDataType != nil {
            map["ExtDataType"] = self.extDataType!
        }
        if self.queryExpInfo != nil {
            map["QueryExpInfo"] = self.queryExpInfo!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("ExtDataType") {
            self.extDataType = dict["ExtDataType"] as! String
        }
        if dict.keys.contains("QueryExpInfo") {
            self.queryExpInfo = dict["QueryExpInfo"] as! Bool
        }
    }
}

public class DescribeCallResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public class UserDetailList : Tea.TeaModel {
        public class DurMetricStatData : Tea.TeaModel {
            public var pubAudio: Int64?

            public var pubVideo1080: Int64?

            public var pubVideo360: Int64?

            public var pubVideo720: Int64?

            public var pubVideoScreenShare: Int64?

            public var subAudio: Int64?

            public var subVideo1080: Int64?

            public var subVideo360: Int64?

            public var subVideo720: Int64?

            public var subVideoScreenShare: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.pubAudio != nil {
                    map["PubAudio"] = self.pubAudio!
                }
                if self.pubVideo1080 != nil {
                    map["PubVideo1080"] = self.pubVideo1080!
                }
                if self.pubVideo360 != nil {
                    map["PubVideo360"] = self.pubVideo360!
                }
                if self.pubVideo720 != nil {
                    map["PubVideo720"] = self.pubVideo720!
                }
                if self.pubVideoScreenShare != nil {
                    map["PubVideoScreenShare"] = self.pubVideoScreenShare!
                }
                if self.subAudio != nil {
                    map["SubAudio"] = self.subAudio!
                }
                if self.subVideo1080 != nil {
                    map["SubVideo1080"] = self.subVideo1080!
                }
                if self.subVideo360 != nil {
                    map["SubVideo360"] = self.subVideo360!
                }
                if self.subVideo720 != nil {
                    map["SubVideo720"] = self.subVideo720!
                }
                if self.subVideoScreenShare != nil {
                    map["SubVideoScreenShare"] = self.subVideoScreenShare!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PubAudio") {
                    self.pubAudio = dict["PubAudio"] as! Int64
                }
                if dict.keys.contains("PubVideo1080") {
                    self.pubVideo1080 = dict["PubVideo1080"] as! Int64
                }
                if dict.keys.contains("PubVideo360") {
                    self.pubVideo360 = dict["PubVideo360"] as! Int64
                }
                if dict.keys.contains("PubVideo720") {
                    self.pubVideo720 = dict["PubVideo720"] as! Int64
                }
                if dict.keys.contains("PubVideoScreenShare") {
                    self.pubVideoScreenShare = dict["PubVideoScreenShare"] as! Int64
                }
                if dict.keys.contains("SubAudio") {
                    self.subAudio = dict["SubAudio"] as! Int64
                }
                if dict.keys.contains("SubVideo1080") {
                    self.subVideo1080 = dict["SubVideo1080"] as! Int64
                }
                if dict.keys.contains("SubVideo360") {
                    self.subVideo360 = dict["SubVideo360"] as! Int64
                }
                if dict.keys.contains("SubVideo720") {
                    self.subVideo720 = dict["SubVideo720"] as! Int64
                }
                if dict.keys.contains("SubVideoScreenShare") {
                    self.subVideoScreenShare = dict["SubVideoScreenShare"] as! Int64
                }
            }
        }
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var callExp: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var durMetricStatData: DescribeCallResponseBody.UserDetailList.DurMetricStatData?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeCallResponseBody.UserDetailList.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.durMetricStatData?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callExp != nil {
                map["CallExp"] = self.callExp!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.durMetricStatData != nil {
                map["DurMetricStatData"] = self.durMetricStatData?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallExp") {
                self.callExp = dict["CallExp"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("DurMetricStatData") {
                var model = DescribeCallResponseBody.UserDetailList.DurMetricStatData()
                model.fromMap(dict["DurMetricStatData"] as! [String: Any])
                self.durMetricStatData = model
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") {
                var tmp : [DescribeCallResponseBody.UserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeCallResponseBody.UserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var callInfo: DescribeCallResponseBody.CallInfo?

    public var requestId: String?

    public var userDetailList: [DescribeCallResponseBody.UserDetailList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userDetailList != nil {
            var tmp : [Any] = []
            for k in self.userDetailList! {
                tmp.append(k.toMap())
            }
            map["UserDetailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") {
            var model = DescribeCallResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserDetailList") {
            var tmp : [DescribeCallResponseBody.UserDetailList] = []
            for v in dict["UserDetailList"] as! [Any] {
                var model = DescribeCallResponseBody.UserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userDetailList = tmp
        }
    }
}

public class DescribeCallResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallResponseBody?

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
            var model = DescribeCallResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCallListRequest : Tea.TeaModel {
    public var appId: String?

    public var callStatus: String?

    public var channelId: String?

    public var endTs: Int64?

    public var orderBy: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var queryMode: String?

    public var startTs: Int64?

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
        if self.callStatus != nil {
            map["CallStatus"] = self.callStatus!
        }
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
        }
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryMode != nil {
            map["QueryMode"] = self.queryMode!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
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
        if dict.keys.contains("CallStatus") {
            self.callStatus = dict["CallStatus"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("EndTs") {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryMode") {
            self.queryMode = dict["QueryMode"] as! String
        }
        if dict.keys.contains("StartTs") {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeCallListResponseBody : Tea.TeaModel {
    public class CallList : Tea.TeaModel {
        public var appId: String?

        public var badExpUserCnt: Int32?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var userCnt: Int32?

        public override init() {
            super.init()
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
            if self.badExpUserCnt != nil {
                map["BadExpUserCnt"] = self.badExpUserCnt!
            }
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.userCnt != nil {
                map["UserCnt"] = self.userCnt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("BadExpUserCnt") {
                self.badExpUserCnt = dict["BadExpUserCnt"] as! Int32
            }
            if dict.keys.contains("CallStatus") {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("UserCnt") {
                self.userCnt = dict["UserCnt"] as! Int32
            }
        }
    }
    public var callList: [DescribeCallListResponseBody.CallList]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCnt: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callList != nil {
            var tmp : [Any] = []
            for k in self.callList! {
                tmp.append(k.toMap())
            }
            map["CallList"] = tmp
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
        if dict.keys.contains("CallList") {
            var tmp : [DescribeCallListResponseBody.CallList] = []
            for v in dict["CallList"] as! [Any] {
                var model = DescribeCallListResponseBody.CallList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.callList = tmp
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCnt") {
            self.totalCnt = dict["TotalCnt"] as! Int32
        }
    }
}

public class DescribeCallListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCallListResponseBody?

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
            var model = DescribeCallListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
    }
}

public class DescribeChannelResponseBody : Tea.TeaModel {
    public class Channel : Tea.TeaModel {
        public var channelId: String?

        public var startTime: Int64?

        public override init() {
            super.init()
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
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var channel: DescribeChannelResponseBody.Channel?

    public var channelExist: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.channel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channel != nil {
            map["Channel"] = self.channel?.toMap()
        }
        if self.channelExist != nil {
            map["ChannelExist"] = self.channelExist!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Channel") {
            var model = DescribeChannelResponseBody.Channel()
            model.fromMap(dict["Channel"] as! [String: Any])
            self.channel = model
        }
        if dict.keys.contains("ChannelExist") {
            self.channelExist = dict["ChannelExist"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelResponseBody?

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
            var model = DescribeChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelAllUsersRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
    }
}

public class DescribeChannelAllUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var channelExist: Bool?

    public var requestId: String?

    public var users: [DescribeChannelAllUsersResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelExist != nil {
            map["ChannelExist"] = self.channelExist!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelExist") {
            self.channelExist = dict["ChannelExist"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var tmp : [DescribeChannelAllUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = DescribeChannelAllUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class DescribeChannelAllUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelAllUsersResponseBody?

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
            var model = DescribeChannelAllUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelAreaDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var parentArea: String?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.parentArea != nil {
            map["ParentArea"] = self.parentArea!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("ParentArea") {
            self.parentArea = dict["ParentArea"] as! String
        }
    }
}

public class DescribeChannelAreaDistributionStatDataResponseBody : Tea.TeaModel {
    public class AreaStatList : Tea.TeaModel {
        public var areaName: String?

        public var callUserCount: Int32?

        public var highQualityTransmissionRate: String?

        public var pubUserCount: Int32?

        public var subUserCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaName != nil {
                map["AreaName"] = self.areaName!
            }
            if self.callUserCount != nil {
                map["CallUserCount"] = self.callUserCount!
            }
            if self.highQualityTransmissionRate != nil {
                map["HighQualityTransmissionRate"] = self.highQualityTransmissionRate!
            }
            if self.pubUserCount != nil {
                map["PubUserCount"] = self.pubUserCount!
            }
            if self.subUserCount != nil {
                map["SubUserCount"] = self.subUserCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AreaName") {
                self.areaName = dict["AreaName"] as! String
            }
            if dict.keys.contains("CallUserCount") {
                self.callUserCount = dict["CallUserCount"] as! Int32
            }
            if dict.keys.contains("HighQualityTransmissionRate") {
                self.highQualityTransmissionRate = dict["HighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("PubUserCount") {
                self.pubUserCount = dict["PubUserCount"] as! Int32
            }
            if dict.keys.contains("SubUserCount") {
                self.subUserCount = dict["SubUserCount"] as! Int32
            }
        }
    }
    public var areaStatList: [DescribeChannelAreaDistributionStatDataResponseBody.AreaStatList]?

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
        if self.areaStatList != nil {
            var tmp : [Any] = []
            for k in self.areaStatList! {
                tmp.append(k.toMap())
            }
            map["AreaStatList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AreaStatList") {
            var tmp : [DescribeChannelAreaDistributionStatDataResponseBody.AreaStatList] = []
            for v in dict["AreaStatList"] as! [Any] {
                var model = DescribeChannelAreaDistributionStatDataResponseBody.AreaStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.areaStatList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelAreaDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelAreaDistributionStatDataResponseBody?

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
            var model = DescribeChannelAreaDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("StatDim") {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeChannelDistributionStatDataResponseBody : Tea.TeaModel {
    public class StatList : Tea.TeaModel {
        public var callUserCount: Int32?

        public var callUserRatio: String?

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
            if self.callUserCount != nil {
                map["CallUserCount"] = self.callUserCount!
            }
            if self.callUserRatio != nil {
                map["CallUserRatio"] = self.callUserRatio!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallUserCount") {
                self.callUserCount = dict["CallUserCount"] as! Int32
            }
            if dict.keys.contains("CallUserRatio") {
                self.callUserRatio = dict["CallUserRatio"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var requestId: String?

    public var statList: [DescribeChannelDistributionStatDataResponseBody.StatList]?

    public override init() {
        super.init()
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
        if self.statList != nil {
            var tmp : [Any] = []
            for k in self.statList! {
                tmp.append(k.toMap())
            }
            map["StatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatList") {
            var tmp : [DescribeChannelDistributionStatDataResponseBody.StatList] = []
            for v in dict["StatList"] as! [Any] {
                var model = DescribeChannelDistributionStatDataResponseBody.StatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statList = tmp
        }
    }
}

public class DescribeChannelDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelDistributionStatDataResponseBody?

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
            var model = DescribeChannelDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelOverallDataResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public class MetricDatas : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeChannelOverallDataResponseBody.MetricDatas.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeChannelOverallDataResponseBody.MetricDatas.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeChannelOverallDataResponseBody.MetricDatas.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class OverallData : Tea.TeaModel {
        public var connAvgTime: Double?

        public var fiveSecJoinRate: Double?

        public var totalAudioStuckRate: Double?

        public var totalVideoStuckRate: Double?

        public var totalVideoVagueRate: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAvgTime != nil {
                map["ConnAvgTime"] = self.connAvgTime!
            }
            if self.fiveSecJoinRate != nil {
                map["FiveSecJoinRate"] = self.fiveSecJoinRate!
            }
            if self.totalAudioStuckRate != nil {
                map["TotalAudioStuckRate"] = self.totalAudioStuckRate!
            }
            if self.totalVideoStuckRate != nil {
                map["TotalVideoStuckRate"] = self.totalVideoStuckRate!
            }
            if self.totalVideoVagueRate != nil {
                map["TotalVideoVagueRate"] = self.totalVideoVagueRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAvgTime") {
                self.connAvgTime = dict["ConnAvgTime"] as! Double
            }
            if dict.keys.contains("FiveSecJoinRate") {
                self.fiveSecJoinRate = dict["FiveSecJoinRate"] as! Double
            }
            if dict.keys.contains("TotalAudioStuckRate") {
                self.totalAudioStuckRate = dict["TotalAudioStuckRate"] as! Double
            }
            if dict.keys.contains("TotalVideoStuckRate") {
                self.totalVideoStuckRate = dict["TotalVideoStuckRate"] as! Double
            }
            if dict.keys.contains("TotalVideoVagueRate") {
                self.totalVideoVagueRate = dict["TotalVideoVagueRate"] as! Double
            }
        }
    }
    public var callInfo: DescribeChannelOverallDataResponseBody.CallInfo?

    public var metricDatas: [DescribeChannelOverallDataResponseBody.MetricDatas]?

    public var overallData: DescribeChannelOverallDataResponseBody.OverallData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
        try self.overallData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.metricDatas != nil {
            var tmp : [Any] = []
            for k in self.metricDatas! {
                tmp.append(k.toMap())
            }
            map["MetricDatas"] = tmp
        }
        if self.overallData != nil {
            map["OverallData"] = self.overallData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") {
            var model = DescribeChannelOverallDataResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("MetricDatas") {
            var tmp : [DescribeChannelOverallDataResponseBody.MetricDatas] = []
            for v in dict["MetricDatas"] as! [Any] {
                var model = DescribeChannelOverallDataResponseBody.MetricDatas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metricDatas = tmp
        }
        if dict.keys.contains("OverallData") {
            var model = DescribeChannelOverallDataResponseBody.OverallData()
            model.fromMap(dict["OverallData"] as! [String: Any])
            self.overallData = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelOverallDataResponseBody?

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
            var model = DescribeChannelOverallDataResponseBody()
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

public class DescribeChannelTopPubUserListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelTopPubUserListResponseBody : Tea.TeaModel {
    public class TopPubUserDetailList : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList.OnlinePeriods]?

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
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("OnlineDuration") {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") {
                var tmp : [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var topPubUserDetailList: [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList]?

    public override init() {
        super.init()
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
        if self.topPubUserDetailList != nil {
            var tmp : [Any] = []
            for k in self.topPubUserDetailList! {
                tmp.append(k.toMap())
            }
            map["TopPubUserDetailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TopPubUserDetailList") {
            var tmp : [DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList] = []
            for v in dict["TopPubUserDetailList"] as! [Any] {
                var model = DescribeChannelTopPubUserListResponseBody.TopPubUserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.topPubUserDetailList = tmp
        }
    }
}

public class DescribeChannelTopPubUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelTopPubUserListResponseBody?

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
            var model = DescribeChannelTopPubUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelUserRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

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
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeChannelUserResponseBody : Tea.TeaModel {
    public class Sessions : Tea.TeaModel {
        public var joined: Int64?

        public var sessionId: String?

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
            if self.joined != nil {
                map["Joined"] = self.joined!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Joined") {
                self.joined = dict["Joined"] as! Int64
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var channelExist: Bool?

    public var inChannel: Bool?

    public var requestId: String?

    public var sessions: [DescribeChannelUserResponseBody.Sessions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelExist != nil {
            map["ChannelExist"] = self.channelExist!
        }
        if self.inChannel != nil {
            map["InChannel"] = self.inChannel!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessions != nil {
            var tmp : [Any] = []
            for k in self.sessions! {
                tmp.append(k.toMap())
            }
            map["Sessions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChannelExist") {
            self.channelExist = dict["ChannelExist"] as! Bool
        }
        if dict.keys.contains("InChannel") {
            self.inChannel = dict["InChannel"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sessions") {
            var tmp : [DescribeChannelUserResponseBody.Sessions] = []
            for v in dict["Sessions"] as! [Any] {
                var model = DescribeChannelUserResponseBody.Sessions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sessions = tmp
        }
    }
}

public class DescribeChannelUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelUserResponseBody?

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
            var model = DescribeChannelUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeChannelUserMetricsRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
    }
}

public class DescribeChannelUserMetricsResponseBody : Tea.TeaModel {
    public class MetricDatas : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeChannelUserMetricsResponseBody.MetricDatas.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeChannelUserMetricsResponseBody.MetricDatas.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeChannelUserMetricsResponseBody.MetricDatas.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class OverallData : Tea.TeaModel {
        public var totalBadExpNum: Int64?

        public var totalJoinFailNum: Int64?

        public var totalPubUserNum: Int64?

        public var totalSubUserNum: Int64?

        public var totalUserNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalBadExpNum != nil {
                map["TotalBadExpNum"] = self.totalBadExpNum!
            }
            if self.totalJoinFailNum != nil {
                map["TotalJoinFailNum"] = self.totalJoinFailNum!
            }
            if self.totalPubUserNum != nil {
                map["TotalPubUserNum"] = self.totalPubUserNum!
            }
            if self.totalSubUserNum != nil {
                map["TotalSubUserNum"] = self.totalSubUserNum!
            }
            if self.totalUserNum != nil {
                map["TotalUserNum"] = self.totalUserNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalBadExpNum") {
                self.totalBadExpNum = dict["TotalBadExpNum"] as! Int64
            }
            if dict.keys.contains("TotalJoinFailNum") {
                self.totalJoinFailNum = dict["TotalJoinFailNum"] as! Int64
            }
            if dict.keys.contains("TotalPubUserNum") {
                self.totalPubUserNum = dict["TotalPubUserNum"] as! Int64
            }
            if dict.keys.contains("TotalSubUserNum") {
                self.totalSubUserNum = dict["TotalSubUserNum"] as! Int64
            }
            if dict.keys.contains("TotalUserNum") {
                self.totalUserNum = dict["TotalUserNum"] as! Int64
            }
        }
    }
    public var metricDatas: [DescribeChannelUserMetricsResponseBody.MetricDatas]?

    public var overallData: DescribeChannelUserMetricsResponseBody.OverallData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.overallData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricDatas != nil {
            var tmp : [Any] = []
            for k in self.metricDatas! {
                tmp.append(k.toMap())
            }
            map["MetricDatas"] = tmp
        }
        if self.overallData != nil {
            map["OverallData"] = self.overallData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricDatas") {
            var tmp : [DescribeChannelUserMetricsResponseBody.MetricDatas] = []
            for v in dict["MetricDatas"] as! [Any] {
                var model = DescribeChannelUserMetricsResponseBody.MetricDatas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metricDatas = tmp
        }
        if dict.keys.contains("OverallData") {
            var model = DescribeChannelUserMetricsResponseBody.OverallData()
            model.fromMap(dict["OverallData"] as! [String: Any])
            self.overallData = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeChannelUserMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeChannelUserMetricsResponseBody?

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
            var model = DescribeChannelUserMetricsResponseBody()
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

public class DescribeEndPointEventListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var userIdList: String?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("UserIdList") {
            self.userIdList = dict["UserIdList"] as! String
        }
    }
}

public class DescribeEndPointEventListResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class EventDataItems : Tea.TeaModel {
            public class EventList : Tea.TeaModel {
                public var eventName: String?

                public var eventType: String?

                public var ts: Int64?

                public var tsInMs: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventName != nil {
                        map["EventName"] = self.eventName!
                    }
                    if self.eventType != nil {
                        map["EventType"] = self.eventType!
                    }
                    if self.ts != nil {
                        map["Ts"] = self.ts!
                    }
                    if self.tsInMs != nil {
                        map["TsInMs"] = self.tsInMs!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventName") {
                        self.eventName = dict["EventName"] as! String
                    }
                    if dict.keys.contains("EventType") {
                        self.eventType = dict["EventType"] as! String
                    }
                    if dict.keys.contains("Ts") {
                        self.ts = dict["Ts"] as! Int64
                    }
                    if dict.keys.contains("TsInMs") {
                        self.tsInMs = dict["TsInMs"] as! String
                    }
                }
            }
            public var eventList: [DescribeEndPointEventListResponseBody.Nodes.EventDataItems.EventList]?

            public var ts: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventList != nil {
                    var tmp : [Any] = []
                    for k in self.eventList! {
                        tmp.append(k.toMap())
                    }
                    map["EventList"] = tmp
                }
                if self.ts != nil {
                    map["Ts"] = self.ts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventList") {
                    var tmp : [DescribeEndPointEventListResponseBody.Nodes.EventDataItems.EventList] = []
                    for v in dict["EventList"] as! [Any] {
                        var model = DescribeEndPointEventListResponseBody.Nodes.EventDataItems.EventList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.eventList = tmp
                }
                if dict.keys.contains("Ts") {
                    self.ts = dict["Ts"] as! Int64
                }
            }
        }
        public var eventDataItems: [DescribeEndPointEventListResponseBody.Nodes.EventDataItems]?

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
            if self.eventDataItems != nil {
                var tmp : [Any] = []
                for k in self.eventDataItems! {
                    tmp.append(k.toMap())
                }
                map["EventDataItems"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventDataItems") {
                var tmp : [DescribeEndPointEventListResponseBody.Nodes.EventDataItems] = []
                for v in dict["EventDataItems"] as! [Any] {
                    var model = DescribeEndPointEventListResponseBody.Nodes.EventDataItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.eventDataItems = tmp
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var nodes: [DescribeEndPointEventListResponseBody.Nodes]?

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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nodes") {
            var tmp : [DescribeEndPointEventListResponseBody.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = DescribeEndPointEventListResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEndPointEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndPointEventListResponseBody?

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
            var model = DescribeEndPointEventListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEndPointMetricDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var metrics: String?

    public var pubCallIdList: String?

    public var pubUserId: String?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
        }
        if self.pubCallIdList != nil {
            map["PubCallIdList"] = self.pubCallIdList!
        }
        if self.pubUserId != nil {
            map["PubUserId"] = self.pubUserId!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("Metrics") {
            self.metrics = dict["Metrics"] as! String
        }
        if dict.keys.contains("PubCallIdList") {
            self.pubCallIdList = dict["PubCallIdList"] as! String
        }
        if dict.keys.contains("PubUserId") {
            self.pubUserId = dict["PubUserId"] as! String
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DescribeEndPointMetricDataResponseBody : Tea.TeaModel {
    public class PubMetrics : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeEndPointMetricDataResponseBody.PubMetrics.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeEndPointMetricDataResponseBody.PubMetrics.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeEndPointMetricDataResponseBody.PubMetrics.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public class SubMetrics : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeEndPointMetricDataResponseBody.SubMetrics.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeEndPointMetricDataResponseBody.SubMetrics.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeEndPointMetricDataResponseBody.SubMetrics.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var pubMetrics: [DescribeEndPointMetricDataResponseBody.PubMetrics]?

    public var requestId: String?

    public var subMetrics: [DescribeEndPointMetricDataResponseBody.SubMetrics]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pubMetrics != nil {
            var tmp : [Any] = []
            for k in self.pubMetrics! {
                tmp.append(k.toMap())
            }
            map["PubMetrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subMetrics != nil {
            var tmp : [Any] = []
            for k in self.subMetrics! {
                tmp.append(k.toMap())
            }
            map["SubMetrics"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PubMetrics") {
            var tmp : [DescribeEndPointMetricDataResponseBody.PubMetrics] = []
            for v in dict["PubMetrics"] as! [Any] {
                var model = DescribeEndPointMetricDataResponseBody.PubMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pubMetrics = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubMetrics") {
            var tmp : [DescribeEndPointMetricDataResponseBody.SubMetrics] = []
            for v in dict["SubMetrics"] as! [Any] {
                var model = DescribeEndPointMetricDataResponseBody.SubMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subMetrics = tmp
        }
    }
}

public class DescribeEndPointMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndPointMetricDataResponseBody?

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
            var model = DescribeEndPointMetricDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisFactorDistributionStatRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var startTs: Int64?

    public override init() {
        super.init()
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
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("StartTs") {
            self.startTs = dict["StartTs"] as! Int64
        }
    }
}

public class DescribeFaultDiagnosisFactorDistributionStatResponseBody : Tea.TeaModel {
    public class StatList : Tea.TeaModel {
        public var factorId: String?

        public var userCount: Int32?

        public var userRatio: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.factorId != nil {
                map["FactorId"] = self.factorId!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.userRatio != nil {
                map["UserRatio"] = self.userRatio!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FactorId") {
                self.factorId = dict["FactorId"] as! String
            }
            if dict.keys.contains("UserCount") {
                self.userCount = dict["UserCount"] as! Int32
            }
            if dict.keys.contains("UserRatio") {
                self.userRatio = dict["UserRatio"] as! Double
            }
        }
    }
    public var requestId: String?

    public var statList: [DescribeFaultDiagnosisFactorDistributionStatResponseBody.StatList]?

    public override init() {
        super.init()
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
        if self.statList != nil {
            var tmp : [Any] = []
            for k in self.statList! {
                tmp.append(k.toMap())
            }
            map["StatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatList") {
            var tmp : [DescribeFaultDiagnosisFactorDistributionStatResponseBody.StatList] = []
            for v in dict["StatList"] as! [Any] {
                var model = DescribeFaultDiagnosisFactorDistributionStatResponseBody.StatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.statList = tmp
        }
    }
}

public class DescribeFaultDiagnosisFactorDistributionStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisFactorDistributionStatResponseBody?

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
            var model = DescribeFaultDiagnosisFactorDistributionStatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endTs: Int64?

    public var startTs: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndTs") {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("StartTs") {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("StatDim") {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeFaultDiagnosisOverallDataResponseBody : Tea.TeaModel {
    public class MetricData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var ext: [String: Any]?

            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ext != nil {
                    map["Ext"] = self.ext!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Ext") {
                    self.ext = dict["Ext"] as! [String: Any]
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeFaultDiagnosisOverallDataResponseBody.MetricData.Nodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeFaultDiagnosisOverallDataResponseBody.MetricData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeFaultDiagnosisOverallDataResponseBody.MetricData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
        }
    }
    public class OverallData : Tea.TeaModel {
        public var faultUserCount: Int32?

        public var faultUserRatio: Double?

        public var totalUserCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faultUserCount != nil {
                map["FaultUserCount"] = self.faultUserCount!
            }
            if self.faultUserRatio != nil {
                map["FaultUserRatio"] = self.faultUserRatio!
            }
            if self.totalUserCount != nil {
                map["TotalUserCount"] = self.totalUserCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaultUserCount") {
                self.faultUserCount = dict["FaultUserCount"] as! Int32
            }
            if dict.keys.contains("FaultUserRatio") {
                self.faultUserRatio = dict["FaultUserRatio"] as! Double
            }
            if dict.keys.contains("TotalUserCount") {
                self.totalUserCount = dict["TotalUserCount"] as! Int32
            }
        }
    }
    public var metricData: DescribeFaultDiagnosisOverallDataResponseBody.MetricData?

    public var overallData: DescribeFaultDiagnosisOverallDataResponseBody.OverallData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metricData?.validate()
        try self.overallData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricData != nil {
            map["MetricData"] = self.metricData?.toMap()
        }
        if self.overallData != nil {
            map["OverallData"] = self.overallData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricData") {
            var model = DescribeFaultDiagnosisOverallDataResponseBody.MetricData()
            model.fromMap(dict["MetricData"] as! [String: Any])
            self.metricData = model
        }
        if dict.keys.contains("OverallData") {
            var model = DescribeFaultDiagnosisOverallDataResponseBody.OverallData()
            model.fromMap(dict["OverallData"] as! [String: Any])
            self.overallData = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFaultDiagnosisOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisOverallDataResponseBody?

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
            var model = DescribeFaultDiagnosisOverallDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisUserDetailRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var faultType: String?

    public var queryCallUserInfo: Bool?

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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.faultType != nil {
            map["FaultType"] = self.faultType!
        }
        if self.queryCallUserInfo != nil {
            map["QueryCallUserInfo"] = self.queryCallUserInfo!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("FaultType") {
            self.faultType = dict["FaultType"] as! String
        }
        if dict.keys.contains("QueryCallUserInfo") {
            self.queryCallUserInfo = dict["QueryCallUserInfo"] as! Bool
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeFaultDiagnosisUserDetailResponseBody : Tea.TeaModel {
    public class CallInfo : Tea.TeaModel {
        public var appId: String?

        public var callStatus: String?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public override init() {
            super.init()
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
            if self.callStatus != nil {
                map["CallStatus"] = self.callStatus!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CallStatus") {
                self.callStatus = dict["CallStatus"] as! String
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
        }
    }
    public class FactorList : Tea.TeaModel {
        public class RelatedEventDatas : Tea.TeaModel {
            public class EventDataItems : Tea.TeaModel {
                public class EventList : Tea.TeaModel {
                    public var eventName: String?

                    public var eventType: String?

                    public var ts: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.eventName != nil {
                            map["EventName"] = self.eventName!
                        }
                        if self.eventType != nil {
                            map["EventType"] = self.eventType!
                        }
                        if self.ts != nil {
                            map["Ts"] = self.ts!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EventName") {
                            self.eventName = dict["EventName"] as! String
                        }
                        if dict.keys.contains("EventType") {
                            self.eventType = dict["EventType"] as! String
                        }
                        if dict.keys.contains("Ts") {
                            self.ts = dict["Ts"] as! Int64
                        }
                    }
                }
                public var eventList: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems.EventList]?

                public var ts: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.eventList != nil {
                        var tmp : [Any] = []
                        for k in self.eventList! {
                            tmp.append(k.toMap())
                        }
                        map["EventList"] = tmp
                    }
                    if self.ts != nil {
                        map["Ts"] = self.ts!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EventList") {
                        var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems.EventList] = []
                        for v in dict["EventList"] as! [Any] {
                            var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems.EventList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.eventList = tmp
                    }
                    if dict.keys.contains("Ts") {
                        self.ts = dict["Ts"] as! Int64
                    }
                }
            }
            public var eventDataItems: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems]?

            public var role: String?

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
                if self.eventDataItems != nil {
                    var tmp : [Any] = []
                    for k in self.eventDataItems! {
                        tmp.append(k.toMap())
                    }
                    map["EventDataItems"] = tmp
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EventDataItems") {
                    var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems] = []
                    for v in dict["EventDataItems"] as! [Any] {
                        var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas.EventDataItems()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.eventDataItems = tmp
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public class RelatedMetricDatas : Tea.TeaModel {
            public class Nodes : Tea.TeaModel {
                public var ext: [String: Any]?

                public var x: String?

                public var y: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ext != nil {
                        map["Ext"] = self.ext!
                    }
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ext") {
                        self.ext = dict["Ext"] as! [String: Any]
                    }
                    if dict.keys.contains("X") {
                        self.x = dict["X"] as! String
                    }
                    if dict.keys.contains("Y") {
                        self.y = dict["Y"] as! String
                    }
                }
            }
            public var nodes: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas.Nodes]?

            public var role: String?

            public var type: String?

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
                if self.nodes != nil {
                    var tmp : [Any] = []
                    for k in self.nodes! {
                        tmp.append(k.toMap())
                    }
                    map["Nodes"] = tmp
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Nodes") {
                    var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas.Nodes] = []
                    for v in dict["Nodes"] as! [Any] {
                        var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas.Nodes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nodes = tmp
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var factorId: String?

        public var faultSource: String?

        public var relatedEventDatas: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas]?

        public var relatedMetricDatas: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.factorId != nil {
                map["FactorId"] = self.factorId!
            }
            if self.faultSource != nil {
                map["FaultSource"] = self.faultSource!
            }
            if self.relatedEventDatas != nil {
                var tmp : [Any] = []
                for k in self.relatedEventDatas! {
                    tmp.append(k.toMap())
                }
                map["RelatedEventDatas"] = tmp
            }
            if self.relatedMetricDatas != nil {
                var tmp : [Any] = []
                for k in self.relatedMetricDatas! {
                    tmp.append(k.toMap())
                }
                map["RelatedMetricDatas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FactorId") {
                self.factorId = dict["FactorId"] as! String
            }
            if dict.keys.contains("FaultSource") {
                self.faultSource = dict["FaultSource"] as! String
            }
            if dict.keys.contains("RelatedEventDatas") {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas] = []
                for v in dict["RelatedEventDatas"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedEventDatas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedEventDatas = tmp
            }
            if dict.keys.contains("RelatedMetricDatas") {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas] = []
                for v in dict["RelatedMetricDatas"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList.RelatedMetricDatas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedMetricDatas = tmp
            }
        }
    }
    public class FaultMetricData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData.Nodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
        }
    }
    public class UserDetail : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribeFaultDiagnosisUserDetailResponseBody.UserDetail.OnlinePeriods]?

        public var os: String?

        public var sdkVersion: String?

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
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("OnlineDuration") {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") {
                var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.UserDetail.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserDetailResponseBody.UserDetail.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("SdkVersion") {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var callInfo: DescribeFaultDiagnosisUserDetailResponseBody.CallInfo?

    public var factorList: [DescribeFaultDiagnosisUserDetailResponseBody.FactorList]?

    public var faultMetricData: DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData?

    public var networkOperators: [String]?

    public var requestId: String?

    public var userDetail: DescribeFaultDiagnosisUserDetailResponseBody.UserDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.callInfo?.validate()
        try self.faultMetricData?.validate()
        try self.userDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callInfo != nil {
            map["CallInfo"] = self.callInfo?.toMap()
        }
        if self.factorList != nil {
            var tmp : [Any] = []
            for k in self.factorList! {
                tmp.append(k.toMap())
            }
            map["FactorList"] = tmp
        }
        if self.faultMetricData != nil {
            map["FaultMetricData"] = self.faultMetricData?.toMap()
        }
        if self.networkOperators != nil {
            map["NetworkOperators"] = self.networkOperators!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userDetail != nil {
            map["UserDetail"] = self.userDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallInfo") {
            var model = DescribeFaultDiagnosisUserDetailResponseBody.CallInfo()
            model.fromMap(dict["CallInfo"] as! [String: Any])
            self.callInfo = model
        }
        if dict.keys.contains("FactorList") {
            var tmp : [DescribeFaultDiagnosisUserDetailResponseBody.FactorList] = []
            for v in dict["FactorList"] as! [Any] {
                var model = DescribeFaultDiagnosisUserDetailResponseBody.FactorList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.factorList = tmp
        }
        if dict.keys.contains("FaultMetricData") {
            var model = DescribeFaultDiagnosisUserDetailResponseBody.FaultMetricData()
            model.fromMap(dict["FaultMetricData"] as! [String: Any])
            self.faultMetricData = model
        }
        if dict.keys.contains("NetworkOperators") {
            self.networkOperators = dict["NetworkOperators"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserDetail") {
            var model = DescribeFaultDiagnosisUserDetailResponseBody.UserDetail()
            model.fromMap(dict["UserDetail"] as! [String: Any])
            self.userDetail = model
        }
    }
}

public class DescribeFaultDiagnosisUserDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisUserDetailResponseBody?

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
            var model = DescribeFaultDiagnosisUserDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFaultDiagnosisUserListRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var endTs: Int64?

    public var faultTypes: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var startTs: Int64?

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
        if self.endTs != nil {
            map["EndTs"] = self.endTs!
        }
        if self.faultTypes != nil {
            map["FaultTypes"] = self.faultTypes!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTs != nil {
            map["StartTs"] = self.startTs!
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
        if dict.keys.contains("EndTs") {
            self.endTs = dict["EndTs"] as! Int64
        }
        if dict.keys.contains("FaultTypes") {
            self.faultTypes = dict["FaultTypes"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTs") {
            self.startTs = dict["StartTs"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeFaultDiagnosisUserListResponseBody : Tea.TeaModel {
    public class UserList : Tea.TeaModel {
        public class FaultList : Tea.TeaModel {
            public var faultType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faultType != nil {
                    map["FaultType"] = self.faultType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaultType") {
                    self.faultType = dict["FaultType"] as! String
                }
            }
        }
        public var channelCreatedTs: Int64?

        public var channelId: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var faultList: [DescribeFaultDiagnosisUserListResponseBody.UserList.FaultList]?

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
            if self.channelCreatedTs != nil {
                map["ChannelCreatedTs"] = self.channelCreatedTs!
            }
            if self.channelId != nil {
                map["ChannelId"] = self.channelId!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.faultList != nil {
                var tmp : [Any] = []
                for k in self.faultList! {
                    tmp.append(k.toMap())
                }
                map["FaultList"] = tmp
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChannelCreatedTs") {
                self.channelCreatedTs = dict["ChannelCreatedTs"] as! Int64
            }
            if dict.keys.contains("ChannelId") {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("FaultList") {
                var tmp : [DescribeFaultDiagnosisUserListResponseBody.UserList.FaultList] = []
                for v in dict["FaultList"] as! [Any] {
                    var model = DescribeFaultDiagnosisUserListResponseBody.UserList.FaultList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.faultList = tmp
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCnt: Int32?

    public var userList: [DescribeFaultDiagnosisUserListResponseBody.UserList]?

    public override init() {
        super.init()
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
        if self.userList != nil {
            var tmp : [Any] = []
            for k in self.userList! {
                tmp.append(k.toMap())
            }
            map["UserList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCnt") {
            self.totalCnt = dict["TotalCnt"] as! Int32
        }
        if dict.keys.contains("UserList") {
            var tmp : [DescribeFaultDiagnosisUserListResponseBody.UserList] = []
            for v in dict["UserList"] as! [Any] {
                var model = DescribeFaultDiagnosisUserListResponseBody.UserList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userList = tmp
        }
    }
}

public class DescribeFaultDiagnosisUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaultDiagnosisUserListResponseBody?

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
            var model = DescribeFaultDiagnosisUserListResponseBody()
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
                        var tmp : [DescribeMPULayoutInfoListResponseBody.Layouts.Layout.Panes.Panes] = []
                        for v in dict["Panes"] as! [Any] {
                            var model = DescribeMPULayoutInfoListResponseBody.Layouts.Layout.Panes.Panes()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.panes = tmp
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
                var tmp : [DescribeMPULayoutInfoListResponseBody.Layouts.Layout] = []
                for v in dict["Layout"] as! [Any] {
                    var model = DescribeMPULayoutInfoListResponseBody.Layouts.Layout()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.layout = tmp
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

public class DescribePubUserListBySubUserRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

    public var subUserId: String?

    public override init() {
        super.init()
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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
        }
        if self.subUserId != nil {
            map["SubUserId"] = self.subUserId!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("SubUserId") {
            self.subUserId = dict["SubUserId"] as! String
        }
    }
}

public class DescribePubUserListBySubUserResponseBody : Tea.TeaModel {
    public class PubUserDetailList : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var callIdList: [String]?

        public var clientType: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribePubUserListBySubUserResponseBody.PubUserDetailList.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public var userIdAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callIdList != nil {
                map["CallIdList"] = self.callIdList!
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userIdAlias != nil {
                map["UserIdAlias"] = self.userIdAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CallIdList") {
                self.callIdList = dict["CallIdList"] as! [String]
            }
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") {
                var tmp : [DescribePubUserListBySubUserResponseBody.PubUserDetailList.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribePubUserListBySubUserResponseBody.PubUserDetailList.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserIdAlias") {
                self.userIdAlias = dict["UserIdAlias"] as! String
            }
        }
    }
    public class SubUserDetail : Tea.TeaModel {
        public class OnlinePeriods : Tea.TeaModel {
            public var joinTs: Int64?

            public var leaveTs: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.joinTs != nil {
                    map["JoinTs"] = self.joinTs!
                }
                if self.leaveTs != nil {
                    map["LeaveTs"] = self.leaveTs!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JoinTs") {
                    self.joinTs = dict["JoinTs"] as! Int64
                }
                if dict.keys.contains("LeaveTs") {
                    self.leaveTs = dict["LeaveTs"] as! Int64
                }
            }
        }
        public var clientType: String?

        public var createdTs: Int64?

        public var destroyedTs: Int64?

        public var duration: Int64?

        public var location: String?

        public var network: String?

        public var networkList: [String]?

        public var onlineDuration: Int64?

        public var onlinePeriods: [DescribePubUserListBySubUserResponseBody.SubUserDetail.OnlinePeriods]?

        public var os: String?

        public var osList: [String]?

        public var roles: [String]?

        public var sdkVersion: String?

        public var sdkVersionList: [String]?

        public var userId: String?

        public var userIdAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createdTs != nil {
                map["CreatedTs"] = self.createdTs!
            }
            if self.destroyedTs != nil {
                map["DestroyedTs"] = self.destroyedTs!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.networkList != nil {
                map["NetworkList"] = self.networkList!
            }
            if self.onlineDuration != nil {
                map["OnlineDuration"] = self.onlineDuration!
            }
            if self.onlinePeriods != nil {
                var tmp : [Any] = []
                for k in self.onlinePeriods! {
                    tmp.append(k.toMap())
                }
                map["OnlinePeriods"] = tmp
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osList != nil {
                map["OsList"] = self.osList!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.sdkVersionList != nil {
                map["SdkVersionList"] = self.sdkVersionList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userIdAlias != nil {
                map["UserIdAlias"] = self.userIdAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientType") {
                self.clientType = dict["ClientType"] as! String
            }
            if dict.keys.contains("CreatedTs") {
                self.createdTs = dict["CreatedTs"] as! Int64
            }
            if dict.keys.contains("DestroyedTs") {
                self.destroyedTs = dict["DestroyedTs"] as! Int64
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Int64
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NetworkList") {
                self.networkList = dict["NetworkList"] as! [String]
            }
            if dict.keys.contains("OnlineDuration") {
                self.onlineDuration = dict["OnlineDuration"] as! Int64
            }
            if dict.keys.contains("OnlinePeriods") {
                var tmp : [DescribePubUserListBySubUserResponseBody.SubUserDetail.OnlinePeriods] = []
                for v in dict["OnlinePeriods"] as! [Any] {
                    var model = DescribePubUserListBySubUserResponseBody.SubUserDetail.OnlinePeriods()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.onlinePeriods = tmp
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsList") {
                self.osList = dict["OsList"] as! [String]
            }
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! [String]
            }
            if dict.keys.contains("SdkVersion") {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("SdkVersionList") {
                self.sdkVersionList = dict["SdkVersionList"] as! [String]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserIdAlias") {
                self.userIdAlias = dict["UserIdAlias"] as! String
            }
        }
    }
    public var callStatus: String?

    public var pubUserDetailList: [DescribePubUserListBySubUserResponseBody.PubUserDetailList]?

    public var requestId: String?

    public var subUserDetail: DescribePubUserListBySubUserResponseBody.SubUserDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.subUserDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callStatus != nil {
            map["CallStatus"] = self.callStatus!
        }
        if self.pubUserDetailList != nil {
            var tmp : [Any] = []
            for k in self.pubUserDetailList! {
                tmp.append(k.toMap())
            }
            map["PubUserDetailList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subUserDetail != nil {
            map["SubUserDetail"] = self.subUserDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CallStatus") {
            self.callStatus = dict["CallStatus"] as! String
        }
        if dict.keys.contains("PubUserDetailList") {
            var tmp : [DescribePubUserListBySubUserResponseBody.PubUserDetailList] = []
            for v in dict["PubUserDetailList"] as! [Any] {
                var model = DescribePubUserListBySubUserResponseBody.PubUserDetailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pubUserDetailList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubUserDetail") {
            var model = DescribePubUserListBySubUserResponseBody.SubUserDetail()
            model.fromMap(dict["SubUserDetail"] as! [String: Any])
            self.subUserDetail = model
        }
    }
}

public class DescribePubUserListBySubUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePubUserListBySubUserResponseBody?

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
            var model = DescribePubUserListBySubUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQoeMetricDataRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public var createdTs: Int64?

    public var destroyedTs: Int64?

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
        if self.createdTs != nil {
            map["CreatedTs"] = self.createdTs!
        }
        if self.destroyedTs != nil {
            map["DestroyedTs"] = self.destroyedTs!
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
        if dict.keys.contains("CreatedTs") {
            self.createdTs = dict["CreatedTs"] as! Int64
        }
        if dict.keys.contains("DestroyedTs") {
            self.destroyedTs = dict["DestroyedTs"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeQoeMetricDataResponseBody : Tea.TeaModel {
    public class AudioData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeQoeMetricDataResponseBody.AudioData.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeQoeMetricDataResponseBody.AudioData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeQoeMetricDataResponseBody.AudioData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public class VideoData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeQoeMetricDataResponseBody.VideoData.Nodes]?

        public var type: String?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeQoeMetricDataResponseBody.VideoData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeQoeMetricDataResponseBody.VideoData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var audioData: [DescribeQoeMetricDataResponseBody.AudioData]?

    public var requestId: String?

    public var videoData: [DescribeQoeMetricDataResponseBody.VideoData]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioData != nil {
            var tmp : [Any] = []
            for k in self.audioData! {
                tmp.append(k.toMap())
            }
            map["AudioData"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.videoData != nil {
            var tmp : [Any] = []
            for k in self.videoData! {
                tmp.append(k.toMap())
            }
            map["VideoData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AudioData") {
            var tmp : [DescribeQoeMetricDataResponseBody.AudioData] = []
            for v in dict["AudioData"] as! [Any] {
                var model = DescribeQoeMetricDataResponseBody.AudioData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.audioData = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VideoData") {
            var tmp : [DescribeQoeMetricDataResponseBody.VideoData] = []
            for v in dict["VideoData"] as! [Any] {
                var model = DescribeQoeMetricDataResponseBody.VideoData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.videoData = tmp
        }
    }
}

public class DescribeQoeMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQoeMetricDataResponseBody?

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
            var model = DescribeQoeMetricDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityAreaDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var parentArea: String?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.parentArea != nil {
            map["ParentArea"] = self.parentArea!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("ParentArea") {
            self.parentArea = dict["ParentArea"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class DescribeQualityAreaDistributionStatDataResponseBody : Tea.TeaModel {
    public class QualityStatDataList : Tea.TeaModel {
        public var audioDelay: Int64?

        public var audioHighQualityTransmissionRate: String?

        public var audioStuckRate: String?

        public var callDurationRatio: String?

        public var joinChannelSucFiveSecRate: String?

        public var joinChannelSucRate: String?

        public var name: String?

        public var videoDelay: Int64?

        public var videoFirstPicDuration: Int64?

        public var videoHighQualityTransmissionRate: String?

        public var videoStuckRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioDelay != nil {
                map["AudioDelay"] = self.audioDelay!
            }
            if self.audioHighQualityTransmissionRate != nil {
                map["AudioHighQualityTransmissionRate"] = self.audioHighQualityTransmissionRate!
            }
            if self.audioStuckRate != nil {
                map["AudioStuckRate"] = self.audioStuckRate!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.joinChannelSucFiveSecRate != nil {
                map["JoinChannelSucFiveSecRate"] = self.joinChannelSucFiveSecRate!
            }
            if self.joinChannelSucRate != nil {
                map["JoinChannelSucRate"] = self.joinChannelSucRate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.videoDelay != nil {
                map["VideoDelay"] = self.videoDelay!
            }
            if self.videoFirstPicDuration != nil {
                map["VideoFirstPicDuration"] = self.videoFirstPicDuration!
            }
            if self.videoHighQualityTransmissionRate != nil {
                map["VideoHighQualityTransmissionRate"] = self.videoHighQualityTransmissionRate!
            }
            if self.videoStuckRate != nil {
                map["VideoStuckRate"] = self.videoStuckRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDelay") {
                self.audioDelay = dict["AudioDelay"] as! Int64
            }
            if dict.keys.contains("AudioHighQualityTransmissionRate") {
                self.audioHighQualityTransmissionRate = dict["AudioHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("AudioStuckRate") {
                self.audioStuckRate = dict["AudioStuckRate"] as! String
            }
            if dict.keys.contains("CallDurationRatio") {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("JoinChannelSucFiveSecRate") {
                self.joinChannelSucFiveSecRate = dict["JoinChannelSucFiveSecRate"] as! String
            }
            if dict.keys.contains("JoinChannelSucRate") {
                self.joinChannelSucRate = dict["JoinChannelSucRate"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("VideoDelay") {
                self.videoDelay = dict["VideoDelay"] as! Int64
            }
            if dict.keys.contains("VideoFirstPicDuration") {
                self.videoFirstPicDuration = dict["VideoFirstPicDuration"] as! Int64
            }
            if dict.keys.contains("VideoHighQualityTransmissionRate") {
                self.videoHighQualityTransmissionRate = dict["VideoHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("VideoStuckRate") {
                self.videoStuckRate = dict["VideoStuckRate"] as! String
            }
        }
    }
    public var qualityStatDataList: [DescribeQualityAreaDistributionStatDataResponseBody.QualityStatDataList]?

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
        if self.qualityStatDataList != nil {
            var tmp : [Any] = []
            for k in self.qualityStatDataList! {
                tmp.append(k.toMap())
            }
            map["QualityStatDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityStatDataList") {
            var tmp : [DescribeQualityAreaDistributionStatDataResponseBody.QualityStatDataList] = []
            for v in dict["QualityStatDataList"] as! [Any] {
                var model = DescribeQualityAreaDistributionStatDataResponseBody.QualityStatDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityStatDataList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityAreaDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityAreaDistributionStatDataResponseBody?

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
            var model = DescribeQualityAreaDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("StatDim") {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeQualityDistributionStatDataResponseBody : Tea.TeaModel {
    public class QualityStatDataList : Tea.TeaModel {
        public var audioDelay: Int64?

        public var audioHighQualityTransmissionRate: String?

        public var audioStuckRate: String?

        public var callDurationRatio: String?

        public var joinChannelSucFiveSecRate: String?

        public var joinChannelSucRate: String?

        public var name: String?

        public var videoDelay: Int64?

        public var videoFirstPicDuration: Int64?

        public var videoHighQualityTransmissionRate: String?

        public var videoStuckRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioDelay != nil {
                map["AudioDelay"] = self.audioDelay!
            }
            if self.audioHighQualityTransmissionRate != nil {
                map["AudioHighQualityTransmissionRate"] = self.audioHighQualityTransmissionRate!
            }
            if self.audioStuckRate != nil {
                map["AudioStuckRate"] = self.audioStuckRate!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.joinChannelSucFiveSecRate != nil {
                map["JoinChannelSucFiveSecRate"] = self.joinChannelSucFiveSecRate!
            }
            if self.joinChannelSucRate != nil {
                map["JoinChannelSucRate"] = self.joinChannelSucRate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.videoDelay != nil {
                map["VideoDelay"] = self.videoDelay!
            }
            if self.videoFirstPicDuration != nil {
                map["VideoFirstPicDuration"] = self.videoFirstPicDuration!
            }
            if self.videoHighQualityTransmissionRate != nil {
                map["VideoHighQualityTransmissionRate"] = self.videoHighQualityTransmissionRate!
            }
            if self.videoStuckRate != nil {
                map["VideoStuckRate"] = self.videoStuckRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDelay") {
                self.audioDelay = dict["AudioDelay"] as! Int64
            }
            if dict.keys.contains("AudioHighQualityTransmissionRate") {
                self.audioHighQualityTransmissionRate = dict["AudioHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("AudioStuckRate") {
                self.audioStuckRate = dict["AudioStuckRate"] as! String
            }
            if dict.keys.contains("CallDurationRatio") {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("JoinChannelSucFiveSecRate") {
                self.joinChannelSucFiveSecRate = dict["JoinChannelSucFiveSecRate"] as! String
            }
            if dict.keys.contains("JoinChannelSucRate") {
                self.joinChannelSucRate = dict["JoinChannelSucRate"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("VideoDelay") {
                self.videoDelay = dict["VideoDelay"] as! Int64
            }
            if dict.keys.contains("VideoFirstPicDuration") {
                self.videoFirstPicDuration = dict["VideoFirstPicDuration"] as! Int64
            }
            if dict.keys.contains("VideoHighQualityTransmissionRate") {
                self.videoHighQualityTransmissionRate = dict["VideoHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("VideoStuckRate") {
                self.videoStuckRate = dict["VideoStuckRate"] as! String
            }
        }
    }
    public var qualityStatDataList: [DescribeQualityDistributionStatDataResponseBody.QualityStatDataList]?

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
        if self.qualityStatDataList != nil {
            var tmp : [Any] = []
            for k in self.qualityStatDataList! {
                tmp.append(k.toMap())
            }
            map["QualityStatDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityStatDataList") {
            var tmp : [DescribeQualityDistributionStatDataResponseBody.QualityStatDataList] = []
            for v in dict["QualityStatDataList"] as! [Any] {
                var model = DescribeQualityDistributionStatDataResponseBody.QualityStatDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityStatDataList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityDistributionStatDataResponseBody?

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
            var model = DescribeQualityDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityOsSdkVersionDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class DescribeQualityOsSdkVersionDistributionStatDataResponseBody : Tea.TeaModel {
    public class QualityOsSdkVersionStatDataList : Tea.TeaModel {
        public var audioDelay: Int64?

        public var audioHighQualityTransmissionRate: String?

        public var audioStuckRate: String?

        public var callDurationRatio: String?

        public var joinChannelSucFiveSecRate: String?

        public var joinChannelSucRate: String?

        public var name: String?

        public var os: String?

        public var videoDelay: Int64?

        public var videoFirstPicDuration: Int64?

        public var videoHighQualityTransmissionRate: String?

        public var videoStuckRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioDelay != nil {
                map["AudioDelay"] = self.audioDelay!
            }
            if self.audioHighQualityTransmissionRate != nil {
                map["AudioHighQualityTransmissionRate"] = self.audioHighQualityTransmissionRate!
            }
            if self.audioStuckRate != nil {
                map["AudioStuckRate"] = self.audioStuckRate!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.joinChannelSucFiveSecRate != nil {
                map["JoinChannelSucFiveSecRate"] = self.joinChannelSucFiveSecRate!
            }
            if self.joinChannelSucRate != nil {
                map["JoinChannelSucRate"] = self.joinChannelSucRate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.videoDelay != nil {
                map["VideoDelay"] = self.videoDelay!
            }
            if self.videoFirstPicDuration != nil {
                map["VideoFirstPicDuration"] = self.videoFirstPicDuration!
            }
            if self.videoHighQualityTransmissionRate != nil {
                map["VideoHighQualityTransmissionRate"] = self.videoHighQualityTransmissionRate!
            }
            if self.videoStuckRate != nil {
                map["VideoStuckRate"] = self.videoStuckRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioDelay") {
                self.audioDelay = dict["AudioDelay"] as! Int64
            }
            if dict.keys.contains("AudioHighQualityTransmissionRate") {
                self.audioHighQualityTransmissionRate = dict["AudioHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("AudioStuckRate") {
                self.audioStuckRate = dict["AudioStuckRate"] as! String
            }
            if dict.keys.contains("CallDurationRatio") {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("JoinChannelSucFiveSecRate") {
                self.joinChannelSucFiveSecRate = dict["JoinChannelSucFiveSecRate"] as! String
            }
            if dict.keys.contains("JoinChannelSucRate") {
                self.joinChannelSucRate = dict["JoinChannelSucRate"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("VideoDelay") {
                self.videoDelay = dict["VideoDelay"] as! Int64
            }
            if dict.keys.contains("VideoFirstPicDuration") {
                self.videoFirstPicDuration = dict["VideoFirstPicDuration"] as! Int64
            }
            if dict.keys.contains("VideoHighQualityTransmissionRate") {
                self.videoHighQualityTransmissionRate = dict["VideoHighQualityTransmissionRate"] as! String
            }
            if dict.keys.contains("VideoStuckRate") {
                self.videoStuckRate = dict["VideoStuckRate"] as! String
            }
        }
    }
    public var qualityOsSdkVersionStatDataList: [DescribeQualityOsSdkVersionDistributionStatDataResponseBody.QualityOsSdkVersionStatDataList]?

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
        if self.qualityOsSdkVersionStatDataList != nil {
            var tmp : [Any] = []
            for k in self.qualityOsSdkVersionStatDataList! {
                tmp.append(k.toMap())
            }
            map["QualityOsSdkVersionStatDataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityOsSdkVersionStatDataList") {
            var tmp : [DescribeQualityOsSdkVersionDistributionStatDataResponseBody.QualityOsSdkVersionStatDataList] = []
            for v in dict["QualityOsSdkVersionStatDataList"] as! [Any] {
                var model = DescribeQualityOsSdkVersionDistributionStatDataResponseBody.QualityOsSdkVersionStatDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityOsSdkVersionStatDataList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityOsSdkVersionDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityOsSdkVersionDistributionStatDataResponseBody?

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
            var model = DescribeQualityOsSdkVersionDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualityOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var types: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("Types") {
            self.types = dict["Types"] as! String
        }
    }
}

public class DescribeQualityOverallDataResponseBody : Tea.TeaModel {
    public class QualityOverallData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var average: String?

        public var nodes: [DescribeQualityOverallDataResponseBody.QualityOverallData.Nodes]?

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
            if self.average != nil {
                map["Average"] = self.average!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Average") {
                self.average = dict["Average"] as! String
            }
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeQualityOverallDataResponseBody.QualityOverallData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeQualityOverallDataResponseBody.QualityOverallData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var qualityOverallData: [DescribeQualityOverallDataResponseBody.QualityOverallData]?

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
        if self.qualityOverallData != nil {
            var tmp : [Any] = []
            for k in self.qualityOverallData! {
                tmp.append(k.toMap())
            }
            map["QualityOverallData"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QualityOverallData") {
            var tmp : [DescribeQualityOverallDataResponseBody.QualityOverallData] = []
            for v in dict["QualityOverallData"] as! [Any] {
                var model = DescribeQualityOverallDataResponseBody.QualityOverallData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.qualityOverallData = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeQualityOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualityOverallDataResponseBody?

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
            var model = DescribeQualityOverallDataResponseBody()
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
            var tmp : [DescribeRecordFilesResponseBody.RecordFiles] = []
            for v in dict["RecordFiles"] as! [Any] {
                var model = DescribeRecordFilesResponseBody.RecordFiles()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.recordFiles = tmp
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
                var tmp : [DescribeRecordTemplatesResponseBody.Templates.Backgrounds] = []
                for v in dict["Backgrounds"] as! [Any] {
                    var model = DescribeRecordTemplatesResponseBody.Templates.Backgrounds()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backgrounds = tmp
            }
            if dict.keys.contains("ClockWidgets") {
                var tmp : [DescribeRecordTemplatesResponseBody.Templates.ClockWidgets] = []
                for v in dict["ClockWidgets"] as! [Any] {
                    var model = DescribeRecordTemplatesResponseBody.Templates.ClockWidgets()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.clockWidgets = tmp
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
                var tmp : [DescribeRecordTemplatesResponseBody.Templates.Watermarks] = []
                for v in dict["Watermarks"] as! [Any] {
                    var model = DescribeRecordTemplatesResponseBody.Templates.Watermarks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.watermarks = tmp
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
            var tmp : [DescribeRecordTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = DescribeRecordTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
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
                var tmp : [DescribeRtcChannelListResponseBody.ChannelList.ChannelList] = []
                for v in dict["ChannelList"] as! [Any] {
                    var model = DescribeRtcChannelListResponseBody.ChannelList.ChannelList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.channelList = tmp
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
                var tmp : [DescribeRtcDurationDataResponseBody.DurationDataPerInterval.DurationModule] = []
                for v in dict["DurationModule"] as! [Any] {
                    var model = DescribeRtcDurationDataResponseBody.DurationDataPerInterval.DurationModule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.durationModule = tmp
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
                var tmp : [DescribeRtcPeakChannelCntDataResponseBody.PeakChannelCntDataPerInterval.PeakChannelCntModule] = []
                for v in dict["PeakChannelCntModule"] as! [Any] {
                    var model = DescribeRtcPeakChannelCntDataResponseBody.PeakChannelCntDataPerInterval.PeakChannelCntModule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.peakChannelCntModule = tmp
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
                var tmp : [DescribeRtcUserCntDataResponseBody.UserCntDataPerInterval.UserCntModule] = []
                for v in dict["UserCntModule"] as! [Any] {
                    var model = DescribeRtcUserCntDataResponseBody.UserCntDataPerInterval.UserCntModule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userCntModule = tmp
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

public class DescribeUsageAreaDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: String?

    public var parentArea: String?

    public var startDate: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.parentArea != nil {
            map["ParentArea"] = self.parentArea!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("ParentArea") {
            self.parentArea = dict["ParentArea"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class DescribeUsageAreaDistributionStatDataResponseBody : Tea.TeaModel {
    public class UsageAreaStatList : Tea.TeaModel {
        public var audioCallDuration: Int32?

        public var name: String?

        public var totalCallDuration: Int32?

        public var videoCallDuration: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioCallDuration != nil {
                map["AudioCallDuration"] = self.audioCallDuration!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.totalCallDuration != nil {
                map["TotalCallDuration"] = self.totalCallDuration!
            }
            if self.videoCallDuration != nil {
                map["VideoCallDuration"] = self.videoCallDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioCallDuration") {
                self.audioCallDuration = dict["AudioCallDuration"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TotalCallDuration") {
                self.totalCallDuration = dict["TotalCallDuration"] as! Int32
            }
            if dict.keys.contains("VideoCallDuration") {
                self.videoCallDuration = dict["VideoCallDuration"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var usageAreaStatList: [DescribeUsageAreaDistributionStatDataResponseBody.UsageAreaStatList]?

    public override init() {
        super.init()
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
        if self.usageAreaStatList != nil {
            var tmp : [Any] = []
            for k in self.usageAreaStatList! {
                tmp.append(k.toMap())
            }
            map["UsageAreaStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageAreaStatList") {
            var tmp : [DescribeUsageAreaDistributionStatDataResponseBody.UsageAreaStatList] = []
            for v in dict["UsageAreaStatList"] as! [Any] {
                var model = DescribeUsageAreaDistributionStatDataResponseBody.UsageAreaStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageAreaStatList = tmp
        }
    }
}

public class DescribeUsageAreaDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageAreaDistributionStatDataResponseBody?

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
            var model = DescribeUsageAreaDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var statDim: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.statDim != nil {
            map["StatDim"] = self.statDim!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("StatDim") {
            self.statDim = dict["StatDim"] as! String
        }
    }
}

public class DescribeUsageDistributionStatDataResponseBody : Tea.TeaModel {
    public class UsageStatList : Tea.TeaModel {
        public var audioCallDuration: Int64?

        public var callDurationRatio: String?

        public var name: String?

        public var totalCallDuration: Int64?

        public var videoCallDuration: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioCallDuration != nil {
                map["AudioCallDuration"] = self.audioCallDuration!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.totalCallDuration != nil {
                map["TotalCallDuration"] = self.totalCallDuration!
            }
            if self.videoCallDuration != nil {
                map["VideoCallDuration"] = self.videoCallDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioCallDuration") {
                self.audioCallDuration = dict["AudioCallDuration"] as! Int64
            }
            if dict.keys.contains("CallDurationRatio") {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TotalCallDuration") {
                self.totalCallDuration = dict["TotalCallDuration"] as! Int64
            }
            if dict.keys.contains("VideoCallDuration") {
                self.videoCallDuration = dict["VideoCallDuration"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var usageStatList: [DescribeUsageDistributionStatDataResponseBody.UsageStatList]?

    public override init() {
        super.init()
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
        if self.usageStatList != nil {
            var tmp : [Any] = []
            for k in self.usageStatList! {
                tmp.append(k.toMap())
            }
            map["UsageStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageStatList") {
            var tmp : [DescribeUsageDistributionStatDataResponseBody.UsageStatList] = []
            for v in dict["UsageStatList"] as! [Any] {
                var model = DescribeUsageDistributionStatDataResponseBody.UsageStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageStatList = tmp
        }
    }
}

public class DescribeUsageDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageDistributionStatDataResponseBody?

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
            var model = DescribeUsageDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageOsSdkVersionDistributionStatDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
    }
}

public class DescribeUsageOsSdkVersionDistributionStatDataResponseBody : Tea.TeaModel {
    public class UsageOsSdkVersionStatList : Tea.TeaModel {
        public var audioCallDuration: Int64?

        public var callDurationRatio: String?

        public var name: String?

        public var os: String?

        public var totalCallDuration: Int64?

        public var videoCallDuration: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audioCallDuration != nil {
                map["AudioCallDuration"] = self.audioCallDuration!
            }
            if self.callDurationRatio != nil {
                map["CallDurationRatio"] = self.callDurationRatio!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.totalCallDuration != nil {
                map["TotalCallDuration"] = self.totalCallDuration!
            }
            if self.videoCallDuration != nil {
                map["VideoCallDuration"] = self.videoCallDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AudioCallDuration") {
                self.audioCallDuration = dict["AudioCallDuration"] as! Int64
            }
            if dict.keys.contains("CallDurationRatio") {
                self.callDurationRatio = dict["CallDurationRatio"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("TotalCallDuration") {
                self.totalCallDuration = dict["TotalCallDuration"] as! Int64
            }
            if dict.keys.contains("VideoCallDuration") {
                self.videoCallDuration = dict["VideoCallDuration"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var usageOsSdkVersionStatList: [DescribeUsageOsSdkVersionDistributionStatDataResponseBody.UsageOsSdkVersionStatList]?

    public override init() {
        super.init()
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
        if self.usageOsSdkVersionStatList != nil {
            var tmp : [Any] = []
            for k in self.usageOsSdkVersionStatList! {
                tmp.append(k.toMap())
            }
            map["UsageOsSdkVersionStatList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageOsSdkVersionStatList") {
            var tmp : [DescribeUsageOsSdkVersionDistributionStatDataResponseBody.UsageOsSdkVersionStatList] = []
            for v in dict["UsageOsSdkVersionStatList"] as! [Any] {
                var model = DescribeUsageOsSdkVersionDistributionStatDataResponseBody.UsageOsSdkVersionStatList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageOsSdkVersionStatList = tmp
        }
    }
}

public class DescribeUsageOsSdkVersionDistributionStatDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageOsSdkVersionDistributionStatDataResponseBody?

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
            var model = DescribeUsageOsSdkVersionDistributionStatDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsageOverallDataRequest : Tea.TeaModel {
    public var appId: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public var types: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.types != nil {
            map["Types"] = self.types!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! Int64
        }
        if dict.keys.contains("Types") {
            self.types = dict["Types"] as! String
        }
    }
}

public class DescribeUsageOverallDataResponseBody : Tea.TeaModel {
    public class UsageOverallData : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var x: String?

            public var y: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! String
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! String
                }
            }
        }
        public var nodes: [DescribeUsageOverallDataResponseBody.UsageOverallData.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeUsageOverallDataResponseBody.UsageOverallData.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeUsageOverallDataResponseBody.UsageOverallData.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestId: String?

    public var usageOverallData: [DescribeUsageOverallDataResponseBody.UsageOverallData]?

    public override init() {
        super.init()
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
        if self.usageOverallData != nil {
            var tmp : [Any] = []
            for k in self.usageOverallData! {
                tmp.append(k.toMap())
            }
            map["UsageOverallData"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsageOverallData") {
            var tmp : [DescribeUsageOverallDataResponseBody.UsageOverallData] = []
            for v in dict["UsageOverallData"] as! [Any] {
                var model = DescribeUsageOverallDataResponseBody.UsageOverallData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.usageOverallData = tmp
        }
    }
}

public class DescribeUsageOverallDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsageOverallDataResponseBody?

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
            var model = DescribeUsageOverallDataResponseBody()
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
            var tmp : [DescribeUserInfoInChannelResponseBody.Property] = []
            for v in dict["Property"] as! [Any] {
                var model = DescribeUserInfoInChannelResponseBody.Property()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.property = tmp
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

public class ModifyAppStreamingOutTemplateRequest : Tea.TeaModel {
    public class StreamingOutTemplate : Tea.TeaModel {
        public var layoutIds: [String]?

        public var mediaEncode: Int32?

        public var name: String?

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
            if self.layoutIds != nil {
                map["LayoutIds"] = self.layoutIds!
            }
            if self.mediaEncode != nil {
                map["MediaEncode"] = self.mediaEncode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LayoutIds") {
                self.layoutIds = dict["LayoutIds"] as! [String]
            }
            if dict.keys.contains("MediaEncode") {
                self.mediaEncode = dict["MediaEncode"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! String
            }
        }
    }
    public var appId: String?

    public var streamingOutTemplate: ModifyAppStreamingOutTemplateRequest.StreamingOutTemplate?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.streamingOutTemplate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.streamingOutTemplate != nil {
            map["StreamingOutTemplate"] = self.streamingOutTemplate?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("StreamingOutTemplate") {
            var model = ModifyAppStreamingOutTemplateRequest.StreamingOutTemplate()
            model.fromMap(dict["StreamingOutTemplate"] as! [String: Any])
            self.streamingOutTemplate = model
        }
    }
}

public class ModifyAppStreamingOutTemplateShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var streamingOutTemplateShrink: String?

    public override init() {
        super.init()
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
        if self.streamingOutTemplateShrink != nil {
            map["StreamingOutTemplate"] = self.streamingOutTemplateShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("StreamingOutTemplate") {
            self.streamingOutTemplateShrink = dict["StreamingOutTemplate"] as! String
        }
    }
}

public class ModifyAppStreamingOutTemplateResponseBody : Tea.TeaModel {
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

public class ModifyAppStreamingOutTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAppStreamingOutTemplateResponseBody?

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
            var model = ModifyAppStreamingOutTemplateResponseBody()
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
            var tmp : [ModifyMPULayoutRequest.Panes] = []
            for v in dict["Panes"] as! [Any] {
                var model = ModifyMPULayoutRequest.Panes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.panes = tmp
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
                var tmp : [RemoveTerminalsResponseBody.Terminals.Terminal] = []
                for v in dict["Terminal"] as! [Any] {
                    var model = RemoveTerminalsResponseBody.Terminals.Terminal()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.terminal = tmp
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

public class RemoveUsersRequest : Tea.TeaModel {
    public class Users : Tea.TeaModel {
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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var users: [RemoveUsersRequest.Users]?

    public override init() {
        super.init()
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
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
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
        if dict.keys.contains("Users") {
            var tmp : [RemoveUsersRequest.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = RemoveUsersRequest.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class RemoveUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var code: Int32?

        public var message: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
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
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var requestId: String?

    public var users: [RemoveUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var tmp : [RemoveUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = RemoveUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class RemoveUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUsersResponseBody?

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
            var model = RemoveUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartCloudRecordRequest : Tea.TeaModel {
    public class ClockWidgets : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: StartCloudRecordRequest.ClockWidgets.BoxColor?

        public var font: Int32?

        public var fontColor: StartCloudRecordRequest.ClockWidgets.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var x: Double?

        public var y: Double?

        public var zone: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = StartCloudRecordRequest.ClockWidgets.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = StartCloudRecordRequest.ClockWidgets.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("Zone") {
                self.zone = dict["Zone"] as! Int32
            }
        }
    }
    public class Images : Tea.TeaModel {
        public var alpha: Double?

        public var height: Double?

        public var imageCropMode: Int32?

        public var layer: Int32?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
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
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.imageCropMode != nil {
                map["ImageCropMode"] = self.imageCropMode!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("ImageCropMode") {
                self.imageCropMode = dict["ImageCropMode"] as! Int32
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
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
        }
    }
    public class Panes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var alpha: Double?

            public var height: Double?

            public var layer: Int32?

            public var paneImageCropMode: Int32?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
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
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.paneImageCropMode != nil {
                    map["PaneImageCropMode"] = self.paneImageCropMode!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("PaneImageCropMode") {
                    self.paneImageCropMode = dict["PaneImageCropMode"] as! Int32
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
            }
        }
        public class Texts : Tea.TeaModel {
            public class BoxColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public class FontColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public var alpha: Double?

            public var boxAlpha: Double?

            public var boxBorderw: Int32?

            public var boxColor: StartCloudRecordRequest.Panes.Texts.BoxColor?

            public var font: Int32?

            public var fontColor: StartCloudRecordRequest.Panes.Texts.FontColor?

            public var fontSize: Int32?

            public var hasBox: Bool?

            public var layer: Int32?

            public var texture: String?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.boxColor?.validate()
                try self.fontColor?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.boxAlpha != nil {
                    map["BoxAlpha"] = self.boxAlpha!
                }
                if self.boxBorderw != nil {
                    map["BoxBorderw"] = self.boxBorderw!
                }
                if self.boxColor != nil {
                    map["BoxColor"] = self.boxColor?.toMap()
                }
                if self.font != nil {
                    map["Font"] = self.font!
                }
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor?.toMap()
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.hasBox != nil {
                    map["HasBox"] = self.hasBox!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.texture != nil {
                    map["Texture"] = self.texture!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("BoxAlpha") {
                    self.boxAlpha = dict["BoxAlpha"] as! Double
                }
                if dict.keys.contains("BoxBorderw") {
                    self.boxBorderw = dict["BoxBorderw"] as! Int32
                }
                if dict.keys.contains("BoxColor") {
                    var model = StartCloudRecordRequest.Panes.Texts.BoxColor()
                    model.fromMap(dict["BoxColor"] as! [String: Any])
                    self.boxColor = model
                }
                if dict.keys.contains("Font") {
                    self.font = dict["Font"] as! Int32
                }
                if dict.keys.contains("FontColor") {
                    var model = StartCloudRecordRequest.Panes.Texts.FontColor()
                    model.fromMap(dict["FontColor"] as! [String: Any])
                    self.fontColor = model
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("HasBox") {
                    self.hasBox = dict["HasBox"] as! Bool
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("Texture") {
                    self.texture = dict["Texture"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
            }
        }
        public var images: [StartCloudRecordRequest.Panes.Images]?

        public var paneCropMode: Int32?

        public var paneId: Int32?

        public var source: String?

        public var sourceType: String?

        public var texts: [StartCloudRecordRequest.Panes.Texts]?

        public override init() {
            super.init()
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
            if self.paneCropMode != nil {
                map["PaneCropMode"] = self.paneCropMode!
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.source != nil {
                map["Source"] = self.source!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                var tmp : [StartCloudRecordRequest.Panes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = StartCloudRecordRequest.Panes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("PaneCropMode") {
                self.paneCropMode = dict["PaneCropMode"] as! Int32
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                var tmp : [StartCloudRecordRequest.Panes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = StartCloudRecordRequest.Panes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
            }
        }
    }
    public class StorageConfig : Tea.TeaModel {
        public var accessKey: String?

        public var bucket: String?

        public var region: Int32?

        public var secretKey: String?

        public var vendor: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                map["AccessKey"] = self.accessKey!
            }
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.secretKey != nil {
                map["SecretKey"] = self.secretKey!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                self.accessKey = dict["AccessKey"] as! String
            }
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! Int32
            }
            if dict.keys.contains("SecretKey") {
                self.secretKey = dict["SecretKey"] as! String
            }
            if dict.keys.contains("Vendor") {
                self.vendor = dict["Vendor"] as! Int32
            }
        }
    }
    public class Texts : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: StartCloudRecordRequest.Texts.BoxColor?

        public var font: Int32?

        public var fontColor: StartCloudRecordRequest.Texts.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var texture: String?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.texture != nil {
                map["Texture"] = self.texture!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = StartCloudRecordRequest.Texts.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = StartCloudRecordRequest.Texts.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("Texture") {
                self.texture = dict["Texture"] as! String
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var clockWidgets: [StartCloudRecordRequest.ClockWidgets]?

    public var cropMode: Int32?

    public var images: [StartCloudRecordRequest.Images]?

    public var panes: [StartCloudRecordRequest.Panes]?

    public var storageConfig: StartCloudRecordRequest.StorageConfig?

    public var taskId: String?

    public var templateId: String?

    public var texts: [StartCloudRecordRequest.Texts]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.storageConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.panes != nil {
            var tmp : [Any] = []
            for k in self.panes! {
                tmp.append(k.toMap())
            }
            map["Panes"] = tmp
        }
        if self.storageConfig != nil {
            map["StorageConfig"] = self.storageConfig?.toMap()
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.texts != nil {
            var tmp : [Any] = []
            for k in self.texts! {
                tmp.append(k.toMap())
            }
            map["Texts"] = tmp
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
        if dict.keys.contains("ClockWidgets") {
            var tmp : [StartCloudRecordRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = StartCloudRecordRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
        }
        if dict.keys.contains("CropMode") {
            self.cropMode = dict["CropMode"] as! Int32
        }
        if dict.keys.contains("Images") {
            var tmp : [StartCloudRecordRequest.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = StartCloudRecordRequest.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("Panes") {
            var tmp : [StartCloudRecordRequest.Panes] = []
            for v in dict["Panes"] as! [Any] {
                var model = StartCloudRecordRequest.Panes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.panes = tmp
        }
        if dict.keys.contains("StorageConfig") {
            var model = StartCloudRecordRequest.StorageConfig()
            model.fromMap(dict["StorageConfig"] as! [String: Any])
            self.storageConfig = model
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Texts") {
            var tmp : [StartCloudRecordRequest.Texts] = []
            for v in dict["Texts"] as! [Any] {
                var model = StartCloudRecordRequest.Texts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.texts = tmp
        }
    }
}

public class StartCloudRecordResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StartCloudRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartCloudRecordResponseBody?

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
            var model = StartCloudRecordResponseBody()
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
                var tmp : [StartMPUTaskRequest.UserPanes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = StartMPUTaskRequest.UserPanes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
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
                var tmp : [StartMPUTaskRequest.UserPanes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = StartMPUTaskRequest.UserPanes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
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
            var tmp : [StartMPUTaskRequest.Backgrounds] = []
            for v in dict["Backgrounds"] as! [Any] {
                var model = StartMPUTaskRequest.Backgrounds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.backgrounds = tmp
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("ClockWidgets") {
            var tmp : [StartMPUTaskRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = StartMPUTaskRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
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
            var tmp : [StartMPUTaskRequest.UserPanes] = []
            for v in dict["UserPanes"] as! [Any] {
                var model = StartMPUTaskRequest.UserPanes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userPanes = tmp
        }
        if dict.keys.contains("VadInterval") {
            self.vadInterval = dict["VadInterval"] as! Int64
        }
        if dict.keys.contains("Watermarks") {
            var tmp : [StartMPUTaskRequest.Watermarks] = []
            for v in dict["Watermarks"] as! [Any] {
                var model = StartMPUTaskRequest.Watermarks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.watermarks = tmp
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
                var tmp : [StartRecordTaskRequest.UserPanes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = StartRecordTaskRequest.UserPanes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                var tmp : [StartRecordTaskRequest.UserPanes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = StartRecordTaskRequest.UserPanes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
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
            var tmp : [StartRecordTaskRequest.UserPanes] = []
            for v in dict["UserPanes"] as! [Any] {
                var model = StartRecordTaskRequest.UserPanes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userPanes = tmp
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

public class StartStreamingOutRequest : Tea.TeaModel {
    public class ClockWidgets : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: StartStreamingOutRequest.ClockWidgets.BoxColor?

        public var font: Int32?

        public var fontColor: StartStreamingOutRequest.ClockWidgets.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var x: Double?

        public var y: Double?

        public var zone: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = StartStreamingOutRequest.ClockWidgets.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = StartStreamingOutRequest.ClockWidgets.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("Zone") {
                self.zone = dict["Zone"] as! Int32
            }
        }
    }
    public class Images : Tea.TeaModel {
        public var alpha: Double?

        public var height: Double?

        public var imageCropMode: Int32?

        public var layer: Int32?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
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
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.imageCropMode != nil {
                map["ImageCropMode"] = self.imageCropMode!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("ImageCropMode") {
                self.imageCropMode = dict["ImageCropMode"] as! Int32
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
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
        }
    }
    public class Panes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var alpha: Double?

            public var height: Double?

            public var layer: Int32?

            public var paneImageCropMode: Int32?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
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
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.paneImageCropMode != nil {
                    map["PaneImageCropMode"] = self.paneImageCropMode!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("PaneImageCropMode") {
                    self.paneImageCropMode = dict["PaneImageCropMode"] as! Int32
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
            }
        }
        public class Texts : Tea.TeaModel {
            public class BoxColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public class FontColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public var alpha: Double?

            public var boxAlpha: Double?

            public var boxBorderw: Int32?

            public var boxColor: StartStreamingOutRequest.Panes.Texts.BoxColor?

            public var font: Int32?

            public var fontColor: StartStreamingOutRequest.Panes.Texts.FontColor?

            public var fontSize: Int32?

            public var hasBox: Bool?

            public var layer: Int32?

            public var texture: String?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.boxColor?.validate()
                try self.fontColor?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.boxAlpha != nil {
                    map["BoxAlpha"] = self.boxAlpha!
                }
                if self.boxBorderw != nil {
                    map["BoxBorderw"] = self.boxBorderw!
                }
                if self.boxColor != nil {
                    map["BoxColor"] = self.boxColor?.toMap()
                }
                if self.font != nil {
                    map["Font"] = self.font!
                }
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor?.toMap()
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.hasBox != nil {
                    map["HasBox"] = self.hasBox!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.texture != nil {
                    map["Texture"] = self.texture!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("BoxAlpha") {
                    self.boxAlpha = dict["BoxAlpha"] as! Double
                }
                if dict.keys.contains("BoxBorderw") {
                    self.boxBorderw = dict["BoxBorderw"] as! Int32
                }
                if dict.keys.contains("BoxColor") {
                    var model = StartStreamingOutRequest.Panes.Texts.BoxColor()
                    model.fromMap(dict["BoxColor"] as! [String: Any])
                    self.boxColor = model
                }
                if dict.keys.contains("Font") {
                    self.font = dict["Font"] as! Int32
                }
                if dict.keys.contains("FontColor") {
                    var model = StartStreamingOutRequest.Panes.Texts.FontColor()
                    model.fromMap(dict["FontColor"] as! [String: Any])
                    self.fontColor = model
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("HasBox") {
                    self.hasBox = dict["HasBox"] as! Bool
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("Texture") {
                    self.texture = dict["Texture"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
            }
        }
        public var images: [StartStreamingOutRequest.Panes.Images]?

        public var paneCropMode: Int32?

        public var paneId: String?

        public var source: String?

        public var sourceType: String?

        public var texts: [StartStreamingOutRequest.Panes.Texts]?

        public override init() {
            super.init()
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
            if self.paneCropMode != nil {
                map["PaneCropMode"] = self.paneCropMode!
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.source != nil {
                map["Source"] = self.source!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                var tmp : [StartStreamingOutRequest.Panes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = StartStreamingOutRequest.Panes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("PaneCropMode") {
                self.paneCropMode = dict["PaneCropMode"] as! Int32
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                var tmp : [StartStreamingOutRequest.Panes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = StartStreamingOutRequest.Panes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
            }
        }
    }
    public class Texts : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: StartStreamingOutRequest.Texts.BoxColor?

        public var font: Int32?

        public var fontColor: StartStreamingOutRequest.Texts.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var texture: String?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.texture != nil {
                map["Texture"] = self.texture!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = StartStreamingOutRequest.Texts.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = StartStreamingOutRequest.Texts.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("Texture") {
                self.texture = dict["Texture"] as! String
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var clockWidgets: [StartStreamingOutRequest.ClockWidgets]?

    public var cropMode: Int32?

    public var images: [StartStreamingOutRequest.Images]?

    public var panes: [StartStreamingOutRequest.Panes]?

    public var taskId: String?

    public var templateId: String?

    public var texts: [StartStreamingOutRequest.Texts]?

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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.panes != nil {
            var tmp : [Any] = []
            for k in self.panes! {
                tmp.append(k.toMap())
            }
            map["Panes"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.texts != nil {
            var tmp : [Any] = []
            for k in self.texts! {
                tmp.append(k.toMap())
            }
            map["Texts"] = tmp
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
        if dict.keys.contains("ClockWidgets") {
            var tmp : [StartStreamingOutRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = StartStreamingOutRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
        }
        if dict.keys.contains("CropMode") {
            self.cropMode = dict["CropMode"] as! Int32
        }
        if dict.keys.contains("Images") {
            var tmp : [StartStreamingOutRequest.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = StartStreamingOutRequest.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("Panes") {
            var tmp : [StartStreamingOutRequest.Panes] = []
            for v in dict["Panes"] as! [Any] {
                var model = StartStreamingOutRequest.Panes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.panes = tmp
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Texts") {
            var tmp : [StartStreamingOutRequest.Texts] = []
            for v in dict["Texts"] as! [Any] {
                var model = StartStreamingOutRequest.Texts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.texts = tmp
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class StartStreamingOutResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StartStreamingOutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartStreamingOutResponseBody?

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
            var model = StartStreamingOutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopChannelRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
    }
}

public class StopChannelResponseBody : Tea.TeaModel {
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

public class StopChannelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopChannelResponseBody?

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
            var model = StopChannelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopCloudRecordRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
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
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopCloudRecordResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopCloudRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopCloudRecordResponseBody?

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
            var model = StopCloudRecordResponseBody()
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

public class StopStreamingOutRequest : Tea.TeaModel {
    public var appId: String?

    public var channelId: String?

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
        if self.channelId != nil {
            map["ChannelId"] = self.channelId!
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
        if dict.keys.contains("ChannelId") {
            self.channelId = dict["ChannelId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopStreamingOutResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopStreamingOutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopStreamingOutResponseBody?

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
            var model = StopStreamingOutResponseBody()
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

public class UpdateCloudRecordRequest : Tea.TeaModel {
    public class ClockWidgets : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: UpdateCloudRecordRequest.ClockWidgets.BoxColor?

        public var font: Int32?

        public var fontColor: UpdateCloudRecordRequest.ClockWidgets.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var x: Double?

        public var y: Double?

        public var zone: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = UpdateCloudRecordRequest.ClockWidgets.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = UpdateCloudRecordRequest.ClockWidgets.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("Zone") {
                self.zone = dict["Zone"] as! Int32
            }
        }
    }
    public class Images : Tea.TeaModel {
        public var alpha: Double?

        public var height: Double?

        public var imageCropMode: Int32?

        public var layer: Int32?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
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
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.imageCropMode != nil {
                map["ImageCropMode"] = self.imageCropMode!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("ImageCropMode") {
                self.imageCropMode = dict["ImageCropMode"] as! Int32
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
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
        }
    }
    public class Panes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var alpha: Double?

            public var height: Double?

            public var layer: Int32?

            public var paneImageCropMode: Int32?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
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
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.paneImageCropMode != nil {
                    map["PaneImageCropMode"] = self.paneImageCropMode!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("PaneImageCropMode") {
                    self.paneImageCropMode = dict["PaneImageCropMode"] as! Int32
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
            }
        }
        public class Texts : Tea.TeaModel {
            public class BoxColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public class FontColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public var alpha: Double?

            public var boxAlpha: Double?

            public var boxBorderw: Int32?

            public var boxColor: UpdateCloudRecordRequest.Panes.Texts.BoxColor?

            public var font: Int32?

            public var fontColor: UpdateCloudRecordRequest.Panes.Texts.FontColor?

            public var fontSize: Int32?

            public var hasBox: Bool?

            public var layer: Int32?

            public var texture: String?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.boxColor?.validate()
                try self.fontColor?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.boxAlpha != nil {
                    map["BoxAlpha"] = self.boxAlpha!
                }
                if self.boxBorderw != nil {
                    map["BoxBorderw"] = self.boxBorderw!
                }
                if self.boxColor != nil {
                    map["BoxColor"] = self.boxColor?.toMap()
                }
                if self.font != nil {
                    map["Font"] = self.font!
                }
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor?.toMap()
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.hasBox != nil {
                    map["HasBox"] = self.hasBox!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.texture != nil {
                    map["Texture"] = self.texture!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("BoxAlpha") {
                    self.boxAlpha = dict["BoxAlpha"] as! Double
                }
                if dict.keys.contains("BoxBorderw") {
                    self.boxBorderw = dict["BoxBorderw"] as! Int32
                }
                if dict.keys.contains("BoxColor") {
                    var model = UpdateCloudRecordRequest.Panes.Texts.BoxColor()
                    model.fromMap(dict["BoxColor"] as! [String: Any])
                    self.boxColor = model
                }
                if dict.keys.contains("Font") {
                    self.font = dict["Font"] as! Int32
                }
                if dict.keys.contains("FontColor") {
                    var model = UpdateCloudRecordRequest.Panes.Texts.FontColor()
                    model.fromMap(dict["FontColor"] as! [String: Any])
                    self.fontColor = model
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("HasBox") {
                    self.hasBox = dict["HasBox"] as! Bool
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("Texture") {
                    self.texture = dict["Texture"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
            }
        }
        public var images: [UpdateCloudRecordRequest.Panes.Images]?

        public var paneCropMode: Int32?

        public var paneId: Int32?

        public var source: String?

        public var sourceType: String?

        public var texts: [UpdateCloudRecordRequest.Panes.Texts]?

        public override init() {
            super.init()
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
            if self.paneCropMode != nil {
                map["PaneCropMode"] = self.paneCropMode!
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.source != nil {
                map["Source"] = self.source!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                var tmp : [UpdateCloudRecordRequest.Panes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = UpdateCloudRecordRequest.Panes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("PaneCropMode") {
                self.paneCropMode = dict["PaneCropMode"] as! Int32
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                var tmp : [UpdateCloudRecordRequest.Panes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = UpdateCloudRecordRequest.Panes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
            }
        }
    }
    public class Texts : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: UpdateCloudRecordRequest.Texts.BoxColor?

        public var font: Int32?

        public var fontColor: UpdateCloudRecordRequest.Texts.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var texture: String?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.texture != nil {
                map["Texture"] = self.texture!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = UpdateCloudRecordRequest.Texts.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = UpdateCloudRecordRequest.Texts.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("Texture") {
                self.texture = dict["Texture"] as! String
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var clockWidgets: [UpdateCloudRecordRequest.ClockWidgets]?

    public var images: [UpdateCloudRecordRequest.Images]?

    public var panes: [UpdateCloudRecordRequest.Panes]?

    public var taskId: String?

    public var templateId: String?

    public var texts: [UpdateCloudRecordRequest.Texts]?

    public override init() {
        super.init()
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
        if self.clockWidgets != nil {
            var tmp : [Any] = []
            for k in self.clockWidgets! {
                tmp.append(k.toMap())
            }
            map["ClockWidgets"] = tmp
        }
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.panes != nil {
            var tmp : [Any] = []
            for k in self.panes! {
                tmp.append(k.toMap())
            }
            map["Panes"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.texts != nil {
            var tmp : [Any] = []
            for k in self.texts! {
                tmp.append(k.toMap())
            }
            map["Texts"] = tmp
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
        if dict.keys.contains("ClockWidgets") {
            var tmp : [UpdateCloudRecordRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = UpdateCloudRecordRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
        }
        if dict.keys.contains("Images") {
            var tmp : [UpdateCloudRecordRequest.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = UpdateCloudRecordRequest.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("Panes") {
            var tmp : [UpdateCloudRecordRequest.Panes] = []
            for v in dict["Panes"] as! [Any] {
                var model = UpdateCloudRecordRequest.Panes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.panes = tmp
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Texts") {
            var tmp : [UpdateCloudRecordRequest.Texts] = []
            for v in dict["Texts"] as! [Any] {
                var model = UpdateCloudRecordRequest.Texts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.texts = tmp
        }
    }
}

public class UpdateCloudRecordResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpdateCloudRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCloudRecordResponseBody?

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
            var model = UpdateCloudRecordResponseBody()
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
                var tmp : [UpdateMPUTaskRequest.UserPanes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = UpdateMPUTaskRequest.UserPanes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
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
                var tmp : [UpdateMPUTaskRequest.UserPanes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = UpdateMPUTaskRequest.UserPanes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
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
            var tmp : [UpdateMPUTaskRequest.Backgrounds] = []
            for v in dict["Backgrounds"] as! [Any] {
                var model = UpdateMPUTaskRequest.Backgrounds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.backgrounds = tmp
        }
        if dict.keys.contains("ClockWidgets") {
            var tmp : [UpdateMPUTaskRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = UpdateMPUTaskRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
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
            var tmp : [UpdateMPUTaskRequest.UserPanes] = []
            for v in dict["UserPanes"] as! [Any] {
                var model = UpdateMPUTaskRequest.UserPanes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userPanes = tmp
        }
        if dict.keys.contains("Watermarks") {
            var tmp : [UpdateMPUTaskRequest.Watermarks] = []
            for v in dict["Watermarks"] as! [Any] {
                var model = UpdateMPUTaskRequest.Watermarks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.watermarks = tmp
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
                var tmp : [UpdateRecordTaskRequest.UserPanes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = UpdateRecordTaskRequest.UserPanes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                var tmp : [UpdateRecordTaskRequest.UserPanes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = UpdateRecordTaskRequest.UserPanes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
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
            var tmp : [UpdateRecordTaskRequest.UserPanes] = []
            for v in dict["UserPanes"] as! [Any] {
                var model = UpdateRecordTaskRequest.UserPanes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userPanes = tmp
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
            var tmp : [UpdateRecordTemplateRequest.Backgrounds] = []
            for v in dict["Backgrounds"] as! [Any] {
                var model = UpdateRecordTemplateRequest.Backgrounds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.backgrounds = tmp
        }
        if dict.keys.contains("ClockWidgets") {
            var tmp : [UpdateRecordTemplateRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = UpdateRecordTemplateRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
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
            var tmp : [UpdateRecordTemplateRequest.Watermarks] = []
            for v in dict["Watermarks"] as! [Any] {
                var model = UpdateRecordTemplateRequest.Watermarks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.watermarks = tmp
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

public class UpdateStreamingOutRequest : Tea.TeaModel {
    public class ClockWidgets : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: UpdateStreamingOutRequest.ClockWidgets.BoxColor?

        public var font: Int32?

        public var fontColor: UpdateStreamingOutRequest.ClockWidgets.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var x: Double?

        public var y: Double?

        public var zone: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            if self.zone != nil {
                map["Zone"] = self.zone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = UpdateStreamingOutRequest.ClockWidgets.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = UpdateStreamingOutRequest.ClockWidgets.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
            if dict.keys.contains("Zone") {
                self.zone = dict["Zone"] as! Int32
            }
        }
    }
    public class Images : Tea.TeaModel {
        public var alpha: Double?

        public var height: Double?

        public var imageCropMode: Int32?

        public var layer: Int32?

        public var url: String?

        public var width: Double?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
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
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.imageCropMode != nil {
                map["ImageCropMode"] = self.imageCropMode!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("Height") {
                self.height = dict["Height"] as! Double
            }
            if dict.keys.contains("ImageCropMode") {
                self.imageCropMode = dict["ImageCropMode"] as! Int32
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
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
        }
    }
    public class Panes : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var alpha: Double?

            public var height: Double?

            public var layer: Int32?

            public var paneImageCropMode: Int32?

            public var url: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
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
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.paneImageCropMode != nil {
                    map["PaneImageCropMode"] = self.paneImageCropMode!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("PaneImageCropMode") {
                    self.paneImageCropMode = dict["PaneImageCropMode"] as! Int32
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
            }
        }
        public class Texts : Tea.TeaModel {
            public class BoxColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public class FontColor : Tea.TeaModel {
                public var b: Int32?

                public var g: Int32?

                public var r: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.b != nil {
                        map["B"] = self.b!
                    }
                    if self.g != nil {
                        map["G"] = self.g!
                    }
                    if self.r != nil {
                        map["R"] = self.r!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("B") {
                        self.b = dict["B"] as! Int32
                    }
                    if dict.keys.contains("G") {
                        self.g = dict["G"] as! Int32
                    }
                    if dict.keys.contains("R") {
                        self.r = dict["R"] as! Int32
                    }
                }
            }
            public var alpha: Double?

            public var boxAlpha: Double?

            public var boxBorderw: Int32?

            public var boxColor: UpdateStreamingOutRequest.Panes.Texts.BoxColor?

            public var font: Int32?

            public var fontColor: UpdateStreamingOutRequest.Panes.Texts.FontColor?

            public var fontSize: Int32?

            public var hasBox: Bool?

            public var layer: Int32?

            public var texture: String?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.boxColor?.validate()
                try self.fontColor?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alpha != nil {
                    map["Alpha"] = self.alpha!
                }
                if self.boxAlpha != nil {
                    map["BoxAlpha"] = self.boxAlpha!
                }
                if self.boxBorderw != nil {
                    map["BoxBorderw"] = self.boxBorderw!
                }
                if self.boxColor != nil {
                    map["BoxColor"] = self.boxColor?.toMap()
                }
                if self.font != nil {
                    map["Font"] = self.font!
                }
                if self.fontColor != nil {
                    map["FontColor"] = self.fontColor?.toMap()
                }
                if self.fontSize != nil {
                    map["FontSize"] = self.fontSize!
                }
                if self.hasBox != nil {
                    map["HasBox"] = self.hasBox!
                }
                if self.layer != nil {
                    map["Layer"] = self.layer!
                }
                if self.texture != nil {
                    map["Texture"] = self.texture!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alpha") {
                    self.alpha = dict["Alpha"] as! Double
                }
                if dict.keys.contains("BoxAlpha") {
                    self.boxAlpha = dict["BoxAlpha"] as! Double
                }
                if dict.keys.contains("BoxBorderw") {
                    self.boxBorderw = dict["BoxBorderw"] as! Int32
                }
                if dict.keys.contains("BoxColor") {
                    var model = UpdateStreamingOutRequest.Panes.Texts.BoxColor()
                    model.fromMap(dict["BoxColor"] as! [String: Any])
                    self.boxColor = model
                }
                if dict.keys.contains("Font") {
                    self.font = dict["Font"] as! Int32
                }
                if dict.keys.contains("FontColor") {
                    var model = UpdateStreamingOutRequest.Panes.Texts.FontColor()
                    model.fromMap(dict["FontColor"] as! [String: Any])
                    self.fontColor = model
                }
                if dict.keys.contains("FontSize") {
                    self.fontSize = dict["FontSize"] as! Int32
                }
                if dict.keys.contains("HasBox") {
                    self.hasBox = dict["HasBox"] as! Bool
                }
                if dict.keys.contains("Layer") {
                    self.layer = dict["Layer"] as! Int32
                }
                if dict.keys.contains("Texture") {
                    self.texture = dict["Texture"] as! String
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
            }
        }
        public var images: [UpdateStreamingOutRequest.Panes.Images]?

        public var paneCropMode: Int32?

        public var paneId: Int32?

        public var source: String?

        public var sourceType: String?

        public var texts: [UpdateStreamingOutRequest.Panes.Texts]?

        public override init() {
            super.init()
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
            if self.paneCropMode != nil {
                map["PaneCropMode"] = self.paneCropMode!
            }
            if self.paneId != nil {
                map["PaneId"] = self.paneId!
            }
            if self.source != nil {
                map["Source"] = self.source!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                var tmp : [UpdateStreamingOutRequest.Panes.Images] = []
                for v in dict["Images"] as! [Any] {
                    var model = UpdateStreamingOutRequest.Panes.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("PaneCropMode") {
                self.paneCropMode = dict["PaneCropMode"] as! Int32
            }
            if dict.keys.contains("PaneId") {
                self.paneId = dict["PaneId"] as! Int32
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Texts") {
                var tmp : [UpdateStreamingOutRequest.Panes.Texts] = []
                for v in dict["Texts"] as! [Any] {
                    var model = UpdateStreamingOutRequest.Panes.Texts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.texts = tmp
            }
        }
    }
    public class Texts : Tea.TeaModel {
        public class BoxColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public class FontColor : Tea.TeaModel {
            public var b: Int32?

            public var g: Int32?

            public var r: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.b != nil {
                    map["B"] = self.b!
                }
                if self.g != nil {
                    map["G"] = self.g!
                }
                if self.r != nil {
                    map["R"] = self.r!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("B") {
                    self.b = dict["B"] as! Int32
                }
                if dict.keys.contains("G") {
                    self.g = dict["G"] as! Int32
                }
                if dict.keys.contains("R") {
                    self.r = dict["R"] as! Int32
                }
            }
        }
        public var alpha: Double?

        public var boxAlpha: Double?

        public var boxBorderw: Int32?

        public var boxColor: UpdateStreamingOutRequest.Texts.BoxColor?

        public var font: Int32?

        public var fontColor: UpdateStreamingOutRequest.Texts.FontColor?

        public var fontSize: Int32?

        public var hasBox: Bool?

        public var layer: Int32?

        public var texture: String?

        public var x: Double?

        public var y: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boxColor?.validate()
            try self.fontColor?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alpha != nil {
                map["Alpha"] = self.alpha!
            }
            if self.boxAlpha != nil {
                map["BoxAlpha"] = self.boxAlpha!
            }
            if self.boxBorderw != nil {
                map["BoxBorderw"] = self.boxBorderw!
            }
            if self.boxColor != nil {
                map["BoxColor"] = self.boxColor?.toMap()
            }
            if self.font != nil {
                map["Font"] = self.font!
            }
            if self.fontColor != nil {
                map["FontColor"] = self.fontColor?.toMap()
            }
            if self.fontSize != nil {
                map["FontSize"] = self.fontSize!
            }
            if self.hasBox != nil {
                map["HasBox"] = self.hasBox!
            }
            if self.layer != nil {
                map["Layer"] = self.layer!
            }
            if self.texture != nil {
                map["Texture"] = self.texture!
            }
            if self.x != nil {
                map["X"] = self.x!
            }
            if self.y != nil {
                map["Y"] = self.y!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alpha") {
                self.alpha = dict["Alpha"] as! Double
            }
            if dict.keys.contains("BoxAlpha") {
                self.boxAlpha = dict["BoxAlpha"] as! Double
            }
            if dict.keys.contains("BoxBorderw") {
                self.boxBorderw = dict["BoxBorderw"] as! Int32
            }
            if dict.keys.contains("BoxColor") {
                var model = UpdateStreamingOutRequest.Texts.BoxColor()
                model.fromMap(dict["BoxColor"] as! [String: Any])
                self.boxColor = model
            }
            if dict.keys.contains("Font") {
                self.font = dict["Font"] as! Int32
            }
            if dict.keys.contains("FontColor") {
                var model = UpdateStreamingOutRequest.Texts.FontColor()
                model.fromMap(dict["FontColor"] as! [String: Any])
                self.fontColor = model
            }
            if dict.keys.contains("FontSize") {
                self.fontSize = dict["FontSize"] as! Int32
            }
            if dict.keys.contains("HasBox") {
                self.hasBox = dict["HasBox"] as! Bool
            }
            if dict.keys.contains("Layer") {
                self.layer = dict["Layer"] as! Int32
            }
            if dict.keys.contains("Texture") {
                self.texture = dict["Texture"] as! String
            }
            if dict.keys.contains("X") {
                self.x = dict["X"] as! Double
            }
            if dict.keys.contains("Y") {
                self.y = dict["Y"] as! Double
            }
        }
    }
    public var appId: String?

    public var channelId: String?

    public var clockWidgets: [UpdateStreamingOutRequest.ClockWidgets]?

    public var images: [UpdateStreamingOutRequest.Images]?

    public var panes: [UpdateStreamingOutRequest.Panes]?

    public var taskId: String?

    public var templateId: String?

    public var texts: [UpdateStreamingOutRequest.Texts]?

    public override init() {
        super.init()
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
        if self.clockWidgets != nil {
            var tmp : [Any] = []
            for k in self.clockWidgets! {
                tmp.append(k.toMap())
            }
            map["ClockWidgets"] = tmp
        }
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.panes != nil {
            var tmp : [Any] = []
            for k in self.panes! {
                tmp.append(k.toMap())
            }
            map["Panes"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.texts != nil {
            var tmp : [Any] = []
            for k in self.texts! {
                tmp.append(k.toMap())
            }
            map["Texts"] = tmp
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
        if dict.keys.contains("ClockWidgets") {
            var tmp : [UpdateStreamingOutRequest.ClockWidgets] = []
            for v in dict["ClockWidgets"] as! [Any] {
                var model = UpdateStreamingOutRequest.ClockWidgets()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clockWidgets = tmp
        }
        if dict.keys.contains("Images") {
            var tmp : [UpdateStreamingOutRequest.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = UpdateStreamingOutRequest.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("Panes") {
            var tmp : [UpdateStreamingOutRequest.Panes] = []
            for v in dict["Panes"] as! [Any] {
                var model = UpdateStreamingOutRequest.Panes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.panes = tmp
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Texts") {
            var tmp : [UpdateStreamingOutRequest.Texts] = []
            for v in dict["Texts"] as! [Any] {
                var model = UpdateStreamingOutRequest.Texts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.texts = tmp
        }
    }
}

public class UpdateStreamingOutResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class UpdateStreamingOutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStreamingOutResponseBody?

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
            var model = UpdateStreamingOutResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
