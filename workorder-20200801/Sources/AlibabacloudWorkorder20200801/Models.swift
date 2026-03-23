import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTicketRequest : Tea.TeaModel {
    public var commonQuestionId: Int64?

    public var content: String?

    public var email: String?

    public var fileNameList: String?

    public var language: String?

    public var notifyTimeRange: String?

    public var phone: String?

    public var productCode: String?

    public var secretContent: String?

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
        if self.commonQuestionId != nil {
            map["CommonQuestionId"] = self.commonQuestionId!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.fileNameList != nil {
            map["FileNameList"] = self.fileNameList!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.notifyTimeRange != nil {
            map["NotifyTimeRange"] = self.notifyTimeRange!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.secretContent != nil {
            map["SecretContent"] = self.secretContent!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommonQuestionId"] as? Int64 {
            self.commonQuestionId = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["FileNameList"] as? String {
            self.fileNameList = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["NotifyTimeRange"] as? String {
            self.notifyTimeRange = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SecretContent"] as? String {
            self.secretContent = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateTicketResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var ticketId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.ticketId != nil {
            map["TicketId"] = self.ticketId!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TicketId"] as? String {
            self.ticketId = value
        }
    }
}

public class CreateTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAttachmentUploadUrlRequest : Tea.TeaModel {
    public var fileName: String?

    public override init() {
        super.init()
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
            map["FileName"] = self.fileName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
    }
}

public class GetAttachmentUploadUrlResponseBody : Tea.TeaModel {
    public var accessFileUrl: String?

    public var objectKey: String?

    public var putObjectUrl: String?

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
        if self.accessFileUrl != nil {
            map["AccessFileUrl"] = self.accessFileUrl!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.putObjectUrl != nil {
            map["PutObjectUrl"] = self.putObjectUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessFileUrl"] as? String {
            self.accessFileUrl = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["PutObjectUrl"] as? String {
            self.putObjectUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAttachmentUploadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAttachmentUploadUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAttachmentUploadUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAttachmentUrlRequest : Tea.TeaModel {
    public var attachName: String?

    public var noteId: String?

    public var ticketId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachName != nil {
            map["AttachName"] = self.attachName!
        }
        if self.noteId != nil {
            map["NoteId"] = self.noteId!
        }
        if self.ticketId != nil {
            map["TicketId"] = self.ticketId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachName"] as? String {
            self.attachName = value
        }
        if let value = dict["NoteId"] as? String {
            self.noteId = value
        }
        if let value = dict["TicketId"] as? String {
            self.ticketId = value
        }
    }
}

public class GetAttachmentUrlResponseBody : Tea.TeaModel {
    public var accessFileUrl: String?

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
        if self.accessFileUrl != nil {
            map["AccessFileUrl"] = self.accessFileUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessFileUrl"] as? String {
            self.accessFileUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAttachmentUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAttachmentUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAttachmentUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTicketRequest : Tea.TeaModel {
    public var ticketId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ticketId != nil {
            map["TicketId"] = self.ticketId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TicketId"] as? String {
            self.ticketId = value
        }
    }
}

public class GetTicketResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var attachList: [String]?

        public var content: String?

        public var fromOfficial: Bool?

        public var gmtCreated: String?

        public var noteId: String?

        public var special: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachList != nil {
                map["AttachList"] = self.attachList!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.fromOfficial != nil {
                map["FromOfficial"] = self.fromOfficial!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.noteId != nil {
                map["NoteId"] = self.noteId!
            }
            if self.special != nil {
                map["Special"] = self.special!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachList"] as? [String] {
                self.attachList = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["FromOfficial"] as? Bool {
                self.fromOfficial = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["NoteId"] as? String {
                self.noteId = value
            }
            if let value = dict["Special"] as? Bool {
                self.special = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var createTime: String?

    public var email: String?

    public var list: [GetTicketResponseBody.List]?

    public var message: String?

    public var notifyTimeRange: String?

    public var phone: String?

    public var productCode: String?

    public var requestId: String?

    public var success: Bool?

    public var ticketId: String?

    public var ticketStatus: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.notifyTimeRange != nil {
            map["NotifyTimeRange"] = self.notifyTimeRange!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.ticketId != nil {
            map["TicketId"] = self.ticketId!
        }
        if self.ticketStatus != nil {
            map["TicketStatus"] = self.ticketStatus!
        }
        if self.title != nil {
            map["Title"] = self.title!
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [GetTicketResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = GetTicketResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NotifyTimeRange"] as? String {
            self.notifyTimeRange = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TicketId"] as? String {
            self.ticketId = value
        }
        if let value = dict["TicketStatus"] as? String {
            self.ticketStatus = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class GetTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTicketsRequest : Tea.TeaModel {
    public class ExtraConditionList : Tea.TeaModel {
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
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var createdAfterTime: String?

    public var createdBeforeTime: String?

    public var extraConditionList: [ListTicketsRequest.ExtraConditionList]?

    public var ids: String?

    public var pageSize: Int32?

    public var pageStart: Int32?

    public var productCode: String?

    public var ticketStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdAfterTime != nil {
            map["CreatedAfterTime"] = self.createdAfterTime!
        }
        if self.createdBeforeTime != nil {
            map["CreatedBeforeTime"] = self.createdBeforeTime!
        }
        if self.extraConditionList != nil {
            var tmp : [Any] = []
            for k in self.extraConditionList! {
                tmp.append(k.toMap())
            }
            map["ExtraConditionList"] = tmp
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pageStart != nil {
            map["PageStart"] = self.pageStart!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.ticketStatus != nil {
            map["TicketStatus"] = self.ticketStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedAfterTime"] as? String {
            self.createdAfterTime = value
        }
        if let value = dict["CreatedBeforeTime"] as? String {
            self.createdBeforeTime = value
        }
        if let value = dict["ExtraConditionList"] as? [Any?] {
            var tmp : [ListTicketsRequest.ExtraConditionList] = []
            for v in value {
                if v != nil {
                    var model = ListTicketsRequest.ExtraConditionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.extraConditionList = tmp
        }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PageStart"] as? Int32 {
            self.pageStart = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["TicketStatus"] as? String {
            self.ticketStatus = value
        }
    }
}

public class ListTicketsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var addTime: String?

        public var id: String?

        public var ticketStatus: String?

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
            if self.addTime != nil {
                map["AddTime"] = self.addTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.ticketStatus != nil {
                map["TicketStatus"] = self.ticketStatus!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddTime"] as? String {
                self.addTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["TicketStatus"] as? String {
                self.ticketStatus = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var currentPage: Int32?

    public var list: [ListTicketsResponseBody.List]?

    public var message: String?

    public var pageSize: Int32?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if self.total != nil {
            map["Total"] = self.total!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListTicketsResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListTicketsResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
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
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListTicketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTicketsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTicketsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
