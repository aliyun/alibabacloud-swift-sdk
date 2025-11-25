import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class PushTask : Tea.TeaModel {
    public class Message : Tea.TeaModel {
        public var body: String?

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
                map["Body"] = self.body!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? String {
                self.body = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public class Notification : Tea.TeaModel {
        public class Android : Tea.TeaModel {
            public class Options : Tea.TeaModel {
                public class Accs : Tea.TeaModel {
                    public var customStyle: Int32?

                    public var notifyType: String?

                    public var openActivity: String?

                    public var openType: String?

                    public var openUrl: String?

                    public var priority: Int32?

                    public var threadId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.customStyle != nil {
                            map["CustomStyle"] = self.customStyle!
                        }
                        if self.notifyType != nil {
                            map["NotifyType"] = self.notifyType!
                        }
                        if self.openActivity != nil {
                            map["OpenActivity"] = self.openActivity!
                        }
                        if self.openType != nil {
                            map["OpenType"] = self.openType!
                        }
                        if self.openUrl != nil {
                            map["OpenUrl"] = self.openUrl!
                        }
                        if self.priority != nil {
                            map["Priority"] = self.priority!
                        }
                        if self.threadId != nil {
                            map["ThreadId"] = self.threadId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CustomStyle"] as? Int32 {
                            self.customStyle = value
                        }
                        if let value = dict["NotifyType"] as? String {
                            self.notifyType = value
                        }
                        if let value = dict["OpenActivity"] as? String {
                            self.openActivity = value
                        }
                        if let value = dict["OpenType"] as? String {
                            self.openType = value
                        }
                        if let value = dict["OpenUrl"] as? String {
                            self.openUrl = value
                        }
                        if let value = dict["Priority"] as? Int32 {
                            self.priority = value
                        }
                        if let value = dict["ThreadId"] as? String {
                            self.threadId = value
                        }
                    }
                }
                public class Honor : Tea.TeaModel {
                    public var importance: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.importance != nil {
                            map["Importance"] = self.importance!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Importance"] as? Int32 {
                            self.importance = value
                        }
                    }
                }
                public class Huawei : Tea.TeaModel {
                    public var category: String?

                    public var importance: Int32?

                    public var liveNotificationPayload: String?

                    public var receiptId: String?

                    public var urgency: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.category != nil {
                            map["Category"] = self.category!
                        }
                        if self.importance != nil {
                            map["Importance"] = self.importance!
                        }
                        if self.liveNotificationPayload != nil {
                            map["LiveNotificationPayload"] = self.liveNotificationPayload!
                        }
                        if self.receiptId != nil {
                            map["ReceiptId"] = self.receiptId!
                        }
                        if self.urgency != nil {
                            map["Urgency"] = self.urgency!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Category"] as? String {
                            self.category = value
                        }
                        if let value = dict["Importance"] as? Int32 {
                            self.importance = value
                        }
                        if let value = dict["LiveNotificationPayload"] as? String {
                            self.liveNotificationPayload = value
                        }
                        if let value = dict["ReceiptId"] as? String {
                            self.receiptId = value
                        }
                        if let value = dict["Urgency"] as? String {
                            self.urgency = value
                        }
                    }
                }
                public class Meizu : Tea.TeaModel {
                    public var noticeMsgType: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.noticeMsgType != nil {
                            map["NoticeMsgType"] = self.noticeMsgType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["NoticeMsgType"] as? Int32 {
                            self.noticeMsgType = value
                        }
                    }
                }
                public class Oppo : Tea.TeaModel {
                    public var category: String?

                    public var deleteIntentData: String?

                    public var intelligentIntent: String?

                    public var notifyLevel: Int64?

                    public var privateContentParameters: String?

                    public var privateMsgTemplateId: String?

                    public var privateTitleParameters: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.category != nil {
                            map["Category"] = self.category!
                        }
                        if self.deleteIntentData != nil {
                            map["DeleteIntentData"] = self.deleteIntentData!
                        }
                        if self.intelligentIntent != nil {
                            map["IntelligentIntent"] = self.intelligentIntent!
                        }
                        if self.notifyLevel != nil {
                            map["NotifyLevel"] = self.notifyLevel!
                        }
                        if self.privateContentParameters != nil {
                            map["PrivateContentParameters"] = self.privateContentParameters!
                        }
                        if self.privateMsgTemplateId != nil {
                            map["PrivateMsgTemplateId"] = self.privateMsgTemplateId!
                        }
                        if self.privateTitleParameters != nil {
                            map["PrivateTitleParameters"] = self.privateTitleParameters!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Category"] as? String {
                            self.category = value
                        }
                        if let value = dict["DeleteIntentData"] as? String {
                            self.deleteIntentData = value
                        }
                        if let value = dict["IntelligentIntent"] as? String {
                            self.intelligentIntent = value
                        }
                        if let value = dict["NotifyLevel"] as? Int64 {
                            self.notifyLevel = value
                        }
                        if let value = dict["PrivateContentParameters"] as? String {
                            self.privateContentParameters = value
                        }
                        if let value = dict["PrivateMsgTemplateId"] as? String {
                            self.privateMsgTemplateId = value
                        }
                        if let value = dict["PrivateTitleParameters"] as? String {
                            self.privateTitleParameters = value
                        }
                    }
                }
                public class Vivo : Tea.TeaModel {
                    public var category: String?

                    public var importance: Int32?

                    public var receiptId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.category != nil {
                            map["Category"] = self.category!
                        }
                        if self.importance != nil {
                            map["Importance"] = self.importance!
                        }
                        if self.receiptId != nil {
                            map["ReceiptId"] = self.receiptId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Category"] as? String {
                            self.category = value
                        }
                        if let value = dict["Importance"] as? Int32 {
                            self.importance = value
                        }
                        if let value = dict["ReceiptId"] as? String {
                            self.receiptId = value
                        }
                    }
                }
                public class Xiaomi : Tea.TeaModel {
                    public var channel: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.channel != nil {
                            map["Channel"] = self.channel!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Channel"] as? String {
                            self.channel = value
                        }
                    }
                }
                public var accs: PushTask.Notification.Android.Options.Accs?

                public var honor: PushTask.Notification.Android.Options.Honor?

                public var huawei: PushTask.Notification.Android.Options.Huawei?

                public var meizu: PushTask.Notification.Android.Options.Meizu?

                public var oppo: PushTask.Notification.Android.Options.Oppo?

                public var vivo: PushTask.Notification.Android.Options.Vivo?

                public var xiaomi: PushTask.Notification.Android.Options.Xiaomi?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.accs?.validate()
                    try self.honor?.validate()
                    try self.huawei?.validate()
                    try self.meizu?.validate()
                    try self.oppo?.validate()
                    try self.vivo?.validate()
                    try self.xiaomi?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.accs != nil {
                        map["Accs"] = self.accs?.toMap()
                    }
                    if self.honor != nil {
                        map["Honor"] = self.honor?.toMap()
                    }
                    if self.huawei != nil {
                        map["Huawei"] = self.huawei?.toMap()
                    }
                    if self.meizu != nil {
                        map["Meizu"] = self.meizu?.toMap()
                    }
                    if self.oppo != nil {
                        map["Oppo"] = self.oppo?.toMap()
                    }
                    if self.vivo != nil {
                        map["Vivo"] = self.vivo?.toMap()
                    }
                    if self.xiaomi != nil {
                        map["Xiaomi"] = self.xiaomi?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Accs"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Accs()
                        model.fromMap(value)
                        self.accs = model
                    }
                    if let value = dict["Honor"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Honor()
                        model.fromMap(value)
                        self.honor = model
                    }
                    if let value = dict["Huawei"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Huawei()
                        model.fromMap(value)
                        self.huawei = model
                    }
                    if let value = dict["Meizu"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Meizu()
                        model.fromMap(value)
                        self.meizu = model
                    }
                    if let value = dict["Oppo"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Oppo()
                        model.fromMap(value)
                        self.oppo = model
                    }
                    if let value = dict["Vivo"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Vivo()
                        model.fromMap(value)
                        self.vivo = model
                    }
                    if let value = dict["Xiaomi"] as? [String: Any?] {
                        var model = PushTask.Notification.Android.Options.Xiaomi()
                        model.fromMap(value)
                        self.xiaomi = model
                    }
                }
            }
            public var badgeActivity: String?

            public var badgeAddNum: Int32?

            public var badgeSetNum: Int32?

            public var channelId: String?

            public var extParameters: String?

            public var groupId: String?

            public var imageUrl: String?

            public var inboxContent: [String]?

            public var music: String?

            public var notifyId: Int32?

            public var options: PushTask.Notification.Android.Options?

            public var pictureUrl: String?

            public var renderStyle: String?

            public var testMessage: Bool?

            public var vendorChannelActivity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.options?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.badgeActivity != nil {
                    map["BadgeActivity"] = self.badgeActivity!
                }
                if self.badgeAddNum != nil {
                    map["BadgeAddNum"] = self.badgeAddNum!
                }
                if self.badgeSetNum != nil {
                    map["BadgeSetNum"] = self.badgeSetNum!
                }
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.extParameters != nil {
                    map["ExtParameters"] = self.extParameters!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.inboxContent != nil {
                    map["InboxContent"] = self.inboxContent!
                }
                if self.music != nil {
                    map["Music"] = self.music!
                }
                if self.notifyId != nil {
                    map["NotifyId"] = self.notifyId!
                }
                if self.options != nil {
                    map["Options"] = self.options?.toMap()
                }
                if self.pictureUrl != nil {
                    map["PictureUrl"] = self.pictureUrl!
                }
                if self.renderStyle != nil {
                    map["RenderStyle"] = self.renderStyle!
                }
                if self.testMessage != nil {
                    map["TestMessage"] = self.testMessage!
                }
                if self.vendorChannelActivity != nil {
                    map["VendorChannelActivity"] = self.vendorChannelActivity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BadgeActivity"] as? String {
                    self.badgeActivity = value
                }
                if let value = dict["BadgeAddNum"] as? Int32 {
                    self.badgeAddNum = value
                }
                if let value = dict["BadgeSetNum"] as? Int32 {
                    self.badgeSetNum = value
                }
                if let value = dict["ChannelId"] as? String {
                    self.channelId = value
                }
                if let value = dict["ExtParameters"] as? String {
                    self.extParameters = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["InboxContent"] as? [String] {
                    self.inboxContent = value
                }
                if let value = dict["Music"] as? String {
                    self.music = value
                }
                if let value = dict["NotifyId"] as? Int32 {
                    self.notifyId = value
                }
                if let value = dict["Options"] as? [String: Any?] {
                    var model = PushTask.Notification.Android.Options()
                    model.fromMap(value)
                    self.options = model
                }
                if let value = dict["PictureUrl"] as? String {
                    self.pictureUrl = value
                }
                if let value = dict["RenderStyle"] as? String {
                    self.renderStyle = value
                }
                if let value = dict["TestMessage"] as? Bool {
                    self.testMessage = value
                }
                if let value = dict["VendorChannelActivity"] as? String {
                    self.vendorChannelActivity = value
                }
            }
        }
        public class Hmos : Tea.TeaModel {
            public var action: String?

            public var badgeAddNum: Int32?

            public var badgeSetNum: Int32?

            public var category: String?

            public var extParameters: String?

            public var extensionExtraData: String?

            public var extensionPush: Bool?

            public var imageUrl: String?

            public var inboxContent: [String]?

            public var liveViewPayload: String?

            public var notifyId: Int32?

            public var receiptId: String?

            public var renderStyle: String?

            public var slotType: String?

            public var testMessage: Bool?

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
                    map["Action"] = self.action!
                }
                if self.badgeAddNum != nil {
                    map["BadgeAddNum"] = self.badgeAddNum!
                }
                if self.badgeSetNum != nil {
                    map["BadgeSetNum"] = self.badgeSetNum!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.extParameters != nil {
                    map["ExtParameters"] = self.extParameters!
                }
                if self.extensionExtraData != nil {
                    map["ExtensionExtraData"] = self.extensionExtraData!
                }
                if self.extensionPush != nil {
                    map["ExtensionPush"] = self.extensionPush!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.inboxContent != nil {
                    map["InboxContent"] = self.inboxContent!
                }
                if self.liveViewPayload != nil {
                    map["LiveViewPayload"] = self.liveViewPayload!
                }
                if self.notifyId != nil {
                    map["NotifyId"] = self.notifyId!
                }
                if self.receiptId != nil {
                    map["ReceiptId"] = self.receiptId!
                }
                if self.renderStyle != nil {
                    map["RenderStyle"] = self.renderStyle!
                }
                if self.slotType != nil {
                    map["SlotType"] = self.slotType!
                }
                if self.testMessage != nil {
                    map["TestMessage"] = self.testMessage!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["BadgeAddNum"] as? Int32 {
                    self.badgeAddNum = value
                }
                if let value = dict["BadgeSetNum"] as? Int32 {
                    self.badgeSetNum = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["ExtParameters"] as? String {
                    self.extParameters = value
                }
                if let value = dict["ExtensionExtraData"] as? String {
                    self.extensionExtraData = value
                }
                if let value = dict["ExtensionPush"] as? Bool {
                    self.extensionPush = value
                }
                if let value = dict["ImageUrl"] as? String {
                    self.imageUrl = value
                }
                if let value = dict["InboxContent"] as? [String] {
                    self.inboxContent = value
                }
                if let value = dict["LiveViewPayload"] as? String {
                    self.liveViewPayload = value
                }
                if let value = dict["NotifyId"] as? Int32 {
                    self.notifyId = value
                }
                if let value = dict["ReceiptId"] as? String {
                    self.receiptId = value
                }
                if let value = dict["RenderStyle"] as? String {
                    self.renderStyle = value
                }
                if let value = dict["SlotType"] as? String {
                    self.slotType = value
                }
                if let value = dict["TestMessage"] as? Bool {
                    self.testMessage = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
                }
            }
        }
        public class Ios : Tea.TeaModel {
            public class LiveActivity : Tea.TeaModel {
                public var attributes: String?

                public var attributesType: String?

                public var contentState: String?

                public var dismissalDate: Int64?

                public var event: String?

                public var id: String?

                public var staleDate: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.attributes != nil {
                        map["Attributes"] = self.attributes!
                    }
                    if self.attributesType != nil {
                        map["AttributesType"] = self.attributesType!
                    }
                    if self.contentState != nil {
                        map["ContentState"] = self.contentState!
                    }
                    if self.dismissalDate != nil {
                        map["DismissalDate"] = self.dismissalDate!
                    }
                    if self.event != nil {
                        map["Event"] = self.event!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.staleDate != nil {
                        map["StaleDate"] = self.staleDate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Attributes"] as? String {
                        self.attributes = value
                    }
                    if let value = dict["AttributesType"] as? String {
                        self.attributesType = value
                    }
                    if let value = dict["ContentState"] as? String {
                        self.contentState = value
                    }
                    if let value = dict["DismissalDate"] as? Int64 {
                        self.dismissalDate = value
                    }
                    if let value = dict["Event"] as? String {
                        self.event = value
                    }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["StaleDate"] as? Int64 {
                        self.staleDate = value
                    }
                }
            }
            public var apnsEnv: String?

            public var badge: Int32?

            public var badgeAutoIncrement: Bool?

            public var category: String?

            public var collapseId: String?

            public var extParameters: String?

            public var interruptionLevel: String?

            public var liveActivity: PushTask.Notification.Ios.LiveActivity?

            public var music: String?

            public var mutable: Bool?

            public var relevanceScore: Double?

            public var silent: Bool?

            public var subtitle: String?

            public var threadId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.liveActivity?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apnsEnv != nil {
                    map["ApnsEnv"] = self.apnsEnv!
                }
                if self.badge != nil {
                    map["Badge"] = self.badge!
                }
                if self.badgeAutoIncrement != nil {
                    map["BadgeAutoIncrement"] = self.badgeAutoIncrement!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.collapseId != nil {
                    map["CollapseId"] = self.collapseId!
                }
                if self.extParameters != nil {
                    map["ExtParameters"] = self.extParameters!
                }
                if self.interruptionLevel != nil {
                    map["InterruptionLevel"] = self.interruptionLevel!
                }
                if self.liveActivity != nil {
                    map["LiveActivity"] = self.liveActivity?.toMap()
                }
                if self.music != nil {
                    map["Music"] = self.music!
                }
                if self.mutable != nil {
                    map["Mutable"] = self.mutable!
                }
                if self.relevanceScore != nil {
                    map["RelevanceScore"] = self.relevanceScore!
                }
                if self.silent != nil {
                    map["Silent"] = self.silent!
                }
                if self.subtitle != nil {
                    map["Subtitle"] = self.subtitle!
                }
                if self.threadId != nil {
                    map["ThreadId"] = self.threadId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApnsEnv"] as? String {
                    self.apnsEnv = value
                }
                if let value = dict["Badge"] as? Int32 {
                    self.badge = value
                }
                if let value = dict["BadgeAutoIncrement"] as? Bool {
                    self.badgeAutoIncrement = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CollapseId"] as? String {
                    self.collapseId = value
                }
                if let value = dict["ExtParameters"] as? String {
                    self.extParameters = value
                }
                if let value = dict["InterruptionLevel"] as? String {
                    self.interruptionLevel = value
                }
                if let value = dict["LiveActivity"] as? [String: Any?] {
                    var model = PushTask.Notification.Ios.LiveActivity()
                    model.fromMap(value)
                    self.liveActivity = model
                }
                if let value = dict["Music"] as? String {
                    self.music = value
                }
                if let value = dict["Mutable"] as? Bool {
                    self.mutable = value
                }
                if let value = dict["RelevanceScore"] as? Double {
                    self.relevanceScore = value
                }
                if let value = dict["Silent"] as? Bool {
                    self.silent = value
                }
                if let value = dict["Subtitle"] as? String {
                    self.subtitle = value
                }
                if let value = dict["ThreadId"] as? String {
                    self.threadId = value
                }
            }
        }
        public var android: PushTask.Notification.Android?

        public var body: String?

        public var hmos: PushTask.Notification.Hmos?

        public var ios: PushTask.Notification.Ios?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.android?.validate()
            try self.hmos?.validate()
            try self.ios?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.android != nil {
                map["Android"] = self.android?.toMap()
            }
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.hmos != nil {
                map["Hmos"] = self.hmos?.toMap()
            }
            if self.ios != nil {
                map["Ios"] = self.ios?.toMap()
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Android"] as? [String: Any?] {
                var model = PushTask.Notification.Android()
                model.fromMap(value)
                self.android = model
            }
            if let value = dict["Body"] as? String {
                self.body = value
            }
            if let value = dict["Hmos"] as? [String: Any?] {
                var model = PushTask.Notification.Hmos()
                model.fromMap(value)
                self.hmos = model
            }
            if let value = dict["Ios"] as? [String: Any?] {
                var model = PushTask.Notification.Ios()
                model.fromMap(value)
                self.ios = model
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public class Options : Tea.TeaModel {
        public class Sms : Tea.TeaModel {
            public var delaySecs: Int64?

            public var params: String?

            public var sendPolicy: String?

            public var signName: String?

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
                if self.delaySecs != nil {
                    map["DelaySecs"] = self.delaySecs!
                }
                if self.params != nil {
                    map["Params"] = self.params!
                }
                if self.sendPolicy != nil {
                    map["SendPolicy"] = self.sendPolicy!
                }
                if self.signName != nil {
                    map["SignName"] = self.signName!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DelaySecs"] as? Int64 {
                    self.delaySecs = value
                }
                if let value = dict["Params"] as? String {
                    self.params = value
                }
                if let value = dict["SendPolicy"] as? String {
                    self.sendPolicy = value
                }
                if let value = dict["SignName"] as? String {
                    self.signName = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
            }
        }
        public var expireTime: String?

        public var jobKey: String?

        public var messageId: Int64?

        public var pushTime: String?

        public var sms: PushTask.Options.Sms?

        public var trim: Bool?

        public var useChannels: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sms?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.jobKey != nil {
                map["JobKey"] = self.jobKey!
            }
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            if self.pushTime != nil {
                map["PushTime"] = self.pushTime!
            }
            if self.sms != nil {
                map["Sms"] = self.sms?.toMap()
            }
            if self.trim != nil {
                map["Trim"] = self.trim!
            }
            if self.useChannels != nil {
                map["UseChannels"] = self.useChannels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["JobKey"] as? String {
                self.jobKey = value
            }
            if let value = dict["MessageId"] as? Int64 {
                self.messageId = value
            }
            if let value = dict["PushTime"] as? String {
                self.pushTime = value
            }
            if let value = dict["Sms"] as? [String: Any?] {
                var model = PushTask.Options.Sms()
                model.fromMap(value)
                self.sms = model
            }
            if let value = dict["Trim"] as? Bool {
                self.trim = value
            }
            if let value = dict["UseChannels"] as? String {
                self.useChannels = value
            }
        }
    }
    public class Target : Tea.TeaModel {
        public var platform: String?

        public var type: String?

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
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var action: String?

    public var message: PushTask.Message?

    public var notification: PushTask.Notification?

    public var options: PushTask.Options?

    public var target: PushTask.Target?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.message?.validate()
        try self.notification?.validate()
        try self.options?.validate()
        try self.target?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.message != nil {
            map["Message"] = self.message?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.options != nil {
            map["Options"] = self.options?.toMap()
        }
        if self.target != nil {
            map["Target"] = self.target?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["Message"] as? [String: Any?] {
            var model = PushTask.Message()
            model.fromMap(value)
            self.message = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = PushTask.Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["Options"] as? [String: Any?] {
            var model = PushTask.Options()
            model.fromMap(value)
            self.options = model
        }
        if let value = dict["Target"] as? [String: Any?] {
            var model = PushTask.Target()
            model.fromMap(value)
            self.target = model
        }
    }
}

public class BindAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
    }
}

public class BindAliasResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BindAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindPhoneRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
    }
}

public class BindPhoneResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindPhoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindPhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindTagRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var clientKey: String?

    public var keyType: String?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.clientKey != nil {
            map["ClientKey"] = self.clientKey!
        }
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["ClientKey"] as? String {
            self.clientKey = value
        }
        if let value = dict["KeyType"] as? String {
            self.keyType = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class BindTagResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BindTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelPushRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: Int64?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["MessageId"] as? Int64 {
            self.messageId = value
        }
    }
}

