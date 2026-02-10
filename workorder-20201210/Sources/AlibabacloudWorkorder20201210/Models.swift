import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CategoryParam : Tea.TeaModel {
    public var categoryId: Int64?

    public var categoryName: String?

    public var isSelectFromDialog: Bool?

    public var productId: Int64?

    public var productName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.isSelectFromDialog != nil {
            map["IsSelectFromDialog"] = self.isSelectFromDialog!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["CategoryName"] as? String {
            self.categoryName = value
        }
        if let value = dict["IsSelectFromDialog"] as? Bool {
            self.isSelectFromDialog = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
    }
}

public class DialogBaseBody : Tea.TeaModel {
    public class Attachments : Tea.TeaModel {
        public var name: String?

        public var size: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Size"] as? String {
                self.size = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public class DataInfo : Tea.TeaModel {
        public var bizId: String?

        public var bizType: Int32?

        public var component: [[String: Any]]?

        public var container: Any?

        public var content: String?

        public var contentDesensitized: String?

        public var editable: Int32?

        public var props: [[String: Any]]?

        public var schema: String?

        public var schemaId: Int64?

        public var serviceChannel: String?

        public var title: String?

        public var values: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.component != nil {
                map["Component"] = self.component!
            }
            if self.container != nil {
                map["Container"] = self.container!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentDesensitized != nil {
                map["ContentDesensitized"] = self.contentDesensitized!
            }
            if self.editable != nil {
                map["Editable"] = self.editable!
            }
            if self.props != nil {
                map["Props"] = self.props!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.schemaId != nil {
                map["SchemaId"] = self.schemaId!
            }
            if self.serviceChannel != nil {
                map["ServiceChannel"] = self.serviceChannel!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["BizType"] as? Int32 {
                self.bizType = value
            }
            if let value = dict["Component"] as? [[String: Any]] {
                self.component = value
            }
            if let value = dict["Container"] as? Any {
                self.container = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ContentDesensitized"] as? String {
                self.contentDesensitized = value
            }
            if let value = dict["Editable"] as? Int32 {
                self.editable = value
            }
            if let value = dict["Props"] as? [[String: Any]] {
                self.props = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["SchemaId"] as? Int64 {
                self.schemaId = value
            }
            if let value = dict["ServiceChannel"] as? String {
                self.serviceChannel = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["Values"] as? [String: Any] {
                self.values = value
            }
        }
    }
    public class FooterInfo : Tea.TeaModel {
        public var ext: [String: Any]?

        public var schema: String?

        public override init() {
            super.init()
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
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ext"] as? [String: Any] {
                self.ext = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
        }
    }
    public class UserInfo : Tea.TeaModel {
        public var avatar: String?

        public var role: Int32?

        public var userId: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Avatar"] as? String {
                self.avatar = value
            }
            if let value = dict["Role"] as? Int32 {
                self.role = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var attachments: [DialogBaseBody.Attachments]?

    public var channelCode: String?

    public var createTime: Int64?

    public var dataInfo: DialogBaseBody.DataInfo?

    public var dialogId: Int64?

    public var footerInfo: DialogBaseBody.FooterInfo?

    public var hitWords: [String]?

    public var modifiedTime: Int64?

    public var referInfo: DialogBaseBody?

    public var stage: Int32?

    public var status: Int32?

    public var ticketId: String?

    public var ticketStatus: Int32?

    public var timestamp: Int64?

    public var tip: String?

    public var type: Int32?

    public var userInfo: DialogBaseBody.UserInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataInfo?.validate()
        try self.footerInfo?.validate()
        try self.referInfo?.validate()
        try self.userInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachments != nil {
            var tmp : [Any] = []
            for k in self.attachments! {
                tmp.append(k.toMap())
            }
            map["Attachments"] = tmp
        }
        if self.channelCode != nil {
            map["ChannelCode"] = self.channelCode!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dataInfo != nil {
            map["DataInfo"] = self.dataInfo?.toMap()
        }
        if self.dialogId != nil {
            map["DialogId"] = self.dialogId!
        }
        if self.footerInfo != nil {
            map["FooterInfo"] = self.footerInfo?.toMap()
        }
        if self.hitWords != nil {
            map["HitWords"] = self.hitWords!
        }
        if self.modifiedTime != nil {
            map["ModifiedTime"] = self.modifiedTime!
        }
        if self.referInfo != nil {
            map["ReferInfo"] = self.referInfo?.toMap()
        }
        if self.stage != nil {
            map["Stage"] = self.stage!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.ticketId != nil {
            map["TicketId"] = self.ticketId!
        }
        if self.ticketStatus != nil {
            map["TicketStatus"] = self.ticketStatus!
        }
        if self.timestamp != nil {
            map["Timestamp"] = self.timestamp!
        }
        if self.tip != nil {
            map["Tip"] = self.tip!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Attachments"] as? [Any?] {
            var tmp : [DialogBaseBody.Attachments] = []
            for v in value {
                if v != nil {
                    var model = DialogBaseBody.Attachments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachments = tmp
        }
        if let value = dict["ChannelCode"] as? String {
            self.channelCode = value
        }
        if let value = dict["CreateTime"] as? Int64 {
            self.createTime = value
        }
        if let value = dict["DataInfo"] as? [String: Any?] {
            var model = DialogBaseBody.DataInfo()
            model.fromMap(value)
            self.dataInfo = model
        }
        if let value = dict["DialogId"] as? Int64 {
            self.dialogId = value
        }
        if let value = dict["FooterInfo"] as? [String: Any?] {
            var model = DialogBaseBody.FooterInfo()
            model.fromMap(value)
            self.footerInfo = model
        }
        if let value = dict["HitWords"] as? [String] {
            self.hitWords = value
        }
        if let value = dict["ModifiedTime"] as? Int64 {
            self.modifiedTime = value
        }
        if let value = dict["ReferInfo"] as? [String: Any?] {
            var model = DialogBaseBody()
            model.fromMap(value)
            self.referInfo = model
        }
        if let value = dict["Stage"] as? Int32 {
            self.stage = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TicketId"] as? String {
            self.ticketId = value
        }
        if let value = dict["TicketStatus"] as? Int32 {
            self.ticketStatus = value
        }
        if let value = dict["Timestamp"] as? Int64 {
            self.timestamp = value
        }
        if let value = dict["Tip"] as? String {
            self.tip = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["UserInfo"] as? [String: Any?] {
            var model = DialogBaseBody.UserInfo()
            model.fromMap(value)
            self.userInfo = model
        }
    }
}

public class WelcomeBlock : Tea.TeaModel {
    public var description_: String?

    public var displayType: String?

    public var icon: String?

    public var label: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.displayType != nil {
            map["DisplayType"] = self.displayType!
        }
        if self.icon != nil {
            map["Icon"] = self.icon!
        }
        if self.label != nil {
            map["Label"] = self.label!
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayType"] as? String {
            self.displayType = value
        }
        if let value = dict["Icon"] as? String {
            self.icon = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class GetTicketTemplateRequest : Tea.TeaModel {
    public var categoryId: Int64?

    public var cna: String?

    public var distributionChannel: String?

    public var referrer: String?

    public var subDistributionChannel: String?

    public var XGatewayExtendInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.cna != nil {
            map["Cna"] = self.cna!
        }
        if self.distributionChannel != nil {
            map["DistributionChannel"] = self.distributionChannel!
        }
        if self.referrer != nil {
            map["Referrer"] = self.referrer!
        }
        if self.subDistributionChannel != nil {
            map["SubDistributionChannel"] = self.subDistributionChannel!
        }
        if self.XGatewayExtendInfo != nil {
            map["XGatewayExtendInfo"] = self.XGatewayExtendInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int64 {
            self.categoryId = value
        }
        if let value = dict["Cna"] as? String {
            self.cna = value
        }
        if let value = dict["DistributionChannel"] as? String {
            self.distributionChannel = value
        }
        if let value = dict["Referrer"] as? String {
            self.referrer = value
        }
        if let value = dict["SubDistributionChannel"] as? String {
            self.subDistributionChannel = value
        }
        if let value = dict["XGatewayExtendInfo"] as? String {
            self.XGatewayExtendInfo = value
        }
    }
}

public class GetTicketTemplateResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var data: [String: Any]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class GetTicketTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTicketTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTicketTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IsFirstBbsTicketRequest : Tea.TeaModel {
    public var cna: String?

    public var distributionChannel: String?

    public var referrer: String?

    public var subDistributionChannel: String?

    public var XGatewayExtendInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cna != nil {
            map["Cna"] = self.cna!
        }
        if self.distributionChannel != nil {
            map["DistributionChannel"] = self.distributionChannel!
        }
        if self.referrer != nil {
            map["Referrer"] = self.referrer!
        }
        if self.subDistributionChannel != nil {
            map["SubDistributionChannel"] = self.subDistributionChannel!
        }
        if self.XGatewayExtendInfo != nil {
            map["XGatewayExtendInfo"] = self.XGatewayExtendInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cna"] as? String {
            self.cna = value
        }
        if let value = dict["DistributionChannel"] as? String {
            self.distributionChannel = value
        }
        if let value = dict["Referrer"] as? String {
            self.referrer = value
        }
        if let value = dict["SubDistributionChannel"] as? String {
            self.subDistributionChannel = value
        }
        if let value = dict["XGatewayExtendInfo"] as? String {
            self.XGatewayExtendInfo = value
        }
    }
}

public class IsFirstBbsTicketResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class IsFirstBbsTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsFirstBbsTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = IsFirstBbsTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SuggestCategoryRequest : Tea.TeaModel {
    public var cna: String?

    public var content: String?

    public var distributionChannel: String?

    public var referrer: String?

    public var subDistributionChannel: String?

    public var ticketId: String?

    public var topN: Int32?

    public var useHotSuggestCatchAll: Bool?

    public var XGatewayExtendInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cna != nil {
            map["Cna"] = self.cna!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.distributionChannel != nil {
            map["DistributionChannel"] = self.distributionChannel!
        }
        if self.referrer != nil {
            map["Referrer"] = self.referrer!
        }
        if self.subDistributionChannel != nil {
            map["SubDistributionChannel"] = self.subDistributionChannel!
        }
        if self.ticketId != nil {
            map["TicketId"] = self.ticketId!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useHotSuggestCatchAll != nil {
            map["UseHotSuggestCatchAll"] = self.useHotSuggestCatchAll!
        }
        if self.XGatewayExtendInfo != nil {
            map["XGatewayExtendInfo"] = self.XGatewayExtendInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cna"] as? String {
            self.cna = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["DistributionChannel"] as? String {
            self.distributionChannel = value
        }
        if let value = dict["Referrer"] as? String {
            self.referrer = value
        }
        if let value = dict["SubDistributionChannel"] as? String {
            self.subDistributionChannel = value
        }
        if let value = dict["TicketId"] as? String {
            self.ticketId = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseHotSuggestCatchAll"] as? Bool {
            self.useHotSuggestCatchAll = value
        }
        if let value = dict["XGatewayExtendInfo"] as? String {
            self.XGatewayExtendInfo = value
        }
    }
}

public class SuggestCategoryResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [[String: Any]]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
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

public class SuggestCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuggestCategoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SuggestCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