public class CancelPushResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPushResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelPushResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckCertificateRequest : Tea.TeaModel {
    public var appKey: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
    }
}

public class CheckCertificateResponseBody : Tea.TeaModel {
    public class DevelopmentCertInfo : Tea.TeaModel {
        public var exipreTime: Int64?

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
            if self.exipreTime != nil {
                map["ExipreTime"] = self.exipreTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExipreTime"] as? Int64 {
                self.exipreTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class ProductionCertInfo : Tea.TeaModel {
        public var exipreTime: Int64?

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
            if self.exipreTime != nil {
                map["ExipreTime"] = self.exipreTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExipreTime"] as? Int64 {
                self.exipreTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var android: Bool?

    public var developmentCertInfo: CheckCertificateResponseBody.DevelopmentCertInfo?

    public var IOS: Bool?

    public var productionCertInfo: CheckCertificateResponseBody.ProductionCertInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.developmentCertInfo?.validate()
        try self.productionCertInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.android != nil {
            map["Android"] = self.android!
        }
        if self.developmentCertInfo != nil {
            map["DevelopmentCertInfo"] = self.developmentCertInfo?.toMap()
        }
        if self.IOS != nil {
            map["IOS"] = self.IOS!
        }
        if self.productionCertInfo != nil {
            map["ProductionCertInfo"] = self.productionCertInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Android"] as? Bool {
            self.android = value
        }
        if let value = dict["DevelopmentCertInfo"] as? [String: Any?] {
            var model = CheckCertificateResponseBody.DevelopmentCertInfo()
            model.fromMap(value)
            self.developmentCertInfo = model
        }
        if let value = dict["IOS"] as? Bool {
            self.IOS = value
        }
        if let value = dict["ProductionCertInfo"] as? [String: Any?] {
            var model = CheckCertificateResponseBody.ProductionCertInfo()
            model.fromMap(value)
            self.productionCertInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckDeviceRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
    }
}

public class CheckDeviceResponseBody : Tea.TeaModel {
    public var available: Bool?

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
        if self.available != nil {
            map["Available"] = self.available!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Available"] as? Bool {
            self.available = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckDevicesRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceIds: String?

    public override init() {
        super.init()
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
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceIds"] as? String {
            self.deviceIds = value
        }
    }
}

public class CheckDevicesResponseBody : Tea.TeaModel {
    public class DeviceCheckInfos : Tea.TeaModel {
        public class DeviceCheckInfo : Tea.TeaModel {
            public var available: Bool?

            public var deviceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Available"] as? Bool {
                    self.available = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
            }
        }
        public var deviceCheckInfo: [CheckDevicesResponseBody.DeviceCheckInfos.DeviceCheckInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceCheckInfo != nil {
                var tmp : [Any] = []
                for k in self.deviceCheckInfo! {
                    tmp.append(k.toMap())
                }
                map["DeviceCheckInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceCheckInfo"] as? [Any?] {
                var tmp : [CheckDevicesResponseBody.DeviceCheckInfos.DeviceCheckInfo] = []
                for v in value {
                    if v != nil {
                        var model = CheckDevicesResponseBody.DeviceCheckInfos.DeviceCheckInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceCheckInfo = tmp
            }
        }
    }
    public var deviceCheckInfos: CheckDevicesResponseBody.DeviceCheckInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceCheckInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCheckInfos != nil {
            map["DeviceCheckInfos"] = self.deviceCheckInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceCheckInfos"] as? [String: Any?] {
            var model = CheckDevicesResponseBody.DeviceCheckInfos()
            model.fromMap(value)
            self.deviceCheckInfos = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompleteContinuouslyPushRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
    }
}

public class CompleteContinuouslyPushResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CompleteContinuouslyPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompleteContinuouslyPushResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompleteContinuouslyPushResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContinuouslyPushRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: String?

    public var target: String?

    public var targetValue: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
    }
}

public class ContinuouslyPushResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ContinuouslyPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContinuouslyPushResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ContinuouslyPushResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSummaryAppsResponseBody : Tea.TeaModel {
    public class SummaryAppInfos : Tea.TeaModel {
        public class SummaryAppInfo : Tea.TeaModel {
            public var appKey: Int64?

            public var appName: String?

            public override init() {
                super.init()
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
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppKey"] as? Int64 {
                    self.appKey = value
                }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
            }
        }
        public var summaryAppInfo: [ListSummaryAppsResponseBody.SummaryAppInfos.SummaryAppInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.summaryAppInfo != nil {
                var tmp : [Any] = []
                for k in self.summaryAppInfo! {
                    tmp.append(k.toMap())
                }
                map["SummaryAppInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SummaryAppInfo"] as? [Any?] {
                var tmp : [ListSummaryAppsResponseBody.SummaryAppInfos.SummaryAppInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListSummaryAppsResponseBody.SummaryAppInfos.SummaryAppInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.summaryAppInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var summaryAppInfos: ListSummaryAppsResponseBody.SummaryAppInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.summaryAppInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.summaryAppInfos != nil {
            map["SummaryAppInfos"] = self.summaryAppInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SummaryAppInfos"] as? [String: Any?] {
            var model = ListSummaryAppsResponseBody.SummaryAppInfos()
            model.fromMap(value)
            self.summaryAppInfos = model
        }
    }
}

public class ListSummaryAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSummaryAppsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSummaryAppsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagsRequest : Tea.TeaModel {
    public var appKey: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
    }
}

public class ListTagsResponseBody : Tea.TeaModel {
    public class TagInfos : Tea.TeaModel {
        public class TagInfo : Tea.TeaModel {
            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
                }
            }
        }
        public var tagInfo: [ListTagsResponseBody.TagInfos.TagInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagInfo != nil {
                var tmp : [Any] = []
                for k in self.tagInfo! {
                    tmp.append(k.toMap())
                }
                map["TagInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagInfo"] as? [Any?] {
                var tmp : [ListTagsResponseBody.TagInfos.TagInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListTagsResponseBody.TagInfos.TagInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var tagInfos: ListTagsResponseBody.TagInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagInfos != nil {
            map["TagInfos"] = self.tagInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagInfos"] as? [String: Any?] {
            var model = ListTagsResponseBody.TagInfos()
            model.fromMap(value)
            self.tagInfos = model
        }
    }
}

public class ListTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MassPushRequest : Tea.TeaModel {
    public class PushTask : Tea.TeaModel {
        public var androidActivity: String?

        public var androidBadgeAddNum: Int32?

        public var androidBadgeClass: String?

        public var androidBadgeSetNum: Int32?

        public var androidBigBody: String?

        public var androidBigPictureUrl: String?

        public var androidBigTitle: String?

        public var androidExtParameters: String?

        public var androidHonorTargetUserType: Int32?

        public var androidHuaweiLiveNotificationPayload: String?

        public var androidHuaweiReceiptId: String?

        public var androidHuaweiTargetUserType: Int32?

        public var androidImageUrl: String?

        public var androidInboxBody: String?

        public var androidMeizuNoticeMsgType: Int32?

        public var androidMessageHuaweiCategory: String?

        public var androidMessageHuaweiUrgency: String?

        public var androidMessageOppoCategory: String?

        public var androidMessageOppoNotifyLevel: Int32?

        public var androidMessageVivoCategory: String?

        public var androidMusic: String?

        public var androidNotificationBarPriority: Int32?

        public var androidNotificationBarType: Int32?

        public var androidNotificationChannel: String?

        public var androidNotificationGroup: String?

        public var androidNotificationHonorChannel: String?

        public var androidNotificationHuaweiChannel: String?

        public var androidNotificationNotifyId: Int32?

        public var androidNotificationThreadId: String?

        public var androidNotificationVivoChannel: String?

        public var androidNotificationXiaomiChannel: String?

        public var androidNotifyType: String?

        public var androidOpenType: String?

        public var androidOpenUrl: String?

        public var androidOppoDeleteIntentData: String?

        public var androidOppoIntelligentIntent: String?

        public var androidOppoIntentEnv: Int32?

        public var androidOppoPrivateContentParameters: [String: String]?

        public var androidOppoPrivateMsgTemplateId: String?

        public var androidOppoPrivateTitleParameters: [String: String]?

        public var androidPopupActivity: String?

        public var androidPopupBody: String?

        public var androidPopupTitle: String?

        public var androidRemind: Bool?

        public var androidRenderStyle: String?

        public var androidTargetUserType: Int32?

        public var androidVivoPushMode: Int32?

        public var androidVivoReceiptId: String?

        public var androidXiaoMiActivity: String?

        public var androidXiaoMiNotifyBody: String?

        public var androidXiaoMiNotifyTitle: String?

        public var androidXiaomiBigPictureUrl: String?

        public var androidXiaomiImageUrl: String?

        public var body: String?

        public var deviceType: String?

        public var expireTime: String?

        public var harmonyAction: String?

        public var harmonyActionType: String?

        public var harmonyBadgeAddNum: Int32?

        public var harmonyBadgeSetNum: Int32?

        public var harmonyCategory: String?

        public var harmonyExtParameters: String?

        public var harmonyExtensionExtraData: String?

        public var harmonyExtensionPush: Bool?

        public var harmonyImageUrl: String?

        public var harmonyInboxContent: String?

        public var harmonyLiveViewPayload: String?

        public var harmonyNotificationSlotType: String?

        public var harmonyNotifyId: Int32?

        public var harmonyReceiptId: String?

        public var harmonyRemind: Bool?

        public var harmonyRemindBody: String?

        public var harmonyRemindTitle: String?

        public var harmonyRenderStyle: String?

        public var harmonyTestMessage: Bool?

        public var harmonyUri: String?

        public var jobKey: String?

        public var pushTime: String?

        public var pushType: String?

        public var sendChannels: String?

        public var sendSpeed: Int32?

        public var storeOffline: Bool?

        public var target: String?

        public var targetValue: String?

        public var title: String?

        public var trim: Bool?

        public var iOSApnsEnv: String?

        public var iOSBadge: Int32?

        public var iOSBadgeAutoIncrement: Bool?

        public var iOSExtParameters: String?

        public var iOSInterruptionLevel: String?

        public var iOSLiveActivityAttributes: String?

        public var iOSLiveActivityAttributesType: String?

        public var iOSLiveActivityContentState: String?

        public var iOSLiveActivityDismissalDate: Int64?

        public var iOSLiveActivityEvent: String?

        public var iOSLiveActivityId: String?

        public var iOSLiveActivityStaleDate: Int64?

        public var iOSMusic: String?

        public var iOSMutableContent: Bool?

        public var iOSNotificationCategory: String?

        public var iOSNotificationCollapseId: String?

        public var iOSNotificationThreadId: String?

        public var iOSRelevanceScore: Double?

        public var iOSRemind: Bool?

        public var iOSRemindBody: String?

        public var iOSSilentNotification: Bool?

        public var iOSSubtitle: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.androidActivity != nil {
                map["AndroidActivity"] = self.androidActivity!
            }
            if self.androidBadgeAddNum != nil {
                map["AndroidBadgeAddNum"] = self.androidBadgeAddNum!
            }
            if self.androidBadgeClass != nil {
                map["AndroidBadgeClass"] = self.androidBadgeClass!
            }
            if self.androidBadgeSetNum != nil {
                map["AndroidBadgeSetNum"] = self.androidBadgeSetNum!
            }
            if self.androidBigBody != nil {
                map["AndroidBigBody"] = self.androidBigBody!
            }
            if self.androidBigPictureUrl != nil {
                map["AndroidBigPictureUrl"] = self.androidBigPictureUrl!
            }
            if self.androidBigTitle != nil {
                map["AndroidBigTitle"] = self.androidBigTitle!
            }
            if self.androidExtParameters != nil {
                map["AndroidExtParameters"] = self.androidExtParameters!
            }
            if self.androidHonorTargetUserType != nil {
                map["AndroidHonorTargetUserType"] = self.androidHonorTargetUserType!
            }
            if self.androidHuaweiLiveNotificationPayload != nil {
                map["AndroidHuaweiLiveNotificationPayload"] = self.androidHuaweiLiveNotificationPayload!
            }
            if self.androidHuaweiReceiptId != nil {
                map["AndroidHuaweiReceiptId"] = self.androidHuaweiReceiptId!
            }
            if self.androidHuaweiTargetUserType != nil {
                map["AndroidHuaweiTargetUserType"] = self.androidHuaweiTargetUserType!
            }
            if self.androidImageUrl != nil {
                map["AndroidImageUrl"] = self.androidImageUrl!
            }
            if self.androidInboxBody != nil {
                map["AndroidInboxBody"] = self.androidInboxBody!
            }
            if self.androidMeizuNoticeMsgType != nil {
                map["AndroidMeizuNoticeMsgType"] = self.androidMeizuNoticeMsgType!
            }
            if self.androidMessageHuaweiCategory != nil {
                map["AndroidMessageHuaweiCategory"] = self.androidMessageHuaweiCategory!
            }
            if self.androidMessageHuaweiUrgency != nil {
                map["AndroidMessageHuaweiUrgency"] = self.androidMessageHuaweiUrgency!
            }
            if self.androidMessageOppoCategory != nil {
                map["AndroidMessageOppoCategory"] = self.androidMessageOppoCategory!
            }
            if self.androidMessageOppoNotifyLevel != nil {
                map["AndroidMessageOppoNotifyLevel"] = self.androidMessageOppoNotifyLevel!
            }
            if self.androidMessageVivoCategory != nil {
                map["AndroidMessageVivoCategory"] = self.androidMessageVivoCategory!
            }
            if self.androidMusic != nil {
                map["AndroidMusic"] = self.androidMusic!
            }
            if self.androidNotificationBarPriority != nil {
                map["AndroidNotificationBarPriority"] = self.androidNotificationBarPriority!
            }
            if self.androidNotificationBarType != nil {
                map["AndroidNotificationBarType"] = self.androidNotificationBarType!
            }
            if self.androidNotificationChannel != nil {
                map["AndroidNotificationChannel"] = self.androidNotificationChannel!
            }
            if self.androidNotificationGroup != nil {
                map["AndroidNotificationGroup"] = self.androidNotificationGroup!
            }
            if self.androidNotificationHonorChannel != nil {
                map["AndroidNotificationHonorChannel"] = self.androidNotificationHonorChannel!
            }
            if self.androidNotificationHuaweiChannel != nil {
                map["AndroidNotificationHuaweiChannel"] = self.androidNotificationHuaweiChannel!
            }
            if self.androidNotificationNotifyId != nil {
                map["AndroidNotificationNotifyId"] = self.androidNotificationNotifyId!
            }
            if self.androidNotificationThreadId != nil {
                map["AndroidNotificationThreadId"] = self.androidNotificationThreadId!
            }
            if self.androidNotificationVivoChannel != nil {
                map["AndroidNotificationVivoChannel"] = self.androidNotificationVivoChannel!
            }
            if self.androidNotificationXiaomiChannel != nil {
                map["AndroidNotificationXiaomiChannel"] = self.androidNotificationXiaomiChannel!
            }
            if self.androidNotifyType != nil {
                map["AndroidNotifyType"] = self.androidNotifyType!
            }
            if self.androidOpenType != nil {
                map["AndroidOpenType"] = self.androidOpenType!
            }
            if self.androidOpenUrl != nil {
                map["AndroidOpenUrl"] = self.androidOpenUrl!
            }
            if self.androidOppoDeleteIntentData != nil {
                map["AndroidOppoDeleteIntentData"] = self.androidOppoDeleteIntentData!
            }
            if self.androidOppoIntelligentIntent != nil {
                map["AndroidOppoIntelligentIntent"] = self.androidOppoIntelligentIntent!
            }
            if self.androidOppoIntentEnv != nil {
                map["AndroidOppoIntentEnv"] = self.androidOppoIntentEnv!
            }
            if self.androidOppoPrivateContentParameters != nil {
                map["AndroidOppoPrivateContentParameters"] = self.androidOppoPrivateContentParameters!
            }
            if self.androidOppoPrivateMsgTemplateId != nil {
                map["AndroidOppoPrivateMsgTemplateId"] = self.androidOppoPrivateMsgTemplateId!
            }
            if self.androidOppoPrivateTitleParameters != nil {
                map["AndroidOppoPrivateTitleParameters"] = self.androidOppoPrivateTitleParameters!
            }
            if self.androidPopupActivity != nil {
                map["AndroidPopupActivity"] = self.androidPopupActivity!
            }
            if self.androidPopupBody != nil {
                map["AndroidPopupBody"] = self.androidPopupBody!
            }
            if self.androidPopupTitle != nil {
                map["AndroidPopupTitle"] = self.androidPopupTitle!
            }
            if self.androidRemind != nil {
                map["AndroidRemind"] = self.androidRemind!
            }
            if self.androidRenderStyle != nil {
                map["AndroidRenderStyle"] = self.androidRenderStyle!
            }
            if self.androidTargetUserType != nil {
                map["AndroidTargetUserType"] = self.androidTargetUserType!
            }
            if self.androidVivoPushMode != nil {
                map["AndroidVivoPushMode"] = self.androidVivoPushMode!
            }
            if self.androidVivoReceiptId != nil {
                map["AndroidVivoReceiptId"] = self.androidVivoReceiptId!
            }
            if self.androidXiaoMiActivity != nil {
                map["AndroidXiaoMiActivity"] = self.androidXiaoMiActivity!
            }
            if self.androidXiaoMiNotifyBody != nil {
                map["AndroidXiaoMiNotifyBody"] = self.androidXiaoMiNotifyBody!
            }
            if self.androidXiaoMiNotifyTitle != nil {
                map["AndroidXiaoMiNotifyTitle"] = self.androidXiaoMiNotifyTitle!
            }
            if self.androidXiaomiBigPictureUrl != nil {
                map["AndroidXiaomiBigPictureUrl"] = self.androidXiaomiBigPictureUrl!
            }
            if self.androidXiaomiImageUrl != nil {
                map["AndroidXiaomiImageUrl"] = self.androidXiaomiImageUrl!
            }
            if self.body != nil {
                map["Body"] = self.body!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.harmonyAction != nil {
                map["HarmonyAction"] = self.harmonyAction!
            }
            if self.harmonyActionType != nil {
                map["HarmonyActionType"] = self.harmonyActionType!
            }
            if self.harmonyBadgeAddNum != nil {
                map["HarmonyBadgeAddNum"] = self.harmonyBadgeAddNum!
            }
            if self.harmonyBadgeSetNum != nil {
                map["HarmonyBadgeSetNum"] = self.harmonyBadgeSetNum!
            }
            if self.harmonyCategory != nil {
                map["HarmonyCategory"] = self.harmonyCategory!
            }
            if self.harmonyExtParameters != nil {
                map["HarmonyExtParameters"] = self.harmonyExtParameters!
            }
            if self.harmonyExtensionExtraData != nil {
                map["HarmonyExtensionExtraData"] = self.harmonyExtensionExtraData!
            }
            if self.harmonyExtensionPush != nil {
                map["HarmonyExtensionPush"] = self.harmonyExtensionPush!
            }
            if self.harmonyImageUrl != nil {
                map["HarmonyImageUrl"] = self.harmonyImageUrl!
            }
            if self.harmonyInboxContent != nil {
                map["HarmonyInboxContent"] = self.harmonyInboxContent!
            }
            if self.harmonyLiveViewPayload != nil {
                map["HarmonyLiveViewPayload"] = self.harmonyLiveViewPayload!
            }
            if self.harmonyNotificationSlotType != nil {
                map["HarmonyNotificationSlotType"] = self.harmonyNotificationSlotType!
            }
            if self.harmonyNotifyId != nil {
                map["HarmonyNotifyId"] = self.harmonyNotifyId!
            }
            if self.harmonyReceiptId != nil {
                map["HarmonyReceiptId"] = self.harmonyReceiptId!
            }
            if self.harmonyRemind != nil {
                map["HarmonyRemind"] = self.harmonyRemind!
            }
            if self.harmonyRemindBody != nil {
                map["HarmonyRemindBody"] = self.harmonyRemindBody!
            }
            if self.harmonyRemindTitle != nil {
                map["HarmonyRemindTitle"] = self.harmonyRemindTitle!
            }
            if self.harmonyRenderStyle != nil {
                map["HarmonyRenderStyle"] = self.harmonyRenderStyle!
            }
            if self.harmonyTestMessage != nil {
                map["HarmonyTestMessage"] = self.harmonyTestMessage!
            }
            if self.harmonyUri != nil {
                map["HarmonyUri"] = self.harmonyUri!
            }
            if self.jobKey != nil {
                map["JobKey"] = self.jobKey!
            }
            if self.pushTime != nil {
                map["PushTime"] = self.pushTime!
            }
            if self.pushType != nil {
                map["PushType"] = self.pushType!
            }
            if self.sendChannels != nil {
                map["SendChannels"] = self.sendChannels!
            }
            if self.sendSpeed != nil {
                map["SendSpeed"] = self.sendSpeed!
            }
            if self.storeOffline != nil {
                map["StoreOffline"] = self.storeOffline!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.targetValue != nil {
                map["TargetValue"] = self.targetValue!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.trim != nil {
                map["Trim"] = self.trim!
            }
            if self.iOSApnsEnv != nil {
                map["iOSApnsEnv"] = self.iOSApnsEnv!
            }
            if self.iOSBadge != nil {
                map["iOSBadge"] = self.iOSBadge!
            }
            if self.iOSBadgeAutoIncrement != nil {
                map["iOSBadgeAutoIncrement"] = self.iOSBadgeAutoIncrement!
            }
            if self.iOSExtParameters != nil {
                map["iOSExtParameters"] = self.iOSExtParameters!
            }
            if self.iOSInterruptionLevel != nil {
                map["iOSInterruptionLevel"] = self.iOSInterruptionLevel!
            }
            if self.iOSLiveActivityAttributes != nil {
                map["iOSLiveActivityAttributes"] = self.iOSLiveActivityAttributes!
            }
            if self.iOSLiveActivityAttributesType != nil {
                map["iOSLiveActivityAttributesType"] = self.iOSLiveActivityAttributesType!
            }
            if self.iOSLiveActivityContentState != nil {
                map["iOSLiveActivityContentState"] = self.iOSLiveActivityContentState!
            }
            if self.iOSLiveActivityDismissalDate != nil {
                map["iOSLiveActivityDismissalDate"] = self.iOSLiveActivityDismissalDate!
            }
            if self.iOSLiveActivityEvent != nil {
                map["iOSLiveActivityEvent"] = self.iOSLiveActivityEvent!
            }
            if self.iOSLiveActivityId != nil {
                map["iOSLiveActivityId"] = self.iOSLiveActivityId!
            }
            if self.iOSLiveActivityStaleDate != nil {
                map["iOSLiveActivityStaleDate"] = self.iOSLiveActivityStaleDate!
            }
            if self.iOSMusic != nil {
                map["iOSMusic"] = self.iOSMusic!
            }
            if self.iOSMutableContent != nil {
                map["iOSMutableContent"] = self.iOSMutableContent!
            }
            if self.iOSNotificationCategory != nil {
                map["iOSNotificationCategory"] = self.iOSNotificationCategory!
            }
            if self.iOSNotificationCollapseId != nil {
                map["iOSNotificationCollapseId"] = self.iOSNotificationCollapseId!
            }
            if self.iOSNotificationThreadId != nil {
                map["iOSNotificationThreadId"] = self.iOSNotificationThreadId!
            }
            if self.iOSRelevanceScore != nil {
                map["iOSRelevanceScore"] = self.iOSRelevanceScore!
            }
            if self.iOSRemind != nil {
                map["iOSRemind"] = self.iOSRemind!
            }
            if self.iOSRemindBody != nil {
                map["iOSRemindBody"] = self.iOSRemindBody!
            }
            if self.iOSSilentNotification != nil {
                map["iOSSilentNotification"] = self.iOSSilentNotification!
            }
            if self.iOSSubtitle != nil {
                map["iOSSubtitle"] = self.iOSSubtitle!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AndroidActivity"] as? String {
                self.androidActivity = value
            }
            if let value = dict["AndroidBadgeAddNum"] as? Int32 {
                self.androidBadgeAddNum = value
            }
            if let value = dict["AndroidBadgeClass"] as? String {
                self.androidBadgeClass = value
            }
            if let value = dict["AndroidBadgeSetNum"] as? Int32 {
                self.androidBadgeSetNum = value
            }
            if let value = dict["AndroidBigBody"] as? String {
                self.androidBigBody = value
            }
            if let value = dict["AndroidBigPictureUrl"] as? String {
                self.androidBigPictureUrl = value
            }
            if let value = dict["AndroidBigTitle"] as? String {
                self.androidBigTitle = value
            }
            if let value = dict["AndroidExtParameters"] as? String {
                self.androidExtParameters = value
            }
            if let value = dict["AndroidHonorTargetUserType"] as? Int32 {
                self.androidHonorTargetUserType = value
            }
            if let value = dict["AndroidHuaweiLiveNotificationPayload"] as? String {
                self.androidHuaweiLiveNotificationPayload = value
            }
            if let value = dict["AndroidHuaweiReceiptId"] as? String {
                self.androidHuaweiReceiptId = value
            }
            if let value = dict["AndroidHuaweiTargetUserType"] as? Int32 {
                self.androidHuaweiTargetUserType = value
            }
            if let value = dict["AndroidImageUrl"] as? String {
                self.androidImageUrl = value
            }
            if let value = dict["AndroidInboxBody"] as? String {
                self.androidInboxBody = value
            }
            if let value = dict["AndroidMeizuNoticeMsgType"] as? Int32 {
                self.androidMeizuNoticeMsgType = value
            }
            if let value = dict["AndroidMessageHuaweiCategory"] as? String {
                self.androidMessageHuaweiCategory = value
            }
            if let value = dict["AndroidMessageHuaweiUrgency"] as? String {
                self.androidMessageHuaweiUrgency = value
            }
            if let value = dict["AndroidMessageOppoCategory"] as? String {
                self.androidMessageOppoCategory = value
            }
            if let value = dict["AndroidMessageOppoNotifyLevel"] as? Int32 {
                self.androidMessageOppoNotifyLevel = value
            }
            if let value = dict["AndroidMessageVivoCategory"] as? String {
                self.androidMessageVivoCategory = value
            }
            if let value = dict["AndroidMusic"] as? String {
                self.androidMusic = value
            }
            if let value = dict["AndroidNotificationBarPriority"] as? Int32 {
                self.androidNotificationBarPriority = value
            }
            if let value = dict["AndroidNotificationBarType"] as? Int32 {
                self.androidNotificationBarType = value
            }
            if let value = dict["AndroidNotificationChannel"] as? String {
                self.androidNotificationChannel = value
            }
            if let value = dict["AndroidNotificationGroup"] as? String {
                self.androidNotificationGroup = value
            }
            if let value = dict["AndroidNotificationHonorChannel"] as? String {
                self.androidNotificationHonorChannel = value
            }
            if let value = dict["AndroidNotificationHuaweiChannel"] as? String {
                self.androidNotificationHuaweiChannel = value
            }
            if let value = dict["AndroidNotificationNotifyId"] as? Int32 {
                self.androidNotificationNotifyId = value
            }
            if let value = dict["AndroidNotificationThreadId"] as? String {
                self.androidNotificationThreadId = value
            }
            if let value = dict["AndroidNotificationVivoChannel"] as? String {
                self.androidNotificationVivoChannel = value
            }
            if let value = dict["AndroidNotificationXiaomiChannel"] as? String {
                self.androidNotificationXiaomiChannel = value
            }
            if let value = dict["AndroidNotifyType"] as? String {
                self.androidNotifyType = value
            }
            if let value = dict["AndroidOpenType"] as? String {
                self.androidOpenType = value
            }
            if let value = dict["AndroidOpenUrl"] as? String {
                self.androidOpenUrl = value
            }
            if let value = dict["AndroidOppoDeleteIntentData"] as? String {
                self.androidOppoDeleteIntentData = value
            }
            if let value = dict["AndroidOppoIntelligentIntent"] as? String {
                self.androidOppoIntelligentIntent = value
            }
            if let value = dict["AndroidOppoIntentEnv"] as? Int32 {
                self.androidOppoIntentEnv = value
            }
            if let value = dict["AndroidOppoPrivateContentParameters"] as? [String: String] {
                self.androidOppoPrivateContentParameters = value
            }
            if let value = dict["AndroidOppoPrivateMsgTemplateId"] as? String {
                self.androidOppoPrivateMsgTemplateId = value
            }
            if let value = dict["AndroidOppoPrivateTitleParameters"] as? [String: String] {
                self.androidOppoPrivateTitleParameters = value
            }
            if let value = dict["AndroidPopupActivity"] as? String {
                self.androidPopupActivity = value
            }
            if let value = dict["AndroidPopupBody"] as? String {
                self.androidPopupBody = value
            }
            if let value = dict["AndroidPopupTitle"] as? String {
                self.androidPopupTitle = value
            }
            if let value = dict["AndroidRemind"] as? Bool {
                self.androidRemind = value
            }
            if let value = dict["AndroidRenderStyle"] as? String {
                self.androidRenderStyle = value
            }
            if let value = dict["AndroidTargetUserType"] as? Int32 {
                self.androidTargetUserType = value
            }
            if let value = dict["AndroidVivoPushMode"] as? Int32 {
                self.androidVivoPushMode = value
            }
            if let value = dict["AndroidVivoReceiptId"] as? String {
                self.androidVivoReceiptId = value
            }
            if let value = dict["AndroidXiaoMiActivity"] as? String {
                self.androidXiaoMiActivity = value
            }
            if let value = dict["AndroidXiaoMiNotifyBody"] as? String {
                self.androidXiaoMiNotifyBody = value
            }
            if let value = dict["AndroidXiaoMiNotifyTitle"] as? String {
                self.androidXiaoMiNotifyTitle = value
            }
            if let value = dict["AndroidXiaomiBigPictureUrl"] as? String {
                self.androidXiaomiBigPictureUrl = value
            }
            if let value = dict["AndroidXiaomiImageUrl"] as? String {
                self.androidXiaomiImageUrl = value
            }
            if let value = dict["Body"] as? String {
                self.body = value
            }
            if let value = dict["DeviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["HarmonyAction"] as? String {
                self.harmonyAction = value
            }
            if let value = dict["HarmonyActionType"] as? String {
                self.harmonyActionType = value
            }
            if let value = dict["HarmonyBadgeAddNum"] as? Int32 {
                self.harmonyBadgeAddNum = value
            }
            if let value = dict["HarmonyBadgeSetNum"] as? Int32 {
                self.harmonyBadgeSetNum = value
            }
            if let value = dict["HarmonyCategory"] as? String {
                self.harmonyCategory = value
            }
            if let value = dict["HarmonyExtParameters"] as? String {
                self.harmonyExtParameters = value
            }
            if let value = dict["HarmonyExtensionExtraData"] as? String {
                self.harmonyExtensionExtraData = value
            }
            if let value = dict["HarmonyExtensionPush"] as? Bool {
                self.harmonyExtensionPush = value
            }
            if let value = dict["HarmonyImageUrl"] as? String {
                self.harmonyImageUrl = value
            }
            if let value = dict["HarmonyInboxContent"] as? String {
                self.harmonyInboxContent = value
            }
            if let value = dict["HarmonyLiveViewPayload"] as? String {
                self.harmonyLiveViewPayload = value
            }
            if let value = dict["HarmonyNotificationSlotType"] as? String {
                self.harmonyNotificationSlotType = value
            }
            if let value = dict["HarmonyNotifyId"] as? Int32 {
                self.harmonyNotifyId = value
            }
            if let value = dict["HarmonyReceiptId"] as? String {
                self.harmonyReceiptId = value
            }
            if let value = dict["HarmonyRemind"] as? Bool {
                self.harmonyRemind = value
            }
            if let value = dict["HarmonyRemindBody"] as? String {
                self.harmonyRemindBody = value
            }
            if let value = dict["HarmonyRemindTitle"] as? String {
                self.harmonyRemindTitle = value
            }
            if let value = dict["HarmonyRenderStyle"] as? String {
                self.harmonyRenderStyle = value
            }
            if let value = dict["HarmonyTestMessage"] as? Bool {
                self.harmonyTestMessage = value
            }
            if let value = dict["HarmonyUri"] as? String {
                self.harmonyUri = value
            }
            if let value = dict["JobKey"] as? String {
                self.jobKey = value
            }
            if let value = dict["PushTime"] as? String {
                self.pushTime = value
            }
            if let value = dict["PushType"] as? String {
                self.pushType = value
            }
            if let value = dict["SendChannels"] as? String {
                self.sendChannels = value
            }
            if let value = dict["SendSpeed"] as? Int32 {
                self.sendSpeed = value
            }
            if let value = dict["StoreOffline"] as? Bool {
                self.storeOffline = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["TargetValue"] as? String {
                self.targetValue = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Trim"] as? Bool {
                self.trim = value
            }
            if let value = dict["iOSApnsEnv"] as? String {
                self.iOSApnsEnv = value
            }
            if let value = dict["iOSBadge"] as? Int32 {
                self.iOSBadge = value
            }
            if let value = dict["iOSBadgeAutoIncrement"] as? Bool {
                self.iOSBadgeAutoIncrement = value
            }
            if let value = dict["iOSExtParameters"] as? String {
                self.iOSExtParameters = value
            }
            if let value = dict["iOSInterruptionLevel"] as? String {
                self.iOSInterruptionLevel = value
            }
            if let value = dict["iOSLiveActivityAttributes"] as? String {
                self.iOSLiveActivityAttributes = value
            }
            if let value = dict["iOSLiveActivityAttributesType"] as? String {
                self.iOSLiveActivityAttributesType = value
            }
            if let value = dict["iOSLiveActivityContentState"] as? String {
                self.iOSLiveActivityContentState = value
            }
            if let value = dict["iOSLiveActivityDismissalDate"] as? Int64 {
                self.iOSLiveActivityDismissalDate = value
            }
            if let value = dict["iOSLiveActivityEvent"] as? String {
                self.iOSLiveActivityEvent = value
            }
            if let value = dict["iOSLiveActivityId"] as? String {
                self.iOSLiveActivityId = value
            }
            if let value = dict["iOSLiveActivityStaleDate"] as? Int64 {
                self.iOSLiveActivityStaleDate = value
            }
            if let value = dict["iOSMusic"] as? String {
                self.iOSMusic = value
            }
            if let value = dict["iOSMutableContent"] as? Bool {
                self.iOSMutableContent = value
            }
            if let value = dict["iOSNotificationCategory"] as? String {
                self.iOSNotificationCategory = value
            }
            if let value = dict["iOSNotificationCollapseId"] as? String {
                self.iOSNotificationCollapseId = value
            }
            if let value = dict["iOSNotificationThreadId"] as? String {
                self.iOSNotificationThreadId = value
            }
            if let value = dict["iOSRelevanceScore"] as? Double {
                self.iOSRelevanceScore = value
            }
            if let value = dict["iOSRemind"] as? Bool {
                self.iOSRemind = value
            }
            if let value = dict["iOSRemindBody"] as? String {
                self.iOSRemindBody = value
            }
            if let value = dict["iOSSilentNotification"] as? Bool {
                self.iOSSilentNotification = value
            }
            if let value = dict["iOSSubtitle"] as? String {
                self.iOSSubtitle = value
            }
        }
    }
    public var appKey: Int64?

    public var idempotentToken: String?

    public var pushTask: [MassPushRequest.PushTask]?

    public override init() {
        super.init()
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
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.pushTask != nil {
            var tmp : [Any] = []
            for k in self.pushTask! {
                tmp.append(k.toMap())
            }
            map["PushTask"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["PushTask"] as? [Any?] {
            var tmp : [MassPushRequest.PushTask] = []
            for v in value {
                if v != nil {
                    var model = MassPushRequest.PushTask()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pushTask = tmp
        }
    }
}

public class MassPushResponseBody : Tea.TeaModel {
    public class MessageIds : Tea.TeaModel {
        public var messageId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MessageId"] as? [String] {
                self.messageId = value
            }
        }
    }
    public var messageIds: MassPushResponseBody.MessageIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.messageIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.messageIds != nil {
            map["MessageIds"] = self.messageIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageIds"] as? [String: Any?] {
            var model = MassPushResponseBody.MessageIds()
            model.fromMap(value)
            self.messageIds = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MassPushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MassPushResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MassPushResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MassPushV2Request : Tea.TeaModel {
    public var appKey: Int64?

    public var idempotentToken: String?

    public var pushTasks: [PushTask]?

    public override init() {
        super.init()
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
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.pushTasks != nil {
            var tmp : [Any] = []
            for k in self.pushTasks! {
                tmp.append(k.toMap())
            }
            map["PushTasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["PushTasks"] as? [Any?] {
            var tmp : [PushTask] = []
            for v in value {
                if v != nil {
                    var model = PushTask()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pushTasks = tmp
        }
    }
}

public class MassPushV2ShrinkRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var idempotentToken: String?

    public var pushTasksShrink: String?

    public override init() {
        super.init()
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
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.pushTasksShrink != nil {
            map["PushTasks"] = self.pushTasksShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["PushTasks"] as? String {
            self.pushTasksShrink = value
        }
    }
}

public class MassPushV2ResponseBody : Tea.TeaModel {
    public var messageIds: [String]?

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
        if self.messageIds != nil {
            map["MessageIds"] = self.messageIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageIds"] as? [String] {
            self.messageIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MassPushV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MassPushV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MassPushV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushRequest : Tea.TeaModel {
    public var androidActivity: String?

    public var androidBadgeAddNum: Int32?

    public var androidBadgeClass: String?

    public var androidBadgeSetNum: Int32?

    public var androidBigBody: String?

    public var androidBigPictureUrl: String?

    public var androidBigTitle: String?

    public var androidExtParameters: String?

    public var androidHonorTargetUserType: Int32?

    public var androidHuaweiLiveNotificationPayload: String?

    public var androidHuaweiReceiptId: String?

    public var androidHuaweiTargetUserType: Int32?

    public var androidImageUrl: String?

    public var androidInboxBody: String?

    public var androidMeizuNoticeMsgType: Int32?

    public var androidMessageHuaweiCategory: String?

    public var androidMessageHuaweiUrgency: String?

    public var androidMessageOppoCategory: String?

    public var androidMessageOppoNotifyLevel: Int32?

    public var androidMessageVivoCategory: String?

    public var androidMusic: String?

    public var androidNotificationBarPriority: Int32?

    public var androidNotificationBarType: Int32?

    public var androidNotificationChannel: String?

    public var androidNotificationGroup: String?

    public var androidNotificationHonorChannel: String?

    public var androidNotificationHuaweiChannel: String?

    public var androidNotificationNotifyId: Int32?

    public var androidNotificationThreadId: String?

    public var androidNotificationVivoChannel: String?

    public var androidNotificationXiaomiChannel: String?

    public var androidNotifyType: String?

    public var androidOpenType: String?

    public var androidOpenUrl: String?

    public var androidOppoDeleteIntentData: String?

    public var androidOppoIntelligentIntent: String?

    public var androidOppoIntentEnv: Int32?

    public var androidOppoPrivateContentParameters: [String: String]?

    public var androidOppoPrivateMsgTemplateId: String?

    public var androidOppoPrivateTitleParameters: [String: String]?

    public var androidPopupActivity: String?

    public var androidPopupBody: String?

    public var androidPopupTitle: String?

    public var androidRemind: Bool?

    public var androidRenderStyle: Int32?

    public var androidTargetUserType: Int32?

    public var androidVivoPushMode: Int32?

    public var androidVivoReceiptId: String?

    public var androidXiaoMiActivity: String?

    public var androidXiaoMiNotifyBody: String?

    public var androidXiaoMiNotifyTitle: String?

    public var androidXiaomiBigPictureUrl: String?

    public var androidXiaomiImageUrl: String?

    public var appKey: Int64?

    public var body: String?

    public var deviceType: String?

    public var expireTime: String?

    public var harmonyAction: String?

    public var harmonyActionType: String?

    public var harmonyBadgeAddNum: Int32?

    public var harmonyBadgeSetNum: Int32?

    public var harmonyCategory: String?

    public var harmonyExtParameters: String?

    public var harmonyExtensionExtraData: String?

    public var harmonyExtensionPush: Bool?

    public var harmonyImageUrl: String?

    public var harmonyInboxContent: String?

    public var harmonyLiveViewPayload: String?

    public var harmonyNotificationSlotType: String?

    public var harmonyNotifyId: Int32?

    public var harmonyReceiptId: String?

    public var harmonyRemind: Bool?

    public var harmonyRemindBody: String?

    public var harmonyRemindTitle: String?

    public var harmonyRenderStyle: String?

    public var harmonyTestMessage: Bool?

    public var harmonyUri: String?

    public var idempotentToken: String?

    public var jobKey: String?

    public var pushTime: String?

    public var pushType: String?

    public var sendChannels: String?

    public var sendSpeed: Int32?

    public var smsDelaySecs: Int32?

    public var smsParams: String?

    public var smsSendPolicy: Int32?

    public var smsSignName: String?

    public var smsTemplateName: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public var trim: Bool?

    public var iOSApnsEnv: String?

    public var iOSBadge: Int32?

    public var iOSBadgeAutoIncrement: Bool?

    public var iOSExtParameters: String?

    public var iOSInterruptionLevel: String?

    public var iOSLiveActivityAttributes: String?

    public var iOSLiveActivityAttributesType: String?

    public var iOSLiveActivityContentState: String?

    public var iOSLiveActivityDismissalDate: Int64?

    public var iOSLiveActivityEvent: String?

    public var iOSLiveActivityId: String?

    public var iOSLiveActivityStaleDate: Int64?

    public var iOSMusic: String?

    public var iOSMutableContent: Bool?

    public var iOSNotificationCategory: String?

    public var iOSNotificationCollapseId: String?

    public var iOSNotificationThreadId: String?

    public var iOSRelevanceScore: Double?

    public var iOSRemind: Bool?

    public var iOSRemindBody: String?

    public var iOSSilentNotification: Bool?

    public var iOSSubtitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidActivity != nil {
            map["AndroidActivity"] = self.androidActivity!
        }
        if self.androidBadgeAddNum != nil {
            map["AndroidBadgeAddNum"] = self.androidBadgeAddNum!
        }
        if self.androidBadgeClass != nil {
            map["AndroidBadgeClass"] = self.androidBadgeClass!
        }
        if self.androidBadgeSetNum != nil {
            map["AndroidBadgeSetNum"] = self.androidBadgeSetNum!
        }
        if self.androidBigBody != nil {
            map["AndroidBigBody"] = self.androidBigBody!
        }
        if self.androidBigPictureUrl != nil {
            map["AndroidBigPictureUrl"] = self.androidBigPictureUrl!
        }
        if self.androidBigTitle != nil {
            map["AndroidBigTitle"] = self.androidBigTitle!
        }
        if self.androidExtParameters != nil {
            map["AndroidExtParameters"] = self.androidExtParameters!
        }
        if self.androidHonorTargetUserType != nil {
            map["AndroidHonorTargetUserType"] = self.androidHonorTargetUserType!
        }
        if self.androidHuaweiLiveNotificationPayload != nil {
            map["AndroidHuaweiLiveNotificationPayload"] = self.androidHuaweiLiveNotificationPayload!
        }
        if self.androidHuaweiReceiptId != nil {
            map["AndroidHuaweiReceiptId"] = self.androidHuaweiReceiptId!
        }
        if self.androidHuaweiTargetUserType != nil {
            map["AndroidHuaweiTargetUserType"] = self.androidHuaweiTargetUserType!
        }
        if self.androidImageUrl != nil {
            map["AndroidImageUrl"] = self.androidImageUrl!
        }
        if self.androidInboxBody != nil {
            map["AndroidInboxBody"] = self.androidInboxBody!
        }
        if self.androidMeizuNoticeMsgType != nil {
            map["AndroidMeizuNoticeMsgType"] = self.androidMeizuNoticeMsgType!
        }
        if self.androidMessageHuaweiCategory != nil {
            map["AndroidMessageHuaweiCategory"] = self.androidMessageHuaweiCategory!
        }
        if self.androidMessageHuaweiUrgency != nil {
            map["AndroidMessageHuaweiUrgency"] = self.androidMessageHuaweiUrgency!
        }
        if self.androidMessageOppoCategory != nil {
            map["AndroidMessageOppoCategory"] = self.androidMessageOppoCategory!
        }
        if self.androidMessageOppoNotifyLevel != nil {
            map["AndroidMessageOppoNotifyLevel"] = self.androidMessageOppoNotifyLevel!
        }
        if self.androidMessageVivoCategory != nil {
            map["AndroidMessageVivoCategory"] = self.androidMessageVivoCategory!
        }
        if self.androidMusic != nil {
            map["AndroidMusic"] = self.androidMusic!
        }
        if self.androidNotificationBarPriority != nil {
            map["AndroidNotificationBarPriority"] = self.androidNotificationBarPriority!
        }
        if self.androidNotificationBarType != nil {
            map["AndroidNotificationBarType"] = self.androidNotificationBarType!
        }
        if self.androidNotificationChannel != nil {
            map["AndroidNotificationChannel"] = self.androidNotificationChannel!
        }
        if self.androidNotificationGroup != nil {
            map["AndroidNotificationGroup"] = self.androidNotificationGroup!
        }
        if self.androidNotificationHonorChannel != nil {
            map["AndroidNotificationHonorChannel"] = self.androidNotificationHonorChannel!
        }
        if self.androidNotificationHuaweiChannel != nil {
            map["AndroidNotificationHuaweiChannel"] = self.androidNotificationHuaweiChannel!
        }
        if self.androidNotificationNotifyId != nil {
            map["AndroidNotificationNotifyId"] = self.androidNotificationNotifyId!
        }
        if self.androidNotificationThreadId != nil {
            map["AndroidNotificationThreadId"] = self.androidNotificationThreadId!
        }
        if self.androidNotificationVivoChannel != nil {
            map["AndroidNotificationVivoChannel"] = self.androidNotificationVivoChannel!
        }
        if self.androidNotificationXiaomiChannel != nil {
            map["AndroidNotificationXiaomiChannel"] = self.androidNotificationXiaomiChannel!
        }
        if self.androidNotifyType != nil {
            map["AndroidNotifyType"] = self.androidNotifyType!
        }
        if self.androidOpenType != nil {
            map["AndroidOpenType"] = self.androidOpenType!
        }
        if self.androidOpenUrl != nil {
            map["AndroidOpenUrl"] = self.androidOpenUrl!
        }
        if self.androidOppoDeleteIntentData != nil {
            map["AndroidOppoDeleteIntentData"] = self.androidOppoDeleteIntentData!
        }
        if self.androidOppoIntelligentIntent != nil {
            map["AndroidOppoIntelligentIntent"] = self.androidOppoIntelligentIntent!
        }
        if self.androidOppoIntentEnv != nil {
            map["AndroidOppoIntentEnv"] = self.androidOppoIntentEnv!
        }
        if self.androidOppoPrivateContentParameters != nil {
            map["AndroidOppoPrivateContentParameters"] = self.androidOppoPrivateContentParameters!
        }
        if self.androidOppoPrivateMsgTemplateId != nil {
            map["AndroidOppoPrivateMsgTemplateId"] = self.androidOppoPrivateMsgTemplateId!
        }
        if self.androidOppoPrivateTitleParameters != nil {
            map["AndroidOppoPrivateTitleParameters"] = self.androidOppoPrivateTitleParameters!
        }
        if self.androidPopupActivity != nil {
            map["AndroidPopupActivity"] = self.androidPopupActivity!
        }
        if self.androidPopupBody != nil {
            map["AndroidPopupBody"] = self.androidPopupBody!
        }
        if self.androidPopupTitle != nil {
            map["AndroidPopupTitle"] = self.androidPopupTitle!
        }
        if self.androidRemind != nil {
            map["AndroidRemind"] = self.androidRemind!
        }
        if self.androidRenderStyle != nil {
            map["AndroidRenderStyle"] = self.androidRenderStyle!
        }
        if self.androidTargetUserType != nil {
            map["AndroidTargetUserType"] = self.androidTargetUserType!
        }
        if self.androidVivoPushMode != nil {
            map["AndroidVivoPushMode"] = self.androidVivoPushMode!
        }
        if self.androidVivoReceiptId != nil {
            map["AndroidVivoReceiptId"] = self.androidVivoReceiptId!
        }
        if self.androidXiaoMiActivity != nil {
            map["AndroidXiaoMiActivity"] = self.androidXiaoMiActivity!
        }
        if self.androidXiaoMiNotifyBody != nil {
            map["AndroidXiaoMiNotifyBody"] = self.androidXiaoMiNotifyBody!
        }
        if self.androidXiaoMiNotifyTitle != nil {
            map["AndroidXiaoMiNotifyTitle"] = self.androidXiaoMiNotifyTitle!
        }
        if self.androidXiaomiBigPictureUrl != nil {
            map["AndroidXiaomiBigPictureUrl"] = self.androidXiaomiBigPictureUrl!
        }
        if self.androidXiaomiImageUrl != nil {
            map["AndroidXiaomiImageUrl"] = self.androidXiaomiImageUrl!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.harmonyAction != nil {
            map["HarmonyAction"] = self.harmonyAction!
        }
        if self.harmonyActionType != nil {
            map["HarmonyActionType"] = self.harmonyActionType!
        }
        if self.harmonyBadgeAddNum != nil {
            map["HarmonyBadgeAddNum"] = self.harmonyBadgeAddNum!
        }
        if self.harmonyBadgeSetNum != nil {
            map["HarmonyBadgeSetNum"] = self.harmonyBadgeSetNum!
        }
        if self.harmonyCategory != nil {
            map["HarmonyCategory"] = self.harmonyCategory!
        }
        if self.harmonyExtParameters != nil {
            map["HarmonyExtParameters"] = self.harmonyExtParameters!
        }
        if self.harmonyExtensionExtraData != nil {
            map["HarmonyExtensionExtraData"] = self.harmonyExtensionExtraData!
        }
        if self.harmonyExtensionPush != nil {
            map["HarmonyExtensionPush"] = self.harmonyExtensionPush!
        }
        if self.harmonyImageUrl != nil {
            map["HarmonyImageUrl"] = self.harmonyImageUrl!
        }
        if self.harmonyInboxContent != nil {
            map["HarmonyInboxContent"] = self.harmonyInboxContent!
        }
        if self.harmonyLiveViewPayload != nil {
            map["HarmonyLiveViewPayload"] = self.harmonyLiveViewPayload!
        }
        if self.harmonyNotificationSlotType != nil {
            map["HarmonyNotificationSlotType"] = self.harmonyNotificationSlotType!
        }
        if self.harmonyNotifyId != nil {
            map["HarmonyNotifyId"] = self.harmonyNotifyId!
        }
        if self.harmonyReceiptId != nil {
            map["HarmonyReceiptId"] = self.harmonyReceiptId!
        }
        if self.harmonyRemind != nil {
            map["HarmonyRemind"] = self.harmonyRemind!
        }
        if self.harmonyRemindBody != nil {
            map["HarmonyRemindBody"] = self.harmonyRemindBody!
        }
        if self.harmonyRemindTitle != nil {
            map["HarmonyRemindTitle"] = self.harmonyRemindTitle!
        }
        if self.harmonyRenderStyle != nil {
            map["HarmonyRenderStyle"] = self.harmonyRenderStyle!
        }
        if self.harmonyTestMessage != nil {
            map["HarmonyTestMessage"] = self.harmonyTestMessage!
        }
        if self.harmonyUri != nil {
            map["HarmonyUri"] = self.harmonyUri!
        }
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.pushTime != nil {
            map["PushTime"] = self.pushTime!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.sendChannels != nil {
            map["SendChannels"] = self.sendChannels!
        }
        if self.sendSpeed != nil {
            map["SendSpeed"] = self.sendSpeed!
        }
        if self.smsDelaySecs != nil {
            map["SmsDelaySecs"] = self.smsDelaySecs!
        }
        if self.smsParams != nil {
            map["SmsParams"] = self.smsParams!
        }
        if self.smsSendPolicy != nil {
            map["SmsSendPolicy"] = self.smsSendPolicy!
        }
        if self.smsSignName != nil {
            map["SmsSignName"] = self.smsSignName!
        }
        if self.smsTemplateName != nil {
            map["SmsTemplateName"] = self.smsTemplateName!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.trim != nil {
            map["Trim"] = self.trim!
        }
        if self.iOSApnsEnv != nil {
            map["iOSApnsEnv"] = self.iOSApnsEnv!
        }
        if self.iOSBadge != nil {
            map["iOSBadge"] = self.iOSBadge!
        }
        if self.iOSBadgeAutoIncrement != nil {
            map["iOSBadgeAutoIncrement"] = self.iOSBadgeAutoIncrement!
        }
        if self.iOSExtParameters != nil {
            map["iOSExtParameters"] = self.iOSExtParameters!
        }
        if self.iOSInterruptionLevel != nil {
            map["iOSInterruptionLevel"] = self.iOSInterruptionLevel!
        }
        if self.iOSLiveActivityAttributes != nil {
            map["iOSLiveActivityAttributes"] = self.iOSLiveActivityAttributes!
        }
        if self.iOSLiveActivityAttributesType != nil {
            map["iOSLiveActivityAttributesType"] = self.iOSLiveActivityAttributesType!
        }
        if self.iOSLiveActivityContentState != nil {
            map["iOSLiveActivityContentState"] = self.iOSLiveActivityContentState!
        }
        if self.iOSLiveActivityDismissalDate != nil {
            map["iOSLiveActivityDismissalDate"] = self.iOSLiveActivityDismissalDate!
        }
        if self.iOSLiveActivityEvent != nil {
            map["iOSLiveActivityEvent"] = self.iOSLiveActivityEvent!
        }
        if self.iOSLiveActivityId != nil {
            map["iOSLiveActivityId"] = self.iOSLiveActivityId!
        }
        if self.iOSLiveActivityStaleDate != nil {
            map["iOSLiveActivityStaleDate"] = self.iOSLiveActivityStaleDate!
        }
        if self.iOSMusic != nil {
            map["iOSMusic"] = self.iOSMusic!
        }
        if self.iOSMutableContent != nil {
            map["iOSMutableContent"] = self.iOSMutableContent!
        }
        if self.iOSNotificationCategory != nil {
            map["iOSNotificationCategory"] = self.iOSNotificationCategory!
        }
        if self.iOSNotificationCollapseId != nil {
            map["iOSNotificationCollapseId"] = self.iOSNotificationCollapseId!
        }
        if self.iOSNotificationThreadId != nil {
            map["iOSNotificationThreadId"] = self.iOSNotificationThreadId!
        }
        if self.iOSRelevanceScore != nil {
            map["iOSRelevanceScore"] = self.iOSRelevanceScore!
        }
        if self.iOSRemind != nil {
            map["iOSRemind"] = self.iOSRemind!
        }
        if self.iOSRemindBody != nil {
            map["iOSRemindBody"] = self.iOSRemindBody!
        }
        if self.iOSSilentNotification != nil {
            map["iOSSilentNotification"] = self.iOSSilentNotification!
        }
        if self.iOSSubtitle != nil {
            map["iOSSubtitle"] = self.iOSSubtitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidActivity"] as? String {
            self.androidActivity = value
        }
        if let value = dict["AndroidBadgeAddNum"] as? Int32 {
            self.androidBadgeAddNum = value
        }
        if let value = dict["AndroidBadgeClass"] as? String {
            self.androidBadgeClass = value
        }
        if let value = dict["AndroidBadgeSetNum"] as? Int32 {
            self.androidBadgeSetNum = value
        }
        if let value = dict["AndroidBigBody"] as? String {
            self.androidBigBody = value
        }
        if let value = dict["AndroidBigPictureUrl"] as? String {
            self.androidBigPictureUrl = value
        }
        if let value = dict["AndroidBigTitle"] as? String {
            self.androidBigTitle = value
        }
        if let value = dict["AndroidExtParameters"] as? String {
            self.androidExtParameters = value
        }
        if let value = dict["AndroidHonorTargetUserType"] as? Int32 {
            self.androidHonorTargetUserType = value
        }
        if let value = dict["AndroidHuaweiLiveNotificationPayload"] as? String {
            self.androidHuaweiLiveNotificationPayload = value
        }
        if let value = dict["AndroidHuaweiReceiptId"] as? String {
            self.androidHuaweiReceiptId = value
        }
        if let value = dict["AndroidHuaweiTargetUserType"] as? Int32 {
            self.androidHuaweiTargetUserType = value
        }
        if let value = dict["AndroidImageUrl"] as? String {
            self.androidImageUrl = value
        }
        if let value = dict["AndroidInboxBody"] as? String {
            self.androidInboxBody = value
        }
        if let value = dict["AndroidMeizuNoticeMsgType"] as? Int32 {
            self.androidMeizuNoticeMsgType = value
        }
        if let value = dict["AndroidMessageHuaweiCategory"] as? String {
            self.androidMessageHuaweiCategory = value
        }
        if let value = dict["AndroidMessageHuaweiUrgency"] as? String {
            self.androidMessageHuaweiUrgency = value
        }
        if let value = dict["AndroidMessageOppoCategory"] as? String {
            self.androidMessageOppoCategory = value
        }
        if let value = dict["AndroidMessageOppoNotifyLevel"] as? Int32 {
            self.androidMessageOppoNotifyLevel = value
        }
        if let value = dict["AndroidMessageVivoCategory"] as? String {
            self.androidMessageVivoCategory = value
        }
        if let value = dict["AndroidMusic"] as? String {
            self.androidMusic = value
        }
        if let value = dict["AndroidNotificationBarPriority"] as? Int32 {
            self.androidNotificationBarPriority = value
        }
        if let value = dict["AndroidNotificationBarType"] as? Int32 {
            self.androidNotificationBarType = value
        }
        if let value = dict["AndroidNotificationChannel"] as? String {
            self.androidNotificationChannel = value
        }
        if let value = dict["AndroidNotificationGroup"] as? String {
            self.androidNotificationGroup = value
        }
        if let value = dict["AndroidNotificationHonorChannel"] as? String {
            self.androidNotificationHonorChannel = value
        }
        if let value = dict["AndroidNotificationHuaweiChannel"] as? String {
            self.androidNotificationHuaweiChannel = value
        }
        if let value = dict["AndroidNotificationNotifyId"] as? Int32 {
            self.androidNotificationNotifyId = value
        }
        if let value = dict["AndroidNotificationThreadId"] as? String {
            self.androidNotificationThreadId = value
        }
        if let value = dict["AndroidNotificationVivoChannel"] as? String {
            self.androidNotificationVivoChannel = value
        }
        if let value = dict["AndroidNotificationXiaomiChannel"] as? String {
            self.androidNotificationXiaomiChannel = value
        }
        if let value = dict["AndroidNotifyType"] as? String {
            self.androidNotifyType = value
        }
        if let value = dict["AndroidOpenType"] as? String {
            self.androidOpenType = value
        }
        if let value = dict["AndroidOpenUrl"] as? String {
            self.androidOpenUrl = value
        }
        if let value = dict["AndroidOppoDeleteIntentData"] as? String {
            self.androidOppoDeleteIntentData = value
        }
        if let value = dict["AndroidOppoIntelligentIntent"] as? String {
            self.androidOppoIntelligentIntent = value
        }
        if let value = dict["AndroidOppoIntentEnv"] as? Int32 {
            self.androidOppoIntentEnv = value
        }
        if let value = dict["AndroidOppoPrivateContentParameters"] as? [String: String] {
            self.androidOppoPrivateContentParameters = value
        }
        if let value = dict["AndroidOppoPrivateMsgTemplateId"] as? String {
            self.androidOppoPrivateMsgTemplateId = value
        }
        if let value = dict["AndroidOppoPrivateTitleParameters"] as? [String: String] {
            self.androidOppoPrivateTitleParameters = value
        }
        if let value = dict["AndroidPopupActivity"] as? String {
            self.androidPopupActivity = value
        }
        if let value = dict["AndroidPopupBody"] as? String {
            self.androidPopupBody = value
        }
        if let value = dict["AndroidPopupTitle"] as? String {
            self.androidPopupTitle = value
        }
        if let value = dict["AndroidRemind"] as? Bool {
            self.androidRemind = value
        }
        if let value = dict["AndroidRenderStyle"] as? Int32 {
            self.androidRenderStyle = value
        }
        if let value = dict["AndroidTargetUserType"] as? Int32 {
            self.androidTargetUserType = value
        }
        if let value = dict["AndroidVivoPushMode"] as? Int32 {
            self.androidVivoPushMode = value
        }
        if let value = dict["AndroidVivoReceiptId"] as? String {
            self.androidVivoReceiptId = value
        }
        if let value = dict["AndroidXiaoMiActivity"] as? String {
            self.androidXiaoMiActivity = value
        }
        if let value = dict["AndroidXiaoMiNotifyBody"] as? String {
            self.androidXiaoMiNotifyBody = value
        }
        if let value = dict["AndroidXiaoMiNotifyTitle"] as? String {
            self.androidXiaoMiNotifyTitle = value
        }
        if let value = dict["AndroidXiaomiBigPictureUrl"] as? String {
            self.androidXiaomiBigPictureUrl = value
        }
        if let value = dict["AndroidXiaomiImageUrl"] as? String {
            self.androidXiaomiImageUrl = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["HarmonyAction"] as? String {
            self.harmonyAction = value
        }
        if let value = dict["HarmonyActionType"] as? String {
            self.harmonyActionType = value
        }
        if let value = dict["HarmonyBadgeAddNum"] as? Int32 {
            self.harmonyBadgeAddNum = value
        }
        if let value = dict["HarmonyBadgeSetNum"] as? Int32 {
            self.harmonyBadgeSetNum = value
        }
        if let value = dict["HarmonyCategory"] as? String {
            self.harmonyCategory = value
        }
        if let value = dict["HarmonyExtParameters"] as? String {
            self.harmonyExtParameters = value
        }
        if let value = dict["HarmonyExtensionExtraData"] as? String {
            self.harmonyExtensionExtraData = value
        }
        if let value = dict["HarmonyExtensionPush"] as? Bool {
            self.harmonyExtensionPush = value
        }
        if let value = dict["HarmonyImageUrl"] as? String {
            self.harmonyImageUrl = value
        }
        if let value = dict["HarmonyInboxContent"] as? String {
            self.harmonyInboxContent = value
        }
        if let value = dict["HarmonyLiveViewPayload"] as? String {
            self.harmonyLiveViewPayload = value
        }
        if let value = dict["HarmonyNotificationSlotType"] as? String {
            self.harmonyNotificationSlotType = value
        }
        if let value = dict["HarmonyNotifyId"] as? Int32 {
            self.harmonyNotifyId = value
        }
        if let value = dict["HarmonyReceiptId"] as? String {
            self.harmonyReceiptId = value
        }
        if let value = dict["HarmonyRemind"] as? Bool {
            self.harmonyRemind = value
        }
        if let value = dict["HarmonyRemindBody"] as? String {
            self.harmonyRemindBody = value
        }
        if let value = dict["HarmonyRemindTitle"] as? String {
            self.harmonyRemindTitle = value
        }
        if let value = dict["HarmonyRenderStyle"] as? String {
            self.harmonyRenderStyle = value
        }
        if let value = dict["HarmonyTestMessage"] as? Bool {
            self.harmonyTestMessage = value
        }
        if let value = dict["HarmonyUri"] as? String {
            self.harmonyUri = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["JobKey"] as? String {
            self.jobKey = value
        }
        if let value = dict["PushTime"] as? String {
            self.pushTime = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["SendChannels"] as? String {
            self.sendChannels = value
        }
        if let value = dict["SendSpeed"] as? Int32 {
            self.sendSpeed = value
        }
        if let value = dict["SmsDelaySecs"] as? Int32 {
            self.smsDelaySecs = value
        }
        if let value = dict["SmsParams"] as? String {
            self.smsParams = value
        }
        if let value = dict["SmsSendPolicy"] as? Int32 {
            self.smsSendPolicy = value
        }
        if let value = dict["SmsSignName"] as? String {
            self.smsSignName = value
        }
        if let value = dict["SmsTemplateName"] as? String {
            self.smsTemplateName = value
        }
        if let value = dict["StoreOffline"] as? Bool {
            self.storeOffline = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Trim"] as? Bool {
            self.trim = value
        }
        if let value = dict["iOSApnsEnv"] as? String {
            self.iOSApnsEnv = value
        }
        if let value = dict["iOSBadge"] as? Int32 {
            self.iOSBadge = value
        }
        if let value = dict["iOSBadgeAutoIncrement"] as? Bool {
            self.iOSBadgeAutoIncrement = value
        }
        if let value = dict["iOSExtParameters"] as? String {
            self.iOSExtParameters = value
        }
        if let value = dict["iOSInterruptionLevel"] as? String {
            self.iOSInterruptionLevel = value
        }
        if let value = dict["iOSLiveActivityAttributes"] as? String {
            self.iOSLiveActivityAttributes = value
        }
        if let value = dict["iOSLiveActivityAttributesType"] as? String {
            self.iOSLiveActivityAttributesType = value
        }
        if let value = dict["iOSLiveActivityContentState"] as? String {
            self.iOSLiveActivityContentState = value
        }
        if let value = dict["iOSLiveActivityDismissalDate"] as? Int64 {
            self.iOSLiveActivityDismissalDate = value
        }
        if let value = dict["iOSLiveActivityEvent"] as? String {
            self.iOSLiveActivityEvent = value
        }
        if let value = dict["iOSLiveActivityId"] as? String {
            self.iOSLiveActivityId = value
        }
        if let value = dict["iOSLiveActivityStaleDate"] as? Int64 {
            self.iOSLiveActivityStaleDate = value
        }
        if let value = dict["iOSMusic"] as? String {
            self.iOSMusic = value
        }
        if let value = dict["iOSMutableContent"] as? Bool {
            self.iOSMutableContent = value
        }
        if let value = dict["iOSNotificationCategory"] as? String {
            self.iOSNotificationCategory = value
        }
        if let value = dict["iOSNotificationCollapseId"] as? String {
            self.iOSNotificationCollapseId = value
        }
        if let value = dict["iOSNotificationThreadId"] as? String {
            self.iOSNotificationThreadId = value
        }
        if let value = dict["iOSRelevanceScore"] as? Double {
            self.iOSRelevanceScore = value
        }
        if let value = dict["iOSRemind"] as? Bool {
            self.iOSRemind = value
        }
        if let value = dict["iOSRemindBody"] as? String {
            self.iOSRemindBody = value
        }
        if let value = dict["iOSSilentNotification"] as? Bool {
            self.iOSSilentNotification = value
        }
        if let value = dict["iOSSubtitle"] as? String {
            self.iOSSubtitle = value
        }
    }
}

public class PushShrinkRequest : Tea.TeaModel {
    public var androidActivity: String?

    public var androidBadgeAddNum: Int32?

    public var androidBadgeClass: String?

    public var androidBadgeSetNum: Int32?

    public var androidBigBody: String?

    public var androidBigPictureUrl: String?

    public var androidBigTitle: String?

    public var androidExtParameters: String?

    public var androidHonorTargetUserType: Int32?

    public var androidHuaweiLiveNotificationPayload: String?

    public var androidHuaweiReceiptId: String?

    public var androidHuaweiTargetUserType: Int32?

    public var androidImageUrl: String?

    public var androidInboxBody: String?

    public var androidMeizuNoticeMsgType: Int32?

    public var androidMessageHuaweiCategory: String?

    public var androidMessageHuaweiUrgency: String?

    public var androidMessageOppoCategory: String?

    public var androidMessageOppoNotifyLevel: Int32?

    public var androidMessageVivoCategory: String?

    public var androidMusic: String?

    public var androidNotificationBarPriority: Int32?

    public var androidNotificationBarType: Int32?

    public var androidNotificationChannel: String?

    public var androidNotificationGroup: String?

    public var androidNotificationHonorChannel: String?

    public var androidNotificationHuaweiChannel: String?

    public var androidNotificationNotifyId: Int32?

    public var androidNotificationThreadId: String?

    public var androidNotificationVivoChannel: String?

    public var androidNotificationXiaomiChannel: String?

    public var androidNotifyType: String?

    public var androidOpenType: String?

    public var androidOpenUrl: String?

    public var androidOppoDeleteIntentData: String?

    public var androidOppoIntelligentIntent: String?

    public var androidOppoIntentEnv: Int32?

    public var androidOppoPrivateContentParametersShrink: String?

    public var androidOppoPrivateMsgTemplateId: String?

    public var androidOppoPrivateTitleParametersShrink: String?

    public var androidPopupActivity: String?

    public var androidPopupBody: String?

    public var androidPopupTitle: String?

    public var androidRemind: Bool?

    public var androidRenderStyle: Int32?

    public var androidTargetUserType: Int32?

    public var androidVivoPushMode: Int32?

    public var androidVivoReceiptId: String?

    public var androidXiaoMiActivity: String?

    public var androidXiaoMiNotifyBody: String?

    public var androidXiaoMiNotifyTitle: String?

    public var androidXiaomiBigPictureUrl: String?

    public var androidXiaomiImageUrl: String?

    public var appKey: Int64?

    public var body: String?

    public var deviceType: String?

    public var expireTime: String?

    public var harmonyAction: String?

    public var harmonyActionType: String?

    public var harmonyBadgeAddNum: Int32?

    public var harmonyBadgeSetNum: Int32?

    public var harmonyCategory: String?

    public var harmonyExtParameters: String?

    public var harmonyExtensionExtraData: String?

    public var harmonyExtensionPush: Bool?

    public var harmonyImageUrl: String?

    public var harmonyInboxContent: String?

    public var harmonyLiveViewPayload: String?

    public var harmonyNotificationSlotType: String?

    public var harmonyNotifyId: Int32?

    public var harmonyReceiptId: String?

    public var harmonyRemind: Bool?

    public var harmonyRemindBody: String?

    public var harmonyRemindTitle: String?

    public var harmonyRenderStyle: String?

    public var harmonyTestMessage: Bool?

    public var harmonyUri: String?

    public var idempotentToken: String?

    public var jobKey: String?

    public var pushTime: String?

    public var pushType: String?

    public var sendChannels: String?

    public var sendSpeed: Int32?

    public var smsDelaySecs: Int32?

    public var smsParams: String?

    public var smsSendPolicy: Int32?

    public var smsSignName: String?

    public var smsTemplateName: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

    public var title: String?

    public var trim: Bool?

    public var iOSApnsEnv: String?

    public var iOSBadge: Int32?

    public var iOSBadgeAutoIncrement: Bool?

    public var iOSExtParameters: String?

    public var iOSInterruptionLevel: String?

    public var iOSLiveActivityAttributes: String?

    public var iOSLiveActivityAttributesType: String?

    public var iOSLiveActivityContentState: String?

    public var iOSLiveActivityDismissalDate: Int64?

    public var iOSLiveActivityEvent: String?

    public var iOSLiveActivityId: String?

    public var iOSLiveActivityStaleDate: Int64?

    public var iOSMusic: String?

    public var iOSMutableContent: Bool?

    public var iOSNotificationCategory: String?

    public var iOSNotificationCollapseId: String?

    public var iOSNotificationThreadId: String?

    public var iOSRelevanceScore: Double?

    public var iOSRemind: Bool?

    public var iOSRemindBody: String?

    public var iOSSilentNotification: Bool?

    public var iOSSubtitle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidActivity != nil {
            map["AndroidActivity"] = self.androidActivity!
        }
        if self.androidBadgeAddNum != nil {
            map["AndroidBadgeAddNum"] = self.androidBadgeAddNum!
        }
        if self.androidBadgeClass != nil {
            map["AndroidBadgeClass"] = self.androidBadgeClass!
        }
        if self.androidBadgeSetNum != nil {
            map["AndroidBadgeSetNum"] = self.androidBadgeSetNum!
        }
        if self.androidBigBody != nil {
            map["AndroidBigBody"] = self.androidBigBody!
        }
        if self.androidBigPictureUrl != nil {
            map["AndroidBigPictureUrl"] = self.androidBigPictureUrl!
        }
        if self.androidBigTitle != nil {
            map["AndroidBigTitle"] = self.androidBigTitle!
        }
        if self.androidExtParameters != nil {
            map["AndroidExtParameters"] = self.androidExtParameters!
        }
        if self.androidHonorTargetUserType != nil {
            map["AndroidHonorTargetUserType"] = self.androidHonorTargetUserType!
        }
        if self.androidHuaweiLiveNotificationPayload != nil {
            map["AndroidHuaweiLiveNotificationPayload"] = self.androidHuaweiLiveNotificationPayload!
        }
        if self.androidHuaweiReceiptId != nil {
            map["AndroidHuaweiReceiptId"] = self.androidHuaweiReceiptId!
        }
        if self.androidHuaweiTargetUserType != nil {
            map["AndroidHuaweiTargetUserType"] = self.androidHuaweiTargetUserType!
        }
        if self.androidImageUrl != nil {
            map["AndroidImageUrl"] = self.androidImageUrl!
        }
        if self.androidInboxBody != nil {
            map["AndroidInboxBody"] = self.androidInboxBody!
        }
        if self.androidMeizuNoticeMsgType != nil {
            map["AndroidMeizuNoticeMsgType"] = self.androidMeizuNoticeMsgType!
        }
        if self.androidMessageHuaweiCategory != nil {
            map["AndroidMessageHuaweiCategory"] = self.androidMessageHuaweiCategory!
        }
        if self.androidMessageHuaweiUrgency != nil {
            map["AndroidMessageHuaweiUrgency"] = self.androidMessageHuaweiUrgency!
        }
        if self.androidMessageOppoCategory != nil {
            map["AndroidMessageOppoCategory"] = self.androidMessageOppoCategory!
        }
        if self.androidMessageOppoNotifyLevel != nil {
            map["AndroidMessageOppoNotifyLevel"] = self.androidMessageOppoNotifyLevel!
        }
        if self.androidMessageVivoCategory != nil {
            map["AndroidMessageVivoCategory"] = self.androidMessageVivoCategory!
        }
        if self.androidMusic != nil {
            map["AndroidMusic"] = self.androidMusic!
        }
        if self.androidNotificationBarPriority != nil {
            map["AndroidNotificationBarPriority"] = self.androidNotificationBarPriority!
        }
        if self.androidNotificationBarType != nil {
            map["AndroidNotificationBarType"] = self.androidNotificationBarType!
        }
        if self.androidNotificationChannel != nil {
            map["AndroidNotificationChannel"] = self.androidNotificationChannel!
        }
        if self.androidNotificationGroup != nil {
            map["AndroidNotificationGroup"] = self.androidNotificationGroup!
        }
        if self.androidNotificationHonorChannel != nil {
            map["AndroidNotificationHonorChannel"] = self.androidNotificationHonorChannel!
        }
        if self.androidNotificationHuaweiChannel != nil {
            map["AndroidNotificationHuaweiChannel"] = self.androidNotificationHuaweiChannel!
        }
        if self.androidNotificationNotifyId != nil {
            map["AndroidNotificationNotifyId"] = self.androidNotificationNotifyId!
        }
        if self.androidNotificationThreadId != nil {
            map["AndroidNotificationThreadId"] = self.androidNotificationThreadId!
        }
        if self.androidNotificationVivoChannel != nil {
            map["AndroidNotificationVivoChannel"] = self.androidNotificationVivoChannel!
        }
        if self.androidNotificationXiaomiChannel != nil {
            map["AndroidNotificationXiaomiChannel"] = self.androidNotificationXiaomiChannel!
        }
        if self.androidNotifyType != nil {
            map["AndroidNotifyType"] = self.androidNotifyType!
        }
        if self.androidOpenType != nil {
            map["AndroidOpenType"] = self.androidOpenType!
        }
        if self.androidOpenUrl != nil {
            map["AndroidOpenUrl"] = self.androidOpenUrl!
        }
        if self.androidOppoDeleteIntentData != nil {
            map["AndroidOppoDeleteIntentData"] = self.androidOppoDeleteIntentData!
        }
        if self.androidOppoIntelligentIntent != nil {
            map["AndroidOppoIntelligentIntent"] = self.androidOppoIntelligentIntent!
        }
        if self.androidOppoIntentEnv != nil {
            map["AndroidOppoIntentEnv"] = self.androidOppoIntentEnv!
        }
        if self.androidOppoPrivateContentParametersShrink != nil {
            map["AndroidOppoPrivateContentParameters"] = self.androidOppoPrivateContentParametersShrink!
        }
        if self.androidOppoPrivateMsgTemplateId != nil {
            map["AndroidOppoPrivateMsgTemplateId"] = self.androidOppoPrivateMsgTemplateId!
        }
        if self.androidOppoPrivateTitleParametersShrink != nil {
            map["AndroidOppoPrivateTitleParameters"] = self.androidOppoPrivateTitleParametersShrink!
        }
        if self.androidPopupActivity != nil {
            map["AndroidPopupActivity"] = self.androidPopupActivity!
        }
        if self.androidPopupBody != nil {
            map["AndroidPopupBody"] = self.androidPopupBody!
        }
        if self.androidPopupTitle != nil {
            map["AndroidPopupTitle"] = self.androidPopupTitle!
        }
        if self.androidRemind != nil {
            map["AndroidRemind"] = self.androidRemind!
        }
        if self.androidRenderStyle != nil {
            map["AndroidRenderStyle"] = self.androidRenderStyle!
        }
        if self.androidTargetUserType != nil {
            map["AndroidTargetUserType"] = self.androidTargetUserType!
        }
        if self.androidVivoPushMode != nil {
            map["AndroidVivoPushMode"] = self.androidVivoPushMode!
        }
        if self.androidVivoReceiptId != nil {
            map["AndroidVivoReceiptId"] = self.androidVivoReceiptId!
        }
        if self.androidXiaoMiActivity != nil {
            map["AndroidXiaoMiActivity"] = self.androidXiaoMiActivity!
        }
        if self.androidXiaoMiNotifyBody != nil {
            map["AndroidXiaoMiNotifyBody"] = self.androidXiaoMiNotifyBody!
        }
        if self.androidXiaoMiNotifyTitle != nil {
            map["AndroidXiaoMiNotifyTitle"] = self.androidXiaoMiNotifyTitle!
        }
        if self.androidXiaomiBigPictureUrl != nil {
            map["AndroidXiaomiBigPictureUrl"] = self.androidXiaomiBigPictureUrl!
        }
        if self.androidXiaomiImageUrl != nil {
            map["AndroidXiaomiImageUrl"] = self.androidXiaomiImageUrl!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.harmonyAction != nil {
            map["HarmonyAction"] = self.harmonyAction!
        }
        if self.harmonyActionType != nil {
            map["HarmonyActionType"] = self.harmonyActionType!
        }
        if self.harmonyBadgeAddNum != nil {
            map["HarmonyBadgeAddNum"] = self.harmonyBadgeAddNum!
        }
        if self.harmonyBadgeSetNum != nil {
            map["HarmonyBadgeSetNum"] = self.harmonyBadgeSetNum!
        }
        if self.harmonyCategory != nil {
            map["HarmonyCategory"] = self.harmonyCategory!
        }
        if self.harmonyExtParameters != nil {
            map["HarmonyExtParameters"] = self.harmonyExtParameters!
        }
        if self.harmonyExtensionExtraData != nil {
            map["HarmonyExtensionExtraData"] = self.harmonyExtensionExtraData!
        }
        if self.harmonyExtensionPush != nil {
            map["HarmonyExtensionPush"] = self.harmonyExtensionPush!
        }
        if self.harmonyImageUrl != nil {
            map["HarmonyImageUrl"] = self.harmonyImageUrl!
        }
        if self.harmonyInboxContent != nil {
            map["HarmonyInboxContent"] = self.harmonyInboxContent!
        }
        if self.harmonyLiveViewPayload != nil {
            map["HarmonyLiveViewPayload"] = self.harmonyLiveViewPayload!
        }
        if self.harmonyNotificationSlotType != nil {
            map["HarmonyNotificationSlotType"] = self.harmonyNotificationSlotType!
        }
        if self.harmonyNotifyId != nil {
            map["HarmonyNotifyId"] = self.harmonyNotifyId!
        }
        if self.harmonyReceiptId != nil {
            map["HarmonyReceiptId"] = self.harmonyReceiptId!
        }
        if self.harmonyRemind != nil {
            map["HarmonyRemind"] = self.harmonyRemind!
        }
        if self.harmonyRemindBody != nil {
            map["HarmonyRemindBody"] = self.harmonyRemindBody!
        }
        if self.harmonyRemindTitle != nil {
            map["HarmonyRemindTitle"] = self.harmonyRemindTitle!
        }
        if self.harmonyRenderStyle != nil {
            map["HarmonyRenderStyle"] = self.harmonyRenderStyle!
        }
        if self.harmonyTestMessage != nil {
            map["HarmonyTestMessage"] = self.harmonyTestMessage!
        }
        if self.harmonyUri != nil {
            map["HarmonyUri"] = self.harmonyUri!
        }
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.pushTime != nil {
            map["PushTime"] = self.pushTime!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.sendChannels != nil {
            map["SendChannels"] = self.sendChannels!
        }
        if self.sendSpeed != nil {
            map["SendSpeed"] = self.sendSpeed!
        }
        if self.smsDelaySecs != nil {
            map["SmsDelaySecs"] = self.smsDelaySecs!
        }
        if self.smsParams != nil {
            map["SmsParams"] = self.smsParams!
        }
        if self.smsSendPolicy != nil {
            map["SmsSendPolicy"] = self.smsSendPolicy!
        }
        if self.smsSignName != nil {
            map["SmsSignName"] = self.smsSignName!
        }
        if self.smsTemplateName != nil {
            map["SmsTemplateName"] = self.smsTemplateName!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.trim != nil {
            map["Trim"] = self.trim!
        }
        if self.iOSApnsEnv != nil {
            map["iOSApnsEnv"] = self.iOSApnsEnv!
        }
        if self.iOSBadge != nil {
            map["iOSBadge"] = self.iOSBadge!
        }
        if self.iOSBadgeAutoIncrement != nil {
            map["iOSBadgeAutoIncrement"] = self.iOSBadgeAutoIncrement!
        }
        if self.iOSExtParameters != nil {
            map["iOSExtParameters"] = self.iOSExtParameters!
        }
        if self.iOSInterruptionLevel != nil {
            map["iOSInterruptionLevel"] = self.iOSInterruptionLevel!
        }
        if self.iOSLiveActivityAttributes != nil {
            map["iOSLiveActivityAttributes"] = self.iOSLiveActivityAttributes!
        }
        if self.iOSLiveActivityAttributesType != nil {
            map["iOSLiveActivityAttributesType"] = self.iOSLiveActivityAttributesType!
        }
        if self.iOSLiveActivityContentState != nil {
            map["iOSLiveActivityContentState"] = self.iOSLiveActivityContentState!
        }
        if self.iOSLiveActivityDismissalDate != nil {
            map["iOSLiveActivityDismissalDate"] = self.iOSLiveActivityDismissalDate!
        }
        if self.iOSLiveActivityEvent != nil {
            map["iOSLiveActivityEvent"] = self.iOSLiveActivityEvent!
        }
        if self.iOSLiveActivityId != nil {
            map["iOSLiveActivityId"] = self.iOSLiveActivityId!
        }
        if self.iOSLiveActivityStaleDate != nil {
            map["iOSLiveActivityStaleDate"] = self.iOSLiveActivityStaleDate!
        }
        if self.iOSMusic != nil {
            map["iOSMusic"] = self.iOSMusic!
        }
        if self.iOSMutableContent != nil {
            map["iOSMutableContent"] = self.iOSMutableContent!
        }
        if self.iOSNotificationCategory != nil {
            map["iOSNotificationCategory"] = self.iOSNotificationCategory!
        }
        if self.iOSNotificationCollapseId != nil {
            map["iOSNotificationCollapseId"] = self.iOSNotificationCollapseId!
        }
        if self.iOSNotificationThreadId != nil {
            map["iOSNotificationThreadId"] = self.iOSNotificationThreadId!
        }
        if self.iOSRelevanceScore != nil {
            map["iOSRelevanceScore"] = self.iOSRelevanceScore!
        }
        if self.iOSRemind != nil {
            map["iOSRemind"] = self.iOSRemind!
        }
        if self.iOSRemindBody != nil {
            map["iOSRemindBody"] = self.iOSRemindBody!
        }
        if self.iOSSilentNotification != nil {
            map["iOSSilentNotification"] = self.iOSSilentNotification!
        }
        if self.iOSSubtitle != nil {
            map["iOSSubtitle"] = self.iOSSubtitle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AndroidActivity"] as? String {
            self.androidActivity = value
        }
        if let value = dict["AndroidBadgeAddNum"] as? Int32 {
            self.androidBadgeAddNum = value
        }
        if let value = dict["AndroidBadgeClass"] as? String {
            self.androidBadgeClass = value
        }
        if let value = dict["AndroidBadgeSetNum"] as? Int32 {
            self.androidBadgeSetNum = value
        }
        if let value = dict["AndroidBigBody"] as? String {
            self.androidBigBody = value
        }
        if let value = dict["AndroidBigPictureUrl"] as? String {
            self.androidBigPictureUrl = value
        }
        if let value = dict["AndroidBigTitle"] as? String {
            self.androidBigTitle = value
        }
        if let value = dict["AndroidExtParameters"] as? String {
            self.androidExtParameters = value
        }
        if let value = dict["AndroidHonorTargetUserType"] as? Int32 {
            self.androidHonorTargetUserType = value
        }
        if let value = dict["AndroidHuaweiLiveNotificationPayload"] as? String {
            self.androidHuaweiLiveNotificationPayload = value
        }
        if let value = dict["AndroidHuaweiReceiptId"] as? String {
            self.androidHuaweiReceiptId = value
        }
        if let value = dict["AndroidHuaweiTargetUserType"] as? Int32 {
            self.androidHuaweiTargetUserType = value
        }
        if let value = dict["AndroidImageUrl"] as? String {
            self.androidImageUrl = value
        }
        if let value = dict["AndroidInboxBody"] as? String {
            self.androidInboxBody = value
        }
        if let value = dict["AndroidMeizuNoticeMsgType"] as? Int32 {
            self.androidMeizuNoticeMsgType = value
        }
        if let value = dict["AndroidMessageHuaweiCategory"] as? String {
            self.androidMessageHuaweiCategory = value
        }
        if let value = dict["AndroidMessageHuaweiUrgency"] as? String {
            self.androidMessageHuaweiUrgency = value
        }
        if let value = dict["AndroidMessageOppoCategory"] as? String {
            self.androidMessageOppoCategory = value
        }
        if let value = dict["AndroidMessageOppoNotifyLevel"] as? Int32 {
            self.androidMessageOppoNotifyLevel = value
        }
        if let value = dict["AndroidMessageVivoCategory"] as? String {
            self.androidMessageVivoCategory = value
        }
        if let value = dict["AndroidMusic"] as? String {
            self.androidMusic = value
        }
        if let value = dict["AndroidNotificationBarPriority"] as? Int32 {
            self.androidNotificationBarPriority = value
        }
        if let value = dict["AndroidNotificationBarType"] as? Int32 {
            self.androidNotificationBarType = value
        }
        if let value = dict["AndroidNotificationChannel"] as? String {
            self.androidNotificationChannel = value
        }
        if let value = dict["AndroidNotificationGroup"] as? String {
            self.androidNotificationGroup = value
        }
        if let value = dict["AndroidNotificationHonorChannel"] as? String {
            self.androidNotificationHonorChannel = value
        }
        if let value = dict["AndroidNotificationHuaweiChannel"] as? String {
            self.androidNotificationHuaweiChannel = value
        }
        if let value = dict["AndroidNotificationNotifyId"] as? Int32 {
            self.androidNotificationNotifyId = value
        }
        if let value = dict["AndroidNotificationThreadId"] as? String {
            self.androidNotificationThreadId = value
        }
        if let value = dict["AndroidNotificationVivoChannel"] as? String {
            self.androidNotificationVivoChannel = value
        }
        if let value = dict["AndroidNotificationXiaomiChannel"] as? String {
            self.androidNotificationXiaomiChannel = value
        }
        if let value = dict["AndroidNotifyType"] as? String {
            self.androidNotifyType = value
        }
        if let value = dict["AndroidOpenType"] as? String {
            self.androidOpenType = value
        }
        if let value = dict["AndroidOpenUrl"] as? String {
            self.androidOpenUrl = value
        }
        if let value = dict["AndroidOppoDeleteIntentData"] as? String {
            self.androidOppoDeleteIntentData = value
        }
        if let value = dict["AndroidOppoIntelligentIntent"] as? String {
            self.androidOppoIntelligentIntent = value
        }
        if let value = dict["AndroidOppoIntentEnv"] as? Int32 {
            self.androidOppoIntentEnv = value
        }
        if let value = dict["AndroidOppoPrivateContentParameters"] as? String {
            self.androidOppoPrivateContentParametersShrink = value
        }
        if let value = dict["AndroidOppoPrivateMsgTemplateId"] as? String {
            self.androidOppoPrivateMsgTemplateId = value
        }
        if let value = dict["AndroidOppoPrivateTitleParameters"] as? String {
            self.androidOppoPrivateTitleParametersShrink = value
        }
        if let value = dict["AndroidPopupActivity"] as? String {
            self.androidPopupActivity = value
        }
        if let value = dict["AndroidPopupBody"] as? String {
            self.androidPopupBody = value
        }
        if let value = dict["AndroidPopupTitle"] as? String {
            self.androidPopupTitle = value
        }
        if let value = dict["AndroidRemind"] as? Bool {
            self.androidRemind = value
        }
        if let value = dict["AndroidRenderStyle"] as? Int32 {
            self.androidRenderStyle = value
        }
        if let value = dict["AndroidTargetUserType"] as? Int32 {
            self.androidTargetUserType = value
        }
        if let value = dict["AndroidVivoPushMode"] as? Int32 {
            self.androidVivoPushMode = value
        }
        if let value = dict["AndroidVivoReceiptId"] as? String {
            self.androidVivoReceiptId = value
        }
        if let value = dict["AndroidXiaoMiActivity"] as? String {
            self.androidXiaoMiActivity = value
        }
        if let value = dict["AndroidXiaoMiNotifyBody"] as? String {
            self.androidXiaoMiNotifyBody = value
        }
        if let value = dict["AndroidXiaoMiNotifyTitle"] as? String {
            self.androidXiaoMiNotifyTitle = value
        }
        if let value = dict["AndroidXiaomiBigPictureUrl"] as? String {
            self.androidXiaomiBigPictureUrl = value
        }
        if let value = dict["AndroidXiaomiImageUrl"] as? String {
            self.androidXiaomiImageUrl = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["HarmonyAction"] as? String {
            self.harmonyAction = value
        }
        if let value = dict["HarmonyActionType"] as? String {
            self.harmonyActionType = value
        }
        if let value = dict["HarmonyBadgeAddNum"] as? Int32 {
            self.harmonyBadgeAddNum = value
        }
        if let value = dict["HarmonyBadgeSetNum"] as? Int32 {
            self.harmonyBadgeSetNum = value
        }
        if let value = dict["HarmonyCategory"] as? String {
            self.harmonyCategory = value
        }
        if let value = dict["HarmonyExtParameters"] as? String {
            self.harmonyExtParameters = value
        }
        if let value = dict["HarmonyExtensionExtraData"] as? String {
            self.harmonyExtensionExtraData = value
        }
        if let value = dict["HarmonyExtensionPush"] as? Bool {
            self.harmonyExtensionPush = value
        }
        if let value = dict["HarmonyImageUrl"] as? String {
            self.harmonyImageUrl = value
        }
        if let value = dict["HarmonyInboxContent"] as? String {
            self.harmonyInboxContent = value
        }
        if let value = dict["HarmonyLiveViewPayload"] as? String {
            self.harmonyLiveViewPayload = value
        }
        if let value = dict["HarmonyNotificationSlotType"] as? String {
            self.harmonyNotificationSlotType = value
        }
        if let value = dict["HarmonyNotifyId"] as? Int32 {
            self.harmonyNotifyId = value
        }
        if let value = dict["HarmonyReceiptId"] as? String {
            self.harmonyReceiptId = value
        }
        if let value = dict["HarmonyRemind"] as? Bool {
            self.harmonyRemind = value
        }
        if let value = dict["HarmonyRemindBody"] as? String {
            self.harmonyRemindBody = value
        }
        if let value = dict["HarmonyRemindTitle"] as? String {
            self.harmonyRemindTitle = value
        }
        if let value = dict["HarmonyRenderStyle"] as? String {
            self.harmonyRenderStyle = value
        }
        if let value = dict["HarmonyTestMessage"] as? Bool {
            self.harmonyTestMessage = value
        }
        if let value = dict["HarmonyUri"] as? String {
            self.harmonyUri = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["JobKey"] as? String {
            self.jobKey = value
        }
        if let value = dict["PushTime"] as? String {
            self.pushTime = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["SendChannels"] as? String {
            self.sendChannels = value
        }
        if let value = dict["SendSpeed"] as? Int32 {
            self.sendSpeed = value
        }
        if let value = dict["SmsDelaySecs"] as? Int32 {
            self.smsDelaySecs = value
        }
        if let value = dict["SmsParams"] as? String {
            self.smsParams = value
        }
        if let value = dict["SmsSendPolicy"] as? Int32 {
            self.smsSendPolicy = value
        }
        if let value = dict["SmsSignName"] as? String {
            self.smsSignName = value
        }
        if let value = dict["SmsTemplateName"] as? String {
            self.smsTemplateName = value
        }
        if let value = dict["StoreOffline"] as? Bool {
            self.storeOffline = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["Trim"] as? Bool {
            self.trim = value
        }
        if let value = dict["iOSApnsEnv"] as? String {
            self.iOSApnsEnv = value
        }
        if let value = dict["iOSBadge"] as? Int32 {
            self.iOSBadge = value
        }
        if let value = dict["iOSBadgeAutoIncrement"] as? Bool {
            self.iOSBadgeAutoIncrement = value
        }
        if let value = dict["iOSExtParameters"] as? String {
            self.iOSExtParameters = value
        }
        if let value = dict["iOSInterruptionLevel"] as? String {
            self.iOSInterruptionLevel = value
        }
        if let value = dict["iOSLiveActivityAttributes"] as? String {
            self.iOSLiveActivityAttributes = value
        }
        if let value = dict["iOSLiveActivityAttributesType"] as? String {
            self.iOSLiveActivityAttributesType = value
        }
        if let value = dict["iOSLiveActivityContentState"] as? String {
            self.iOSLiveActivityContentState = value
        }
        if let value = dict["iOSLiveActivityDismissalDate"] as? Int64 {
            self.iOSLiveActivityDismissalDate = value
        }
        if let value = dict["iOSLiveActivityEvent"] as? String {
            self.iOSLiveActivityEvent = value
        }
        if let value = dict["iOSLiveActivityId"] as? String {
            self.iOSLiveActivityId = value
        }
        if let value = dict["iOSLiveActivityStaleDate"] as? Int64 {
            self.iOSLiveActivityStaleDate = value
        }
        if let value = dict["iOSMusic"] as? String {
            self.iOSMusic = value
        }
        if let value = dict["iOSMutableContent"] as? Bool {
            self.iOSMutableContent = value
        }
        if let value = dict["iOSNotificationCategory"] as? String {
            self.iOSNotificationCategory = value
        }
        if let value = dict["iOSNotificationCollapseId"] as? String {
            self.iOSNotificationCollapseId = value
        }
        if let value = dict["iOSNotificationThreadId"] as? String {
            self.iOSNotificationThreadId = value
        }
        if let value = dict["iOSRelevanceScore"] as? Double {
            self.iOSRelevanceScore = value
        }
        if let value = dict["iOSRemind"] as? Bool {
            self.iOSRemind = value
        }
        if let value = dict["iOSRemindBody"] as? String {
            self.iOSRemindBody = value
        }
        if let value = dict["iOSSilentNotification"] as? Bool {
            self.iOSSilentNotification = value
        }
        if let value = dict["iOSSubtitle"] as? String {
            self.iOSSubtitle = value
        }
    }
}

public class PushResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PushResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushMessageToAndroidRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var body: String?

    public var jobKey: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["JobKey"] as? String {
            self.jobKey = value
        }
        if let value = dict["StoreOffline"] as? Bool {
            self.storeOffline = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class PushMessageToAndroidResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PushMessageToAndroidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMessageToAndroidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushMessageToAndroidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushMessageToiOSRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var body: String?

    public var jobKey: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["JobKey"] as? String {
            self.jobKey = value
        }
        if let value = dict["StoreOffline"] as? Bool {
            self.storeOffline = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class PushMessageToiOSResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PushMessageToiOSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushMessageToiOSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushMessageToiOSResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushNoticeToAndroidRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var body: String?

    public var extParameters: String?

    public var jobKey: String?

    public var storeOffline: Bool?

    public var target: String?

    public var targetValue: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.extParameters != nil {
            map["ExtParameters"] = self.extParameters!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.storeOffline != nil {
            map["StoreOffline"] = self.storeOffline!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["ExtParameters"] as? String {
            self.extParameters = value
        }
        if let value = dict["JobKey"] as? String {
            self.jobKey = value
        }
        if let value = dict["StoreOffline"] as? Bool {
            self.storeOffline = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class PushNoticeToAndroidResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PushNoticeToAndroidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushNoticeToAndroidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushNoticeToAndroidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushNoticeToiOSRequest : Tea.TeaModel {
    public var apnsEnv: String?

    public var appKey: Int64?

    public var body: String?

    public var extParameters: String?

    public var jobKey: String?

    public var target: String?

    public var targetValue: String?

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
        if self.apnsEnv != nil {
            map["ApnsEnv"] = self.apnsEnv!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.extParameters != nil {
            map["ExtParameters"] = self.extParameters!
        }
        if self.jobKey != nil {
            map["JobKey"] = self.jobKey!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.targetValue != nil {
            map["TargetValue"] = self.targetValue!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApnsEnv"] as? String {
            self.apnsEnv = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Body"] as? String {
            self.body = value
        }
        if let value = dict["ExtParameters"] as? String {
            self.extParameters = value
        }
        if let value = dict["JobKey"] as? String {
            self.jobKey = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TargetValue"] as? String {
            self.targetValue = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class PushNoticeToiOSResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PushNoticeToiOSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushNoticeToiOSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushNoticeToiOSResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PushV2Request : Tea.TeaModel {
    public var appKey: Int64?

    public var idempotentToken: String?

    public var pushTask: PushTask?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.pushTask != nil {
            map["PushTask"] = self.pushTask?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["PushTask"] as? [String: Any?] {
            var model = PushTask()
            model.fromMap(value)
            self.pushTask = model
        }
    }
}

public class PushV2ShrinkRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var idempotentToken: String?

    public var pushTaskShrink: String?

    public override init() {
        super.init()
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
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.pushTaskShrink != nil {
            map["PushTask"] = self.pushTaskShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["IdempotentToken"] as? String {
            self.idempotentToken = value
        }
        if let value = dict["PushTask"] as? String {
            self.pushTaskShrink = value
        }
    }
}

public class PushV2ResponseBody : Tea.TeaModel {
    public var messageId: String?

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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PushV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PushV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAliasesRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
    }
}

public class QueryAliasesResponseBody : Tea.TeaModel {
    public class AliasInfos : Tea.TeaModel {
        public class AliasInfo : Tea.TeaModel {
            public var aliasName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliasName != nil {
                    map["AliasName"] = self.aliasName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliasName"] as? String {
                    self.aliasName = value
                }
            }
        }
        public var aliasInfo: [QueryAliasesResponseBody.AliasInfos.AliasInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasInfo != nil {
                var tmp : [Any] = []
                for k in self.aliasInfo! {
                    tmp.append(k.toMap())
                }
                map["AliasInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasInfo"] as? [Any?] {
                var tmp : [QueryAliasesResponseBody.AliasInfos.AliasInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryAliasesResponseBody.AliasInfos.AliasInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aliasInfo = tmp
            }
        }
    }
    public var aliasInfos: QueryAliasesResponseBody.AliasInfos?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aliasInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasInfos != nil {
            map["AliasInfos"] = self.aliasInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasInfos"] as? [String: Any?] {
            var model = QueryAliasesResponseBody.AliasInfos()
            model.fromMap(value)
            self.aliasInfos = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAliasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryAliasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceInfoRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
    }
}

public class QueryDeviceInfoResponseBody : Tea.TeaModel {
    public class DeviceInfo : Tea.TeaModel {
        public var account: String?

        public var alias: String?

        public var brand: String?

        public var deviceId: String?

        public var deviceToken: String?

        public var deviceType: String?

        public var lastOnlineTime: String?

        public var model: String?

        public var online: Bool?

        public var phoneNumber: String?

        public var pushEnabled: Bool?

        public var tags: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.brand != nil {
                map["Brand"] = self.brand!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceToken != nil {
                map["DeviceToken"] = self.deviceToken!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.lastOnlineTime != nil {
                map["LastOnlineTime"] = self.lastOnlineTime!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.online != nil {
                map["Online"] = self.online!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.pushEnabled != nil {
                map["PushEnabled"] = self.pushEnabled!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["Brand"] as? String {
                self.brand = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceToken"] as? String {
                self.deviceToken = value
            }
            if let value = dict["DeviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["LastOnlineTime"] as? String {
                self.lastOnlineTime = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["Online"] as? Bool {
                self.online = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["PushEnabled"] as? Bool {
                self.pushEnabled = value
            }
            if let value = dict["Tags"] as? String {
                self.tags = value
            }
        }
    }
    public var deviceInfo: QueryDeviceInfoResponseBody.DeviceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceInfo != nil {
            map["DeviceInfo"] = self.deviceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceInfo"] as? [String: Any?] {
            var model = QueryDeviceInfoResponseBody.DeviceInfo()
            model.fromMap(value)
            self.deviceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeviceStatRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceType: String?

    public var endTime: String?

    public var queryType: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class QueryDeviceStatResponseBody : Tea.TeaModel {
    public class AppDeviceStats : Tea.TeaModel {
        public class AppDeviceStat : Tea.TeaModel {
            public var count: Int64?

            public var deviceType: String?

            public var time: String?

            public override init() {
                super.init()
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
                    map["Count"] = self.count!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["DeviceType"] as? String {
                    self.deviceType = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var appDeviceStat: [QueryDeviceStatResponseBody.AppDeviceStats.AppDeviceStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDeviceStat != nil {
                var tmp : [Any] = []
                for k in self.appDeviceStat! {
                    tmp.append(k.toMap())
                }
                map["AppDeviceStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppDeviceStat"] as? [Any?] {
                var tmp : [QueryDeviceStatResponseBody.AppDeviceStats.AppDeviceStat] = []
                for v in value {
                    if v != nil {
                        var model = QueryDeviceStatResponseBody.AppDeviceStats.AppDeviceStat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appDeviceStat = tmp
            }
        }
    }
    public var appDeviceStats: QueryDeviceStatResponseBody.AppDeviceStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appDeviceStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDeviceStats != nil {
            map["AppDeviceStats"] = self.appDeviceStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppDeviceStats"] as? [String: Any?] {
            var model = QueryDeviceStatResponseBody.AppDeviceStats()
            model.fromMap(value)
            self.appDeviceStats = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDeviceStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeviceStatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDeviceStatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDevicesByAccountRequest : Tea.TeaModel {
    public var account: String?

    public var appKey: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
    }
}

public class QueryDevicesByAccountResponseBody : Tea.TeaModel {
    public class DeviceIds : Tea.TeaModel {
        public var deviceId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceId"] as? [String] {
                self.deviceId = value
            }
        }
    }
    public var deviceIds: QueryDevicesByAccountResponseBody.DeviceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceIds"] as? [String: Any?] {
            var model = QueryDevicesByAccountResponseBody.DeviceIds()
            model.fromMap(value)
            self.deviceIds = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDevicesByAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicesByAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDevicesByAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDevicesByAliasRequest : Tea.TeaModel {
    public var alias: String?

    public var appKey: Int64?

    public override init() {
        super.init()
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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
    }
}

public class QueryDevicesByAliasResponseBody : Tea.TeaModel {
    public class DeviceIds : Tea.TeaModel {
        public var deviceId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceId"] as? [String] {
                self.deviceId = value
            }
        }
    }
    public var deviceIds: QueryDevicesByAliasResponseBody.DeviceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceIds != nil {
            map["DeviceIds"] = self.deviceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceIds"] as? [String: Any?] {
            var model = QueryDevicesByAliasResponseBody.DeviceIds()
            model.fromMap(value)
            self.deviceIds = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryDevicesByAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDevicesByAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDevicesByAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushRecordsRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var endTime: String?

    public var keyword: String?

    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var pushType: String?

    public var source: String?

    public var startTime: String?

    public var target: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pushType != nil {
            map["PushType"] = self.pushType!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PushType"] as? String {
            self.pushType = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class QueryPushRecordsResponseBody : Tea.TeaModel {
    public class PushInfos : Tea.TeaModel {
        public class PushInfo : Tea.TeaModel {
            public var appKey: Int64?

            public var body: String?

            public var deviceType: String?

            public var messageId: String?

            public var pushTime: String?

            public var pushType: String?

            public var source: String?

            public var status: String?

            public var target: String?

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
                if self.appKey != nil {
                    map["AppKey"] = self.appKey!
                }
                if self.body != nil {
                    map["Body"] = self.body!
                }
                if self.deviceType != nil {
                    map["DeviceType"] = self.deviceType!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.pushTime != nil {
                    map["PushTime"] = self.pushTime!
                }
                if self.pushType != nil {
                    map["PushType"] = self.pushType!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppKey"] as? Int64 {
                    self.appKey = value
                }
                if let value = dict["Body"] as? String {
                    self.body = value
                }
                if let value = dict["DeviceType"] as? String {
                    self.deviceType = value
                }
                if let value = dict["MessageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["PushTime"] as? String {
                    self.pushTime = value
                }
                if let value = dict["PushType"] as? String {
                    self.pushType = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Target"] as? String {
                    self.target = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public var pushInfo: [QueryPushRecordsResponseBody.PushInfos.PushInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pushInfo != nil {
                var tmp : [Any] = []
                for k in self.pushInfo! {
                    tmp.append(k.toMap())
                }
                map["PushInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PushInfo"] as? [Any?] {
                var tmp : [QueryPushRecordsResponseBody.PushInfos.PushInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryPushRecordsResponseBody.PushInfos.PushInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pushInfo = tmp
            }
        }
    }
    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var pushInfos: QueryPushRecordsResponseBody.PushInfos?

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
        try self.pushInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pushInfos != nil {
            map["PushInfos"] = self.pushInfos?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PushInfos"] as? [String: Any?] {
            var model = QueryPushRecordsResponseBody.PushInfos()
            model.fromMap(value)
            self.pushInfos = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class QueryPushRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushStatByAppRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var endTime: String?

    public var granularity: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class QueryPushStatByAppResponseBody : Tea.TeaModel {
    public class AppPushStats : Tea.TeaModel {
        public class AppPushStat : Tea.TeaModel {
            public var acceptCount: Int64?

            public var deletedCount: Int64?

            public var openedCount: Int64?

            public var receivedCount: Int64?

            public var sentCount: Int64?

            public var smsFailedCount: Int64?

            public var smsReceiveFailedCount: Int64?

            public var smsReceiveSuccessCount: Int64?

            public var smsSentCount: Int64?

            public var smsSkipCount: Int64?

            public var time: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptCount != nil {
                    map["AcceptCount"] = self.acceptCount!
                }
                if self.deletedCount != nil {
                    map["DeletedCount"] = self.deletedCount!
                }
                if self.openedCount != nil {
                    map["OpenedCount"] = self.openedCount!
                }
                if self.receivedCount != nil {
                    map["ReceivedCount"] = self.receivedCount!
                }
                if self.sentCount != nil {
                    map["SentCount"] = self.sentCount!
                }
                if self.smsFailedCount != nil {
                    map["SmsFailedCount"] = self.smsFailedCount!
                }
                if self.smsReceiveFailedCount != nil {
                    map["SmsReceiveFailedCount"] = self.smsReceiveFailedCount!
                }
                if self.smsReceiveSuccessCount != nil {
                    map["SmsReceiveSuccessCount"] = self.smsReceiveSuccessCount!
                }
                if self.smsSentCount != nil {
                    map["SmsSentCount"] = self.smsSentCount!
                }
                if self.smsSkipCount != nil {
                    map["SmsSkipCount"] = self.smsSkipCount!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AcceptCount"] as? Int64 {
                    self.acceptCount = value
                }
                if let value = dict["DeletedCount"] as? Int64 {
                    self.deletedCount = value
                }
                if let value = dict["OpenedCount"] as? Int64 {
                    self.openedCount = value
                }
                if let value = dict["ReceivedCount"] as? Int64 {
                    self.receivedCount = value
                }
                if let value = dict["SentCount"] as? Int64 {
                    self.sentCount = value
                }
                if let value = dict["SmsFailedCount"] as? Int64 {
                    self.smsFailedCount = value
                }
                if let value = dict["SmsReceiveFailedCount"] as? Int64 {
                    self.smsReceiveFailedCount = value
                }
                if let value = dict["SmsReceiveSuccessCount"] as? Int64 {
                    self.smsReceiveSuccessCount = value
                }
                if let value = dict["SmsSentCount"] as? Int64 {
                    self.smsSentCount = value
                }
                if let value = dict["SmsSkipCount"] as? Int64 {
                    self.smsSkipCount = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var appPushStat: [QueryPushStatByAppResponseBody.AppPushStats.AppPushStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appPushStat != nil {
                var tmp : [Any] = []
                for k in self.appPushStat! {
                    tmp.append(k.toMap())
                }
                map["AppPushStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppPushStat"] as? [Any?] {
                var tmp : [QueryPushStatByAppResponseBody.AppPushStats.AppPushStat] = []
                for v in value {
                    if v != nil {
                        var model = QueryPushStatByAppResponseBody.AppPushStats.AppPushStat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appPushStat = tmp
            }
        }
    }
    public var appPushStats: QueryPushStatByAppResponseBody.AppPushStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appPushStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appPushStats != nil {
            map["AppPushStats"] = self.appPushStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppPushStats"] as? [String: Any?] {
            var model = QueryPushStatByAppResponseBody.AppPushStats()
            model.fromMap(value)
            self.appPushStats = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryPushStatByAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushStatByAppResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushStatByAppResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPushStatByMsgRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var messageId: Int64?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["MessageId"] as? Int64 {
            self.messageId = value
        }
    }
}

public class QueryPushStatByMsgResponseBody : Tea.TeaModel {
    public class PushStats : Tea.TeaModel {
        public class PushStat : Tea.TeaModel {
            public var acceptCount: Int64?

            public var deletedCount: Int64?

            public var messageId: String?

            public var openedCount: Int64?

            public var receivedCount: Int64?

            public var sentCount: Int64?

            public var smsFailedCount: Int64?

            public var smsReceiveFailedCount: Int64?

            public var smsReceiveSuccessCount: Int64?

            public var smsSentCount: Int64?

            public var smsSkipCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptCount != nil {
                    map["AcceptCount"] = self.acceptCount!
                }
                if self.deletedCount != nil {
                    map["DeletedCount"] = self.deletedCount!
                }
                if self.messageId != nil {
                    map["MessageId"] = self.messageId!
                }
                if self.openedCount != nil {
                    map["OpenedCount"] = self.openedCount!
                }
                if self.receivedCount != nil {
                    map["ReceivedCount"] = self.receivedCount!
                }
                if self.sentCount != nil {
                    map["SentCount"] = self.sentCount!
                }
                if self.smsFailedCount != nil {
                    map["SmsFailedCount"] = self.smsFailedCount!
                }
                if self.smsReceiveFailedCount != nil {
                    map["SmsReceiveFailedCount"] = self.smsReceiveFailedCount!
                }
                if self.smsReceiveSuccessCount != nil {
                    map["SmsReceiveSuccessCount"] = self.smsReceiveSuccessCount!
                }
                if self.smsSentCount != nil {
                    map["SmsSentCount"] = self.smsSentCount!
                }
                if self.smsSkipCount != nil {
                    map["SmsSkipCount"] = self.smsSkipCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AcceptCount"] as? Int64 {
                    self.acceptCount = value
                }
                if let value = dict["DeletedCount"] as? Int64 {
                    self.deletedCount = value
                }
                if let value = dict["MessageId"] as? String {
                    self.messageId = value
                }
                if let value = dict["OpenedCount"] as? Int64 {
                    self.openedCount = value
                }
                if let value = dict["ReceivedCount"] as? Int64 {
                    self.receivedCount = value
                }
                if let value = dict["SentCount"] as? Int64 {
                    self.sentCount = value
                }
                if let value = dict["SmsFailedCount"] as? Int64 {
                    self.smsFailedCount = value
                }
                if let value = dict["SmsReceiveFailedCount"] as? Int64 {
                    self.smsReceiveFailedCount = value
                }
                if let value = dict["SmsReceiveSuccessCount"] as? Int64 {
                    self.smsReceiveSuccessCount = value
                }
                if let value = dict["SmsSentCount"] as? Int64 {
                    self.smsSentCount = value
                }
                if let value = dict["SmsSkipCount"] as? Int64 {
                    self.smsSkipCount = value
                }
            }
        }
        public var pushStat: [QueryPushStatByMsgResponseBody.PushStats.PushStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pushStat != nil {
                var tmp : [Any] = []
                for k in self.pushStat! {
                    tmp.append(k.toMap())
                }
                map["PushStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PushStat"] as? [Any?] {
                var tmp : [QueryPushStatByMsgResponseBody.PushStats.PushStat] = []
                for v in value {
                    if v != nil {
                        var model = QueryPushStatByMsgResponseBody.PushStats.PushStat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.pushStat = tmp
            }
        }
    }
    public var pushStats: QueryPushStatByMsgResponseBody.PushStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pushStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pushStats != nil {
            map["PushStats"] = self.pushStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PushStats"] as? [String: Any?] {
            var model = QueryPushStatByMsgResponseBody.PushStats()
            model.fromMap(value)
            self.pushStats = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryPushStatByMsgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPushStatByMsgResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPushStatByMsgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTagsRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var clientKey: String?

    public var keyType: String?

    public override init() {
        super.init()
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
        if self.clientKey != nil {
            map["ClientKey"] = self.clientKey!
        }
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["ClientKey"] as? String {
            self.clientKey = value
        }
        if let value = dict["KeyType"] as? String {
            self.keyType = value
        }
    }
}

public class QueryTagsResponseBody : Tea.TeaModel {
    public class TagInfos : Tea.TeaModel {
        public class TagInfo : Tea.TeaModel {
            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagName"] as? String {
                    self.tagName = value
                }
            }
        }
        public var tagInfo: [QueryTagsResponseBody.TagInfos.TagInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagInfo != nil {
                var tmp : [Any] = []
                for k in self.tagInfo! {
                    tmp.append(k.toMap())
                }
                map["TagInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagInfo"] as? [Any?] {
                var tmp : [QueryTagsResponseBody.TagInfos.TagInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryTagsResponseBody.TagInfos.TagInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var tagInfos: QueryTagsResponseBody.TagInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagInfos != nil {
            map["TagInfos"] = self.tagInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagInfos"] as? [String: Any?] {
            var model = QueryTagsResponseBody.TagInfos()
            model.fromMap(value)
            self.tagInfos = model
        }
    }
}

public class QueryTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUniqueDeviceStatRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var endTime: String?

    public var granularity: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class QueryUniqueDeviceStatResponseBody : Tea.TeaModel {
    public class AppDeviceStats : Tea.TeaModel {
        public class AppDeviceStat : Tea.TeaModel {
            public var count: Int64?

            public var time: String?

            public override init() {
                super.init()
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
                    map["Count"] = self.count!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var appDeviceStat: [QueryUniqueDeviceStatResponseBody.AppDeviceStats.AppDeviceStat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appDeviceStat != nil {
                var tmp : [Any] = []
                for k in self.appDeviceStat! {
                    tmp.append(k.toMap())
                }
                map["AppDeviceStat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppDeviceStat"] as? [Any?] {
                var tmp : [QueryUniqueDeviceStatResponseBody.AppDeviceStats.AppDeviceStat] = []
                for v in value {
                    if v != nil {
                        var model = QueryUniqueDeviceStatResponseBody.AppDeviceStats.AppDeviceStat()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appDeviceStat = tmp
            }
        }
    }
    public var appDeviceStats: QueryUniqueDeviceStatResponseBody.AppDeviceStats?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appDeviceStats?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDeviceStats != nil {
            map["AppDeviceStats"] = self.appDeviceStats?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppDeviceStats"] as? [String: Any?] {
            var model = QueryUniqueDeviceStatResponseBody.AppDeviceStats()
            model.fromMap(value)
            self.appDeviceStats = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryUniqueDeviceStatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUniqueDeviceStatResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryUniqueDeviceStatResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveTagRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class RemoveTagResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public var appKey: Int64?

    public var deviceId: String?

    public var unbindAll: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.unbindAll != nil {
            map["UnbindAll"] = self.unbindAll!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["UnbindAll"] as? Bool {
            self.unbindAll = value
        }
    }
}

public class UnbindAliasResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnbindAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindPhoneRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var deviceId: String?

    public override init() {
        super.init()
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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
    }
}

public class UnbindPhoneResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnbindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindPhoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindPhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnbindTagRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var clientKey: String?

    public var keyType: String?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.clientKey != nil {
            map["ClientKey"] = self.clientKey!
        }
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["ClientKey"] as? String {
            self.clientKey = value
        }
        if let value = dict["KeyType"] as? String {
            self.keyType = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class UnbindTagResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UnbindTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindTagResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
